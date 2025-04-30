package org.jboss.netty.channel.socket.nio;
/* compiled from: NioChannelConfig.java */
/* loaded from: classes5.dex */
public interface j extends org.jboss.netty.channel.f {
    int getWriteBufferHighWaterMark();

    int getWriteBufferLowWaterMark();

    int getWriteSpinCount();

    void setWriteBufferHighWaterMark(int i2);

    void setWriteBufferLowWaterMark(int i2);

    void setWriteSpinCount(int i2);
}
