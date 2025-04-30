package com.papa91.battle.protocol;

import com.android.dx.io.Opcodes;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.papa91.battle.protocol.BattleTitle;
import com.papa91.battle.protocol.RoomPosition;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class SimpleRoom extends GeneratedMessageLite<SimpleRoom, Builder> implements SimpleRoomOrBuilder, Serializable {
    public static final int ALLOWPCJOIN_FIELD_NUMBER = 27;
    public static final int ALLOWPERIPHERALJOIN_FIELD_NUMBER = 10;
    public static final int ALLOWSPECTATORJOIN_FIELD_NUMBER = 9;
    public static final int AVATAR_FIELD_NUMBER = 26;
    public static final int BATTLEAREA_FIELD_NUMBER = 22;
    public static final int BATTLETITLECOLOR_FIELD_NUMBER = 20;
    public static final int BATTLETITLE_FIELD_NUMBER = 19;
    public static final int CHALLENGECOINS_FIELD_NUMBER = 12;
    public static final int COLLECTIONID_FIELD_NUMBER = 24;
    public static final int COPPER_FIELD_NUMBER = 17;
    public static final int CREATEAT_FIELD_NUMBER = 5;
    private static final SimpleRoom DEFAULT_INSTANCE;
    public static final int ELITE_FIELD_NUMBER = 16;
    public static final int GAMEID_FIELD_NUMBER = 2;
    public static final int GAMENAME_FIELD_NUMBER = 23;
    public static final int HASJOINPASSWORD_FIELD_NUMBER = 8;
    public static final int HASPERIPHERALPLAYER_FIELD_NUMBER = 18;
    public static final int LEADERID_FIELD_NUMBER = 29;
    public static final int NICKNAME_FIELD_NUMBER = 3;
    private static volatile Parser<SimpleRoom> PARSER = null;
    public static final int PLAYERLIST_FIELD_NUMBER = 28;
    public static final int PLAYSECONDS_FIELD_NUMBER = 14;
    public static final int PLAYTIMESTAMP_FIELD_NUMBER = 21;
    public static final int ROOMCATEGORY_FIELD_NUMBER = 30;
    public static final int ROOMID_FIELD_NUMBER = 1;
    public static final int SEATSNUMBER_FIELD_NUMBER = 6;
    public static final int SITDOWNLOADNUMBER_FIELD_NUMBER = 7;
    public static final int SPECTATORNUMBER_FIELD_NUMBER = 25;
    public static final int STATE_FIELD_NUMBER = 13;
    public static final int TITLE_FIELD_NUMBER = 15;
    public static final int VIP_FIELD_NUMBER = 4;
    private boolean allowPCJoin_;
    private boolean allowPeripheralJoin_;
    private boolean allowSpectatorJoin_;
    private int battleArea_;
    private int bitField0_;
    private int challengeCoins_;
    private int collectionId_;
    private int copper_;
    private long createAt_;
    private boolean elite_;
    private long gameId_;
    private boolean hasJoinPassword_;
    private boolean hasPeripheralPlayer_;
    private int leaderId_;
    private int playSeconds_;
    private long playTimestamp_;
    private int roomCategory_;
    private int roomId_;
    private int seatsNumber_;
    private int sitDownloadNumber_;
    private int spectatorNumber_;
    private int state_;
    private BattleTitle title_;
    private boolean vip_;
    private String nickname_ = "";
    private String battleTitle_ = "";
    private String battleTitleColor_ = "";
    private String gameName_ = "";
    private String avatar_ = "";
    private Internal.ProtobufList<RoomPosition> playerList_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.papa91.battle.protocol.SimpleRoom$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<SimpleRoom, Builder> implements SimpleRoomOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder addAllPlayerList(Iterable<? extends RoomPosition> iterable) {
            copyOnWrite();
            ((SimpleRoom) this.instance).addAllPlayerList(iterable);
            return this;
        }

        public Builder addPlayerList(RoomPosition roomPosition) {
            copyOnWrite();
            ((SimpleRoom) this.instance).addPlayerList(roomPosition);
            return this;
        }

        public Builder clearAllowPCJoin() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearAllowPCJoin();
            return this;
        }

        public Builder clearAllowPeripheralJoin() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearAllowPeripheralJoin();
            return this;
        }

        public Builder clearAllowSpectatorJoin() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearAllowSpectatorJoin();
            return this;
        }

        public Builder clearAvatar() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearAvatar();
            return this;
        }

        public Builder clearBattleArea() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearBattleArea();
            return this;
        }

        public Builder clearBattleTitle() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearBattleTitle();
            return this;
        }

        public Builder clearBattleTitleColor() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearBattleTitleColor();
            return this;
        }

        public Builder clearChallengeCoins() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearChallengeCoins();
            return this;
        }

        public Builder clearCollectionId() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearCollectionId();
            return this;
        }

        public Builder clearCopper() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearCopper();
            return this;
        }

        public Builder clearCreateAt() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearCreateAt();
            return this;
        }

        public Builder clearElite() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearElite();
            return this;
        }

        public Builder clearGameId() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearGameId();
            return this;
        }

        public Builder clearGameName() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearGameName();
            return this;
        }

        public Builder clearHasJoinPassword() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearHasJoinPassword();
            return this;
        }

        public Builder clearHasPeripheralPlayer() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearHasPeripheralPlayer();
            return this;
        }

        public Builder clearLeaderId() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearLeaderId();
            return this;
        }

        public Builder clearNickname() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearNickname();
            return this;
        }

        public Builder clearPlaySeconds() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearPlaySeconds();
            return this;
        }

        public Builder clearPlayTimestamp() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearPlayTimestamp();
            return this;
        }

        public Builder clearPlayerList() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearPlayerList();
            return this;
        }

        public Builder clearRoomCategory() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearRoomCategory();
            return this;
        }

        public Builder clearRoomId() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearRoomId();
            return this;
        }

        public Builder clearSeatsNumber() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearSeatsNumber();
            return this;
        }

        public Builder clearSitDownloadNumber() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearSitDownloadNumber();
            return this;
        }

        public Builder clearSpectatorNumber() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearSpectatorNumber();
            return this;
        }

        public Builder clearState() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearState();
            return this;
        }

        public Builder clearTitle() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearTitle();
            return this;
        }

        public Builder clearVip() {
            copyOnWrite();
            ((SimpleRoom) this.instance).clearVip();
            return this;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getAllowPCJoin() {
            return ((SimpleRoom) this.instance).getAllowPCJoin();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getAllowPeripheralJoin() {
            return ((SimpleRoom) this.instance).getAllowPeripheralJoin();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getAllowSpectatorJoin() {
            return ((SimpleRoom) this.instance).getAllowSpectatorJoin();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getAvatar() {
            return ((SimpleRoom) this.instance).getAvatar();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getAvatarBytes() {
            return ((SimpleRoom) this.instance).getAvatarBytes();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public BattleArea getBattleArea() {
            return ((SimpleRoom) this.instance).getBattleArea();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getBattleAreaValue() {
            return ((SimpleRoom) this.instance).getBattleAreaValue();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getBattleTitle() {
            return ((SimpleRoom) this.instance).getBattleTitle();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getBattleTitleBytes() {
            return ((SimpleRoom) this.instance).getBattleTitleBytes();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getBattleTitleColor() {
            return ((SimpleRoom) this.instance).getBattleTitleColor();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getBattleTitleColorBytes() {
            return ((SimpleRoom) this.instance).getBattleTitleColorBytes();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getChallengeCoins() {
            return ((SimpleRoom) this.instance).getChallengeCoins();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getCollectionId() {
            return ((SimpleRoom) this.instance).getCollectionId();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getCopper() {
            return ((SimpleRoom) this.instance).getCopper();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public long getCreateAt() {
            return ((SimpleRoom) this.instance).getCreateAt();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getElite() {
            return ((SimpleRoom) this.instance).getElite();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public long getGameId() {
            return ((SimpleRoom) this.instance).getGameId();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getGameName() {
            return ((SimpleRoom) this.instance).getGameName();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getGameNameBytes() {
            return ((SimpleRoom) this.instance).getGameNameBytes();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getHasJoinPassword() {
            return ((SimpleRoom) this.instance).getHasJoinPassword();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getHasPeripheralPlayer() {
            return ((SimpleRoom) this.instance).getHasPeripheralPlayer();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getLeaderId() {
            return ((SimpleRoom) this.instance).getLeaderId();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getNickname() {
            return ((SimpleRoom) this.instance).getNickname();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getNicknameBytes() {
            return ((SimpleRoom) this.instance).getNicknameBytes();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getPlaySeconds() {
            return ((SimpleRoom) this.instance).getPlaySeconds();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public long getPlayTimestamp() {
            return ((SimpleRoom) this.instance).getPlayTimestamp();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public RoomPosition getPlayerList(int i2) {
            return ((SimpleRoom) this.instance).getPlayerList(i2);
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getPlayerListCount() {
            return ((SimpleRoom) this.instance).getPlayerListCount();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public List<RoomPosition> getPlayerListList() {
            return Collections.unmodifiableList(((SimpleRoom) this.instance).getPlayerListList());
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public RoomCategory getRoomCategory() {
            return ((SimpleRoom) this.instance).getRoomCategory();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getRoomCategoryValue() {
            return ((SimpleRoom) this.instance).getRoomCategoryValue();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getRoomId() {
            return ((SimpleRoom) this.instance).getRoomId();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getSeatsNumber() {
            return ((SimpleRoom) this.instance).getSeatsNumber();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getSitDownloadNumber() {
            return ((SimpleRoom) this.instance).getSitDownloadNumber();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getSpectatorNumber() {
            return ((SimpleRoom) this.instance).getSpectatorNumber();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public RoomState getState() {
            return ((SimpleRoom) this.instance).getState();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getStateValue() {
            return ((SimpleRoom) this.instance).getStateValue();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public BattleTitle getTitle() {
            return ((SimpleRoom) this.instance).getTitle();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getVip() {
            return ((SimpleRoom) this.instance).getVip();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean hasTitle() {
            return ((SimpleRoom) this.instance).hasTitle();
        }

        public Builder mergeTitle(BattleTitle battleTitle) {
            copyOnWrite();
            ((SimpleRoom) this.instance).mergeTitle(battleTitle);
            return this;
        }

        public Builder removePlayerList(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).removePlayerList(i2);
            return this;
        }

        public Builder setAllowPCJoin(boolean z3) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setAllowPCJoin(z3);
            return this;
        }

        public Builder setAllowPeripheralJoin(boolean z3) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setAllowPeripheralJoin(z3);
            return this;
        }

        public Builder setAllowSpectatorJoin(boolean z3) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setAllowSpectatorJoin(z3);
            return this;
        }

        public Builder setAvatar(String str) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setAvatar(str);
            return this;
        }

        public Builder setAvatarBytes(ByteString byteString) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setAvatarBytes(byteString);
            return this;
        }

        public Builder setBattleArea(BattleArea battleArea) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setBattleArea(battleArea);
            return this;
        }

        public Builder setBattleAreaValue(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setBattleAreaValue(i2);
            return this;
        }

        public Builder setBattleTitle(String str) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setBattleTitle(str);
            return this;
        }

        public Builder setBattleTitleBytes(ByteString byteString) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setBattleTitleBytes(byteString);
            return this;
        }

        public Builder setBattleTitleColor(String str) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setBattleTitleColor(str);
            return this;
        }

        public Builder setBattleTitleColorBytes(ByteString byteString) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setBattleTitleColorBytes(byteString);
            return this;
        }

        public Builder setChallengeCoins(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setChallengeCoins(i2);
            return this;
        }

        public Builder setCollectionId(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setCollectionId(i2);
            return this;
        }

        public Builder setCopper(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setCopper(i2);
            return this;
        }

        public Builder setCreateAt(long j4) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setCreateAt(j4);
            return this;
        }

        public Builder setElite(boolean z3) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setElite(z3);
            return this;
        }

        public Builder setGameId(long j4) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setGameId(j4);
            return this;
        }

        public Builder setGameName(String str) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setGameName(str);
            return this;
        }

        public Builder setGameNameBytes(ByteString byteString) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setGameNameBytes(byteString);
            return this;
        }

        public Builder setHasJoinPassword(boolean z3) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setHasJoinPassword(z3);
            return this;
        }

        public Builder setHasPeripheralPlayer(boolean z3) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setHasPeripheralPlayer(z3);
            return this;
        }

        public Builder setLeaderId(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setLeaderId(i2);
            return this;
        }

        public Builder setNickname(String str) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setNickname(str);
            return this;
        }

        public Builder setNicknameBytes(ByteString byteString) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setNicknameBytes(byteString);
            return this;
        }

        public Builder setPlaySeconds(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setPlaySeconds(i2);
            return this;
        }

        public Builder setPlayTimestamp(long j4) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setPlayTimestamp(j4);
            return this;
        }

        public Builder setPlayerList(int i2, RoomPosition roomPosition) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setPlayerList(i2, roomPosition);
            return this;
        }

        public Builder setRoomCategory(RoomCategory roomCategory) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setRoomCategory(roomCategory);
            return this;
        }

        public Builder setRoomCategoryValue(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setRoomCategoryValue(i2);
            return this;
        }

        public Builder setRoomId(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setRoomId(i2);
            return this;
        }

        public Builder setSeatsNumber(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setSeatsNumber(i2);
            return this;
        }

        public Builder setSitDownloadNumber(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setSitDownloadNumber(i2);
            return this;
        }

        public Builder setSpectatorNumber(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setSpectatorNumber(i2);
            return this;
        }

        public Builder setState(RoomState roomState) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setState(roomState);
            return this;
        }

        public Builder setStateValue(int i2) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setStateValue(i2);
            return this;
        }

        public Builder setTitle(BattleTitle battleTitle) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setTitle(battleTitle);
            return this;
        }

        public Builder setVip(boolean z3) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setVip(z3);
            return this;
        }

        private Builder() {
            super(SimpleRoom.DEFAULT_INSTANCE);
        }

        public Builder addPlayerList(int i2, RoomPosition roomPosition) {
            copyOnWrite();
            ((SimpleRoom) this.instance).addPlayerList(i2, roomPosition);
            return this;
        }

        public Builder setPlayerList(int i2, RoomPosition.Builder builder) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setPlayerList(i2, builder);
            return this;
        }

        public Builder setTitle(BattleTitle.Builder builder) {
            copyOnWrite();
            ((SimpleRoom) this.instance).setTitle(builder);
            return this;
        }

        public Builder addPlayerList(RoomPosition.Builder builder) {
            copyOnWrite();
            ((SimpleRoom) this.instance).addPlayerList(builder);
            return this;
        }

        public Builder addPlayerList(int i2, RoomPosition.Builder builder) {
            copyOnWrite();
            ((SimpleRoom) this.instance).addPlayerList(i2, builder);
            return this;
        }
    }

    static {
        SimpleRoom simpleRoom = new SimpleRoom();
        DEFAULT_INSTANCE = simpleRoom;
        simpleRoom.makeImmutable();
    }

    private SimpleRoom() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllPlayerList(Iterable<? extends RoomPosition> iterable) {
        ensurePlayerListIsMutable();
        AbstractMessageLite.addAll(iterable, this.playerList_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPlayerList(RoomPosition roomPosition) {
        Objects.requireNonNull(roomPosition);
        ensurePlayerListIsMutable();
        this.playerList_.add(roomPosition);
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
    public void clearAvatar() {
        this.avatar_ = getDefaultInstance().getAvatar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBattleArea() {
        this.battleArea_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBattleTitle() {
        this.battleTitle_ = getDefaultInstance().getBattleTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBattleTitleColor() {
        this.battleTitleColor_ = getDefaultInstance().getBattleTitleColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearChallengeCoins() {
        this.challengeCoins_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCollectionId() {
        this.collectionId_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCopper() {
        this.copper_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCreateAt() {
        this.createAt_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearElite() {
        this.elite_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.gameId_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameName() {
        this.gameName_ = getDefaultInstance().getGameName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHasJoinPassword() {
        this.hasJoinPassword_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHasPeripheralPlayer() {
        this.hasPeripheralPlayer_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLeaderId() {
        this.leaderId_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNickname() {
        this.nickname_ = getDefaultInstance().getNickname();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlaySeconds() {
        this.playSeconds_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlayTimestamp() {
        this.playTimestamp_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlayerList() {
        this.playerList_ = GeneratedMessageLite.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRoomCategory() {
        this.roomCategory_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRoomId() {
        this.roomId_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSeatsNumber() {
        this.seatsNumber_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSitDownloadNumber() {
        this.sitDownloadNumber_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSpectatorNumber() {
        this.spectatorNumber_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.state_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTitle() {
        this.title_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVip() {
        this.vip_ = false;
    }

    private void ensurePlayerListIsMutable() {
        if (this.playerList_.isModifiable()) {
            return;
        }
        this.playerList_ = GeneratedMessageLite.mutableCopy(this.playerList_);
    }

    public static SimpleRoom getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeTitle(BattleTitle battleTitle) {
        BattleTitle battleTitle2 = this.title_;
        if (battleTitle2 != null && battleTitle2 != BattleTitle.getDefaultInstance()) {
            this.title_ = BattleTitle.newBuilder(this.title_).mergeFrom((BattleTitle.Builder) battleTitle).buildPartial();
        } else {
            this.title_ = battleTitle;
        }
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SimpleRoom parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SimpleRoom) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SimpleRoom parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (SimpleRoom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<SimpleRoom> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePlayerList(int i2) {
        ensurePlayerListIsMutable();
        this.playerList_.remove(i2);
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
    public void setAvatar(String str) {
        Objects.requireNonNull(str);
        this.avatar_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvatarBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.avatar_ = byteString.toStringUtf8();
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
    public void setBattleTitle(String str) {
        Objects.requireNonNull(str);
        this.battleTitle_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleTitleBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.battleTitle_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleTitleColor(String str) {
        Objects.requireNonNull(str);
        this.battleTitleColor_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleTitleColorBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.battleTitleColor_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChallengeCoins(int i2) {
        this.challengeCoins_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCollectionId(int i2) {
        this.collectionId_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCopper(int i2) {
        this.copper_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCreateAt(long j4) {
        this.createAt_ = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setElite(boolean z3) {
        this.elite_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.gameId_ = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameName(String str) {
        Objects.requireNonNull(str);
        this.gameName_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameNameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.gameName_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHasJoinPassword(boolean z3) {
        this.hasJoinPassword_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHasPeripheralPlayer(boolean z3) {
        this.hasPeripheralPlayer_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLeaderId(int i2) {
        this.leaderId_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNickname(String str) {
        Objects.requireNonNull(str);
        this.nickname_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNicknameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.nickname_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaySeconds(int i2) {
        this.playSeconds_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayTimestamp(long j4) {
        this.playTimestamp_ = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayerList(int i2, RoomPosition roomPosition) {
        Objects.requireNonNull(roomPosition);
        ensurePlayerListIsMutable();
        this.playerList_.set(i2, roomPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomCategory(RoomCategory roomCategory) {
        Objects.requireNonNull(roomCategory);
        this.roomCategory_ = roomCategory.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomCategoryValue(int i2) {
        this.roomCategory_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRoomId(int i2) {
        this.roomId_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSeatsNumber(int i2) {
        this.seatsNumber_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSitDownloadNumber(int i2) {
        this.sitDownloadNumber_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpectatorNumber(int i2) {
        this.spectatorNumber_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(RoomState roomState) {
        Objects.requireNonNull(roomState);
        this.state_ = roomState.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateValue(int i2) {
        this.state_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitle(BattleTitle battleTitle) {
        Objects.requireNonNull(battleTitle);
        this.title_ = battleTitle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVip(boolean z3) {
        this.vip_ = z3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new SimpleRoom();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                this.playerList_.makeImmutable();
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                SimpleRoom simpleRoom = (SimpleRoom) obj2;
                int i2 = this.roomId_;
                boolean z3 = i2 != 0;
                int i4 = simpleRoom.roomId_;
                this.roomId_ = visitor.visitInt(z3, i2, i4 != 0, i4);
                long j4 = this.gameId_;
                boolean z4 = j4 != 0;
                long j5 = simpleRoom.gameId_;
                this.gameId_ = visitor.visitLong(z4, j4, j5 != 0, j5);
                this.nickname_ = visitor.visitString(!this.nickname_.isEmpty(), this.nickname_, !simpleRoom.nickname_.isEmpty(), simpleRoom.nickname_);
                boolean z5 = this.vip_;
                boolean z6 = simpleRoom.vip_;
                this.vip_ = visitor.visitBoolean(z5, z5, z6, z6);
                long j6 = this.createAt_;
                boolean z7 = j6 != 0;
                long j7 = simpleRoom.createAt_;
                this.createAt_ = visitor.visitLong(z7, j6, j7 != 0, j7);
                int i5 = this.seatsNumber_;
                boolean z8 = i5 != 0;
                int i6 = simpleRoom.seatsNumber_;
                this.seatsNumber_ = visitor.visitInt(z8, i5, i6 != 0, i6);
                int i7 = this.sitDownloadNumber_;
                boolean z9 = i7 != 0;
                int i8 = simpleRoom.sitDownloadNumber_;
                this.sitDownloadNumber_ = visitor.visitInt(z9, i7, i8 != 0, i8);
                boolean z10 = this.hasJoinPassword_;
                boolean z11 = simpleRoom.hasJoinPassword_;
                this.hasJoinPassword_ = visitor.visitBoolean(z10, z10, z11, z11);
                boolean z12 = this.allowSpectatorJoin_;
                boolean z13 = simpleRoom.allowSpectatorJoin_;
                this.allowSpectatorJoin_ = visitor.visitBoolean(z12, z12, z13, z13);
                boolean z14 = this.allowPeripheralJoin_;
                boolean z15 = simpleRoom.allowPeripheralJoin_;
                this.allowPeripheralJoin_ = visitor.visitBoolean(z14, z14, z15, z15);
                int i9 = this.challengeCoins_;
                boolean z16 = i9 != 0;
                int i10 = simpleRoom.challengeCoins_;
                this.challengeCoins_ = visitor.visitInt(z16, i9, i10 != 0, i10);
                int i11 = this.state_;
                boolean z17 = i11 != 0;
                int i12 = simpleRoom.state_;
                this.state_ = visitor.visitInt(z17, i11, i12 != 0, i12);
                int i13 = this.playSeconds_;
                boolean z18 = i13 != 0;
                int i14 = simpleRoom.playSeconds_;
                this.playSeconds_ = visitor.visitInt(z18, i13, i14 != 0, i14);
                this.title_ = (BattleTitle) visitor.visitMessage(this.title_, simpleRoom.title_);
                boolean z19 = this.elite_;
                boolean z20 = simpleRoom.elite_;
                this.elite_ = visitor.visitBoolean(z19, z19, z20, z20);
                int i15 = this.copper_;
                boolean z21 = i15 != 0;
                int i16 = simpleRoom.copper_;
                this.copper_ = visitor.visitInt(z21, i15, i16 != 0, i16);
                boolean z22 = this.hasPeripheralPlayer_;
                boolean z23 = simpleRoom.hasPeripheralPlayer_;
                this.hasPeripheralPlayer_ = visitor.visitBoolean(z22, z22, z23, z23);
                this.battleTitle_ = visitor.visitString(!this.battleTitle_.isEmpty(), this.battleTitle_, !simpleRoom.battleTitle_.isEmpty(), simpleRoom.battleTitle_);
                this.battleTitleColor_ = visitor.visitString(!this.battleTitleColor_.isEmpty(), this.battleTitleColor_, !simpleRoom.battleTitleColor_.isEmpty(), simpleRoom.battleTitleColor_);
                long j8 = this.playTimestamp_;
                boolean z24 = j8 != 0;
                long j9 = simpleRoom.playTimestamp_;
                this.playTimestamp_ = visitor.visitLong(z24, j8, j9 != 0, j9);
                int i17 = this.battleArea_;
                boolean z25 = i17 != 0;
                int i18 = simpleRoom.battleArea_;
                this.battleArea_ = visitor.visitInt(z25, i17, i18 != 0, i18);
                this.gameName_ = visitor.visitString(!this.gameName_.isEmpty(), this.gameName_, !simpleRoom.gameName_.isEmpty(), simpleRoom.gameName_);
                int i19 = this.collectionId_;
                boolean z26 = i19 != 0;
                int i20 = simpleRoom.collectionId_;
                this.collectionId_ = visitor.visitInt(z26, i19, i20 != 0, i20);
                int i21 = this.spectatorNumber_;
                boolean z27 = i21 != 0;
                int i22 = simpleRoom.spectatorNumber_;
                this.spectatorNumber_ = visitor.visitInt(z27, i21, i22 != 0, i22);
                this.avatar_ = visitor.visitString(!this.avatar_.isEmpty(), this.avatar_, !simpleRoom.avatar_.isEmpty(), simpleRoom.avatar_);
                boolean z28 = this.allowPCJoin_;
                boolean z29 = simpleRoom.allowPCJoin_;
                this.allowPCJoin_ = visitor.visitBoolean(z28, z28, z29, z29);
                this.playerList_ = visitor.visitList(this.playerList_, simpleRoom.playerList_);
                int i23 = this.leaderId_;
                boolean z30 = i23 != 0;
                int i24 = simpleRoom.leaderId_;
                this.leaderId_ = visitor.visitInt(z30, i23, i24 != 0, i24);
                int i25 = this.roomCategory_;
                boolean z31 = i25 != 0;
                int i26 = simpleRoom.roomCategory_;
                this.roomCategory_ = visitor.visitInt(z31, i25, i26 != 0, i26);
                if (visitor == GeneratedMessageLite.MergeFromVisitor.INSTANCE) {
                    this.bitField0_ |= simpleRoom.bitField0_;
                }
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 8:
                                this.roomId_ = codedInputStream.readInt32();
                                continue;
                            case 16:
                                this.gameId_ = codedInputStream.readInt64();
                                continue;
                            case 26:
                                this.nickname_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 32:
                                this.vip_ = codedInputStream.readBool();
                                continue;
                            case 40:
                                this.createAt_ = codedInputStream.readInt64();
                                continue;
                            case 48:
                                this.seatsNumber_ = codedInputStream.readInt32();
                                continue;
                            case 56:
                                this.sitDownloadNumber_ = codedInputStream.readInt32();
                                continue;
                            case 64:
                                this.hasJoinPassword_ = codedInputStream.readBool();
                                continue;
                            case 72:
                                this.allowSpectatorJoin_ = codedInputStream.readBool();
                                continue;
                            case 80:
                                this.allowPeripheralJoin_ = codedInputStream.readBool();
                                continue;
                            case 96:
                                this.challengeCoins_ = codedInputStream.readInt32();
                                continue;
                            case 104:
                                this.state_ = codedInputStream.readEnum();
                                continue;
                            case 112:
                                this.playSeconds_ = codedInputStream.readInt32();
                                continue;
                            case 122:
                                BattleTitle battleTitle = this.title_;
                                BattleTitle.Builder builder = battleTitle != null ? battleTitle.toBuilder() : null;
                                BattleTitle battleTitle2 = (BattleTitle) codedInputStream.readMessage(BattleTitle.parser(), extensionRegistryLite);
                                this.title_ = battleTitle2;
                                if (builder != null) {
                                    builder.mergeFrom((BattleTitle.Builder) battleTitle2);
                                    this.title_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 128:
                                this.elite_ = codedInputStream.readBool();
                                continue;
                            case 136:
                                this.copper_ = codedInputStream.readInt32();
                                continue;
                            case 144:
                                this.hasPeripheralPlayer_ = codedInputStream.readBool();
                                continue;
                            case 154:
                                this.battleTitle_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 162:
                                this.battleTitleColor_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 168:
                                this.playTimestamp_ = codedInputStream.readInt64();
                                continue;
                            case 176:
                                this.battleArea_ = codedInputStream.readEnum();
                                continue;
                            case 186:
                                this.gameName_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 192:
                                this.collectionId_ = codedInputStream.readInt32();
                                continue;
                            case 200:
                                this.spectatorNumber_ = codedInputStream.readInt32();
                                continue;
                            case 210:
                                this.avatar_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 216:
                                this.allowPCJoin_ = codedInputStream.readBool();
                                continue;
                            case Opcodes.USHR_INT_LIT8 /* 226 */:
                                if (!this.playerList_.isModifiable()) {
                                    this.playerList_ = GeneratedMessageLite.mutableCopy(this.playerList_);
                                }
                                this.playerList_.add((RoomPosition) codedInputStream.readMessage(RoomPosition.parser(), extensionRegistryLite));
                                continue;
                            case 232:
                                this.leaderId_ = codedInputStream.readInt32();
                                continue;
                            case 240:
                                this.roomCategory_ = codedInputStream.readEnum();
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
                    } catch (IOException e5) {
                        throw new RuntimeException(new InvalidProtocolBufferException(e5.getMessage()).setUnfinishedMessage(this));
                    }
                }
                break;
            case 7:
                break;
            case 8:
                if (PARSER == null) {
                    synchronized (SimpleRoom.class) {
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

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getAllowPCJoin() {
        return this.allowPCJoin_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getAllowPeripheralJoin() {
        return this.allowPeripheralJoin_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getAllowSpectatorJoin() {
        return this.allowSpectatorJoin_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getAvatar() {
        return this.avatar_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getAvatarBytes() {
        return ByteString.copyFromUtf8(this.avatar_);
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public BattleArea getBattleArea() {
        BattleArea forNumber = BattleArea.forNumber(this.battleArea_);
        return forNumber == null ? BattleArea.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getBattleAreaValue() {
        return this.battleArea_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getBattleTitle() {
        return this.battleTitle_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getBattleTitleBytes() {
        return ByteString.copyFromUtf8(this.battleTitle_);
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getBattleTitleColor() {
        return this.battleTitleColor_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getBattleTitleColorBytes() {
        return ByteString.copyFromUtf8(this.battleTitleColor_);
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getChallengeCoins() {
        return this.challengeCoins_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getCollectionId() {
        return this.collectionId_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getCopper() {
        return this.copper_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public long getCreateAt() {
        return this.createAt_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getElite() {
        return this.elite_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getGameName() {
        return this.gameName_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getGameNameBytes() {
        return ByteString.copyFromUtf8(this.gameName_);
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getHasJoinPassword() {
        return this.hasJoinPassword_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getHasPeripheralPlayer() {
        return this.hasPeripheralPlayer_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getLeaderId() {
        return this.leaderId_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getNickname() {
        return this.nickname_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getNicknameBytes() {
        return ByteString.copyFromUtf8(this.nickname_);
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getPlaySeconds() {
        return this.playSeconds_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public long getPlayTimestamp() {
        return this.playTimestamp_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public RoomPosition getPlayerList(int i2) {
        return this.playerList_.get(i2);
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getPlayerListCount() {
        return this.playerList_.size();
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public List<RoomPosition> getPlayerListList() {
        return this.playerList_;
    }

    public RoomPositionOrBuilder getPlayerListOrBuilder(int i2) {
        return this.playerList_.get(i2);
    }

    public List<? extends RoomPositionOrBuilder> getPlayerListOrBuilderList() {
        return this.playerList_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public RoomCategory getRoomCategory() {
        RoomCategory forNumber = RoomCategory.forNumber(this.roomCategory_);
        return forNumber == null ? RoomCategory.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getRoomCategoryValue() {
        return this.roomCategory_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getRoomId() {
        return this.roomId_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getSeatsNumber() {
        return this.seatsNumber_;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.roomId_;
        int computeInt32Size = i4 != 0 ? CodedOutputStream.computeInt32Size(1, i4) + 0 : 0;
        long j4 = this.gameId_;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(2, j4);
        }
        if (!this.nickname_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, getNickname());
        }
        boolean z3 = this.vip_;
        if (z3) {
            computeInt32Size += CodedOutputStream.computeBoolSize(4, z3);
        }
        long j5 = this.createAt_;
        if (j5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(5, j5);
        }
        int i5 = this.seatsNumber_;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(6, i5);
        }
        int i6 = this.sitDownloadNumber_;
        if (i6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(7, i6);
        }
        boolean z4 = this.hasJoinPassword_;
        if (z4) {
            computeInt32Size += CodedOutputStream.computeBoolSize(8, z4);
        }
        boolean z5 = this.allowSpectatorJoin_;
        if (z5) {
            computeInt32Size += CodedOutputStream.computeBoolSize(9, z5);
        }
        boolean z6 = this.allowPeripheralJoin_;
        if (z6) {
            computeInt32Size += CodedOutputStream.computeBoolSize(10, z6);
        }
        int i7 = this.challengeCoins_;
        if (i7 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(12, i7);
        }
        if (this.state_ != RoomState.EMPTY.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(13, this.state_);
        }
        int i8 = this.playSeconds_;
        if (i8 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(14, i8);
        }
        if (this.title_ != null) {
            computeInt32Size += CodedOutputStream.computeMessageSize(15, getTitle());
        }
        boolean z7 = this.elite_;
        if (z7) {
            computeInt32Size += CodedOutputStream.computeBoolSize(16, z7);
        }
        int i9 = this.copper_;
        if (i9 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(17, i9);
        }
        boolean z8 = this.hasPeripheralPlayer_;
        if (z8) {
            computeInt32Size += CodedOutputStream.computeBoolSize(18, z8);
        }
        if (!this.battleTitle_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(19, getBattleTitle());
        }
        if (!this.battleTitleColor_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(20, getBattleTitleColor());
        }
        long j6 = this.playTimestamp_;
        if (j6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(21, j6);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(22, this.battleArea_);
        }
        if (!this.gameName_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(23, getGameName());
        }
        int i10 = this.collectionId_;
        if (i10 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(24, i10);
        }
        int i11 = this.spectatorNumber_;
        if (i11 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(25, i11);
        }
        if (!this.avatar_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(26, getAvatar());
        }
        boolean z9 = this.allowPCJoin_;
        if (z9) {
            computeInt32Size += CodedOutputStream.computeBoolSize(27, z9);
        }
        for (int i12 = 0; i12 < this.playerList_.size(); i12++) {
            computeInt32Size += CodedOutputStream.computeMessageSize(28, this.playerList_.get(i12));
        }
        int i13 = this.leaderId_;
        if (i13 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(29, i13);
        }
        if (this.roomCategory_ != RoomCategory.NORMAL.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(30, this.roomCategory_);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getSitDownloadNumber() {
        return this.sitDownloadNumber_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getSpectatorNumber() {
        return this.spectatorNumber_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public RoomState getState() {
        RoomState forNumber = RoomState.forNumber(this.state_);
        return forNumber == null ? RoomState.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getStateValue() {
        return this.state_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public BattleTitle getTitle() {
        BattleTitle battleTitle = this.title_;
        return battleTitle == null ? BattleTitle.getDefaultInstance() : battleTitle;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getVip() {
        return this.vip_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean hasTitle() {
        return this.title_ != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.roomId_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        long j4 = this.gameId_;
        if (j4 != 0) {
            codedOutputStream.writeInt64(2, j4);
        }
        if (!this.nickname_.isEmpty()) {
            codedOutputStream.writeString(3, getNickname());
        }
        boolean z3 = this.vip_;
        if (z3) {
            codedOutputStream.writeBool(4, z3);
        }
        long j5 = this.createAt_;
        if (j5 != 0) {
            codedOutputStream.writeInt64(5, j5);
        }
        int i4 = this.seatsNumber_;
        if (i4 != 0) {
            codedOutputStream.writeInt32(6, i4);
        }
        int i5 = this.sitDownloadNumber_;
        if (i5 != 0) {
            codedOutputStream.writeInt32(7, i5);
        }
        boolean z4 = this.hasJoinPassword_;
        if (z4) {
            codedOutputStream.writeBool(8, z4);
        }
        boolean z5 = this.allowSpectatorJoin_;
        if (z5) {
            codedOutputStream.writeBool(9, z5);
        }
        boolean z6 = this.allowPeripheralJoin_;
        if (z6) {
            codedOutputStream.writeBool(10, z6);
        }
        int i6 = this.challengeCoins_;
        if (i6 != 0) {
            codedOutputStream.writeInt32(12, i6);
        }
        if (this.state_ != RoomState.EMPTY.getNumber()) {
            codedOutputStream.writeEnum(13, this.state_);
        }
        int i7 = this.playSeconds_;
        if (i7 != 0) {
            codedOutputStream.writeInt32(14, i7);
        }
        if (this.title_ != null) {
            codedOutputStream.writeMessage(15, getTitle());
        }
        boolean z7 = this.elite_;
        if (z7) {
            codedOutputStream.writeBool(16, z7);
        }
        int i8 = this.copper_;
        if (i8 != 0) {
            codedOutputStream.writeInt32(17, i8);
        }
        boolean z8 = this.hasPeripheralPlayer_;
        if (z8) {
            codedOutputStream.writeBool(18, z8);
        }
        if (!this.battleTitle_.isEmpty()) {
            codedOutputStream.writeString(19, getBattleTitle());
        }
        if (!this.battleTitleColor_.isEmpty()) {
            codedOutputStream.writeString(20, getBattleTitleColor());
        }
        long j6 = this.playTimestamp_;
        if (j6 != 0) {
            codedOutputStream.writeInt64(21, j6);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(22, this.battleArea_);
        }
        if (!this.gameName_.isEmpty()) {
            codedOutputStream.writeString(23, getGameName());
        }
        int i9 = this.collectionId_;
        if (i9 != 0) {
            codedOutputStream.writeInt32(24, i9);
        }
        int i10 = this.spectatorNumber_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(25, i10);
        }
        if (!this.avatar_.isEmpty()) {
            codedOutputStream.writeString(26, getAvatar());
        }
        boolean z9 = this.allowPCJoin_;
        if (z9) {
            codedOutputStream.writeBool(27, z9);
        }
        for (int i11 = 0; i11 < this.playerList_.size(); i11++) {
            codedOutputStream.writeMessage(28, this.playerList_.get(i11));
        }
        int i12 = this.leaderId_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(29, i12);
        }
        if (this.roomCategory_ != RoomCategory.NORMAL.getNumber()) {
            codedOutputStream.writeEnum(30, this.roomCategory_);
        }
    }

    public static Builder newBuilder(SimpleRoom simpleRoom) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) simpleRoom);
    }

    public static SimpleRoom parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SimpleRoom) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SimpleRoom parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (SimpleRoom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SimpleRoom parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (SimpleRoom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitle(BattleTitle.Builder builder) {
        this.title_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPlayerList(int i2, RoomPosition roomPosition) {
        Objects.requireNonNull(roomPosition);
        ensurePlayerListIsMutable();
        this.playerList_.add(i2, roomPosition);
    }

    public static SimpleRoom parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (SimpleRoom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayerList(int i2, RoomPosition.Builder builder) {
        ensurePlayerListIsMutable();
        this.playerList_.set(i2, builder.build());
    }

    public static SimpleRoom parseFrom(InputStream inputStream) throws IOException {
        return (SimpleRoom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SimpleRoom parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SimpleRoom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPlayerList(RoomPosition.Builder builder) {
        ensurePlayerListIsMutable();
        this.playerList_.add(builder.build());
    }

    public static SimpleRoom parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (SimpleRoom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SimpleRoom parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SimpleRoom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPlayerList(int i2, RoomPosition.Builder builder) {
        ensurePlayerListIsMutable();
        this.playerList_.add(i2, builder.build());
    }
}
