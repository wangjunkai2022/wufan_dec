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
import com.papa91.battle.protocol.BattleTitle;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class RoomPosition extends GeneratedMessageLite<RoomPosition, Builder> implements RoomPositionOrBuilder, Serializable {
    public static final int AVATAR_FIELD_NUMBER = 6;
    public static final int BATTLEAREA_FIELD_NUMBER = 13;
    public static final int BATTLETITLECOLOR_FIELD_NUMBER = 12;
    public static final int BATTLETITLE_FIELD_NUMBER = 11;
    public static final int CLOSED_FIELD_NUMBER = 1;
    public static final int COPPER_FIELD_NUMBER = 7;
    private static final RoomPosition DEFAULT_INSTANCE;
    public static final int IGNORE_FIELD_NUMBER = 15;
    public static final int KICKCOUNT_FIELD_NUMBER = 14;
    public static final int NICKNAME_FIELD_NUMBER = 5;
    private static volatile Parser<RoomPosition> PARSER = null;
    public static final int PERIPHERAL_FIELD_NUMBER = 9;
    public static final int PHONETYPE_FIELD_NUMBER = 31;
    public static final int PINGVAL_FIELD_NUMBER = 8;
    public static final int PLATFORM_FIELD_NUMBER = 16;
    public static final int PROFICIENCYLEVEL_FIELD_NUMBER = 17;
    public static final int STATE_FIELD_NUMBER = 10;
    public static final int TITLE_FIELD_NUMBER = 4;
    public static final int UID_FIELD_NUMBER = 3;
    public static final int VIP_FIELD_NUMBER = 2;
    private int battleArea_;
    private boolean closed_;
    private int copper_;
    private int kickCount_;
    private boolean peripheral_;
    private int phoneType_;
    private int pingVal_;
    private int platform_;
    private int proficiencyLevel_;
    private int state_;
    private BattleTitle title_;
    private int uid_;
    private boolean vip_;
    private String nickname_ = "";
    private String avatar_ = "";
    private String battleTitle_ = "";
    private String battleTitleColor_ = "";
    private String ignore_ = "";

    /* renamed from: com.papa91.battle.protocol.RoomPosition$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<RoomPosition, Builder> implements RoomPositionOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearAvatar() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearAvatar();
            return this;
        }

        public Builder clearBattleArea() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearBattleArea();
            return this;
        }

        public Builder clearBattleTitle() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearBattleTitle();
            return this;
        }

        public Builder clearBattleTitleColor() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearBattleTitleColor();
            return this;
        }

        public Builder clearClosed() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearClosed();
            return this;
        }

        public Builder clearCopper() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearCopper();
            return this;
        }

        public Builder clearIgnore() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearIgnore();
            return this;
        }

        public Builder clearKickCount() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearKickCount();
            return this;
        }

        public Builder clearNickname() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearNickname();
            return this;
        }

        public Builder clearPeripheral() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearPeripheral();
            return this;
        }

        public Builder clearPhoneType() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearPhoneType();
            return this;
        }

        public Builder clearPingVal() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearPingVal();
            return this;
        }

        public Builder clearPlatform() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearPlatform();
            return this;
        }

        public Builder clearProficiencyLevel() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearProficiencyLevel();
            return this;
        }

        public Builder clearState() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearState();
            return this;
        }

        public Builder clearTitle() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearTitle();
            return this;
        }

        public Builder clearUid() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearUid();
            return this;
        }

        public Builder clearVip() {
            copyOnWrite();
            ((RoomPosition) this.instance).clearVip();
            return this;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getAvatar() {
            return ((RoomPosition) this.instance).getAvatar();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getAvatarBytes() {
            return ((RoomPosition) this.instance).getAvatarBytes();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public BattleArea getBattleArea() {
            return ((RoomPosition) this.instance).getBattleArea();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getBattleAreaValue() {
            return ((RoomPosition) this.instance).getBattleAreaValue();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getBattleTitle() {
            return ((RoomPosition) this.instance).getBattleTitle();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getBattleTitleBytes() {
            return ((RoomPosition) this.instance).getBattleTitleBytes();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getBattleTitleColor() {
            return ((RoomPosition) this.instance).getBattleTitleColor();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getBattleTitleColorBytes() {
            return ((RoomPosition) this.instance).getBattleTitleColorBytes();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public boolean getClosed() {
            return ((RoomPosition) this.instance).getClosed();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getCopper() {
            return ((RoomPosition) this.instance).getCopper();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getIgnore() {
            return ((RoomPosition) this.instance).getIgnore();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getIgnoreBytes() {
            return ((RoomPosition) this.instance).getIgnoreBytes();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getKickCount() {
            return ((RoomPosition) this.instance).getKickCount();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getNickname() {
            return ((RoomPosition) this.instance).getNickname();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getNicknameBytes() {
            return ((RoomPosition) this.instance).getNicknameBytes();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public boolean getPeripheral() {
            return ((RoomPosition) this.instance).getPeripheral();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public PhoneType getPhoneType() {
            return ((RoomPosition) this.instance).getPhoneType();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getPhoneTypeValue() {
            return ((RoomPosition) this.instance).getPhoneTypeValue();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getPingVal() {
            return ((RoomPosition) this.instance).getPingVal();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public Platform getPlatform() {
            return ((RoomPosition) this.instance).getPlatform();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getPlatformValue() {
            return ((RoomPosition) this.instance).getPlatformValue();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getProficiencyLevel() {
            return ((RoomPosition) this.instance).getProficiencyLevel();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public State getState() {
            return ((RoomPosition) this.instance).getState();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getStateValue() {
            return ((RoomPosition) this.instance).getStateValue();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public BattleTitle getTitle() {
            return ((RoomPosition) this.instance).getTitle();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getUid() {
            return ((RoomPosition) this.instance).getUid();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public boolean getVip() {
            return ((RoomPosition) this.instance).getVip();
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public boolean hasTitle() {
            return ((RoomPosition) this.instance).hasTitle();
        }

        public Builder mergeTitle(BattleTitle battleTitle) {
            copyOnWrite();
            ((RoomPosition) this.instance).mergeTitle(battleTitle);
            return this;
        }

        public Builder setAvatar(String str) {
            copyOnWrite();
            ((RoomPosition) this.instance).setAvatar(str);
            return this;
        }

        public Builder setAvatarBytes(ByteString byteString) {
            copyOnWrite();
            ((RoomPosition) this.instance).setAvatarBytes(byteString);
            return this;
        }

        public Builder setBattleArea(BattleArea battleArea) {
            copyOnWrite();
            ((RoomPosition) this.instance).setBattleArea(battleArea);
            return this;
        }

        public Builder setBattleAreaValue(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setBattleAreaValue(i2);
            return this;
        }

        public Builder setBattleTitle(String str) {
            copyOnWrite();
            ((RoomPosition) this.instance).setBattleTitle(str);
            return this;
        }

        public Builder setBattleTitleBytes(ByteString byteString) {
            copyOnWrite();
            ((RoomPosition) this.instance).setBattleTitleBytes(byteString);
            return this;
        }

        public Builder setBattleTitleColor(String str) {
            copyOnWrite();
            ((RoomPosition) this.instance).setBattleTitleColor(str);
            return this;
        }

        public Builder setBattleTitleColorBytes(ByteString byteString) {
            copyOnWrite();
            ((RoomPosition) this.instance).setBattleTitleColorBytes(byteString);
            return this;
        }

        public Builder setClosed(boolean z3) {
            copyOnWrite();
            ((RoomPosition) this.instance).setClosed(z3);
            return this;
        }

        public Builder setCopper(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setCopper(i2);
            return this;
        }

        public Builder setIgnore(String str) {
            copyOnWrite();
            ((RoomPosition) this.instance).setIgnore(str);
            return this;
        }

        public Builder setIgnoreBytes(ByteString byteString) {
            copyOnWrite();
            ((RoomPosition) this.instance).setIgnoreBytes(byteString);
            return this;
        }

        public Builder setKickCount(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setKickCount(i2);
            return this;
        }

        public Builder setNickname(String str) {
            copyOnWrite();
            ((RoomPosition) this.instance).setNickname(str);
            return this;
        }

        public Builder setNicknameBytes(ByteString byteString) {
            copyOnWrite();
            ((RoomPosition) this.instance).setNicknameBytes(byteString);
            return this;
        }

        public Builder setPeripheral(boolean z3) {
            copyOnWrite();
            ((RoomPosition) this.instance).setPeripheral(z3);
            return this;
        }

        public Builder setPhoneType(PhoneType phoneType) {
            copyOnWrite();
            ((RoomPosition) this.instance).setPhoneType(phoneType);
            return this;
        }

        public Builder setPhoneTypeValue(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setPhoneTypeValue(i2);
            return this;
        }

        public Builder setPingVal(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setPingVal(i2);
            return this;
        }

        public Builder setPlatform(Platform platform) {
            copyOnWrite();
            ((RoomPosition) this.instance).setPlatform(platform);
            return this;
        }

        public Builder setPlatformValue(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setPlatformValue(i2);
            return this;
        }

        public Builder setProficiencyLevel(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setProficiencyLevel(i2);
            return this;
        }

        public Builder setState(State state) {
            copyOnWrite();
            ((RoomPosition) this.instance).setState(state);
            return this;
        }

        public Builder setStateValue(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setStateValue(i2);
            return this;
        }

        public Builder setTitle(BattleTitle battleTitle) {
            copyOnWrite();
            ((RoomPosition) this.instance).setTitle(battleTitle);
            return this;
        }

        public Builder setUid(int i2) {
            copyOnWrite();
            ((RoomPosition) this.instance).setUid(i2);
            return this;
        }

        public Builder setVip(boolean z3) {
            copyOnWrite();
            ((RoomPosition) this.instance).setVip(z3);
            return this;
        }

        private Builder() {
            super(RoomPosition.DEFAULT_INSTANCE);
        }

        public Builder setTitle(BattleTitle.Builder builder) {
            copyOnWrite();
            ((RoomPosition) this.instance).setTitle(builder);
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public enum State implements Internal.EnumLite {
        EMPTY(0),
        WAIT(1),
        READY(2),
        START(3),
        UNRECOGNIZED(-1);
        
        public static final int EMPTY_VALUE = 0;
        public static final int READY_VALUE = 2;
        public static final int START_VALUE = 3;
        public static final int WAIT_VALUE = 1;
        private static final Internal.EnumLiteMap<State> internalValueMap = new Internal.EnumLiteMap<State>() { // from class: com.papa91.battle.protocol.RoomPosition.State.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public State findValueByNumber(int i2) {
                return State.forNumber(i2);
            }
        };
        private final int value;

        State(int i2) {
            this.value = i2;
        }

        public static State forNumber(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            return null;
                        }
                        return START;
                    }
                    return READY;
                }
                return WAIT;
            }
            return EMPTY;
        }

        public static Internal.EnumLiteMap<State> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static State valueOf(int i2) {
            return forNumber(i2);
        }
    }

    static {
        RoomPosition roomPosition = new RoomPosition();
        DEFAULT_INSTANCE = roomPosition;
        roomPosition.makeImmutable();
    }

    private RoomPosition() {
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
    public void clearClosed() {
        this.closed_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCopper() {
        this.copper_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearIgnore() {
        this.ignore_ = getDefaultInstance().getIgnore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearKickCount() {
        this.kickCount_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNickname() {
        this.nickname_ = getDefaultInstance().getNickname();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPeripheral() {
        this.peripheral_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPhoneType() {
        this.phoneType_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPingVal() {
        this.pingVal_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlatform() {
        this.platform_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProficiencyLevel() {
        this.proficiencyLevel_ = 0;
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
    public void clearUid() {
        this.uid_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVip() {
        this.vip_ = false;
    }

    public static RoomPosition getDefaultInstance() {
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

    public static RoomPosition parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RoomPosition) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static RoomPosition parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (RoomPosition) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<RoomPosition> parser() {
        return DEFAULT_INSTANCE.getParserForType();
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
    public void setClosed(boolean z3) {
        this.closed_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCopper(int i2) {
        this.copper_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIgnore(String str) {
        Objects.requireNonNull(str);
        this.ignore_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIgnoreBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.ignore_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKickCount(int i2) {
        this.kickCount_ = i2;
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
    public void setPeripheral(boolean z3) {
        this.peripheral_ = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPhoneType(PhoneType phoneType) {
        Objects.requireNonNull(phoneType);
        this.phoneType_ = phoneType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPhoneTypeValue(int i2) {
        this.phoneType_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPingVal(int i2) {
        this.pingVal_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlatform(Platform platform) {
        Objects.requireNonNull(platform);
        this.platform_ = platform.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlatformValue(int i2) {
        this.platform_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProficiencyLevel(int i2) {
        this.proficiencyLevel_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(State state) {
        Objects.requireNonNull(state);
        this.state_ = state.getNumber();
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
    public void setUid(int i2) {
        this.uid_ = i2;
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
                return new RoomPosition();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                RoomPosition roomPosition = (RoomPosition) obj2;
                boolean z3 = this.closed_;
                boolean z4 = roomPosition.closed_;
                this.closed_ = visitor.visitBoolean(z3, z3, z4, z4);
                boolean z5 = this.vip_;
                boolean z6 = roomPosition.vip_;
                this.vip_ = visitor.visitBoolean(z5, z5, z6, z6);
                int i2 = this.uid_;
                boolean z7 = i2 != 0;
                int i4 = roomPosition.uid_;
                this.uid_ = visitor.visitInt(z7, i2, i4 != 0, i4);
                this.title_ = (BattleTitle) visitor.visitMessage(this.title_, roomPosition.title_);
                this.nickname_ = visitor.visitString(!this.nickname_.isEmpty(), this.nickname_, !roomPosition.nickname_.isEmpty(), roomPosition.nickname_);
                this.avatar_ = visitor.visitString(!this.avatar_.isEmpty(), this.avatar_, !roomPosition.avatar_.isEmpty(), roomPosition.avatar_);
                int i5 = this.copper_;
                boolean z8 = i5 != 0;
                int i6 = roomPosition.copper_;
                this.copper_ = visitor.visitInt(z8, i5, i6 != 0, i6);
                int i7 = this.pingVal_;
                boolean z9 = i7 != 0;
                int i8 = roomPosition.pingVal_;
                this.pingVal_ = visitor.visitInt(z9, i7, i8 != 0, i8);
                boolean z10 = this.peripheral_;
                boolean z11 = roomPosition.peripheral_;
                this.peripheral_ = visitor.visitBoolean(z10, z10, z11, z11);
                int i9 = this.state_;
                boolean z12 = i9 != 0;
                int i10 = roomPosition.state_;
                this.state_ = visitor.visitInt(z12, i9, i10 != 0, i10);
                this.battleTitle_ = visitor.visitString(!this.battleTitle_.isEmpty(), this.battleTitle_, !roomPosition.battleTitle_.isEmpty(), roomPosition.battleTitle_);
                this.battleTitleColor_ = visitor.visitString(!this.battleTitleColor_.isEmpty(), this.battleTitleColor_, !roomPosition.battleTitleColor_.isEmpty(), roomPosition.battleTitleColor_);
                int i11 = this.battleArea_;
                boolean z13 = i11 != 0;
                int i12 = roomPosition.battleArea_;
                this.battleArea_ = visitor.visitInt(z13, i11, i12 != 0, i12);
                int i13 = this.kickCount_;
                boolean z14 = i13 != 0;
                int i14 = roomPosition.kickCount_;
                this.kickCount_ = visitor.visitInt(z14, i13, i14 != 0, i14);
                this.ignore_ = visitor.visitString(!this.ignore_.isEmpty(), this.ignore_, !roomPosition.ignore_.isEmpty(), roomPosition.ignore_);
                int i15 = this.platform_;
                boolean z15 = i15 != 0;
                int i16 = roomPosition.platform_;
                this.platform_ = visitor.visitInt(z15, i15, i16 != 0, i16);
                int i17 = this.proficiencyLevel_;
                boolean z16 = i17 != 0;
                int i18 = roomPosition.proficiencyLevel_;
                this.proficiencyLevel_ = visitor.visitInt(z16, i17, i18 != 0, i18);
                int i19 = this.phoneType_;
                boolean z17 = i19 != 0;
                int i20 = roomPosition.phoneType_;
                this.phoneType_ = visitor.visitInt(z17, i19, i20 != 0, i20);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
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
                                this.closed_ = codedInputStream.readBool();
                                continue;
                            case 16:
                                this.vip_ = codedInputStream.readBool();
                                continue;
                            case 24:
                                this.uid_ = codedInputStream.readInt32();
                                continue;
                            case 34:
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
                            case 42:
                                this.nickname_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 50:
                                this.avatar_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 56:
                                this.copper_ = codedInputStream.readInt32();
                                continue;
                            case 64:
                                this.pingVal_ = codedInputStream.readInt32();
                                continue;
                            case 72:
                                this.peripheral_ = codedInputStream.readBool();
                                continue;
                            case 80:
                                this.state_ = codedInputStream.readEnum();
                                continue;
                            case 90:
                                this.battleTitle_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 98:
                                this.battleTitleColor_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 104:
                                this.battleArea_ = codedInputStream.readEnum();
                                continue;
                            case 112:
                                this.kickCount_ = codedInputStream.readInt32();
                                continue;
                            case 122:
                                this.ignore_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 128:
                                this.platform_ = codedInputStream.readEnum();
                                continue;
                            case 136:
                                this.proficiencyLevel_ = codedInputStream.readInt32();
                                continue;
                            case 248:
                                this.phoneType_ = codedInputStream.readEnum();
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
                    synchronized (RoomPosition.class) {
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

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getAvatar() {
        return this.avatar_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getAvatarBytes() {
        return ByteString.copyFromUtf8(this.avatar_);
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public BattleArea getBattleArea() {
        BattleArea forNumber = BattleArea.forNumber(this.battleArea_);
        return forNumber == null ? BattleArea.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getBattleAreaValue() {
        return this.battleArea_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getBattleTitle() {
        return this.battleTitle_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getBattleTitleBytes() {
        return ByteString.copyFromUtf8(this.battleTitle_);
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getBattleTitleColor() {
        return this.battleTitleColor_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getBattleTitleColorBytes() {
        return ByteString.copyFromUtf8(this.battleTitleColor_);
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public boolean getClosed() {
        return this.closed_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getCopper() {
        return this.copper_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getIgnore() {
        return this.ignore_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getIgnoreBytes() {
        return ByteString.copyFromUtf8(this.ignore_);
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getKickCount() {
        return this.kickCount_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getNickname() {
        return this.nickname_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getNicknameBytes() {
        return ByteString.copyFromUtf8(this.nickname_);
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public boolean getPeripheral() {
        return this.peripheral_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public PhoneType getPhoneType() {
        PhoneType forNumber = PhoneType.forNumber(this.phoneType_);
        return forNumber == null ? PhoneType.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getPhoneTypeValue() {
        return this.phoneType_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getPingVal() {
        return this.pingVal_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public Platform getPlatform() {
        Platform forNumber = Platform.forNumber(this.platform_);
        return forNumber == null ? Platform.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getPlatformValue() {
        return this.platform_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getProficiencyLevel() {
        return this.proficiencyLevel_;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        boolean z3 = this.closed_;
        int computeBoolSize = z3 ? 0 + CodedOutputStream.computeBoolSize(1, z3) : 0;
        boolean z4 = this.vip_;
        if (z4) {
            computeBoolSize += CodedOutputStream.computeBoolSize(2, z4);
        }
        int i4 = this.uid_;
        if (i4 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(3, i4);
        }
        if (this.title_ != null) {
            computeBoolSize += CodedOutputStream.computeMessageSize(4, getTitle());
        }
        if (!this.nickname_.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(5, getNickname());
        }
        if (!this.avatar_.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(6, getAvatar());
        }
        int i5 = this.copper_;
        if (i5 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(7, i5);
        }
        int i6 = this.pingVal_;
        if (i6 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(8, i6);
        }
        boolean z5 = this.peripheral_;
        if (z5) {
            computeBoolSize += CodedOutputStream.computeBoolSize(9, z5);
        }
        if (this.state_ != State.EMPTY.getNumber()) {
            computeBoolSize += CodedOutputStream.computeEnumSize(10, this.state_);
        }
        if (!this.battleTitle_.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(11, getBattleTitle());
        }
        if (!this.battleTitleColor_.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(12, getBattleTitleColor());
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            computeBoolSize += CodedOutputStream.computeEnumSize(13, this.battleArea_);
        }
        int i7 = this.kickCount_;
        if (i7 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(14, i7);
        }
        if (!this.ignore_.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(15, getIgnore());
        }
        if (this.platform_ != Platform.MOBILE.getNumber()) {
            computeBoolSize += CodedOutputStream.computeEnumSize(16, this.platform_);
        }
        int i8 = this.proficiencyLevel_;
        if (i8 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(17, i8);
        }
        if (this.phoneType_ != PhoneType.UNKNOWN.getNumber()) {
            computeBoolSize += CodedOutputStream.computeEnumSize(31, this.phoneType_);
        }
        this.memoizedSerializedSize = computeBoolSize;
        return computeBoolSize;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public State getState() {
        State forNumber = State.forNumber(this.state_);
        return forNumber == null ? State.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getStateValue() {
        return this.state_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public BattleTitle getTitle() {
        BattleTitle battleTitle = this.title_;
        return battleTitle == null ? BattleTitle.getDefaultInstance() : battleTitle;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getUid() {
        return this.uid_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public boolean getVip() {
        return this.vip_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public boolean hasTitle() {
        return this.title_ != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z3 = this.closed_;
        if (z3) {
            codedOutputStream.writeBool(1, z3);
        }
        boolean z4 = this.vip_;
        if (z4) {
            codedOutputStream.writeBool(2, z4);
        }
        int i2 = this.uid_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(3, i2);
        }
        if (this.title_ != null) {
            codedOutputStream.writeMessage(4, getTitle());
        }
        if (!this.nickname_.isEmpty()) {
            codedOutputStream.writeString(5, getNickname());
        }
        if (!this.avatar_.isEmpty()) {
            codedOutputStream.writeString(6, getAvatar());
        }
        int i4 = this.copper_;
        if (i4 != 0) {
            codedOutputStream.writeInt32(7, i4);
        }
        int i5 = this.pingVal_;
        if (i5 != 0) {
            codedOutputStream.writeInt32(8, i5);
        }
        boolean z5 = this.peripheral_;
        if (z5) {
            codedOutputStream.writeBool(9, z5);
        }
        if (this.state_ != State.EMPTY.getNumber()) {
            codedOutputStream.writeEnum(10, this.state_);
        }
        if (!this.battleTitle_.isEmpty()) {
            codedOutputStream.writeString(11, getBattleTitle());
        }
        if (!this.battleTitleColor_.isEmpty()) {
            codedOutputStream.writeString(12, getBattleTitleColor());
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(13, this.battleArea_);
        }
        int i6 = this.kickCount_;
        if (i6 != 0) {
            codedOutputStream.writeInt32(14, i6);
        }
        if (!this.ignore_.isEmpty()) {
            codedOutputStream.writeString(15, getIgnore());
        }
        if (this.platform_ != Platform.MOBILE.getNumber()) {
            codedOutputStream.writeEnum(16, this.platform_);
        }
        int i7 = this.proficiencyLevel_;
        if (i7 != 0) {
            codedOutputStream.writeInt32(17, i7);
        }
        if (this.phoneType_ != PhoneType.UNKNOWN.getNumber()) {
            codedOutputStream.writeEnum(31, this.phoneType_);
        }
    }

    public static Builder newBuilder(RoomPosition roomPosition) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) roomPosition);
    }

    public static RoomPosition parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomPosition) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static RoomPosition parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (RoomPosition) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static RoomPosition parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (RoomPosition) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitle(BattleTitle.Builder builder) {
        this.title_ = builder.build();
    }

    public static RoomPosition parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (RoomPosition) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static RoomPosition parseFrom(InputStream inputStream) throws IOException {
        return (RoomPosition) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static RoomPosition parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomPosition) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static RoomPosition parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (RoomPosition) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static RoomPosition parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomPosition) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
