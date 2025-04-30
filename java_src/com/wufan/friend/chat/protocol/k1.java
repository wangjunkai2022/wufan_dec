package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.wufan.friend.chat.protocol.RecommendPlayerArgs;
import java.util.List;
/* compiled from: RecommendPlayerArgsOrBuilder.java */
/* loaded from: classes2.dex */
public interface k1 extends MessageLiteOrBuilder {
    RecommendPlayerArgs.FriendLocationPageType E0();

    ByteString a1();

    long getGameId();

    int j0();

    int o1();

    List<Long> s1();

    String v0();

    long z0(int i2);
}
