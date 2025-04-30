package io.netty.handler.codec.rtsp;

import io.netty.handler.codec.http.HttpMessage;
import io.netty.handler.codec.http.HttpObjectDecoder;
@Deprecated
/* loaded from: classes5.dex */
public abstract class RtspObjectDecoder extends HttpObjectDecoder {
    protected RtspObjectDecoder() {
        this(4096, 8192, 8192);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    public boolean isContentAlwaysEmpty(HttpMessage httpMessage) {
        boolean isContentAlwaysEmpty = super.isContentAlwaysEmpty(httpMessage);
        if (!isContentAlwaysEmpty && httpMessage.headers().contains(RtspHeaderNames.CONTENT_LENGTH)) {
            return isContentAlwaysEmpty;
        }
        return true;
    }

    protected RtspObjectDecoder(int i2, int i4, int i5) {
        super(i2, i4, i5 * 2, false);
    }

    protected RtspObjectDecoder(int i2, int i4, int i5, boolean z3) {
        super(i2, i4, i5 * 2, false, z3);
    }
}
