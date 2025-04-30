package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: GameInviteNotificationOrBuilder.java */
/* loaded from: classes2.dex */
public interface h0 extends MessageLiteOrBuilder {
    ByteString I();

    String X();

    int d();

    long f();

    String getAvatar();

    ByteString getAvatarBytes();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    int getSource();

    ByteString n1();

    String p();

    int p0();

    boolean u();
}
