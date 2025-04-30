package io.netty.handler.codec.spdy;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public class DefaultSpdyWindowUpdateFrame implements SpdyWindowUpdateFrame {
    private int deltaWindowSize;
    private int streamId;

    public DefaultSpdyWindowUpdateFrame(int i2, int i4) {
        setStreamId(i2);
        setDeltaWindowSize(i4);
    }

    @Override // io.netty.handler.codec.spdy.SpdyWindowUpdateFrame
    public int deltaWindowSize() {
        return this.deltaWindowSize;
    }

    @Override // io.netty.handler.codec.spdy.SpdyWindowUpdateFrame
    public SpdyWindowUpdateFrame setDeltaWindowSize(int i2) {
        ObjectUtil.checkPositive(i2, "deltaWindowSize");
        this.deltaWindowSize = i2;
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdyWindowUpdateFrame
    public SpdyWindowUpdateFrame setStreamId(int i2) {
        ObjectUtil.checkPositiveOrZero(i2, "streamId");
        this.streamId = i2;
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdyWindowUpdateFrame
    public int streamId() {
        return this.streamId;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtil.simpleClassName(this));
        String str = StringUtil.NEWLINE;
        sb.append(str);
        sb.append("--> Stream-ID = ");
        sb.append(streamId());
        sb.append(str);
        sb.append("--> Delta-Window-Size = ");
        sb.append(deltaWindowSize());
        return sb.toString();
    }
}
