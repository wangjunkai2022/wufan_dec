package io.netty.handler.codec.http2;

import io.netty.handler.codec.http2.Http2Connection;
/* loaded from: classes5.dex */
public interface Http2Stream {

    /* loaded from: classes5.dex */
    public enum State {
        IDLE(false, false),
        RESERVED_LOCAL(false, false),
        RESERVED_REMOTE(false, false),
        OPEN(true, true),
        HALF_CLOSED_LOCAL(false, true),
        HALF_CLOSED_REMOTE(true, false),
        CLOSED(false, false);
        
        private final boolean localSideOpen;
        private final boolean remoteSideOpen;

        State(boolean z3, boolean z4) {
            this.localSideOpen = z3;
            this.remoteSideOpen = z4;
        }

        public boolean localSideOpen() {
            return this.localSideOpen;
        }

        public boolean remoteSideOpen() {
            return this.remoteSideOpen;
        }
    }

    Http2Stream close();

    Http2Stream closeLocalSide();

    Http2Stream closeRemoteSide();

    <V> V getProperty(Http2Connection.a aVar);

    Http2Stream headersReceived(boolean z3);

    Http2Stream headersSent(boolean z3);

    int id();

    boolean isHeadersReceived();

    boolean isHeadersSent();

    boolean isPushPromiseSent();

    boolean isResetSent();

    boolean isTrailersReceived();

    boolean isTrailersSent();

    Http2Stream open(boolean z3) throws Http2Exception;

    Http2Stream pushPromiseSent();

    <V> V removeProperty(Http2Connection.a aVar);

    Http2Stream resetSent();

    <V> V setProperty(Http2Connection.a aVar, V v3);

    State state();
}
