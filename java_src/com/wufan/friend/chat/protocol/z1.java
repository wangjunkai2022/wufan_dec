package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: ResponseOrBuilder.java */
/* loaded from: classes2.dex */
public interface z1 extends MessageLiteOrBuilder {
    ServiceName A();

    int A1();

    int F();

    String H();

    ByteString L();

    NotificationType T();

    int c1();

    int f1();

    x1 getData();

    String getMessage();

    ByteString getMessageBytes();

    ServicePath getPath();

    long getRequestId();

    ResponseStatus getStatus();

    long getTimestamp();

    boolean l();

    ResponseType q0();

    int y();
}
