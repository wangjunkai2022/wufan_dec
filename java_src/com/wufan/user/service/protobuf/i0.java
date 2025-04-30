package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType;
/* compiled from: TheThirdPartyLoginRequestParametersOrBuilder.java */
/* loaded from: classes2.dex */
public interface i0 extends MessageLiteOrBuilder {
    TheThirdPartLoginType K();

    ByteString a();

    ByteString b();

    String c();

    String getAppVersion();

    String m();

    int s();

    ByteString v();
}
