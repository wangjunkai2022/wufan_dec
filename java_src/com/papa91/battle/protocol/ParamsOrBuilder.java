package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.papa91.battle.protocol.Params;
/* loaded from: classes4.dex */
public interface ParamsOrBuilder extends MessageLiteOrBuilder {
    boolean getAllowPCJoin();

    boolean getAllowPeripheralJoin();

    boolean getAllowSpectatorJoin();

    BattleArea getBattleArea();

    int getBattleAreaValue();

    int getChallengeCoins();

    Params.ChannelType getChannelType();

    int getChannelTypeValue();

    boolean getClosePosition();

    int getCollectionId();

    String getDeviceId();

    ByteString getDeviceIdBytes();

    boolean getDisableMobileJoin();

    long getFightId();

    boolean getFromLive();

    long getGameId();

    boolean getMergeMessageChannel();

    String getPassword();

    ByteString getPasswordBytes();

    int getPingVal();

    Params.ServerPlayMode getPlayMode();

    int getPlayModeValue();

    int getRoomId();

    int getRoomPositionIndex();

    Params.RoomType getRoomType();

    int getRoomTypeValue();

    boolean getSilent();

    long getTimestamp();

    String getToken();

    ByteString getTokenBytes();

    int getUid();

    boolean getUsePeripheral();
}
