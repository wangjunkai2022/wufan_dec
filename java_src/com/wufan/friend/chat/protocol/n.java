package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* compiled from: ChatMessageNotificationOrBuilder.java */
/* loaded from: classes2.dex */
public interface n extends MessageLiteOrBuilder {
    boolean e();

    a g();

    String getMessage();

    ByteString getMessageBytes();

    long getTimestamp();
}
