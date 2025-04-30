package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import java.util.List;
/* loaded from: classes4.dex */
public interface SimpleRoomOrBuilder extends MessageLiteOrBuilder {
    boolean getAllowPCJoin();

    boolean getAllowPeripheralJoin();

    boolean getAllowSpectatorJoin();

    String getAvatar();

    ByteString getAvatarBytes();

    BattleArea getBattleArea();

    int getBattleAreaValue();

    String getBattleTitle();

    ByteString getBattleTitleBytes();

    String getBattleTitleColor();

    ByteString getBattleTitleColorBytes();

    int getChallengeCoins();

    int getCollectionId();

    int getCopper();

    long getCreateAt();

    boolean getElite();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    boolean getHasJoinPassword();

    boolean getHasPeripheralPlayer();

    int getLeaderId();

    String getNickname();

    ByteString getNicknameBytes();

    int getPlaySeconds();

    long getPlayTimestamp();

    RoomPosition getPlayerList(int i2);

    int getPlayerListCount();

    List<RoomPosition> getPlayerListList();

    RoomCategory getRoomCategory();

    int getRoomCategoryValue();

    int getRoomId();

    int getSeatsNumber();

    int getSitDownloadNumber();

    int getSpectatorNumber();

    RoomState getState();

    int getStateValue();

    BattleTitle getTitle();

    boolean getVip();

    boolean hasTitle();
}
