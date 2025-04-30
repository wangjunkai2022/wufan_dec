package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: UserLoginRequestParametersOrBuilder.java */
/* loaded from: classes2.dex */
public interface o0 extends MessageLiteOrBuilder {
    ByteString a();

    ByteString b();

    String c();

    String getAccount();

    String getAppVersion();

    String getPassword();

    ByteString getPasswordBytes();

    ByteString k();
}
