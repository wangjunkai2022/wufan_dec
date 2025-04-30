package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: PlayStateOrBuilder.java */
/* loaded from: classes2.dex */
public interface e1 extends MessageLiteOrBuilder {
    PlayType Z();

    long f();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    int getRoomType();

    int s0();
}
