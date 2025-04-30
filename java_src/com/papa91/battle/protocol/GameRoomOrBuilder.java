package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.papa91.battle.protocol.GameRoom;
/* loaded from: classes4.dex */
public interface GameRoomOrBuilder extends MessageLiteOrBuilder {
    boolean getAllowPCJoin();

    boolean getAllowPeripheralJoin();

    boolean getAllowSpectatorJoin();

    BattleArea getBattleArea();

    int getBattleAreaValue();

    BattleServerAddr getBattleServerAddr();

    int getChallengeCoins();

    String getChatRoomId();

    ByteString getChatRoomIdBytes();

    int getCollectionId();

    long getCreateAt();

    int getCreateByUser();

    boolean getDisableMobileJoin();

    boolean getElite();

    boolean getFastMode();

    long getFightId();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    GameRoom.GameType getGameType();

    int getGameTypeValue();

    boolean getHasJoinPassword();

    int getLeader();

    boolean getOpenFastModeBtn();

    RoomPosition getP1();

    RoomPosition getP2();

    RoomPosition getP3();

    RoomPosition getP4();

    String getPassword();

    ByteString getPasswordBytes();

    long getPlayTimestamp();

    int getPlayerNumber();

    int getPlayerSeconds();

    RoomCategory getRoomCategory();

    int getRoomCategoryValue();

    int getRoomId();

    int getSeatsNumber();

    boolean getSilent();

    int getSpectatorNumber();

    RoomState getState();

    int getStateValue();

    boolean hasBattleServerAddr();

    boolean hasP1();

    boolean hasP2();

    boolean hasP3();

    boolean hasP4();
}
