package com.papa91.battle.protocol;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class UserProfile extends GeneratedMessageLite<UserProfile, Builder> implements UserProfileOrBuilder, Serializable {
    public static final int AREA_FIELD_NUMBER = 9;
    public static final int AVATAR_FIELD_NUMBER = 3;
    public static final int BATTLETITLECOLOR_FIELD_NUMBER = 6;
    public static final int BATTLETITLE_FIELD_NUMBER = 5;
    public static final int COPPER_FIELD_NUMBER = 7;
    private static final UserProfile DEFAULT_INSTANCE;
    public static final int KICKCOUNT_FIELD_NUMBER = 8;
    public static final int NICKNAME_FIELD_NUMBER = 2;
    private static volatile Parser<UserProfile> PARSER = null;
    public static final int UID_FIELD_NUMBER = 1;
    public static final int VIP_FIELD_NUMBER = 4;
    private int area_;
    private int copper_;
    private int kickCount_;
    private int uid_;
    private boolean vip_;
    private String nickname_ = "";
    private String avatar_ = "";
    private String battleTitle_ = "";
    private String battleTitleColor_ = "";

    /* renamed from: com.papa91.battle.protocol.UserProfile$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<UserProfile, Builder> implements UserProfileOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearArea() {
            copyOnWrite();
            ((UserProfile) this.instance).clearArea();
            return this;
        }

        public Builder clearAvatar() {
            copyOnWrite();
            ((UserProfile) this.instance).clearAvatar();
            return this;
        }

        public Builder clearBattleTitle() {
            copyOnWrite();
            ((UserProfile) this.instance).clearBattleTitle();
            return this;
        }

        public Builder clearBattleTitleColor() {
            copyOnWrite();
            ((UserProfile) this.instance).clearBattleTitleColor();
            return this;
        }

        public Builder clearCopper() {
            copyOnWrite();
            ((UserProfile) this.instance).clearCopper();
            return this;
        }

        public Builder clearKickCount() {
            copyOnWrite();
            ((UserProfile) this.instance).clearKickCount();
            return this;
        }

        public Builder clearNickname() {
            copyOnWrite();
            ((UserProfile) this.instance).clearNickname();
            return this;
        }

        public Builder clearUid() {
            copyOnWrite();
            ((UserProfile) this.instance).clearUid();
            return this;
        }

        public Builder clearVip() {
            copyOnWrite();
            ((UserProfile) this.instance).clearVip();
            return this;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public BattleArea getArea() {
            return ((UserProfile) this.instance).getArea();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public int getAreaValue() {
            return ((UserProfile) this.instance).getAreaValue();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public String getAvatar() {
            return ((UserProfile) this.instance).getAvatar();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public ByteString getAvatarBytes() {
            return ((UserProfile) this.instance).getAvatarBytes();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public String getBattleTitle() {
            return ((UserProfile) this.instance).getBattleTitle();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public ByteString getBattleTitleBytes() {
            return ((UserProfile) this.instance).getBattleTitleBytes();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public String getBattleTitleColor() {
            return ((UserProfile) this.instance).getBattleTitleColor();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public ByteString getBattleTitleColorBytes() {
            return ((UserProfile) this.instance).getBattleTitleColorBytes();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public int getCopper() {
            return ((UserProfile) this.instance).getCopper();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public int getKickCount() {
            return ((UserProfile) this.instance).getKickCount();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public String getNickname() {
            return ((UserProfile) this.instance).getNickname();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public ByteString getNicknameBytes() {
            return ((UserProfile) this.instance).getNicknameBytes();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public int getUid() {
            return ((UserProfile) this.instance).getUid();
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public boolean getVip() {
            return ((UserProfile) this.instance).getVip();
        }

        public Builder setArea(BattleArea battleArea) {
            copyOnWrite();
            ((UserProfile) this.instance).setArea(battleArea);
            return this;
        }

        public Builder setAreaValue(int i2) {
            copyOnWrite();
            ((UserProfile) this.instance).setAreaValue(i2);
            return this;
        }

        public Builder setAvatar(String str) {
            copyOnWrite();
            ((UserProfile) this.instance).setAvatar(str);
            return this;
        }

        public Builder setAvatarBytes(ByteString byteString) {
            copyOnWrite();
            ((UserProfile) this.instance).setAvatarBytes(byteString);
            return this;
        }

        public Builder setBattleTitle(String str) {
            copyOnWrite();
            ((UserProfile) this.instance).setBattleTitle(str);
            return this;
        }

        public Builder setBattleTitleBytes(ByteString byteString) {
            copyOnWrite();
            ((UserProfile) this.instance).setBattleTitleBytes(byteString);
            return this;
        }

        public Builder setBattleTitleColor(String str) {
            copyOnWrite();
            ((UserProfile) this.instance).setBattleTitleColor(str);
            return this;
        }

        public Builder setBattleTitleColorBytes(ByteString byteString) {
            copyOnWrite();
            ((UserProfile) this.instance).setBattleTitleColorBytes(byteString);
            return this;
        }

        public Builder setCopper(int i2) {
            copyOnWrite();
            ((UserProfile) this.instance).setCopper(i2);
            return this;
        }

        public Builder setKickCount(int i2) {
            copyOnWrite();
            ((UserProfile) this.instance).setKickCount(i2);
            return this;
        }

        public Builder setNickname(String str) {
            copyOnWrite();
            ((UserProfile) this.instance).setNickname(str);
            return this;
        }

        public Builder setNicknameBytes(ByteString byteString) {
            copyOnWrite();
            ((UserProfile) this.instance).setNicknameBytes(byteString);
            return this;
        }

        public Builder setUid(int i2) {
            copyOnWrite();
            ((UserProfile) this.instance).setUid(i2);
            return this;
        }

        public Builder setVip(boolean z3) {
            copyOnWrite();
            ((UserProfile) this.instance).setVip(z3);
            return this;
        }

        private Builder() {
            super(UserProfile.DEFAULT_INSTANCE);
        }
    }

    static {
        UserProfile userProfile = new UserProfile();
        DEFAULT_INSTANCE = userProfile;
        userProfile.makeImmutable();
    }

    private UserProfile() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearArea() {
        this.area_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAvatar() {
        this.avatar_ = getDefaultInstance().getAvatar();
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
    public void clearCopper() {
        this.copper_ = 0;
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
    public void clearUid() {
        this.uid_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVip() {
        this.vip_ = false;
    }

    public static UserProfile getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UserProfile parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UserProfile) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UserProfile parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (UserProfile) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<UserProfile> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setArea(BattleArea battleArea) {
        Objects.requireNonNull(battleArea);
        this.area_ = battleArea.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAreaValue(int i2) {
        this.area_ = i2;
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
    public void setCopper(int i2) {
        this.copper_ = i2;
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
                return new UserProfile();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                UserProfile userProfile = (UserProfile) obj2;
                int i2 = this.uid_;
                boolean z3 = i2 != 0;
                int i4 = userProfile.uid_;
                this.uid_ = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.nickname_ = visitor.visitString(!this.nickname_.isEmpty(), this.nickname_, !userProfile.nickname_.isEmpty(), userProfile.nickname_);
                this.avatar_ = visitor.visitString(!this.avatar_.isEmpty(), this.avatar_, !userProfile.avatar_.isEmpty(), userProfile.avatar_);
                boolean z4 = this.vip_;
                boolean z5 = userProfile.vip_;
                this.vip_ = visitor.visitBoolean(z4, z4, z5, z5);
                this.battleTitle_ = visitor.visitString(!this.battleTitle_.isEmpty(), this.battleTitle_, !userProfile.battleTitle_.isEmpty(), userProfile.battleTitle_);
                this.battleTitleColor_ = visitor.visitString(!this.battleTitleColor_.isEmpty(), this.battleTitleColor_, !userProfile.battleTitleColor_.isEmpty(), userProfile.battleTitleColor_);
                int i5 = this.copper_;
                boolean z6 = i5 != 0;
                int i6 = userProfile.copper_;
                this.copper_ = visitor.visitInt(z6, i5, i6 != 0, i6);
                int i7 = this.kickCount_;
                boolean z7 = i7 != 0;
                int i8 = userProfile.kickCount_;
                this.kickCount_ = visitor.visitInt(z7, i7, i8 != 0, i8);
                int i9 = this.area_;
                boolean z8 = i9 != 0;
                int i10 = userProfile.area_;
                this.area_ = visitor.visitInt(z8, i9, i10 != 0, i10);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.uid_ = codedInputStream.readInt32();
                            } else if (readTag == 18) {
                                this.nickname_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 26) {
                                this.avatar_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 32) {
                                this.vip_ = codedInputStream.readBool();
                            } else if (readTag == 42) {
                                this.battleTitle_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 50) {
                                this.battleTitleColor_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 56) {
                                this.copper_ = codedInputStream.readInt32();
                            } else if (readTag == 64) {
                                this.kickCount_ = codedInputStream.readInt32();
                            } else if (readTag != 72) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.area_ = codedInputStream.readEnum();
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
                    synchronized (UserProfile.class) {
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

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public BattleArea getArea() {
        BattleArea forNumber = BattleArea.forNumber(this.area_);
        return forNumber == null ? BattleArea.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public int getAreaValue() {
        return this.area_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public String getAvatar() {
        return this.avatar_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public ByteString getAvatarBytes() {
        return ByteString.copyFromUtf8(this.avatar_);
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public String getBattleTitle() {
        return this.battleTitle_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public ByteString getBattleTitleBytes() {
        return ByteString.copyFromUtf8(this.battleTitle_);
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public String getBattleTitleColor() {
        return this.battleTitleColor_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public ByteString getBattleTitleColorBytes() {
        return ByteString.copyFromUtf8(this.battleTitleColor_);
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public int getCopper() {
        return this.copper_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public int getKickCount() {
        return this.kickCount_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public String getNickname() {
        return this.nickname_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public ByteString getNicknameBytes() {
        return ByteString.copyFromUtf8(this.nickname_);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.uid_;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (!this.nickname_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(2, getNickname());
        }
        if (!this.avatar_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, getAvatar());
        }
        boolean z3 = this.vip_;
        if (z3) {
            computeInt32Size += CodedOutputStream.computeBoolSize(4, z3);
        }
        if (!this.battleTitle_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(5, getBattleTitle());
        }
        if (!this.battleTitleColor_.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(6, getBattleTitleColor());
        }
        int i5 = this.copper_;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(7, i5);
        }
        int i6 = this.kickCount_;
        if (i6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(8, i6);
        }
        if (this.area_ != BattleArea.ALL.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(9, this.area_);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public int getUid() {
        return this.uid_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public boolean getVip() {
        return this.vip_;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.uid_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (!this.nickname_.isEmpty()) {
            codedOutputStream.writeString(2, getNickname());
        }
        if (!this.avatar_.isEmpty()) {
            codedOutputStream.writeString(3, getAvatar());
        }
        boolean z3 = this.vip_;
        if (z3) {
            codedOutputStream.writeBool(4, z3);
        }
        if (!this.battleTitle_.isEmpty()) {
            codedOutputStream.writeString(5, getBattleTitle());
        }
        if (!this.battleTitleColor_.isEmpty()) {
            codedOutputStream.writeString(6, getBattleTitleColor());
        }
        int i4 = this.copper_;
        if (i4 != 0) {
            codedOutputStream.writeInt32(7, i4);
        }
        int i5 = this.kickCount_;
        if (i5 != 0) {
            codedOutputStream.writeInt32(8, i5);
        }
        if (this.area_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(9, this.area_);
        }
    }

    public static Builder newBuilder(UserProfile userProfile) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) userProfile);
    }

    public static UserProfile parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (UserProfile) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UserProfile parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (UserProfile) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static UserProfile parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (UserProfile) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static UserProfile parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (UserProfile) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static UserProfile parseFrom(InputStream inputStream) throws IOException {
        return (UserProfile) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UserProfile parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (UserProfile) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UserProfile parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (UserProfile) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static UserProfile parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (UserProfile) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
