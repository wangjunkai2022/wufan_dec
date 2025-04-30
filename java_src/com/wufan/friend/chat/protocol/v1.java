package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: RequestOrBuilder.java */
/* loaded from: classes2.dex */
public interface v1 extends MessageLiteOrBuilder {
    ServiceName A();

    int F();

    ByteString a();

    String getAppVersion();

    ServicePath getPath();

    Platform getPlatform();

    int getPlatformValue();

    long getRequestId();

    long getTimestamp();

    boolean v1();

    t1 w1();

    int y();
}
