package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
import com.papa91.battle.protocol.Response;
import java.util.List;
/* loaded from: classes4.dex */
public interface ResponseOrBuilder extends MessageLiteOrBuilder {
    AreaOnlinePeopleCount getAreaOnlinePeopleCount();

    Response.BroadcastChannel getBroadcastChannel();

    int getBroadcastChannelValue();

    int getBroadcastUsers(int i2);

    int getBroadcastUsersCount();

    List<Integer> getBroadcastUsersList();

    String getEndDelimiter();

    ByteString getEndDelimiterBytes();

    String getError();

    ByteString getErrorBytes();

    FrameForwardServer getFrameForwardServer();

    String getJoinSpectatorReason();

    ByteString getJoinSpectatorReasonBytes();

    KickInfo getKickInfo();

    Response.LogicErrorCode getLogicErrorCode();

    int getLogicErrorCodeValue();

    Notification getNotification();

    Pong getPong();

    long getRequestId();

    Response getResponse();

    GameRoom getRoom();

    RoomCounter getRoomCounter();

    SimpleRoom getSimpleRoom(int i2);

    int getSimpleRoomCount();

    List<SimpleRoom> getSimpleRoomList();

    Response.StatusCode getStatusCode();

    int getStatusCodeValue();

    Response.ProtoType getType();

    int getTypeValue();

    UserProfile getUserProfile();

    boolean hasAreaOnlinePeopleCount();

    boolean hasFrameForwardServer();

    boolean hasKickInfo();

    boolean hasNotification();

    boolean hasPong();

    boolean hasResponse();

    boolean hasRoom();

    boolean hasRoomCounter();

    boolean hasUserProfile();
}
