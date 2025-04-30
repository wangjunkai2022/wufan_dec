package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: MessageCheckTokenRequestParametersOrBuilder.java */
/* loaded from: classes2.dex */
public interface l extends MessageLiteOrBuilder {
    ByteString a();

    ByteString b();

    String c();

    String getAppVersion();

    String getToken();

    ByteString getTokenBytes();

    int getUid();
}
