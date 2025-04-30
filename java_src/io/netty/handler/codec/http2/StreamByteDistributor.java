package io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface StreamByteDistributor {

    /* loaded from: classes5.dex */
    public interface StreamState {
        boolean hasFrame();

        long pendingBytes();

        Http2Stream stream();

        int windowSize();
    }

    /* loaded from: classes5.dex */
    public interface Writer {
        void write(Http2Stream http2Stream, int i2);
    }

    boolean distribute(int i2, Writer writer) throws Http2Exception;

    void updateDependencyTree(int i2, int i4, short s3, boolean z3);

    void updateStreamableBytes(StreamState streamState);
}
