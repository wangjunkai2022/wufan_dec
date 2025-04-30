package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.papa91.battle.protocol.RoomPosition;
/* loaded from: classes4.dex */
public interface RoomPositionOrBuilder extends MessageLiteOrBuilder {
    String getAvatar();

    ByteString getAvatarBytes();

    BattleArea getBattleArea();

    int getBattleAreaValue();

    String getBattleTitle();

    ByteString getBattleTitleBytes();

    String getBattleTitleColor();

    ByteString getBattleTitleColorBytes();

    boolean getClosed();

    int getCopper();

    String getIgnore();

    ByteString getIgnoreBytes();

    int getKickCount();

    String getNickname();

    ByteString getNicknameBytes();

    boolean getPeripheral();

    PhoneType getPhoneType();

    int getPhoneTypeValue();

    int getPingVal();

    Platform getPlatform();

    int getPlatformValue();

    int getProficiencyLevel();

    RoomPosition.State getState();

    int getStateValue();

    BattleTitle getTitle();

    int getUid();

    boolean getVip();

    boolean hasTitle();
}
