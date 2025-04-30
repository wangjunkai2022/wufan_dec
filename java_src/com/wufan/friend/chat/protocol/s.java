package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageLiteOrBuilder;
import com.wufan.friend.chat.protocol.FriendAddReqNotification;
/* compiled from: FriendAddReqNotificationOrBuilder.java */
/* loaded from: classes2.dex */
public interface s extends MessageLiteOrBuilder {
    int getCount();

    boolean getStatus();

    FriendAddReqNotification.State getType();

    int getTypeValue();
}
