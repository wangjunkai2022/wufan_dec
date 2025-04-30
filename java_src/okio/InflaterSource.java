package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InflaterSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001bB\u0019\b\u0016\u0012\u0006\u0010\u0013\u001a\u00020\u0001\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0016\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\u0002H\u0016R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lokio/InflaterSource;", "Lokio/Source;", "", "releaseBytesAfterInflate", "Lokio/Buffer;", "sink", "", "byteCount", "read", "readOrInflate", "", "refill", "Lokio/Timeout;", "timeout", "close", "", "bufferBytesHeldByInflater", "I", "Lokio/BufferedSource;", "source", "Lokio/BufferedSource;", "closed", "Z", "Ljava/util/zip/Inflater;", "inflater", "Ljava/util/zip/Inflater;", "<init>", "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V", "(Lokio/Source;Ljava/util/zip/Inflater;)V", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class InflaterSource implements Source {
    private int bufferBytesHeldByInflater;
    private boolean closed;
    private final Inflater inflater;
    private final BufferedSource source;

    public InflaterSource(@NotNull BufferedSource source, @NotNull Inflater inflater) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this.source = source;
        this.inflater = inflater;
    }

    private final void releaseBytesAfterInflate() {
        int i2 = this.bufferBytesHeldByInflater;
        if (i2 == 0) {
            return;
        }
        int remaining = i2 - this.inflater.getRemaining();
        this.bufferBytesHeldByInflater -= remaining;
        this.source.skip(remaining);
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.inflater.end();
        this.closed = true;
        this.source.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j4) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        do {
            long readOrInflate = readOrInflate(sink, j4);
            if (readOrInflate > 0) {
                return readOrInflate;
            }
            if (this.inflater.finished() || this.inflater.needsDictionary()) {
                return -1L;
            }
        } while (!this.source.exhausted());
        throw new EOFException("source exhausted prematurely");
    }

    public final long readOrInflate(@NotNull Buffer sink, long j4) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j4 >= 0) {
            if (!this.closed) {
                if (j4 == 0) {
                    return 0L;
                }
                try {
                    Segment writableSegment$okio = sink.writableSegment$okio(1);
                    int min = (int) Math.min(j4, 8192 - writableSegment$okio.limit);
                    refill();
                    int inflate = this.inflater.inflate(writableSegment$okio.data, writableSegment$okio.limit, min);
                    releaseBytesAfterInflate();
                    if (inflate > 0) {
                        writableSegment$okio.limit += inflate;
                        long j5 = inflate;
                        sink.setSize$okio(sink.size() + j5);
                        return j5;
                    }
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        sink.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                    }
                    return 0L;
                } catch (DataFormatException e4) {
                    throw new IOException(e4);
                }
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j4).toString());
    }

    public final boolean refill() throws IOException {
        if (this.inflater.needsInput()) {
            if (this.source.exhausted()) {
                return true;
            }
            Segment segment = this.source.getBuffer().head;
            Intrinsics.checkNotNull(segment);
            int i2 = segment.limit;
            int i4 = segment.pos;
            int i5 = i2 - i4;
            this.bufferBytesHeldByInflater = i5;
            this.inflater.setInput(segment.data, i4, i5);
            return false;
        }
        return false;
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.source.timeout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InflaterSource(@NotNull Source source, @NotNull Inflater inflater) {
        this(Okio.buffer(source), inflater);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
    }
}
