package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageLiteOrBuilder;
import com.wufan.friend.chat.protocol.PlayGameArgs;
import java.util.List;
/* compiled from: PlayGameArgsOrBuilder.java */
/* loaded from: classes2.dex */
public interface c1 extends MessageLiteOrBuilder {
    boolean B();

    int O1();

    List<Long> O2();

    long c2(int i2);

    int d();

    long f();

    long getGameId();

    PlayGameArgs.State getState();

    int getStateValue();

    PlayType getType();

    int getTypeValue();
}
