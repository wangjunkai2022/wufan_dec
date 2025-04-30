package io.netty.handler.codec.spdy;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
public interface SpdyFrameDecoderDelegate {
    void readDataFrame(int i2, boolean z3, ByteBuf byteBuf);

    void readFrameError(String str);

    void readGoAwayFrame(int i2, int i4);

    void readHeaderBlock(ByteBuf byteBuf);

    void readHeaderBlockEnd();

    void readHeadersFrame(int i2, boolean z3);

    void readPingFrame(int i2);

    void readRstStreamFrame(int i2, int i4);

    void readSetting(int i2, int i4, boolean z3, boolean z4);

    void readSettingsEnd();

    void readSettingsFrame(boolean z3);

    void readSynReplyFrame(int i2, boolean z3);

    void readSynStreamFrame(int i2, int i4, byte b4, boolean z3, boolean z4);

    void readWindowUpdateFrame(int i2, int i4);
}
