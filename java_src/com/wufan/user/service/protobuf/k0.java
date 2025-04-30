package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType;
/* compiled from: TheThirdPartyRegisterRequestParametersOrBuilder.java */
/* loaded from: classes2.dex */
public interface k0 extends MessageLiteOrBuilder {
    String D();

    ByteString G();

    TheThirdPartLoginType K();

    String P();

    ByteString a();

    ByteString b();

    String c();

    String getAccount();

    String getAppVersion();

    String getPassword();

    ByteString getPasswordBytes();

    ByteString k();

    String m();

    int s();

    ByteString v();

    ByteString x();
}
