package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.papa91.battle.protocol.BattleServerAddr;
/* loaded from: classes4.dex */
public interface BattleServerAddrOrBuilder extends MessageLiteOrBuilder {
    long getBattleRoomId();

    String getHost();

    ByteString getHostBytes();

    BattleServerAddr.NetType getNetType();

    int getNetTypeValue();

    int getPort();
}
