package io.netty.handler.codec.spdy;

import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public class DefaultSpdyPingFrame implements SpdyPingFrame {
    private int id;

    public DefaultSpdyPingFrame(int i2) {
        setId(i2);
    }

    @Override // io.netty.handler.codec.spdy.SpdyPingFrame
    public int id() {
        return this.id;
    }

    @Override // io.netty.handler.codec.spdy.SpdyPingFrame
    public SpdyPingFrame setId(int i2) {
        this.id = i2;
        return this;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + StringUtil.NEWLINE + "--> ID = " + id();
    }
}
