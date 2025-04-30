package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: RecommendPlayerOrBuilder.java */
/* loaded from: classes2.dex */
public interface n1 extends MessageLiteOrBuilder {
    ByteString V1();

    int d();

    String getAvatar();

    ByteString getAvatarBytes();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    String getNickname();

    ByteString getNicknameBytes();

    int h();

    String k0();

    boolean z();
}
