package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: AccountInfoOrBuilder.java */
/* loaded from: classes2.dex */
public interface b extends MessageLiteOrBuilder {
    int d();

    String getAvatar();

    ByteString getAvatarBytes();

    String getNickname();

    ByteString getNicknameBytes();

    boolean getVip();

    int h();

    boolean i0();

    boolean z();
}
