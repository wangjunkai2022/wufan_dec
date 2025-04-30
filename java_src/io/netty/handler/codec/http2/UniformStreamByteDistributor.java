package io.netty.handler.codec.http2;

import io.netty.handler.codec.http2.Http2Connection;
import io.netty.handler.codec.http2.StreamByteDistributor;
import io.netty.util.internal.ObjectUtil;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes5.dex */
public final class UniformStreamByteDistributor implements StreamByteDistributor {
    private final Http2Connection.a stateKey;
    private long totalStreamableBytes;
    private final Deque<State> queue = new ArrayDeque(4);
    private int minAllocationChunk = 1024;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class State {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        boolean enqueued;
        final Http2Stream stream;
        int streamableBytes;
        boolean windowNegative;
        boolean writing;

        State(Http2Stream http2Stream) {
            this.stream = http2Stream;
        }

        void addToQueue() {
            if (this.enqueued) {
                return;
            }
            this.enqueued = true;
            UniformStreamByteDistributor.this.queue.addLast(this);
        }

        void close() {
            removeFromQueue();
            updateStreamableBytes(0, false, 0);
        }

        void removeFromQueue() {
            if (this.enqueued) {
                this.enqueued = false;
                UniformStreamByteDistributor.this.queue.remove(this);
            }
        }

        void updateStreamableBytes(int i2, boolean z3, int i4) {
            int i5 = i2 - this.streamableBytes;
            if (i5 != 0) {
                this.streamableBytes = i2;
                UniformStreamByteDistributor.this.totalStreamableBytes += i5;
            }
            this.windowNegative = i4 < 0;
            if (z3) {
                if (i4 > 0 || (i4 == 0 && !this.writing)) {
                    addToQueue();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void write(int i2, StreamByteDistributor.Writer writer) throws Http2Exception {
            this.writing = true;
            try {
                writer.write(this.stream, i2);
            } finally {
            }
        }
    }

    public UniformStreamByteDistributor(Http2Connection http2Connection) {
        Http2Connection.a newKey = http2Connection.newKey();
        this.stateKey = newKey;
        Http2Stream connectionStream = http2Connection.connectionStream();
        connectionStream.setProperty(newKey, new State(connectionStream));
        http2Connection.addListener(new Http2ConnectionAdapter() { // from class: io.netty.handler.codec.http2.UniformStreamByteDistributor.1
            @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
            public void onStreamAdded(Http2Stream http2Stream) {
                http2Stream.setProperty(UniformStreamByteDistributor.this.stateKey, new State(http2Stream));
            }

            @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
            public void onStreamClosed(Http2Stream http2Stream) {
                UniformStreamByteDistributor.this.state(http2Stream).close();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public State state(Http2Stream http2Stream) {
        return (State) ((Http2Stream) ObjectUtil.checkNotNull(http2Stream, "stream")).getProperty(this.stateKey);
    }

    @Override // io.netty.handler.codec.http2.StreamByteDistributor
    public boolean distribute(int i2, StreamByteDistributor.Writer writer) throws Http2Exception {
        int size = this.queue.size();
        if (size == 0) {
            return this.totalStreamableBytes > 0;
        }
        int max = Math.max(this.minAllocationChunk, i2 / size);
        State pollFirst = this.queue.pollFirst();
        while (true) {
            pollFirst.enqueued = false;
            if (!pollFirst.windowNegative) {
                if (i2 == 0 && pollFirst.streamableBytes > 0) {
                    this.queue.addFirst(pollFirst);
                    pollFirst.enqueued = true;
                    break;
                }
                int min = Math.min(max, Math.min(i2, pollFirst.streamableBytes));
                i2 -= min;
                pollFirst.write(min, writer);
            }
            pollFirst = this.queue.pollFirst();
            if (pollFirst == null) {
                break;
            }
        }
        return this.totalStreamableBytes > 0;
    }

    public void minAllocationChunk(int i2) {
        ObjectUtil.checkPositive(i2, "minAllocationChunk");
        this.minAllocationChunk = i2;
    }

    @Override // io.netty.handler.codec.http2.StreamByteDistributor
    public void updateDependencyTree(int i2, int i4, short s3, boolean z3) {
    }

    @Override // io.netty.handler.codec.http2.StreamByteDistributor
    public void updateStreamableBytes(StreamByteDistributor.StreamState streamState) {
        state(streamState.stream()).updateStreamableBytes(Http2CodecUtil.streamableBytes(streamState), streamState.hasFrame(), streamState.windowSize());
    }
}
