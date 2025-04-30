package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* loaded from: classes4.dex */
public interface KickInfoOrBuilder extends MessageLiteOrBuilder {
    int getCopper();

    int getCount();

    boolean getIsVIP();

    String getNickname();

    ByteString getNicknameBytes();

    int getVipCopper();
}
