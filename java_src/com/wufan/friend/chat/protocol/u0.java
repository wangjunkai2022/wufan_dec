package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: LoginArgsOrBuilder.java */
/* loaded from: classes2.dex */
public interface u0 extends MessageLiteOrBuilder {
    int d();

    String getNickname();

    ByteString getNicknameBytes();

    String getToken();

    ByteString getTokenBytes();
}
