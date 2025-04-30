package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.papa91.battle.protocol.Account;
import com.papa91.battle.protocol.Params;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class Request extends GeneratedMessageLite<Request, Builder> implements RequestOrBuilder, Serializable {
    public static final int ACCOUNT_FIELD_NUMBER = 5;
    private static final Request DEFAULT_INSTANCE;
    public static final int PARAMS_FIELD_NUMBER = 4;
    private static volatile Parser<Request> PARSER = null;
    public static final int REQUESTID_FIELD_NUMBER = 3;
    public static final int TYPE_FIELD_NUMBER = 2;
    public static final int VERSION_FIELD_NUMBER = 1;
    private Account account_;
    private Params params_;
    private long requestId_;
    private int type_;
    private int version_;

    /* renamed from: com.papa91.battle.protocol.Request$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<Request, Builder> implements RequestOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearAccount() {
            copyOnWrite();
            ((Request) this.instance).clearAccount();
            return this;
        }

        public Builder clearParams() {
            copyOnWrite();
            ((Request) this.instance).clearParams();
            return this;
        }

        public Builder clearRequestId() {
            copyOnWrite();
            ((Request) this.instance).clearRequestId();
            return this;
        }

        public Builder clearType() {
            copyOnWrite();
            ((Request) this.instance).clearType();
            return this;
        }

        public Builder clearVersion() {
            copyOnWrite();
            ((Request) this.instance).clearVersion();
            return this;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public Account getAccount() {
            return ((Request) this.instance).getAccount();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public Params getParams() {
            return ((Request) this.instance).getParams();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public long getRequestId() {
            return ((Request) this.instance).getRequestId();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public ProtoType getType() {
            return ((Request) this.instance).getType();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public int getTypeValue() {
            return ((Request) this.instance).getTypeValue();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public int getVersion() {
            return ((Request) this.instance).getVersion();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public boolean hasAccount() {
            return ((Request) this.instance).hasAccount();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public boolean hasParams() {
            return ((Request) this.instance).hasParams();
        }

        public Builder mergeAccount(Account account) {
            copyOnWrite();
            ((Request) this.instance).mergeAccount(account);
            return this;
        }

        public Builder mergeParams(Params params) {
            copyOnWrite();
            ((Request) this.instance).mergeParams(params);
            return this;
        }

        public Builder setAccount(Account account) {
            copyOnWrite();
            ((Request) this.instance).setAccount(account);
            return this;
        }

        public Builder setParams(Params params) {
            copyOnWrite();
            ((Request) this.instance).setParams(params);
            return this;
        }

        public Builder setRequestId(long j4) {
            copyOnWrite();
            ((Request) this.instance).setRequestId(j4);
            return this;
        }

        public Builder setType(ProtoType protoType) {
            copyOnWrite();
            ((Request) this.instance).setType(protoType);
            return this;
        }

        public Builder setTypeValue(int i2) {
            copyOnWrite();
            ((Request) this.instance).setTypeValue(i2);
            return this;
        }

        public Builder setVersion(int i2) {
            copyOnWrite();
            ((Request) this.instance).setVersion(i2);
            return this;
        }

        private Builder() {
            super(Request.DEFAULT_INSTANCE);
        }

        public Builder setAccount(Account.Builder builder) {
            copyOnWrite();
            ((Request) this.instance).setAccount(builder);
            return this;
        }

        public Builder setParams(Params.Builder builder) {
            copyOnWrite();
            ((Request) this.instance).setParams(builder);
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public enum ProtoType implements Internal.EnumLite {
        UNDEFINED_REQUEST(0),
        LOGIN(1),
        PING(2),
        SUBSCRIBE_GAME_ROOM(3),
        CREATE_GAME_ROOM(4),
        SET_ROOM_CHALLENGE_COINS_ATTR(5),
        SET_ROOM_PASSWORD_ATTR(6),
        SET_ROOM_PERIPHERAL_JOIN_ATTR(7),
        SET_ROOM_SPECTATOR_JOIN_ATTR(8),
        SET_ROOM_POSITION_ATTR(9),
        JOIN_ROOM(10),
        SET_ROOM_CLOSE_P1_POSITION(11),
        SET_ROOM_CLOSE_P2_POSITION(12),
        SET_ROOM_CLOSE_P3_POSITION(13),
        SET_ROOM_CLOSE_P4_POSITION(14),
        LEAVE_ROOM(15),
        DISSOLVE_ROOM(16),
        KICK_OUT_ROOM_POSITION(17),
        QUICK_JOIN_ROOM(18),
        SEARCH_ROOM_BY_ID(19),
        LOBBY_START_GAME(20),
        PLAYER_READY_GAME(21),
        CANCEL_SUBSCRIBE_GAME_ROOM(22),
        PLAYER_JOIN_GAME(23),
        SHARE_JOIN_ROOM(24),
        DISCONNECT_LEAVE_ROOM(25),
        ROOM_SPECTATOR_SIT(26),
        GET_KICK_OUT_ROOM_POSITION_INFO(27),
        GET_UDP_FRAME_SERVER(28),
        JOIN_BATTLE_AREA(29),
        VERIFY_JOIN_ROOM_PASSWORD(30),
        SUBSCRIBE_GAME_COLLECTION(31),
        CANCEL_SUBSCRIBE_GAME_COLLECTION(32),
        QUICK_JOIN_ROOM_PC(33),
        SET_ROOM_SERVER_PLAY_MODE(34),
        SET_ROOM_ALLOW_PC_JOIN(35),
        SET_ROOM_DISABLE_MOBILE_JOIN(36),
        QUICK_JOIN_ROOM_NET_PC(37),
        UNRECOGNIZED(-1);
        
        public static final int CANCEL_SUBSCRIBE_GAME_COLLECTION_VALUE = 32;
        public static final int CANCEL_SUBSCRIBE_GAME_ROOM_VALUE = 22;
        public static final int CREATE_GAME_ROOM_VALUE = 4;
        public static final int DISCONNECT_LEAVE_ROOM_VALUE = 25;
        public static final int DISSOLVE_ROOM_VALUE = 16;
        public static final int GET_KICK_OUT_ROOM_POSITION_INFO_VALUE = 27;
        public static final int GET_UDP_FRAME_SERVER_VALUE = 28;
        public static final int JOIN_BATTLE_AREA_VALUE = 29;
        public static final int JOIN_ROOM_VALUE = 10;
        public static final int KICK_OUT_ROOM_POSITION_VALUE = 17;
        public static final int LEAVE_ROOM_VALUE = 15;
        public static final int LOBBY_START_GAME_VALUE = 20;
        public static final int LOGIN_VALUE = 1;
        public static final int PING_VALUE = 2;
        public static final int PLAYER_JOIN_GAME_VALUE = 23;
        public static final int PLAYER_READY_GAME_VALUE = 21;
        public static final int QUICK_JOIN_ROOM_NET_PC_VALUE = 37;
        public static final int QUICK_JOIN_ROOM_PC_VALUE = 33;
        public static final int QUICK_JOIN_ROOM_VALUE = 18;
        public static final int ROOM_SPECTATOR_SIT_VALUE = 26;
        public static final int SEARCH_ROOM_BY_ID_VALUE = 19;
        public static final int SET_ROOM_ALLOW_PC_JOIN_VALUE = 35;
        public static final int SET_ROOM_CHALLENGE_COINS_ATTR_VALUE = 5;
        public static final int SET_ROOM_CLOSE_P1_POSITION_VALUE = 11;
        public static final int SET_ROOM_CLOSE_P2_POSITION_VALUE = 12;
        public static final int SET_ROOM_CLOSE_P3_POSITION_VALUE = 13;
        public static final int SET_ROOM_CLOSE_P4_POSITION_VALUE = 14;
        public static final int SET_ROOM_DISABLE_MOBILE_JOIN_VALUE = 36;
        public static final int SET_ROOM_PASSWORD_ATTR_VALUE = 6;
        public static final int SET_ROOM_PERIPHERAL_JOIN_ATTR_VALUE = 7;
        public static final int SET_ROOM_POSITION_ATTR_VALUE = 9;
        public static final int SET_ROOM_SERVER_PLAY_MODE_VALUE = 34;
        public static final int SET_ROOM_SPECTATOR_JOIN_ATTR_VALUE = 8;
        public static final int SHARE_JOIN_ROOM_VALUE = 24;
        public static final int SUBSCRIBE_GAME_COLLECTION_VALUE = 31;
        public static final int SUBSCRIBE_GAME_ROOM_VALUE = 3;
        public static final int UNDEFINED_REQUEST_VALUE = 0;
        public static final int VERIFY_JOIN_ROOM_PASSWORD_VALUE = 30;
        private static final Internal.EnumLiteMap<ProtoType> internalValueMap = new Internal.EnumLiteMap<ProtoType>() { // from class: com.papa91.battle.protocol.Request.ProtoType.1
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
                    return UNDEFINED_REQUEST;
                case 1:
                    return LOGIN;
                case 2:
                    return PING;
                case 3:
                    return SUBSCRIBE_GAME_ROOM;
                case 4:
                    return CREATE_GAME_ROOM;
                case 5:
                    return SET_ROOM_CHALLENGE_COINS_ATTR;
                case 6:
                    return SET_ROOM_PASSWORD_ATTR;
                case 7:
                    return SET_ROOM_PERIPHERAL_JOIN_ATTR;
                case 8:
                    return SET_ROOM_SPECTATOR_JOIN_ATTR;
                case 9:
                    return SET_ROOM_POSITION_ATTR;
                case 10:
                    return JOIN_ROOM;
                case 11:
                    return SET_ROOM_CLOSE_P1_POSITION;
                case 12:
                    return SET_ROOM_CLOSE_P2_POSITION;
                case 13:
                    return SET_ROOM_CLOSE_P3_POSITION;
                case 14:
                    return SET_ROOM_CLOSE_P4_POSITION;
                case 15:
                    return LEAVE_ROOM;
                case 16:
                    return DISSOLVE_ROOM;
                case 17:
                    return KICK_OUT_ROOM_POSITION;
                case 18:
                    return QUICK_JOIN_ROOM;
                case 19:
                    return SEARCH_ROOM_BY_ID;
                case 20:
                    return LOBBY_START_GAME;
                case 21:
                    return PLAYER_READY_GAME;
                case 22:
                    return CANCEL_SUBSCRIBE_GAME_ROOM;
                case 23:
                    return PLAYER_JOIN_GAME;
                case 24:
                    return SHARE_JOIN_ROOM;
                case 25:
                    return DISCONNECT_LEAVE_ROOM;
                case 26:
                    return ROOM_SPECTATOR_SIT;
                case 27:
                    return GET_KICK_OUT_ROOM_POSITION_INFO;
                case 28:
                    return GET_UDP_FRAME_SERVER;
                case 29:
                    return JOIN_BATTLE_AREA;
                case 30:
                    return VERIFY_JOIN_ROOM_PASSWORD;
                case 31:
                    return SUBSCRIBE_GAME_COLLECTION;
                case 32:
                    return CANCEL_SUBSCRIBE_GAME_COLLECTION;
                case 33:
                    return QUICK_JOIN_ROOM_PC;
                case 34:
                    return SET_ROOM_SERVER_PLAY_MODE;
                case 35:
                    return SET_ROOM_ALLOW_PC_JOIN;
                case 36:
                    return SET_ROOM_DISABLE_MOBILE_JOIN;
                case 37:
                    return QUICK_JOIN_ROOM_NET_PC;
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

    static {
        Request request = new Request();
        DEFAULT_INSTANCE = request;
        request.makeImmutable();
    }

    private Request() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAccount() {
        this.account_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearParams() {
        this.params_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequestId() {
        this.requestId_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearType() {
        this.type_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVersion() {
        this.version_ = 0;
    }

    public static Request getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeAccount(Account account) {
        Account account2 = this.account_;
        if (account2 != null && account2 != Account.getDefaultInstance()) {
            this.account_ = Account.newBuilder(this.account_).mergeFrom((Account.Builder) account).buildPartial();
        } else {
            this.account_ = account;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeParams(Params params) {
        Params params2 = this.params_;
        if (params2 != null && params2 != Params.getDefaultInstance()) {
            this.params_ = Params.newBuilder(this.params_).mergeFrom((Params.Builder) params).buildPartial();
        } else {
            this.params_ = params;
        }
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (Request) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<Request> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAccount(Account account) {
        Objects.requireNonNull(account);
        this.account_ = account;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setParams(Params params) {
        Objects.requireNonNull(params);
        this.params_ = params;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestId(long j4) {
        this.requestId_ = j4;
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
    public void setVersion(int i2) {
        this.version_ = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new Request();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                Request request = (Request) obj2;
                int i2 = this.version_;
                boolean z4 = i2 != 0;
                int i4 = request.version_;
                this.version_ = visitor.visitInt(z4, i2, i4 != 0, i4);
                int i5 = this.type_;
                boolean z5 = i5 != 0;
                int i6 = request.type_;
                this.type_ = visitor.visitInt(z5, i5, i6 != 0, i6);
                long j4 = this.requestId_;
                boolean z6 = j4 != 0;
                long j5 = request.requestId_;
                this.requestId_ = visitor.visitLong(z6, j4, j5 != 0, j5);
                this.params_ = (Params) visitor.visitMessage(this.params_, request.params_);
                this.account_ = (Account) visitor.visitMessage(this.account_, request.account_);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.version_ = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.type_ = codedInputStream.readEnum();
                            } else if (readTag == 24) {
                                this.requestId_ = codedInputStream.readInt64();
                            } else if (readTag == 34) {
                                Params params = this.params_;
                                Params.Builder builder = params != null ? params.toBuilder() : null;
                                Params params2 = (Params) codedInputStream.readMessage(Params.parser(), extensionRegistryLite);
                                this.params_ = params2;
                                if (builder != null) {
                                    builder.mergeFrom((Params.Builder) params2);
                                    this.params_ = builder.buildPartial();
                                }
                            } else if (readTag != 42) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                Account account = this.account_;
                                Account.Builder builder2 = account != null ? account.toBuilder() : null;
                                Account account2 = (Account) codedInputStream.readMessage(Account.parser(), extensionRegistryLite);
                                this.account_ = account2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((Account.Builder) account2);
                                    this.account_ = builder2.buildPartial();
                                }
                            }
                        }
                        z3 = true;
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
                    synchronized (Request.class) {
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

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public Account getAccount() {
        Account account = this.account_;
        return account == null ? Account.getDefaultInstance() : account;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public Params getParams() {
        Params params = this.params_;
        return params == null ? Params.getDefaultInstance() : params;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public long getRequestId() {
        return this.requestId_;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.version_;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (this.type_ != ProtoType.UNDEFINED_REQUEST.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(2, this.type_);
        }
        long j4 = this.requestId_;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(3, j4);
        }
        if (this.params_ != null) {
            computeInt32Size += CodedOutputStream.computeMessageSize(4, getParams());
        }
        if (this.account_ != null) {
            computeInt32Size += CodedOutputStream.computeMessageSize(5, getAccount());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public ProtoType getType() {
        ProtoType forNumber = ProtoType.forNumber(this.type_);
        return forNumber == null ? ProtoType.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public int getTypeValue() {
        return this.type_;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public int getVersion() {
        return this.version_;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public boolean hasAccount() {
        return this.account_ != null;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public boolean hasParams() {
        return this.params_ != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.version_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (this.type_ != ProtoType.UNDEFINED_REQUEST.getNumber()) {
            codedOutputStream.writeEnum(2, this.type_);
        }
        long j4 = this.requestId_;
        if (j4 != 0) {
            codedOutputStream.writeInt64(3, j4);
        }
        if (this.params_ != null) {
            codedOutputStream.writeMessage(4, getParams());
        }
        if (this.account_ != null) {
            codedOutputStream.writeMessage(5, getAccount());
        }
    }

    public static Builder newBuilder(Request request) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) request);
    }

    public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Request) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (Request) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAccount(Account.Builder builder) {
        this.account_ = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setParams(Params.Builder builder) {
        this.params_ = builder.build();
    }

    public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Request) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Request parseFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Request) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
