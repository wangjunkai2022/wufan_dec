package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.wufan.user.service.protobuf.enumeration.ContentType;
import com.wufan.user.service.protobuf.enumeration.SourceType;
/* compiled from: SmsCodeRequestParametersOrBuilder.java */
/* loaded from: classes2.dex */
public interface g0 extends MessageLiteOrBuilder {
    int F2();

    int I2();

    SourceType N1();

    ByteString a();

    ByteString b();

    String c();

    String getAppVersion();

    ContentType getContentType();

    int getUid();

    ByteString q();

    String t();
}
