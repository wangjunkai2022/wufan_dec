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
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class Params extends GeneratedMessageLite<Params, Builder> implements ParamsOrBuilder, Serializable {
    public static final int ALLOWPCJOIN_FIELD_NUMBER = 24;
    public static final int ALLOWPERIPHERALJOIN_FIELD_NUMBER = 8;
    public static final int ALLOWSPECTATORJOIN_FIELD_NUMBER = 7;
    public static final int BATTLEAREA_FIELD_NUMBER = 19;
    public static final int CHALLENGECOINS_FIELD_NUMBER = 5;
    public static final int CHANNELTYPE_FIELD_NUMBER = 20;
    public static final int CLOSEPOSITION_FIELD_NUMBER = 9;
    public static final int COLLECTIONID_FIELD_NUMBER = 21;
    private static final Params DEFAULT_INSTANCE;
    public static final int DEVICEID_FIELD_NUMBER = 17;
    public static final int DISABLEMOBILEJOIN_FIELD_NUMBER = 25;
    public static final int FIGHTID_FIELD_NUMBER = 14;
    public static final int FROMLIVE_FIELD_NUMBER = 22;
    public static final int GAMEID_FIELD_NUMBER = 3;
    public static final int MERGEMESSAGECHANNEL_FIELD_NUMBER = 26;
    private static volatile Parser<Params> PARSER = null;
    public static final int PASSWORD_FIELD_NUMBER = 6;
    public static final int PINGVAL_FIELD_NUMBER = 15;
    public static final int PLAYMODE_FIELD_NUMBER = 23;
    public static final int ROOMID_FIELD_NUMBER = 4;
    public static final int ROOMPOSITIONINDEX_FIELD_NUMBER = 10;
    public static final int ROOMTYPE_FIELD_NUMBER = 11;
    public static final int SILENT_FIELD_NUMBER = 12;
    public static final int TIMESTAMP_FIELD_NUMBER = 16;
    public static final int TOKEN_FIELD_NUMBER = 2;
    public static final int UID_FIELD_NUMBER = 1;
    public static final int USEPERIPHERAL_FIELD_NUMBER = 13;
    private boolean allowPCJoin_;
    private boolean allowPeripheralJoin_;
    private boolean allowSpectatorJoin_;
    private int battleArea_;
    private int challengeCoins_;
    private int channelType_;
    private boolean closePosition_;
    private int collectionId_;
    private boolean disableMobileJoin_;
    private long fightId_;
    private boolean fromLive_;
    private long gameId_;
    private boolean mergeMessageChannel_;
    private int pingVal_;
    private int playMode_;
    private int roomId_;
    private int roomPositionIndex_;
    private int roomType_;
    private boolean silent_;
    private long timestamp_;
    private int uid_;
    private boolean usePeripheral_;
    private String token_ = "";
    private String password_ = "";
    private String deviceId_ = "";

    /* renamed from: com.papa91.battle.protocol.Params$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<Params, Builder> implements ParamsOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearAllowPCJoin() {
            copyOnWrite();
            ((Params) this.instance).clearAllowPCJoin();
            return this;
        }

        public Builder clearAllowPeripheralJoin() {
            copyOnWrite();
            ((Params) this.instance).clearAllowPeripheralJoin();
            return this;
        }

        public Builder clearAllowSpectatorJoin() {
            copyOnWrite();
            ((Params) this.instance).clearAllowSpectatorJoin();
            return this;
        }

        public Builder clearBattleArea() {
            copyOnWrite();
            ((Params) this.instance).clearBattleArea();
            return this;
        }

        public Builder clearChallengeCoins() {
            copyOnWrite();
            ((Params) this.instance).clearChallengeCoins();
            return this;
        }

        public Builder clearChannelType() {
            copyOnWrite();
            ((Params) this.instance).clearChannelType();
            return this;
        }

        public Builder clearClosePosition() {
            copyOnWrite();
            ((Params) this.instance).clearClosePosition();
            return this;
        }

        public Builder clearCollectionId() {
            copyOnWrite();
            ((Params) this.instance).clearCollectionId();
            return this;
        }

        public Builder clearDeviceId() {
            copyOnWrite();
            ((Params) this.instance).clearDeviceId();
            return this;
        }

        public Builder clearDisableMobileJoin() {
            copyOnWrite();
            ((Params) this.instance).clearDisableMobileJoin();
            return this;
        }

        public Builder clearFightId() {
            copyOnWrite();
            ((Params) this.instance).clearFightId();
            return this;
        }

        public Builder clearFromLive() {
            copyOnWrite();
            ((Params) this.instance).clearFromLive();
            return this;
        }

        public Builder clearGameId() {
            copyOnWrite();
            ((Params) this.instance).clearGameId();
            return this;
        }

        public Builder clearMergeMessageChannel() {
            copyOnWrite();
            ((Params) this.instance).clearMergeMessageChannel();
            return this;
        }

        public Builder clearPassword() {
            copyOnWrite();
            ((Params) this.instance).clearPassword();
            return this;
        }

        public Builder clearPingVal() {
            copyOnWrite();
            ((Params) this.instance).clearPingVal();
            return this;
        }

        public Builder clearPlayMode() {
            copyOnWrite();
            ((Params) this.instance).clearPlayMode();
            return this;
        }

        public Builder clearRoomId() {
            copyOnWrite();
            ((Params) this.instance).clearRoomId();
            return this;
        }

        public Builder clearRoomPositionIndex() {
            copyOnWrite();
            ((Params) this.instance).clearRoomPositionIndex();
            return this;
        }

        public Builder clearRoomType() {
            copyOnWrite();
            ((Params) this.instance).clearRoomType();
            return this;
        }

        public Builder clearSilent() {
            copyOnWrite();
            ((Params) this.instance).clearSilent();
            return this;
        }

        public Builder clearTimestamp() {
            copyOnWrite();
            ((Params) this.instance).clearTimestamp();
            return this;
        }

        public Builder clearToken() {
            copyOnWrite();
            ((Params) this.instance).clearToken();
            return this;
        }

        public Builder clearUid() {
            copyOnWrite();
            ((Params) this.instance).clearUid();
            return this;
        }

        public Builder clearUsePeripheral() {
            copyOnWrite();
            ((Params) this.instance).clearUsePeripheral();
            return this;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getAllowPCJoin() {
            return ((Params) this.instance).getAllowPCJoin();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getAllowPeripheralJoin() {
            return ((Params) this.instance).getAllowPeripheralJoin();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getAllowSpectatorJoin() {
            return ((Params) this.instance).getAllowSpectatorJoin();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public BattleArea getBattleArea() {
            return ((Params) this.instance).getBattleArea();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getBattleAreaValue() {
            return ((Params) this.instance).getBattleAreaValue();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getChallengeCoins() {
            return ((Params) this.instance).getChallengeCoins();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ChannelType getChannelType() {
            return ((Params) this.instance).getChannelType();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getChannelTypeValue() {
            return ((Params) this.instance).getChannelTypeValue();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getClosePosition() {
            return ((Params) this.instance).getClosePosition();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getCollectionId() {
            return ((Params) this.instance).getCollectionId();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public String getDeviceId() {
            return ((Params) this.instance).getDeviceId();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ByteString getDeviceIdBytes() {
            return ((Params) this.instance).getDeviceIdBytes();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getDisableMobileJoin() {
            return ((Params) this.instance).getDisableMobileJoin();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public long getFightId() {
            return ((Params) this.instance).getFightId();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getFromLive() {
            return ((Params) this.instance).getFromLive();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public long getGameId() {
            return ((Params) this.instance).getGameId();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getMergeMessageChannel() {
            return ((Params) this.instance).getMergeMessageChannel();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public String getPassword() {
            return ((Params) this.instance).getPassword();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ByteString getPasswordBytes() {
            return ((Params) this.instance).getPasswordBytes();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getPingVal() {
            return ((Params) this.instance).getPingVal();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ServerPlayMode getPlayMode() {
            return ((Params) this.instance).getPlayMode();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getPlayModeValue() {
            return ((Params) this.instance).getPlayModeValue();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getRoomId() {
            return ((Params) this.instance).getRoomId();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getRoomPositionIndex() {
            return ((Params) this.instance).getRoomPositionIndex();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public RoomType getRoomType() {
            return ((Params) this.instance).getRoomType();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getRoomTypeValue() {
            return ((Params) this.instance).getRoomTypeValue();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getSilent() {
            return ((Params) this.instance).getSilent();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public long getTimestamp() {
            return ((Params) this.instance).getTimestamp();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public String getToken() {
            return ((Params) this.instance).getToken();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ByteString getTokenBytes() {
            return ((Params) this.instance).getTokenBytes();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getUid() {
            return ((Params) this.instance).getUid();
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getUsePeripheral() {
            return ((Params) this.instance).getUsePeripheral();
        }

        public Builder setAllowPCJoin(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setAllowPCJoin(z3);
            return this;
        }

        public Builder setAllowPeripheralJoin(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setAllowPeripheralJoin(z3);
            return this;
        }

        public Builder setAllowSpectatorJoin(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setAllowSpectatorJoin(z3);
            return this;
        }

        public Builder setBattleArea(BattleArea battleArea) {
            copyOnWrite();
            ((Params) this.instance).setBattleArea(battleArea);
            return this;
        }

        public Builder setBattleAreaValue(int i2) {
            copyOnWrite();
            ((Params) this.instance).setBattleAreaValue(i2);
            return this;
        }

        public Builder setChallengeCoins(int i2) {
            copyOnWrite();
            ((Params) this.instance).setChallengeCoins(i2);
            return this;
        }

        public Builder setChannelType(ChannelType channelType) {
            copyOnWrite();
            ((Params) this.instance).setChannelType(channelType);
            return this;
        }

        public Builder setChannelTypeValue(int i2) {
            copyOnWrite();
            ((Params) this.instance).setChannelTypeValue(i2);
            return this;
        }

        public Builder setClosePosition(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setClosePosition(z3);
            return this;
        }

        public Builder setCollectionId(int i2) {
            copyOnWrite();
            ((Params) this.instance).setCollectionId(i2);
            return this;
        }

        public Builder setDeviceId(String str) {
            copyOnWrite();
            ((Params) this.instance).setDeviceId(str);
            return this;
        }

        public Builder setDeviceIdBytes(ByteString byteString) {
            copyOnWrite();
            ((Params) this.instance).setDeviceIdBytes(byteString);
            return this;
        }

        public Builder setDisableMobileJoin(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setDisableMobileJoin(z3);
            return this;
        }

        public Builder setFightId(long j4) {
            copyOnWrite();
            ((Params) this.instance).setFightId(j4);
            return this;
        }

        public Builder setFromLive(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setFromLive(z3);
            return this;
        }

        public Builder setGameId(long j4) {
            copyOnWrite();
            ((Params) this.instance).setGameId(j4);
            return this;
        }

        public Builder setMergeMessageChannel(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setMergeMessageChannel(z3);
            return this;
        }

        public Builder setPassword(String str) {
            copyOnWrite();
            ((Params) this.instance).setPassword(str);
            return this;
        }

        public Builder setPasswordBytes(ByteString byteString) {
            copyOnWrite();
            ((Params) this.instance).setPasswordBytes(byteString);
            return this;
        }

        public Builder setPingVal(int i2) {
            copyOnWrite();
            ((Params) this.instance).setPingVal(i2);
            return this;
        }

        public Builder setPlayMode(ServerPlayMode serverPlayMode) {
            copyOnWrite();
            ((Params) this.instance).setPlayMode(serverPlayMode);
            return this;
        }

        public Builder setPlayModeValue(int i2) {
            copyOnWrite();
            ((Params) this.instance).setPlayModeValue(i2);
            return this;
        }

        public Builder setRoomId(int i2) {
            copyOnWrite();
            ((Params) this.instance).setRoomId(i2);
            return this;
        }

        public Builder setRoomPositionIndex(int i2) {
            copyOnWrite();
            ((Params) this.instance).setRoomPositionIndex(i2);
            return this;
        }

        public Builder setRoomType(RoomType roomType) {
            copyOnWrite();
            ((Params) this.instance).setRoomType(roomType);
            return this;
        }

        public Builder setRoomTypeValue(int i2) {
            copyOnWrite();
            ((Params) this.instance).setRoomTypeValue(i2);
            return this;
        }

        public Builder setSilent(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setSilent(z3);
            return this;
        }

        public Builder setTimestamp(long j4) {
            copyOnWrite();
            ((Params) this.instance).setTimestamp(j4);
            return this;
        }

        public Builder setToken(String str) {
            copyOnWrite();
            ((Params) this.instance).setToken(str);
            return this;
        }

        public Builder setTokenBytes(ByteString byteString) {
            copyOnWrite();
            ((Params) this.instance).setTokenBytes(byteString);
            return this;
        }

        public Builder setUid(int i2) {
            copyOnWrite();
            ((Params) this.instance).setUid(i2);
            return this;
        }

        public Builder setUsePeripheral(boolean z3) {
            copyOnWrite();
            ((Params) this.instance).setUsePeripheral(z3);
            return this;
        }

        private Builder() {
            super(Params.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes4.dex */
    public enum ChannelType implements Internal.EnumLite {
        ANDROID(0),
        WIN_PC_LOBBY(1),
        WIN_PC_ROOM(2),
        IOS(3),
        UNRECOGNIZED(-1);
        
        public static final int ANDROID_VALUE = 0;
        public static final int IOS_VALUE = 3;
        public static final int WIN_PC_LOBBY_VALUE = 1;
        public static final int WIN_PC_ROOM_VALUE = 2;
        private static final Internal.EnumLiteMap<ChannelType> internalValueMap = new Internal.EnumLiteMap<ChannelType>() { // from class: com.papa91.battle.protocol.Params.ChannelType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ChannelType findValueByNumber(int i2) {
                return ChannelType.forNumber(i2);
            }
        };
        private final int value;

        ChannelType(int i2) {
            this.value = i2;
        }

        public static ChannelType forNumber(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            return null;
                        }
                        return IOS;
                    }
                    return WIN_PC_ROOM;
                }
                return WIN_PC_LOBBY;
            }
            return ANDROID;
        }

        public static Internal.EnumLiteMap<ChannelType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ChannelType valueOf(int i2) {
            return forNumber(i2);
        }
    }

    /* loaded from: classes4.dex */
    public enum RoomType implements Internal.EnumLite {
        NORMAL(0),
        ELITE(1),
        UNRECOGNIZED(-1);
        
        public static final int ELITE_VALUE = 1;
        public static final int NORMAL_VALUE = 0;
        private static final Internal.EnumLiteMap<RoomType> internalValueMap = new Internal.EnumLiteMap<RoomType>() { // from class: com.papa91.battle.protocol.Params.RoomType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public RoomType findValueByNumber(int i2) {
                return RoomType.forNumber(i2);
            }
        };
        private final int value;

        RoomType(int i2) {
            this.value = i2;
        }

        public static RoomType forNumber(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    return null;
                }
                return ELITE;
            }
            return NORMAL;
        }

        public static Internal.EnumLiteMap<RoomType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static RoomType valueOf(int i2) {
            return forNumber(i2);
        }
    }

    /* loaded from: classes4.dex */
    public enum ServerPlayMode implements Internal.EnumLite {
        FAST(0),
        ZONE(1),
        UNRECOGNIZED(-1);
        
        public static final int FAST_VALUE = 0;
        public static final int ZONE_VALUE = 1;
        private static final Internal.EnumLiteMap<ServerPlayMode> internalValueMap = new Internal.EnumLiteMap<ServerPlayMode>() { // from class: com.papa91.battle.protocol.Params.ServerPlayMode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ServerPlayMode findValueByNumber(int i2) {
                return ServerPlayMode.forNumber(i2);
            }
        };
        private final int value;

        ServerPlayMode(int i2) {
            this.value = i2;
        }

        public static ServerPlayMode forNumber(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    return null;
                }
                return ZONE;
            }
            return FAST;
        }

        public static Internal.EnumLiteMap<ServerPlayMode> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ServerPlayMode valueOf(int i2) {
            return forNumber(i2);
        }
    }

    static {
        Params params = new Params();
        DEFAULT_INSTANCE = params;
        params.makeImmutable();
    }

    private Params() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAllowPCJoin() {
        this.allowPCJoin_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAllowPeripheralJoin() {
        this.allowPeripheralJoin_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAllowSpectatorJoin() {
        this.allowSpectatorJoin_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBattleArea() {
        this.battleArea_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearChallengeCoins() {
        this.challengeCoins_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearChannelType() {
        this.channelType_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearClosePosition() {
        this.closePosition_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCollectionId() {
        this.collectionId_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDeviceId() {
        this.deviceId_ = getDefaultInstance().getDeviceId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDisableMobileJoin() {
        this.disableMobileJoin_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFightId() {
        this.fightId_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFromLive() {
        this.fromLive_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.gameId_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMergeMessageChannel() {
        this.mergeMessageChannel_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPassword() {
        this.password_ = getDefaultInstance().getPassword();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPingVal() {
        this.pingVal_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlayMode() {
        this.playMode_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRoomId() {
        this.roomId_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRoomPositionIndex() {
        this.roomPositionIndex_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRoomType() {
        this.roomType_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSilent() {
        this.silent_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTimestamp() {
        this.timestamp_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearToken() {
        this.token_ = getDefaultInstance().getToken();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUid() {
        this.uid_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUsePeripheral() {
        this.usePeripheral_ = false;
    }

    public static Params getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Params parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Params) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Params parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (Params) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<Params> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllowPCJoin(boolean z3) {
        this.allowPCJoin_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllowPeripheralJoin(boolean z3) {
        this.allowPeripheralJoin_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAllowSpectatorJoin(boolean z3) {
        this.allowSpectatorJoin_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleArea(BattleArea battleArea) {
        Objects.requireNonNull(battleArea);
        this.battleArea_ = battleArea.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleAreaValue(int i2) {
        this.battleArea_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChallengeCoins(int i2) {
        this.challengeCoins_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChannelType(ChannelType channelType) {
        Objects.requireNonNull(channelType);
        this.channelType_ = channelType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChannelTypeValue(int i2) {
        this.channelType_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClosePosition(boolean z3) {
        this.closePosition_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCollectionId(int i2) {
        this.collectionId_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeviceId(String str) {
        Objects.requireNonNull(str);
        this.deviceId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeviceIdBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.deviceId_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisableMobileJoin(boolean z3) {
        this.disableMobileJoin_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFightId(long j4) {
        this.fightId_ = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFromLive(boolean z3) {
        this.fromLive_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.gameId_ = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMergeMessageChannel(boolean z3) {
        this.mergeMessageChannel_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPassword(String str) {
        Objects.requireNonNull(str);
        this.password_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPasswordBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.password_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPingVal(int i2) {
        this.pingVal_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayMode(ServerPlayMode serverPlayMode) {
        Objects.requireNonNull(serverPlayMode);
        this.playMode_ = serverPlayMode.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayModeValue(int i2) {
        this.playMode_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomId(int i2) {
        this.roomId_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomPositionIndex(int i2) {
        this.roomPositionIndex_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomType(RoomType roomType) {
        Objects.requireNonNull(roomType);
        this.roomType_ = roomType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomTypeValue(int i2) {
        this.roomType_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSilent(boolean z3) {
        this.silent_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimestamp(long j4) {
        this.timestamp_ = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setToken(String str) {
        Objects.requireNonNull(str);
        this.token_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTokenBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.token_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUid(int i2) {
        this.uid_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUsePeripheral(boolean z3) {
        this.usePeripheral_ = z3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new Params();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                Params params = (Params) obj2;
                int i2 = this.uid_;
                boolean z3 = i2 != 0;
                int i4 = params.uid_;
                this.uid_ = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.token_ = visitor.visitString(!this.token_.isEmpty(), this.token_, !params.token_.isEmpty(), params.token_);
                long j4 = this.gameId_;
                boolean z4 = j4 != 0;
                long j5 = params.gameId_;
                this.gameId_ = visitor.visitLong(z4, j4, j5 != 0, j5);
                int i5 = this.roomId_;
                boolean z5 = i5 != 0;
                int i6 = params.roomId_;
                this.roomId_ = visitor.visitInt(z5, i5, i6 != 0, i6);
                int i7 = this.challengeCoins_;
                boolean z6 = i7 != 0;
                int i8 = params.challengeCoins_;
                this.challengeCoins_ = visitor.visitInt(z6, i7, i8 != 0, i8);
                this.password_ = visitor.visitString(!this.password_.isEmpty(), this.password_, !params.password_.isEmpty(), params.password_);
                boolean z7 = this.allowSpectatorJoin_;
                boolean z8 = params.allowSpectatorJoin_;
                this.allowSpectatorJoin_ = visitor.visitBoolean(z7, z7, z8, z8);
                boolean z9 = this.allowPeripheralJoin_;
                boolean z10 = params.allowPeripheralJoin_;
                this.allowPeripheralJoin_ = visitor.visitBoolean(z9, z9, z10, z10);
                boolean z11 = this.closePosition_;
                boolean z12 = params.closePosition_;
                this.closePosition_ = visitor.visitBoolean(z11, z11, z12, z12);
                int i9 = this.roomPositionIndex_;
                boolean z13 = i9 != 0;
                int i10 = params.roomPositionIndex_;
                this.roomPositionIndex_ = visitor.visitInt(z13, i9, i10 != 0, i10);
                int i11 = this.roomType_;
                boolean z14 = i11 != 0;
                int i12 = params.roomType_;
                this.roomType_ = visitor.visitInt(z14, i11, i12 != 0, i12);
                boolean z15 = this.silent_;
                boolean z16 = params.silent_;
                this.silent_ = visitor.visitBoolean(z15, z15, z16, z16);
                boolean z17 = this.usePeripheral_;
                boolean z18 = params.usePeripheral_;
                this.usePeripheral_ = visitor.visitBoolean(z17, z17, z18, z18);
                long j6 = this.fightId_;
                boolean z19 = j6 != 0;
                long j7 = params.fightId_;
                this.fightId_ = visitor.visitLong(z19, j6, j7 != 0, j7);
                int i13 = this.pingVal_;
                boolean z20 = i13 != 0;
                int i14 = params.pingVal_;
                this.pingVal_ = visitor.visitInt(z20, i13, i14 != 0, i14);
                long j8 = this.timestamp_;
                boolean z21 = j8 != 0;
                long j9 = params.timestamp_;
                this.timestamp_ = visitor.visitLong(z21, j8, j9 != 0, j9);
                this.deviceId_ = visitor.visitString(!this.deviceId_.isEmpty(), this.deviceId_, !params.deviceId_.isEmpty(), params.deviceId_);
                int i15 = this.battleArea_;
                boolean z22 = i15 != 0;
                int i16 = params.battleArea_;
                this.battleArea_ = visitor.visitInt(z22, i15, i16 != 0, i16);
                int i17 = this.channelType_;
                boolean z23 = i17 != 0;
                int i18 = params.channelType_;
                this.channelType_ = visitor.visitInt(z23, i17, i18 != 0, i18);
                int i19 = this.collectionId_;
                boolean z24 = i19 != 0;
                int i20 = params.collectionId_;
                this.collectionId_ = visitor.visitInt(z24, i19, i20 != 0, i20);
                boolean z25 = this.fromLive_;
                boolean z26 = params.fromLive_;
                this.fromLive_ = visitor.visitBoolean(z25, z25, z26, z26);
                int i21 = this.playMode_;
                boolean z27 = i21 != 0;
                int i22 = params.playMode_;
                this.playMode_ = visitor.visitInt(z27, i21, i22 != 0, i22);
                boolean z28 = this.allowPCJoin_;
                boolean z29 = params.allowPCJoin_;
                this.allowPCJoin_ = visitor.visitBoolean(z28, z28, z29, z29);
                boolean z30 = this.disableMobileJoin_;
                boolean z31 = params.disableMobileJoin_;
                this.disableMobileJoin_ = visitor.visitBoolean(z30, z30, z31, z31);
                boolean z32 = this.mergeMessageChannel_;
                boolean z33 = params.mergeMessageChannel_;
                this.mergeMessageChannel_ = visitor.visitBoolean(z32, z32, z33, z33);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            switch (readTag) {
                                case 0:
                                    break;
                                case 8:
                                    this.uid_ = codedInputStream.readInt32();
                                    continue;
                                case 18:
                                    this.token_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 24:
                                    this.gameId_ = codedInputStream.readInt64();
                                    continue;
                                case 32:
                                    this.roomId_ = codedInputStream.readInt32();
                                    continue;
                                case 40:
                                    this.challengeCoins_ = codedInputStream.readInt32();
                                    continue;
                                case 50:
                                    this.password_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 56:
                                    this.allowSpectatorJoin_ = codedInputStream.readBool();
                                    continue;
                                case 64:
                                    this.allowPeripheralJoin_ = codedInputStream.readBool();
                                    continue;
                                case 72:
                                    this.closePosition_ = codedInputStream.readBool();
                                    continue;
                                case 80:
                                    this.roomPositionIndex_ = codedInputStream.readInt32();
                                    continue;
                                case 88:
                                    this.roomType_ = codedInputStream.readEnum();
                                    continue;
                                case 96:
                                    this.silent_ = codedInputStream.readBool();
                                    continue;
                                case 104:
                                    this.usePeripheral_ = codedInputStream.readBool();
                                    continue;
                                case 112:
                                    this.fightId_ = codedInputStream.readUInt64();
                                    continue;
                                case 120:
                                    this.pingVal_ = codedInputStream.readInt32();
                                    continue;
                                case 128:
                                    this.timestamp_ = codedInputStream.readInt64();
                                    continue;
                                case 138:
                                    this.deviceId_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 152:
                                    this.battleArea_ = codedInputStream.readEnum();
                                    continue;
                                case 160:
                                    this.channelType_ = codedInputStream.readEnum();
                                    continue;
                                case 168:
                                    this.collectionId_ = codedInputStream.readInt32();
                                    continue;
                                case 176:
                                    this.fromLive_ = codedInputStream.readBool();
                                    continue;
                                case 184:
                                    this.playMode_ = codedInputStream.readEnum();
                                    continue;
                                case 192:
                                    this.allowPCJoin_ = codedInputStream.readBool();
                                    continue;
                                case 200:
                                    this.disableMobileJoin_ = codedInputStream.readBool();
                                    continue;
                                case 208:
                                    this.mergeMessageChannel_ = codedInputStream.readBool();
                                    continue;
                                default:
                                    if (!codedInputStream.skipField(readTag)) {
                                        break;
                                    } else {
                                        continue;
                                    }
                            }
                            r1 = true;
                        } catch (InvalidProtocolBufferException e4) {
                            throw new RuntimeException(e4.setUnfinishedMessage(this));
                        }
                    } catch (IOException e5) {
                        throw new RuntimeException(new InvalidProtocolBufferException(e5.getMessage()).setUnfinishedMessage(this));
                    }
                }
                break;
            case 7:
                break;
            case 8:
                if (PARSER == null) {
                    synchronized (Params.class) {
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

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getAllowPCJoin() {
        return this.allowPCJoin_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getAllowPeripheralJoin() {
        return this.allowPeripheralJoin_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getAllowSpectatorJoin() {
        return this.allowSpectatorJoin_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public BattleArea getBattleArea() {
        BattleArea forNumber = BattleArea.forNumber(this.battleArea_);
        return forNumber == null ? BattleArea.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getBattleAreaValue() {
        return this.battleArea_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getChallengeCoins() {
        return this.challengeCoins_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ChannelType getChannelType() {
        ChannelType forNumber = ChannelType.forNumber(this.channelType_);
        return forNumber == null ? ChannelType.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getChannelTypeValue() {
        return this.channelType_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getClosePosition() {
        return this.closePosition_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getCollectionId() {
        return this.collectionId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public String getDeviceId() {
        return this.deviceId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ByteString getDeviceIdBytes() {
        return ByteString.copyFromUtf8(this.deviceId_);
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getDisableMobileJoin() {
        return this.disableMobileJoin_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public long getFightId() {
        return this.fightId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getFromLive() {
        return this.fromLive_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getMergeMessageChannel() {
        return this.mergeMessageChannel_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public String getPassword() {
        return this.password_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ByteString getPasswordBytes() {
        return ByteString.copyFromUtf8(this.password_);
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getPingVal() {
        return this.pingVal_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ServerPlayMode getPlayMode() {
        ServerPlayMode forNumber = ServerPlayMode.forNumber(this.playMode_);
        return forNumber == null ? ServerPlayMode.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getPlayModeValue() {
        return this.playMode_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getRoomId() {
        return this.roomId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getRoomPositionIndex() {
        return this.roomPositionIndex_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public RoomType getRoomType() {
        RoomType forNumber = RoomType.forNumber(this.roomType_);
        return forNumber == null ? RoomType.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getRoomTypeValue() {
        return this.roomType_;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.uid_;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (!this.token_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(2, getToken());
        }
        long j4 = this.gameId_;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(3, j4);
        }
        int i5 = this.roomId_;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(4, i5);
        }
        int i6 = this.challengeCoins_;
        if (i6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(5, i6);
        }
        if (!this.password_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(6, getPassword());
        }
        boolean z3 = this.allowSpectatorJoin_;
        if (z3) {
            computeInt32Size += CodedOutputStream.computeBoolSize(7, z3);
        }
        boolean z4 = this.allowPeripheralJoin_;
        if (z4) {
            computeInt32Size += CodedOutputStream.computeBoolSize(8, z4);
        }
        boolean z5 = this.closePosition_;
        if (z5) {
            computeInt32Size += CodedOutputStream.computeBoolSize(9, z5);
        }
        int i7 = this.roomPositionIndex_;
        if (i7 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(10, i7);
        }
        if (this.roomType_ != RoomType.NORMAL.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(11, this.roomType_);
        }
        boolean z6 = this.silent_;
        if (z6) {
            computeInt32Size += CodedOutputStream.computeBoolSize(12, z6);
        }
        boolean z7 = this.usePeripheral_;
        if (z7) {
            computeInt32Size += CodedOutputStream.computeBoolSize(13, z7);
        }
        long j5 = this.fightId_;
        if (j5 != 0) {
            computeInt32Size += CodedOutputStream.computeUInt64Size(14, j5);
        }
        int i8 = this.pingVal_;
        if (i8 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(15, i8);
        }
        long j6 = this.timestamp_;
        if (j6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(16, j6);
        }
        if (!this.deviceId_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(17, getDeviceId());
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(19, this.battleArea_);
        }
        if (this.channelType_ != ChannelType.ANDROID.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(20, this.channelType_);
        }
        int i9 = this.collectionId_;
        if (i9 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(21, i9);
        }
        boolean z8 = this.fromLive_;
        if (z8) {
            computeInt32Size += CodedOutputStream.computeBoolSize(22, z8);
        }
        if (this.playMode_ != ServerPlayMode.FAST.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(23, this.playMode_);
        }
        boolean z9 = this.allowPCJoin_;
        if (z9) {
            computeInt32Size += CodedOutputStream.computeBoolSize(24, z9);
        }
        boolean z10 = this.disableMobileJoin_;
        if (z10) {
            computeInt32Size += CodedOutputStream.computeBoolSize(25, z10);
        }
        boolean z11 = this.mergeMessageChannel_;
        if (z11) {
            computeInt32Size += CodedOutputStream.computeBoolSize(26, z11);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getSilent() {
        return this.silent_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public long getTimestamp() {
        return this.timestamp_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public String getToken() {
        return this.token_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ByteString getTokenBytes() {
        return ByteString.copyFromUtf8(this.token_);
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getUid() {
        return this.uid_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getUsePeripheral() {
        return this.usePeripheral_;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.uid_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (!this.token_.isEmpty()) {
            codedOutputStream.writeString(2, getToken());
        }
        long j4 = this.gameId_;
        if (j4 != 0) {
            codedOutputStream.writeInt64(3, j4);
        }
        int i4 = this.roomId_;
        if (i4 != 0) {
            codedOutputStream.writeInt32(4, i4);
        }
        int i5 = this.challengeCoins_;
        if (i5 != 0) {
            codedOutputStream.writeInt32(5, i5);
        }
        if (!this.password_.isEmpty()) {
            codedOutputStream.writeString(6, getPassword());
        }
        boolean z3 = this.allowSpectatorJoin_;
        if (z3) {
            codedOutputStream.writeBool(7, z3);
        }
        boolean z4 = this.allowPeripheralJoin_;
        if (z4) {
            codedOutputStream.writeBool(8, z4);
        }
        boolean z5 = this.closePosition_;
        if (z5) {
            codedOutputStream.writeBool(9, z5);
        }
        int i6 = this.roomPositionIndex_;
        if (i6 != 0) {
            codedOutputStream.writeInt32(10, i6);
        }
        if (this.roomType_ != RoomType.NORMAL.getNumber()) {
            codedOutputStream.writeEnum(11, this.roomType_);
        }
        boolean z6 = this.silent_;
        if (z6) {
            codedOutputStream.writeBool(12, z6);
        }
        boolean z7 = this.usePeripheral_;
        if (z7) {
            codedOutputStream.writeBool(13, z7);
        }
        long j5 = this.fightId_;
        if (j5 != 0) {
            codedOutputStream.writeUInt64(14, j5);
        }
        int i7 = this.pingVal_;
        if (i7 != 0) {
            codedOutputStream.writeInt32(15, i7);
        }
        long j6 = this.timestamp_;
        if (j6 != 0) {
            codedOutputStream.writeInt64(16, j6);
        }
        if (!this.deviceId_.isEmpty()) {
            codedOutputStream.writeString(17, getDeviceId());
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(19, this.battleArea_);
        }
        if (this.channelType_ != ChannelType.ANDROID.getNumber()) {
            codedOutputStream.writeEnum(20, this.channelType_);
        }
        int i8 = this.collectionId_;
        if (i8 != 0) {
            codedOutputStream.writeInt32(21, i8);
        }
        boolean z8 = this.fromLive_;
        if (z8) {
            codedOutputStream.writeBool(22, z8);
        }
        if (this.playMode_ != ServerPlayMode.FAST.getNumber()) {
            codedOutputStream.writeEnum(23, this.playMode_);
        }
        boolean z9 = this.allowPCJoin_;
        if (z9) {
            codedOutputStream.writeBool(24, z9);
        }
        boolean z10 = this.disableMobileJoin_;
        if (z10) {
            codedOutputStream.writeBool(25, z10);
        }
        boolean z11 = this.mergeMessageChannel_;
        if (z11) {
            codedOutputStream.writeBool(26, z11);
        }
    }

    public static Builder newBuilder(Params params) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) params);
    }

    public static Params parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Params) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Params parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Params) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Params parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (Params) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Params parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Params) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Params parseFrom(InputStream inputStream) throws IOException {
        return (Params) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Params parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Params) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Params parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Params) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Params parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Params) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
