package com.papa91.battle.protocol;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import com.papa91.battle.protocol.FrameForwardServer;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.KickInfo;
import com.papa91.battle.protocol.Notification;
import com.papa91.battle.protocol.Pong;
import com.papa91.battle.protocol.RoomCounter;
import com.papa91.battle.protocol.SimpleRoom;
import com.papa91.battle.protocol.UserProfile;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class Response extends GeneratedMessageLite<Response, Builder> implements ResponseOrBuilder, Serializable {
    public static final int AREAONLINEPEOPLECOUNT_FIELD_NUMBER = 17;
    public static final int BROADCASTCHANNEL_FIELD_NUMBER = 16;
    public static final int BROADCASTUSERS_FIELD_NUMBER = 6;
    private static final Response DEFAULT_INSTANCE;
    public static final int ENDDELIMITER_FIELD_NUMBER = 999;
    public static final int ERROR_FIELD_NUMBER = 7;
    public static final int FRAMEFORWARDSERVER_FIELD_NUMBER = 15;
    public static final int JOINSPECTATORREASON_FIELD_NUMBER = 10;
    public static final int KICKINFO_FIELD_NUMBER = 13;
    public static final int LOGICERRORCODE_FIELD_NUMBER = 9;
    public static final int NOTIFICATION_FIELD_NUMBER = 14;
    private static volatile Parser<Response> PARSER = null;
    public static final int PONG_FIELD_NUMBER = 11;
    public static final int REQUESTID_FIELD_NUMBER = 2;
    public static final int RESPONSE_FIELD_NUMBER = 5;
    public static final int ROOMCOUNTER_FIELD_NUMBER = 12;
    public static final int ROOM_FIELD_NUMBER = 4;
    public static final int SIMPLEROOM_FIELD_NUMBER = 8;
    public static final int STATUSCODE_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 3;
    public static final int USERPROFILE_FIELD_NUMBER = 18;
    private AreaOnlinePeopleCount areaOnlinePeopleCount_;
    private int bitField0_;
    private int broadcastChannel_;
    private FrameForwardServer frameForwardServer_;
    private KickInfo kickInfo_;
    private int logicErrorCode_;
    private Notification notification_;
    private Pong pong_;
    private long requestId_;
    private Response response_;
    private RoomCounter roomCounter_;
    private GameRoom room_;
    private int statusCode_;
    private int type_;
    private UserProfile userProfile_;
    private Internal.IntList broadcastUsers_ = GeneratedMessageLite.emptyIntList();
    private String error_ = "";
    private Internal.ProtobufList<SimpleRoom> simpleRoom_ = GeneratedMessageLite.emptyProtobufList();
    private String joinSpectatorReason_ = "";
    private String endDelimiter_ = "";

    /* renamed from: com.papa91.battle.protocol.Response$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum BroadcastChannel implements Internal.EnumLite {
        ALL(0),
        LOBBY(1),
        ROOM(2),
        UNRECOGNIZED(-1);
        
        public static final int ALL_VALUE = 0;
        public static final int LOBBY_VALUE = 1;
        public static final int ROOM_VALUE = 2;
        private static final Internal.EnumLiteMap<BroadcastChannel> internalValueMap = new Internal.EnumLiteMap<BroadcastChannel>() { // from class: com.papa91.battle.protocol.Response.BroadcastChannel.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public BroadcastChannel findValueByNumber(int i2) {
                return BroadcastChannel.forNumber(i2);
            }
        };
        private final int value;

        BroadcastChannel(int i2) {
            this.value = i2;
        }

        public static BroadcastChannel forNumber(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        return null;
                    }
                    return ROOM;
                }
                return LOBBY;
            }
            return ALL;
        }

        public static Internal.EnumLiteMap<BroadcastChannel> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static BroadcastChannel valueOf(int i2) {
            return forNumber(i2);
        }
    }

    /* loaded from: classes4.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<Response, Builder> implements ResponseOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder addAllBroadcastUsers(Iterable<? extends Integer> iterable) {
            copyOnWrite();
            ((Response) this.instance).addAllBroadcastUsers(iterable);
            return this;
        }

        public Builder addAllSimpleRoom(Iterable<? extends SimpleRoom> iterable) {
            copyOnWrite();
            ((Response) this.instance).addAllSimpleRoom(iterable);
            return this;
        }

        public Builder addBroadcastUsers(int i2) {
            copyOnWrite();
            ((Response) this.instance).addBroadcastUsers(i2);
            return this;
        }

        public Builder addSimpleRoom(SimpleRoom simpleRoom) {
            copyOnWrite();
            ((Response) this.instance).addSimpleRoom(simpleRoom);
            return this;
        }

        public Builder clearAreaOnlinePeopleCount() {
            copyOnWrite();
            ((Response) this.instance).clearAreaOnlinePeopleCount();
            return this;
        }

        public Builder clearBroadcastChannel() {
            copyOnWrite();
            ((Response) this.instance).clearBroadcastChannel();
            return this;
        }

        public Builder clearBroadcastUsers() {
            copyOnWrite();
            ((Response) this.instance).clearBroadcastUsers();
            return this;
        }

        public Builder clearEndDelimiter() {
            copyOnWrite();
            ((Response) this.instance).clearEndDelimiter();
            return this;
        }

        public Builder clearError() {
            copyOnWrite();
            ((Response) this.instance).clearError();
            return this;
        }

        public Builder clearFrameForwardServer() {
            copyOnWrite();
            ((Response) this.instance).clearFrameForwardServer();
            return this;
        }

        public Builder clearJoinSpectatorReason() {
            copyOnWrite();
            ((Response) this.instance).clearJoinSpectatorReason();
            return this;
        }

        public Builder clearKickInfo() {
            copyOnWrite();
            ((Response) this.instance).clearKickInfo();
            return this;
        }

        public Builder clearLogicErrorCode() {
            copyOnWrite();
            ((Response) this.instance).clearLogicErrorCode();
            return this;
        }

        public Builder clearNotification() {
            copyOnWrite();
            ((Response) this.instance).clearNotification();
            return this;
        }

        public Builder clearPong() {
            copyOnWrite();
            ((Response) this.instance).clearPong();
            return this;
        }

        public Builder clearRequestId() {
            copyOnWrite();
            ((Response) this.instance).clearRequestId();
            return this;
        }

        public Builder clearResponse() {
            copyOnWrite();
            ((Response) this.instance).clearResponse();
            return this;
        }

        public Builder clearRoom() {
            copyOnWrite();
            ((Response) this.instance).clearRoom();
            return this;
        }

        public Builder clearRoomCounter() {
            copyOnWrite();
            ((Response) this.instance).clearRoomCounter();
            return this;
        }

        public Builder clearSimpleRoom() {
            copyOnWrite();
            ((Response) this.instance).clearSimpleRoom();
            return this;
        }

        public Builder clearStatusCode() {
            copyOnWrite();
            ((Response) this.instance).clearStatusCode();
            return this;
        }

        public Builder clearType() {
            copyOnWrite();
            ((Response) this.instance).clearType();
            return this;
        }

        public Builder clearUserProfile() {
            copyOnWrite();
            ((Response) this.instance).clearUserProfile();
            return this;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public AreaOnlinePeopleCount getAreaOnlinePeopleCount() {
            return ((Response) this.instance).getAreaOnlinePeopleCount();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public BroadcastChannel getBroadcastChannel() {
            return ((Response) this.instance).getBroadcastChannel();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getBroadcastChannelValue() {
            return ((Response) this.instance).getBroadcastChannelValue();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getBroadcastUsers(int i2) {
            return ((Response) this.instance).getBroadcastUsers(i2);
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getBroadcastUsersCount() {
            return ((Response) this.instance).getBroadcastUsersCount();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public List<Integer> getBroadcastUsersList() {
            return Collections.unmodifiableList(((Response) this.instance).getBroadcastUsersList());
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public String getEndDelimiter() {
            return ((Response) this.instance).getEndDelimiter();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ByteString getEndDelimiterBytes() {
            return ((Response) this.instance).getEndDelimiterBytes();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public String getError() {
            return ((Response) this.instance).getError();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ByteString getErrorBytes() {
            return ((Response) this.instance).getErrorBytes();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public FrameForwardServer getFrameForwardServer() {
            return ((Response) this.instance).getFrameForwardServer();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public String getJoinSpectatorReason() {
            return ((Response) this.instance).getJoinSpectatorReason();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ByteString getJoinSpectatorReasonBytes() {
            return ((Response) this.instance).getJoinSpectatorReasonBytes();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public KickInfo getKickInfo() {
            return ((Response) this.instance).getKickInfo();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public LogicErrorCode getLogicErrorCode() {
            return ((Response) this.instance).getLogicErrorCode();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getLogicErrorCodeValue() {
            return ((Response) this.instance).getLogicErrorCodeValue();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public Notification getNotification() {
            return ((Response) this.instance).getNotification();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public Pong getPong() {
            return ((Response) this.instance).getPong();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public long getRequestId() {
            return ((Response) this.instance).getRequestId();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public Response getResponse() {
            return ((Response) this.instance).getResponse();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public GameRoom getRoom() {
            return ((Response) this.instance).getRoom();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public RoomCounter getRoomCounter() {
            return ((Response) this.instance).getRoomCounter();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public SimpleRoom getSimpleRoom(int i2) {
            return ((Response) this.instance).getSimpleRoom(i2);
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getSimpleRoomCount() {
            return ((Response) this.instance).getSimpleRoomCount();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public List<SimpleRoom> getSimpleRoomList() {
            return Collections.unmodifiableList(((Response) this.instance).getSimpleRoomList());
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public StatusCode getStatusCode() {
            return ((Response) this.instance).getStatusCode();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getStatusCodeValue() {
            return ((Response) this.instance).getStatusCodeValue();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ProtoType getType() {
            return ((Response) this.instance).getType();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getTypeValue() {
            return ((Response) this.instance).getTypeValue();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public UserProfile getUserProfile() {
            return ((Response) this.instance).getUserProfile();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasAreaOnlinePeopleCount() {
            return ((Response) this.instance).hasAreaOnlinePeopleCount();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasFrameForwardServer() {
            return ((Response) this.instance).hasFrameForwardServer();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasKickInfo() {
            return ((Response) this.instance).hasKickInfo();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasNotification() {
            return ((Response) this.instance).hasNotification();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasPong() {
            return ((Response) this.instance).hasPong();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasResponse() {
            return ((Response) this.instance).hasResponse();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasRoom() {
            return ((Response) this.instance).hasRoom();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasRoomCounter() {
            return ((Response) this.instance).hasRoomCounter();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasUserProfile() {
            return ((Response) this.instance).hasUserProfile();
        }

        public Builder mergeAreaOnlinePeopleCount(AreaOnlinePeopleCount areaOnlinePeopleCount) {
            copyOnWrite();
            ((Response) this.instance).mergeAreaOnlinePeopleCount(areaOnlinePeopleCount);
            return this;
        }

        public Builder mergeFrameForwardServer(FrameForwardServer frameForwardServer) {
            copyOnWrite();
            ((Response) this.instance).mergeFrameForwardServer(frameForwardServer);
            return this;
        }

        public Builder mergeKickInfo(KickInfo kickInfo) {
            copyOnWrite();
            ((Response) this.instance).mergeKickInfo(kickInfo);
            return this;
        }

        public Builder mergeNotification(Notification notification) {
            copyOnWrite();
            ((Response) this.instance).mergeNotification(notification);
            return this;
        }

        public Builder mergePong(Pong pong) {
            copyOnWrite();
            ((Response) this.instance).mergePong(pong);
            return this;
        }

        public Builder mergeResponse(Response response) {
            copyOnWrite();
            ((Response) this.instance).mergeResponse(response);
            return this;
        }

        public Builder mergeRoom(GameRoom gameRoom) {
            copyOnWrite();
            ((Response) this.instance).mergeRoom(gameRoom);
            return this;
        }

        public Builder mergeRoomCounter(RoomCounter roomCounter) {
            copyOnWrite();
            ((Response) this.instance).mergeRoomCounter(roomCounter);
            return this;
        }

        public Builder mergeUserProfile(UserProfile userProfile) {
            copyOnWrite();
            ((Response) this.instance).mergeUserProfile(userProfile);
            return this;
        }

        public Builder removeSimpleRoom(int i2) {
            copyOnWrite();
            ((Response) this.instance).removeSimpleRoom(i2);
            return this;
        }

        public Builder setAreaOnlinePeopleCount(AreaOnlinePeopleCount areaOnlinePeopleCount) {
            copyOnWrite();
            ((Response) this.instance).setAreaOnlinePeopleCount(areaOnlinePeopleCount);
            return this;
        }

        public Builder setBroadcastChannel(BroadcastChannel broadcastChannel) {
            copyOnWrite();
            ((Response) this.instance).setBroadcastChannel(broadcastChannel);
            return this;
        }

        public Builder setBroadcastChannelValue(int i2) {
            copyOnWrite();
            ((Response) this.instance).setBroadcastChannelValue(i2);
            return this;
        }

        public Builder setBroadcastUsers(int i2, int i4) {
            copyOnWrite();
            ((Response) this.instance).setBroadcastUsers(i2, i4);
            return this;
        }

        public Builder setEndDelimiter(String str) {
            copyOnWrite();
            ((Response) this.instance).setEndDelimiter(str);
            return this;
        }

        public Builder setEndDelimiterBytes(ByteString byteString) {
            copyOnWrite();
            ((Response) this.instance).setEndDelimiterBytes(byteString);
            return this;
        }

        public Builder setError(String str) {
            copyOnWrite();
            ((Response) this.instance).setError(str);
            return this;
        }

        public Builder setErrorBytes(ByteString byteString) {
            copyOnWrite();
            ((Response) this.instance).setErrorBytes(byteString);
            return this;
        }

        public Builder setFrameForwardServer(FrameForwardServer frameForwardServer) {
            copyOnWrite();
            ((Response) this.instance).setFrameForwardServer(frameForwardServer);
            return this;
        }

        public Builder setJoinSpectatorReason(String str) {
            copyOnWrite();
            ((Response) this.instance).setJoinSpectatorReason(str);
            return this;
        }

        public Builder setJoinSpectatorReasonBytes(ByteString byteString) {
            copyOnWrite();
            ((Response) this.instance).setJoinSpectatorReasonBytes(byteString);
            return this;
        }

        public Builder setKickInfo(KickInfo kickInfo) {
            copyOnWrite();
            ((Response) this.instance).setKickInfo(kickInfo);
            return this;
        }

        public Builder setLogicErrorCode(LogicErrorCode logicErrorCode) {
            copyOnWrite();
            ((Response) this.instance).setLogicErrorCode(logicErrorCode);
            return this;
        }

        public Builder setLogicErrorCodeValue(int i2) {
            copyOnWrite();
            ((Response) this.instance).setLogicErrorCodeValue(i2);
            return this;
        }

        public Builder setNotification(Notification notification) {
            copyOnWrite();
            ((Response) this.instance).setNotification(notification);
            return this;
        }

        public Builder setPong(Pong pong) {
            copyOnWrite();
            ((Response) this.instance).setPong(pong);
            return this;
        }

        public Builder setRequestId(long j4) {
            copyOnWrite();
            ((Response) this.instance).setRequestId(j4);
            return this;
        }

        public Builder setResponse(Response response) {
            copyOnWrite();
            ((Response) this.instance).setResponse(response);
            return this;
        }

        public Builder setRoom(GameRoom gameRoom) {
            copyOnWrite();
            ((Response) this.instance).setRoom(gameRoom);
            return this;
        }

        public Builder setRoomCounter(RoomCounter roomCounter) {
            copyOnWrite();
            ((Response) this.instance).setRoomCounter(roomCounter);
            return this;
        }

        public Builder setSimpleRoom(int i2, SimpleRoom simpleRoom) {
            copyOnWrite();
            ((Response) this.instance).setSimpleRoom(i2, simpleRoom);
            return this;
        }

        public Builder setStatusCode(StatusCode statusCode) {
            copyOnWrite();
            ((Response) this.instance).setStatusCode(statusCode);
            return this;
        }

        public Builder setStatusCodeValue(int i2) {
            copyOnWrite();
            ((Response) this.instance).setStatusCodeValue(i2);
            return this;
        }

        public Builder setType(ProtoType protoType) {
            copyOnWrite();
            ((Response) this.instance).setType(protoType);
            return this;
        }

        public Builder setTypeValue(int i2) {
            copyOnWrite();
            ((Response) this.instance).setTypeValue(i2);
            return this;
        }

        public Builder setUserProfile(UserProfile userProfile) {
            copyOnWrite();
            ((Response) this.instance).setUserProfile(userProfile);
            return this;
        }

        private Builder() {
            super(Response.DEFAULT_INSTANCE);
        }

        public Builder addSimpleRoom(int i2, SimpleRoom simpleRoom) {
            copyOnWrite();
            ((Response) this.instance).addSimpleRoom(i2, simpleRoom);
            return this;
        }

        public Builder setAreaOnlinePeopleCount(AreaOnlinePeopleCount.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setAreaOnlinePeopleCount(builder);
            return this;
        }

        public Builder setFrameForwardServer(FrameForwardServer.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setFrameForwardServer(builder);
            return this;
        }

        public Builder setKickInfo(KickInfo.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setKickInfo(builder);
            return this;
        }

        public Builder setNotification(Notification.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setNotification(builder);
            return this;
        }

        public Builder setPong(Pong.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setPong(builder);
            return this;
        }

        public Builder setResponse(Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setResponse(builder);
            return this;
        }

        public Builder setRoom(GameRoom.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setRoom(builder);
            return this;
        }

        public Builder setRoomCounter(RoomCounter.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setRoomCounter(builder);
            return this;
        }

        public Builder setSimpleRoom(int i2, SimpleRoom.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setSimpleRoom(i2, builder);
            return this;
        }

        public Builder setUserProfile(UserProfile.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).setUserProfile(builder);
            return this;
        }

        public Builder addSimpleRoom(SimpleRoom.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).addSimpleRoom(builder);
            return this;
        }

        public Builder addSimpleRoom(int i2, SimpleRoom.Builder builder) {
            copyOnWrite();
            ((Response) this.instance).addSimpleRoom(i2, builder);
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public enum LogicErrorCode implements Internal.EnumLite {
        UNDEFINED_EROR_CODE(0),
        JOIN_GAME_ROOM_ERROR_PASSWORD(1),
        NOT_FOUND_ROOM(2),
        JOIN_GAME_ROOM_ERROR_FULL(3),
        JOIN_GAME_ROOM_ERROR_NEED_PASSWORD(4),
        CREATE_ROOM_NO_CHALLENGE_COINS(5),
        ROOM_ERROR_NO_CHALLENGE_COINS(6),
        JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS(7),
        ERROR_MESSAGE(8),
        ROOM_ERROR_DISSOLVE(9),
        JOIN_GAME_ROOM_ERROR_KICK(10),
        JOIN_GAME_ROOM_ERROR_NO_WHITE(11),
        UNRECOGNIZED(-1);
        
        public static final int CREATE_ROOM_NO_CHALLENGE_COINS_VALUE = 5;
        public static final int ERROR_MESSAGE_VALUE = 8;
        public static final int JOIN_GAME_ROOM_ERROR_FULL_VALUE = 3;
        public static final int JOIN_GAME_ROOM_ERROR_KICK_VALUE = 10;
        public static final int JOIN_GAME_ROOM_ERROR_NEED_PASSWORD_VALUE = 4;
        public static final int JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS_VALUE = 7;
        public static final int JOIN_GAME_ROOM_ERROR_NO_WHITE_VALUE = 11;
        public static final int JOIN_GAME_ROOM_ERROR_PASSWORD_VALUE = 1;
        public static final int NOT_FOUND_ROOM_VALUE = 2;
        public static final int ROOM_ERROR_DISSOLVE_VALUE = 9;
        public static final int ROOM_ERROR_NO_CHALLENGE_COINS_VALUE = 6;
        public static final int UNDEFINED_EROR_CODE_VALUE = 0;
        private static final Internal.EnumLiteMap<LogicErrorCode> internalValueMap = new Internal.EnumLiteMap<LogicErrorCode>() { // from class: com.papa91.battle.protocol.Response.LogicErrorCode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public LogicErrorCode findValueByNumber(int i2) {
                return LogicErrorCode.forNumber(i2);
            }
        };
        private final int value;

        LogicErrorCode(int i2) {
            this.value = i2;
        }

        public static LogicErrorCode forNumber(int i2) {
            switch (i2) {
                case 0:
                    return UNDEFINED_EROR_CODE;
                case 1:
                    return JOIN_GAME_ROOM_ERROR_PASSWORD;
                case 2:
                    return NOT_FOUND_ROOM;
                case 3:
                    return JOIN_GAME_ROOM_ERROR_FULL;
                case 4:
                    return JOIN_GAME_ROOM_ERROR_NEED_PASSWORD;
                case 5:
                    return CREATE_ROOM_NO_CHALLENGE_COINS;
                case 6:
                    return ROOM_ERROR_NO_CHALLENGE_COINS;
                case 7:
                    return JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS;
                case 8:
                    return ERROR_MESSAGE;
                case 9:
                    return ROOM_ERROR_DISSOLVE;
                case 10:
                    return JOIN_GAME_ROOM_ERROR_KICK;
                case 11:
                    return JOIN_GAME_ROOM_ERROR_NO_WHITE;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<LogicErrorCode> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static LogicErrorCode valueOf(int i2) {
            return forNumber(i2);
        }
    }

    /* loaded from: classes4.dex */
    public enum ProtoType implements Internal.EnumLite {
        UNDEFINED_RESPONSE(0),
        PONG(1),
        CREATE_ROOM(2),
        CREATE_ROOM_BROADCAST(3),
        UPDATE_ROOM_BROADCAST(4),
        KICK_ROOM_BROADCAST(11),
        MULTI_USER_BROADCAST(5),
        DISSOLVE_ROOM_BROADCAST(6),
        REFRESH_ROOM_LIST_UPDATE(7),
        REFRESH_ROOM_LIST_DISSOLVE(8),
        FULL_PUSH_ROOM_LIST_ING(9),
        FULL_PUSH_ROOM_LIST_FINISH(10),
        START_GAME_ROOM_BROADCAST(12),
        ACCOUNT_KICK_BROADCAST(13),
        SYNC_ROOM_INFO(14),
        GLOBAL_MESSAGE_BROADCAST(15),
        UPDATE_FRAME_SERVER_ADDR(16),
        IDLE_TIMEOUT(17),
        UPDATE_AREA_ONLINE_PEOPLE_BROADCAST(18),
        ROOM_READY_TIMEOUT_KICKOUT(19),
        ROOM_START_TIMEOUT_KICKOUT(20),
        REFERSH_USER_INFO(21),
        FORCE_DISSOLVE_ROOM_BROADCAST(22),
        UNRECOGNIZED(-1);
        
        public static final int ACCOUNT_KICK_BROADCAST_VALUE = 13;
        public static final int CREATE_ROOM_BROADCAST_VALUE = 3;
        public static final int CREATE_ROOM_VALUE = 2;
        public static final int DISSOLVE_ROOM_BROADCAST_VALUE = 6;
        public static final int FORCE_DISSOLVE_ROOM_BROADCAST_VALUE = 22;
        public static final int FULL_PUSH_ROOM_LIST_FINISH_VALUE = 10;
        public static final int FULL_PUSH_ROOM_LIST_ING_VALUE = 9;
        public static final int GLOBAL_MESSAGE_BROADCAST_VALUE = 15;
        public static final int IDLE_TIMEOUT_VALUE = 17;
        public static final int KICK_ROOM_BROADCAST_VALUE = 11;
        public static final int MULTI_USER_BROADCAST_VALUE = 5;
        public static final int PONG_VALUE = 1;
        public static final int REFERSH_USER_INFO_VALUE = 21;
        public static final int REFRESH_ROOM_LIST_DISSOLVE_VALUE = 8;
        public static final int REFRESH_ROOM_LIST_UPDATE_VALUE = 7;
        public static final int ROOM_READY_TIMEOUT_KICKOUT_VALUE = 19;
        public static final int ROOM_START_TIMEOUT_KICKOUT_VALUE = 20;
        public static final int START_GAME_ROOM_BROADCAST_VALUE = 12;
        public static final int SYNC_ROOM_INFO_VALUE = 14;
        public static final int UNDEFINED_RESPONSE_VALUE = 0;
        public static final int UPDATE_AREA_ONLINE_PEOPLE_BROADCAST_VALUE = 18;
        public static final int UPDATE_FRAME_SERVER_ADDR_VALUE = 16;
        public static final int UPDATE_ROOM_BROADCAST_VALUE = 4;
        private static final Internal.EnumLiteMap<ProtoType> internalValueMap = new Internal.EnumLiteMap<ProtoType>() { // from class: com.papa91.battle.protocol.Response.ProtoType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ProtoType findValueByNumber(int i2) {
                return ProtoType.forNumber(i2);
            }
        };
        private final int value;

        ProtoType(int i2) {
            this.value = i2;
        }

        public static ProtoType forNumber(int i2) {
            switch (i2) {
                case 0:
                    return UNDEFINED_RESPONSE;
                case 1:
                    return PONG;
                case 2:
                    return CREATE_ROOM;
                case 3:
                    return CREATE_ROOM_BROADCAST;
                case 4:
                    return UPDATE_ROOM_BROADCAST;
                case 5:
                    return MULTI_USER_BROADCAST;
                case 6:
                    return DISSOLVE_ROOM_BROADCAST;
                case 7:
                    return REFRESH_ROOM_LIST_UPDATE;
                case 8:
                    return REFRESH_ROOM_LIST_DISSOLVE;
                case 9:
                    return FULL_PUSH_ROOM_LIST_ING;
                case 10:
                    return FULL_PUSH_ROOM_LIST_FINISH;
                case 11:
                    return KICK_ROOM_BROADCAST;
                case 12:
                    return START_GAME_ROOM_BROADCAST;
                case 13:
                    return ACCOUNT_KICK_BROADCAST;
                case 14:
                    return SYNC_ROOM_INFO;
                case 15:
                    return GLOBAL_MESSAGE_BROADCAST;
                case 16:
                    return UPDATE_FRAME_SERVER_ADDR;
                case 17:
                    return IDLE_TIMEOUT;
                case 18:
                    return UPDATE_AREA_ONLINE_PEOPLE_BROADCAST;
                case 19:
                    return ROOM_READY_TIMEOUT_KICKOUT;
                case 20:
                    return ROOM_START_TIMEOUT_KICKOUT;
                case 21:
                    return REFERSH_USER_INFO;
                case 22:
                    return FORCE_DISSOLVE_ROOM_BROADCAST;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<ProtoType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ProtoType valueOf(int i2) {
            return forNumber(i2);
        }
    }

    /* loaded from: classes4.dex */
    public enum StatusCode implements Internal.EnumLite {
        UNDEFINED_CODE(0),
        SERVICE_FAILURE(1),
        PARAMS_FAILURE(2),
        INTERNAL_FAILURE(3),
        UN_LOGIN_FAILURE(4),
        RESULT_FAILURE(5),
        RESULT_SUCCESS(6),
        UNRECOGNIZED(-1);
        
        public static final int INTERNAL_FAILURE_VALUE = 3;
        public static final int PARAMS_FAILURE_VALUE = 2;
        public static final int RESULT_FAILURE_VALUE = 5;
        public static final int RESULT_SUCCESS_VALUE = 6;
        public static final int SERVICE_FAILURE_VALUE = 1;
        public static final int UNDEFINED_CODE_VALUE = 0;
        public static final int UN_LOGIN_FAILURE_VALUE = 4;
        private static final Internal.EnumLiteMap<StatusCode> internalValueMap = new Internal.EnumLiteMap<StatusCode>() { // from class: com.papa91.battle.protocol.Response.StatusCode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public StatusCode findValueByNumber(int i2) {
                return StatusCode.forNumber(i2);
            }
        };
        private final int value;

        StatusCode(int i2) {
            this.value = i2;
        }

        public static StatusCode forNumber(int i2) {
            switch (i2) {
                case 0:
                    return UNDEFINED_CODE;
                case 1:
                    return SERVICE_FAILURE;
                case 2:
                    return PARAMS_FAILURE;
                case 3:
                    return INTERNAL_FAILURE;
                case 4:
                    return UN_LOGIN_FAILURE;
                case 5:
                    return RESULT_FAILURE;
                case 6:
                    return RESULT_SUCCESS;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<StatusCode> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static StatusCode valueOf(int i2) {
            return forNumber(i2);
        }
    }

    static {
        Response response = new Response();
        DEFAULT_INSTANCE = response;
        response.makeImmutable();
    }

    private Response() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllBroadcastUsers(Iterable<? extends Integer> iterable) {
        ensureBroadcastUsersIsMutable();
        AbstractMessageLite.addAll(iterable, this.broadcastUsers_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllSimpleRoom(Iterable<? extends SimpleRoom> iterable) {
        ensureSimpleRoomIsMutable();
        AbstractMessageLite.addAll(iterable, this.simpleRoom_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBroadcastUsers(int i2) {
        ensureBroadcastUsersIsMutable();
        this.broadcastUsers_.addInt(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSimpleRoom(SimpleRoom simpleRoom) {
        Objects.requireNonNull(simpleRoom);
        ensureSimpleRoomIsMutable();
        this.simpleRoom_.add(simpleRoom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAreaOnlinePeopleCount() {
        this.areaOnlinePeopleCount_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBroadcastChannel() {
        this.broadcastChannel_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBroadcastUsers() {
        this.broadcastUsers_ = GeneratedMessageLite.emptyIntList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEndDelimiter() {
        this.endDelimiter_ = getDefaultInstance().getEndDelimiter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearError() {
        this.error_ = getDefaultInstance().getError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFrameForwardServer() {
        this.frameForwardServer_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearJoinSpectatorReason() {
        this.joinSpectatorReason_ = getDefaultInstance().getJoinSpectatorReason();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearKickInfo() {
        this.kickInfo_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLogicErrorCode() {
        this.logicErrorCode_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNotification() {
        this.notification_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPong() {
        this.pong_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequestId() {
        this.requestId_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearResponse() {
        this.response_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRoom() {
        this.room_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRoomCounter() {
        this.roomCounter_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSimpleRoom() {
        this.simpleRoom_ = GeneratedMessageLite.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearStatusCode() {
        this.statusCode_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearType() {
        this.type_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUserProfile() {
        this.userProfile_ = null;
    }

    private void ensureBroadcastUsersIsMutable() {
        if (this.broadcastUsers_.isModifiable()) {
            return;
        }
        this.broadcastUsers_ = GeneratedMessageLite.mutableCopy(this.broadcastUsers_);
    }

    private void ensureSimpleRoomIsMutable() {
        if (this.simpleRoom_.isModifiable()) {
            return;
        }
        this.simpleRoom_ = GeneratedMessageLite.mutableCopy(this.simpleRoom_);
    }

    public static Response getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeAreaOnlinePeopleCount(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        AreaOnlinePeopleCount areaOnlinePeopleCount2 = this.areaOnlinePeopleCount_;
        if (areaOnlinePeopleCount2 != null && areaOnlinePeopleCount2 != AreaOnlinePeopleCount.getDefaultInstance()) {
            this.areaOnlinePeopleCount_ = AreaOnlinePeopleCount.newBuilder(this.areaOnlinePeopleCount_).mergeFrom((AreaOnlinePeopleCount.Builder) areaOnlinePeopleCount).buildPartial();
        } else {
            this.areaOnlinePeopleCount_ = areaOnlinePeopleCount;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeFrameForwardServer(FrameForwardServer frameForwardServer) {
        FrameForwardServer frameForwardServer2 = this.frameForwardServer_;
        if (frameForwardServer2 != null && frameForwardServer2 != FrameForwardServer.getDefaultInstance()) {
            this.frameForwardServer_ = FrameForwardServer.newBuilder(this.frameForwardServer_).mergeFrom((FrameForwardServer.Builder) frameForwardServer).buildPartial();
        } else {
            this.frameForwardServer_ = frameForwardServer;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeKickInfo(KickInfo kickInfo) {
        KickInfo kickInfo2 = this.kickInfo_;
        if (kickInfo2 != null && kickInfo2 != KickInfo.getDefaultInstance()) {
            this.kickInfo_ = KickInfo.newBuilder(this.kickInfo_).mergeFrom((KickInfo.Builder) kickInfo).buildPartial();
        } else {
            this.kickInfo_ = kickInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeNotification(Notification notification) {
        Notification notification2 = this.notification_;
        if (notification2 != null && notification2 != Notification.getDefaultInstance()) {
            this.notification_ = Notification.newBuilder(this.notification_).mergeFrom((Notification.Builder) notification).buildPartial();
        } else {
            this.notification_ = notification;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergePong(Pong pong) {
        Pong pong2 = this.pong_;
        if (pong2 != null && pong2 != Pong.getDefaultInstance()) {
            this.pong_ = Pong.newBuilder(this.pong_).mergeFrom((Pong.Builder) pong).buildPartial();
        } else {
            this.pong_ = pong;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeResponse(Response response) {
        Response response2 = this.response_;
        if (response2 != null && response2 != getDefaultInstance()) {
            this.response_ = newBuilder(this.response_).mergeFrom((Builder) response).buildPartial();
        } else {
            this.response_ = response;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeRoom(GameRoom gameRoom) {
        GameRoom gameRoom2 = this.room_;
        if (gameRoom2 != null && gameRoom2 != GameRoom.getDefaultInstance()) {
            this.room_ = GameRoom.newBuilder(this.room_).mergeFrom((GameRoom.Builder) gameRoom).buildPartial();
        } else {
            this.room_ = gameRoom;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeRoomCounter(RoomCounter roomCounter) {
        RoomCounter roomCounter2 = this.roomCounter_;
        if (roomCounter2 != null && roomCounter2 != RoomCounter.getDefaultInstance()) {
            this.roomCounter_ = RoomCounter.newBuilder(this.roomCounter_).mergeFrom((RoomCounter.Builder) roomCounter).buildPartial();
        } else {
            this.roomCounter_ = roomCounter;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeUserProfile(UserProfile userProfile) {
        UserProfile userProfile2 = this.userProfile_;
        if (userProfile2 != null && userProfile2 != UserProfile.getDefaultInstance()) {
            this.userProfile_ = UserProfile.newBuilder(this.userProfile_).mergeFrom((UserProfile.Builder) userProfile).buildPartial();
        } else {
            this.userProfile_ = userProfile;
        }
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Response) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (Response) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<Response> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSimpleRoom(int i2) {
        ensureSimpleRoomIsMutable();
        this.simpleRoom_.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAreaOnlinePeopleCount(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        Objects.requireNonNull(areaOnlinePeopleCount);
        this.areaOnlinePeopleCount_ = areaOnlinePeopleCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBroadcastChannel(BroadcastChannel broadcastChannel) {
        Objects.requireNonNull(broadcastChannel);
        this.broadcastChannel_ = broadcastChannel.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBroadcastChannelValue(int i2) {
        this.broadcastChannel_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBroadcastUsers(int i2, int i4) {
        ensureBroadcastUsersIsMutable();
        this.broadcastUsers_.setInt(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEndDelimiter(String str) {
        Objects.requireNonNull(str);
        this.endDelimiter_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEndDelimiterBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.endDelimiter_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setError(String str) {
        Objects.requireNonNull(str);
        this.error_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setErrorBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.error_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFrameForwardServer(FrameForwardServer frameForwardServer) {
        Objects.requireNonNull(frameForwardServer);
        this.frameForwardServer_ = frameForwardServer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJoinSpectatorReason(String str) {
        Objects.requireNonNull(str);
        this.joinSpectatorReason_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJoinSpectatorReasonBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.joinSpectatorReason_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKickInfo(KickInfo kickInfo) {
        Objects.requireNonNull(kickInfo);
        this.kickInfo_ = kickInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLogicErrorCode(LogicErrorCode logicErrorCode) {
        Objects.requireNonNull(logicErrorCode);
        this.logicErrorCode_ = logicErrorCode.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLogicErrorCodeValue(int i2) {
        this.logicErrorCode_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNotification(Notification notification) {
        Objects.requireNonNull(notification);
        this.notification_ = notification;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPong(Pong pong) {
        Objects.requireNonNull(pong);
        this.pong_ = pong;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestId(long j4) {
        this.requestId_ = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResponse(Response response) {
        Objects.requireNonNull(response);
        this.response_ = response;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoom(GameRoom gameRoom) {
        Objects.requireNonNull(gameRoom);
        this.room_ = gameRoom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomCounter(RoomCounter roomCounter) {
        Objects.requireNonNull(roomCounter);
        this.roomCounter_ = roomCounter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSimpleRoom(int i2, SimpleRoom simpleRoom) {
        Objects.requireNonNull(simpleRoom);
        ensureSimpleRoomIsMutable();
        this.simpleRoom_.set(i2, simpleRoom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatusCode(StatusCode statusCode) {
        Objects.requireNonNull(statusCode);
        this.statusCode_ = statusCode.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatusCodeValue(int i2) {
        this.statusCode_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setType(ProtoType protoType) {
        Objects.requireNonNull(protoType);
        this.type_ = protoType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTypeValue(int i2) {
        this.type_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserProfile(UserProfile userProfile) {
        Objects.requireNonNull(userProfile);
        this.userProfile_ = userProfile;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new Response();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                this.broadcastUsers_.makeImmutable();
                this.simpleRoom_.makeImmutable();
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                Response response = (Response) obj2;
                int i2 = this.statusCode_;
                boolean z3 = i2 != 0;
                int i4 = response.statusCode_;
                this.statusCode_ = visitor.visitInt(z3, i2, i4 != 0, i4);
                long j4 = this.requestId_;
                boolean z4 = j4 != 0;
                long j5 = response.requestId_;
                this.requestId_ = visitor.visitLong(z4, j4, j5 != 0, j5);
                int i5 = this.type_;
                boolean z5 = i5 != 0;
                int i6 = response.type_;
                this.type_ = visitor.visitInt(z5, i5, i6 != 0, i6);
                this.room_ = (GameRoom) visitor.visitMessage(this.room_, response.room_);
                this.response_ = (Response) visitor.visitMessage(this.response_, response.response_);
                this.broadcastUsers_ = visitor.visitIntList(this.broadcastUsers_, response.broadcastUsers_);
                this.error_ = visitor.visitString(!this.error_.isEmpty(), this.error_, !response.error_.isEmpty(), response.error_);
                this.simpleRoom_ = visitor.visitList(this.simpleRoom_, response.simpleRoom_);
                int i7 = this.logicErrorCode_;
                boolean z6 = i7 != 0;
                int i8 = response.logicErrorCode_;
                this.logicErrorCode_ = visitor.visitInt(z6, i7, i8 != 0, i8);
                this.joinSpectatorReason_ = visitor.visitString(!this.joinSpectatorReason_.isEmpty(), this.joinSpectatorReason_, !response.joinSpectatorReason_.isEmpty(), response.joinSpectatorReason_);
                this.pong_ = (Pong) visitor.visitMessage(this.pong_, response.pong_);
                this.roomCounter_ = (RoomCounter) visitor.visitMessage(this.roomCounter_, response.roomCounter_);
                this.kickInfo_ = (KickInfo) visitor.visitMessage(this.kickInfo_, response.kickInfo_);
                this.notification_ = (Notification) visitor.visitMessage(this.notification_, response.notification_);
                this.frameForwardServer_ = (FrameForwardServer) visitor.visitMessage(this.frameForwardServer_, response.frameForwardServer_);
                int i9 = this.broadcastChannel_;
                boolean z7 = i9 != 0;
                int i10 = response.broadcastChannel_;
                this.broadcastChannel_ = visitor.visitInt(z7, i9, i10 != 0, i10);
                this.areaOnlinePeopleCount_ = (AreaOnlinePeopleCount) visitor.visitMessage(this.areaOnlinePeopleCount_, response.areaOnlinePeopleCount_);
                this.userProfile_ = (UserProfile) visitor.visitMessage(this.userProfile_, response.userProfile_);
                this.endDelimiter_ = visitor.visitString(!this.endDelimiter_.isEmpty(), this.endDelimiter_, !response.endDelimiter_.isEmpty(), response.endDelimiter_);
                if (visitor == GeneratedMessageLite.MergeFromVisitor.INSTANCE) {
                    this.bitField0_ |= response.bitField0_;
                }
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r0) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            switch (readTag) {
                                case 0:
                                    break;
                                case 8:
                                    this.statusCode_ = codedInputStream.readEnum();
                                    continue;
                                case 16:
                                    this.requestId_ = codedInputStream.readInt64();
                                    continue;
                                case 24:
                                    this.type_ = codedInputStream.readEnum();
                                    continue;
                                case 34:
                                    GameRoom gameRoom = this.room_;
                                    GameRoom.Builder builder = gameRoom != null ? gameRoom.toBuilder() : null;
                                    GameRoom gameRoom2 = (GameRoom) codedInputStream.readMessage(GameRoom.parser(), extensionRegistryLite);
                                    this.room_ = gameRoom2;
                                    if (builder != null) {
                                        builder.mergeFrom((GameRoom.Builder) gameRoom2);
                                        this.room_ = builder.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 42:
                                    Response response2 = this.response_;
                                    Builder builder2 = response2 != null ? response2.toBuilder() : null;
                                    Response response3 = (Response) codedInputStream.readMessage(parser(), extensionRegistryLite);
                                    this.response_ = response3;
                                    if (builder2 != null) {
                                        builder2.mergeFrom((Builder) response3);
                                        this.response_ = builder2.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 48:
                                    if (!this.broadcastUsers_.isModifiable()) {
                                        this.broadcastUsers_ = GeneratedMessageLite.mutableCopy(this.broadcastUsers_);
                                    }
                                    this.broadcastUsers_.addInt(codedInputStream.readInt32());
                                    continue;
                                case 50:
                                    int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    if (!this.broadcastUsers_.isModifiable() && codedInputStream.getBytesUntilLimit() > 0) {
                                        this.broadcastUsers_ = GeneratedMessageLite.mutableCopy(this.broadcastUsers_);
                                    }
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.broadcastUsers_.addInt(codedInputStream.readInt32());
                                    }
                                    codedInputStream.popLimit(pushLimit);
                                    continue;
                                    break;
                                case 58:
                                    this.error_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 66:
                                    if (!this.simpleRoom_.isModifiable()) {
                                        this.simpleRoom_ = GeneratedMessageLite.mutableCopy(this.simpleRoom_);
                                    }
                                    this.simpleRoom_.add((SimpleRoom) codedInputStream.readMessage(SimpleRoom.parser(), extensionRegistryLite));
                                    continue;
                                case 72:
                                    this.logicErrorCode_ = codedInputStream.readEnum();
                                    continue;
                                case 82:
                                    this.joinSpectatorReason_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 90:
                                    Pong pong = this.pong_;
                                    Pong.Builder builder3 = pong != null ? pong.toBuilder() : null;
                                    Pong pong2 = (Pong) codedInputStream.readMessage(Pong.parser(), extensionRegistryLite);
                                    this.pong_ = pong2;
                                    if (builder3 != null) {
                                        builder3.mergeFrom((Pong.Builder) pong2);
                                        this.pong_ = builder3.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 98:
                                    RoomCounter roomCounter = this.roomCounter_;
                                    RoomCounter.Builder builder4 = roomCounter != null ? roomCounter.toBuilder() : null;
                                    RoomCounter roomCounter2 = (RoomCounter) codedInputStream.readMessage(RoomCounter.parser(), extensionRegistryLite);
                                    this.roomCounter_ = roomCounter2;
                                    if (builder4 != null) {
                                        builder4.mergeFrom((RoomCounter.Builder) roomCounter2);
                                        this.roomCounter_ = builder4.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 106:
                                    KickInfo kickInfo = this.kickInfo_;
                                    KickInfo.Builder builder5 = kickInfo != null ? kickInfo.toBuilder() : null;
                                    KickInfo kickInfo2 = (KickInfo) codedInputStream.readMessage(KickInfo.parser(), extensionRegistryLite);
                                    this.kickInfo_ = kickInfo2;
                                    if (builder5 != null) {
                                        builder5.mergeFrom((KickInfo.Builder) kickInfo2);
                                        this.kickInfo_ = builder5.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 114:
                                    Notification notification = this.notification_;
                                    Notification.Builder builder6 = notification != null ? notification.toBuilder() : null;
                                    Notification notification2 = (Notification) codedInputStream.readMessage(Notification.parser(), extensionRegistryLite);
                                    this.notification_ = notification2;
                                    if (builder6 != null) {
                                        builder6.mergeFrom((Notification.Builder) notification2);
                                        this.notification_ = builder6.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 122:
                                    FrameForwardServer frameForwardServer = this.frameForwardServer_;
                                    FrameForwardServer.Builder builder7 = frameForwardServer != null ? frameForwardServer.toBuilder() : null;
                                    FrameForwardServer frameForwardServer2 = (FrameForwardServer) codedInputStream.readMessage(FrameForwardServer.parser(), extensionRegistryLite);
                                    this.frameForwardServer_ = frameForwardServer2;
                                    if (builder7 != null) {
                                        builder7.mergeFrom((FrameForwardServer.Builder) frameForwardServer2);
                                        this.frameForwardServer_ = builder7.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 128:
                                    this.broadcastChannel_ = codedInputStream.readEnum();
                                    continue;
                                case 138:
                                    AreaOnlinePeopleCount areaOnlinePeopleCount = this.areaOnlinePeopleCount_;
                                    AreaOnlinePeopleCount.Builder builder8 = areaOnlinePeopleCount != null ? areaOnlinePeopleCount.toBuilder() : null;
                                    AreaOnlinePeopleCount areaOnlinePeopleCount2 = (AreaOnlinePeopleCount) codedInputStream.readMessage(AreaOnlinePeopleCount.parser(), extensionRegistryLite);
                                    this.areaOnlinePeopleCount_ = areaOnlinePeopleCount2;
                                    if (builder8 != null) {
                                        builder8.mergeFrom((AreaOnlinePeopleCount.Builder) areaOnlinePeopleCount2);
                                        this.areaOnlinePeopleCount_ = builder8.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 146:
                                    UserProfile userProfile = this.userProfile_;
                                    UserProfile.Builder builder9 = userProfile != null ? userProfile.toBuilder() : null;
                                    UserProfile userProfile2 = (UserProfile) codedInputStream.readMessage(UserProfile.parser(), extensionRegistryLite);
                                    this.userProfile_ = userProfile2;
                                    if (builder9 != null) {
                                        builder9.mergeFrom((UserProfile.Builder) userProfile2);
                                        this.userProfile_ = builder9.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 7994:
                                    this.endDelimiter_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                default:
                                    if (!codedInputStream.skipField(readTag)) {
                                        break;
                                    } else {
                                        continue;
                                    }
                            }
                            r0 = true;
                        } catch (IOException e4) {
                            throw new RuntimeException(new InvalidProtocolBufferException(e4.getMessage()).setUnfinishedMessage(this));
                        }
                    } catch (InvalidProtocolBufferException e5) {
                        throw new RuntimeException(e5.setUnfinishedMessage(this));
                    }
                }
                break;
            case 7:
                break;
            case 8:
                if (PARSER == null) {
                    synchronized (Response.class) {
                        if (PARSER == null) {
                            PARSER = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                        }
                    }
                }
                return PARSER;
            default:
                throw new UnsupportedOperationException();
        }
        return DEFAULT_INSTANCE;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public AreaOnlinePeopleCount getAreaOnlinePeopleCount() {
        AreaOnlinePeopleCount areaOnlinePeopleCount = this.areaOnlinePeopleCount_;
        return areaOnlinePeopleCount == null ? AreaOnlinePeopleCount.getDefaultInstance() : areaOnlinePeopleCount;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public BroadcastChannel getBroadcastChannel() {
        BroadcastChannel forNumber = BroadcastChannel.forNumber(this.broadcastChannel_);
        return forNumber == null ? BroadcastChannel.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getBroadcastChannelValue() {
        return this.broadcastChannel_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getBroadcastUsers(int i2) {
        return this.broadcastUsers_.getInt(i2);
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getBroadcastUsersCount() {
        return this.broadcastUsers_.size();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public List<Integer> getBroadcastUsersList() {
        return this.broadcastUsers_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public String getEndDelimiter() {
        return this.endDelimiter_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ByteString getEndDelimiterBytes() {
        return ByteString.copyFromUtf8(this.endDelimiter_);
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public String getError() {
        return this.error_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ByteString getErrorBytes() {
        return ByteString.copyFromUtf8(this.error_);
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public FrameForwardServer getFrameForwardServer() {
        FrameForwardServer frameForwardServer = this.frameForwardServer_;
        return frameForwardServer == null ? FrameForwardServer.getDefaultInstance() : frameForwardServer;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public String getJoinSpectatorReason() {
        return this.joinSpectatorReason_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ByteString getJoinSpectatorReasonBytes() {
        return ByteString.copyFromUtf8(this.joinSpectatorReason_);
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public KickInfo getKickInfo() {
        KickInfo kickInfo = this.kickInfo_;
        return kickInfo == null ? KickInfo.getDefaultInstance() : kickInfo;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public LogicErrorCode getLogicErrorCode() {
        LogicErrorCode forNumber = LogicErrorCode.forNumber(this.logicErrorCode_);
        return forNumber == null ? LogicErrorCode.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getLogicErrorCodeValue() {
        return this.logicErrorCode_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public Notification getNotification() {
        Notification notification = this.notification_;
        return notification == null ? Notification.getDefaultInstance() : notification;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public Pong getPong() {
        Pong pong = this.pong_;
        return pong == null ? Pong.getDefaultInstance() : pong;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public long getRequestId() {
        return this.requestId_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public Response getResponse() {
        Response response = this.response_;
        return response == null ? getDefaultInstance() : response;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public GameRoom getRoom() {
        GameRoom gameRoom = this.room_;
        return gameRoom == null ? GameRoom.getDefaultInstance() : gameRoom;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public RoomCounter getRoomCounter() {
        RoomCounter roomCounter = this.roomCounter_;
        return roomCounter == null ? RoomCounter.getDefaultInstance() : roomCounter;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeEnumSize = this.statusCode_ != StatusCode.UNDEFINED_CODE.getNumber() ? CodedOutputStream.computeEnumSize(1, this.statusCode_) + 0 : 0;
        long j4 = this.requestId_;
        if (j4 != 0) {
            computeEnumSize += CodedOutputStream.computeInt64Size(2, j4);
        }
        if (this.type_ != ProtoType.UNDEFINED_RESPONSE.getNumber()) {
            computeEnumSize += CodedOutputStream.computeEnumSize(3, this.type_);
        }
        if (this.room_ != null) {
            computeEnumSize += CodedOutputStream.computeMessageSize(4, getRoom());
        }
        if (this.response_ != null) {
            computeEnumSize += CodedOutputStream.computeMessageSize(5, getResponse());
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.broadcastUsers_.size(); i5++) {
            i4 += CodedOutputStream.computeInt32SizeNoTag(this.broadcastUsers_.getInt(i5));
        }
        int size = computeEnumSize + i4 + (getBroadcastUsersList().size() * 1);
        if (!this.error_.isEmpty()) {
            size += CodedOutputStream.computeStringSize(7, getError());
        }
        for (int i6 = 0; i6 < this.simpleRoom_.size(); i6++) {
            size += CodedOutputStream.computeMessageSize(8, this.simpleRoom_.get(i6));
        }
        if (this.logicErrorCode_ != LogicErrorCode.UNDEFINED_EROR_CODE.getNumber()) {
            size += CodedOutputStream.computeEnumSize(9, this.logicErrorCode_);
        }
        if (!this.joinSpectatorReason_.isEmpty()) {
            size += CodedOutputStream.computeStringSize(10, getJoinSpectatorReason());
        }
        if (this.pong_ != null) {
            size += CodedOutputStream.computeMessageSize(11, getPong());
        }
        if (this.roomCounter_ != null) {
            size += CodedOutputStream.computeMessageSize(12, getRoomCounter());
        }
        if (this.kickInfo_ != null) {
            size += CodedOutputStream.computeMessageSize(13, getKickInfo());
        }
        if (this.notification_ != null) {
            size += CodedOutputStream.computeMessageSize(14, getNotification());
        }
        if (this.frameForwardServer_ != null) {
            size += CodedOutputStream.computeMessageSize(15, getFrameForwardServer());
        }
        if (this.broadcastChannel_ != BroadcastChannel.ALL.getNumber()) {
            size += CodedOutputStream.computeEnumSize(16, this.broadcastChannel_);
        }
        if (this.areaOnlinePeopleCount_ != null) {
            size += CodedOutputStream.computeMessageSize(17, getAreaOnlinePeopleCount());
        }
        if (this.userProfile_ != null) {
            size += CodedOutputStream.computeMessageSize(18, getUserProfile());
        }
        if (!this.endDelimiter_.isEmpty()) {
            size += CodedOutputStream.computeStringSize(999, getEndDelimiter());
        }
        this.memoizedSerializedSize = size;
        return size;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public SimpleRoom getSimpleRoom(int i2) {
        return this.simpleRoom_.get(i2);
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getSimpleRoomCount() {
        return this.simpleRoom_.size();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public List<SimpleRoom> getSimpleRoomList() {
        return this.simpleRoom_;
    }

    public SimpleRoomOrBuilder getSimpleRoomOrBuilder(int i2) {
        return this.simpleRoom_.get(i2);
    }

    public List<? extends SimpleRoomOrBuilder> getSimpleRoomOrBuilderList() {
        return this.simpleRoom_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public StatusCode getStatusCode() {
        StatusCode forNumber = StatusCode.forNumber(this.statusCode_);
        return forNumber == null ? StatusCode.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getStatusCodeValue() {
        return this.statusCode_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ProtoType getType() {
        ProtoType forNumber = ProtoType.forNumber(this.type_);
        return forNumber == null ? ProtoType.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getTypeValue() {
        return this.type_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public UserProfile getUserProfile() {
        UserProfile userProfile = this.userProfile_;
        return userProfile == null ? UserProfile.getDefaultInstance() : userProfile;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasAreaOnlinePeopleCount() {
        return this.areaOnlinePeopleCount_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasFrameForwardServer() {
        return this.frameForwardServer_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasKickInfo() {
        return this.kickInfo_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasNotification() {
        return this.notification_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasPong() {
        return this.pong_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasResponse() {
        return this.response_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasRoom() {
        return this.room_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasRoomCounter() {
        return this.roomCounter_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasUserProfile() {
        return this.userProfile_ != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (this.statusCode_ != StatusCode.UNDEFINED_CODE.getNumber()) {
            codedOutputStream.writeEnum(1, this.statusCode_);
        }
        long j4 = this.requestId_;
        if (j4 != 0) {
            codedOutputStream.writeInt64(2, j4);
        }
        if (this.type_ != ProtoType.UNDEFINED_RESPONSE.getNumber()) {
            codedOutputStream.writeEnum(3, this.type_);
        }
        if (this.room_ != null) {
            codedOutputStream.writeMessage(4, getRoom());
        }
        if (this.response_ != null) {
            codedOutputStream.writeMessage(5, getResponse());
        }
        for (int i2 = 0; i2 < this.broadcastUsers_.size(); i2++) {
            codedOutputStream.writeInt32(6, this.broadcastUsers_.getInt(i2));
        }
        if (!this.error_.isEmpty()) {
            codedOutputStream.writeString(7, getError());
        }
        for (int i4 = 0; i4 < this.simpleRoom_.size(); i4++) {
            codedOutputStream.writeMessage(8, this.simpleRoom_.get(i4));
        }
        if (this.logicErrorCode_ != LogicErrorCode.UNDEFINED_EROR_CODE.getNumber()) {
            codedOutputStream.writeEnum(9, this.logicErrorCode_);
        }
        if (!this.joinSpectatorReason_.isEmpty()) {
            codedOutputStream.writeString(10, getJoinSpectatorReason());
        }
        if (this.pong_ != null) {
            codedOutputStream.writeMessage(11, getPong());
        }
        if (this.roomCounter_ != null) {
            codedOutputStream.writeMessage(12, getRoomCounter());
        }
        if (this.kickInfo_ != null) {
            codedOutputStream.writeMessage(13, getKickInfo());
        }
        if (this.notification_ != null) {
            codedOutputStream.writeMessage(14, getNotification());
        }
        if (this.frameForwardServer_ != null) {
            codedOutputStream.writeMessage(15, getFrameForwardServer());
        }
        if (this.broadcastChannel_ != BroadcastChannel.ALL.getNumber()) {
            codedOutputStream.writeEnum(16, this.broadcastChannel_);
        }
        if (this.areaOnlinePeopleCount_ != null) {
            codedOutputStream.writeMessage(17, getAreaOnlinePeopleCount());
        }
        if (this.userProfile_ != null) {
            codedOutputStream.writeMessage(18, getUserProfile());
        }
        if (this.endDelimiter_.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(999, getEndDelimiter());
    }

    public static Builder newBuilder(Response response) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) response);
    }

    public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Response) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (Response) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAreaOnlinePeopleCount(AreaOnlinePeopleCount.Builder builder) {
        this.areaOnlinePeopleCount_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFrameForwardServer(FrameForwardServer.Builder builder) {
        this.frameForwardServer_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKickInfo(KickInfo.Builder builder) {
        this.kickInfo_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNotification(Notification.Builder builder) {
        this.notification_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPong(Pong.Builder builder) {
        this.pong_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResponse(Builder builder) {
        this.response_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoom(GameRoom.Builder builder) {
        this.room_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomCounter(RoomCounter.Builder builder) {
        this.roomCounter_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserProfile(UserProfile.Builder builder) {
        this.userProfile_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSimpleRoom(int i2, SimpleRoom simpleRoom) {
        Objects.requireNonNull(simpleRoom);
        ensureSimpleRoomIsMutable();
        this.simpleRoom_.add(i2, simpleRoom);
    }

    public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Response) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSimpleRoom(int i2, SimpleRoom.Builder builder) {
        ensureSimpleRoomIsMutable();
        this.simpleRoom_.set(i2, builder.build());
    }

    public static Response parseFrom(InputStream inputStream) throws IOException {
        return (Response) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSimpleRoom(SimpleRoom.Builder builder) {
        ensureSimpleRoomIsMutable();
        this.simpleRoom_.add(builder.build());
    }

    public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Response) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSimpleRoom(int i2, SimpleRoom.Builder builder) {
        ensureSimpleRoomIsMutable();
        this.simpleRoom_.add(i2, builder.build());
    }
}
