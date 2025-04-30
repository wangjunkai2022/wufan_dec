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
public final class BattleServerAddr extends GeneratedMessageLite<BattleServerAddr, Builder> implements BattleServerAddrOrBuilder, Serializable {
    public static final int BATTLEROOMID_FIELD_NUMBER = 4;
    private static final BattleServerAddr DEFAULT_INSTANCE;
    public static final int HOST_FIELD_NUMBER = 1;
    public static final int NETTYPE_FIELD_NUMBER = 3;
    private static volatile Parser<BattleServerAddr> PARSER = null;
    public static final int PORT_FIELD_NUMBER = 2;
    private long battleRoomId_;
    private String host_ = "";
    private int netType_;
    private int port_;

    /* renamed from: com.papa91.battle.protocol.BattleServerAddr$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<BattleServerAddr, Builder> implements BattleServerAddrOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearBattleRoomId() {
            copyOnWrite();
            ((BattleServerAddr) this.instance).clearBattleRoomId();
            return this;
        }

        public Builder clearHost() {
            copyOnWrite();
            ((BattleServerAddr) this.instance).clearHost();
            return this;
        }

        public Builder clearNetType() {
            copyOnWrite();
            ((BattleServerAddr) this.instance).clearNetType();
            return this;
        }

        public Builder clearPort() {
            copyOnWrite();
            ((BattleServerAddr) this.instance).clearPort();
            return this;
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public long getBattleRoomId() {
            return ((BattleServerAddr) this.instance).getBattleRoomId();
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public String getHost() {
            return ((BattleServerAddr) this.instance).getHost();
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public ByteString getHostBytes() {
            return ((BattleServerAddr) this.instance).getHostBytes();
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public NetType getNetType() {
            return ((BattleServerAddr) this.instance).getNetType();
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public int getNetTypeValue() {
            return ((BattleServerAddr) this.instance).getNetTypeValue();
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public int getPort() {
            return ((BattleServerAddr) this.instance).getPort();
        }

        public Builder setBattleRoomId(long j4) {
            copyOnWrite();
            ((BattleServerAddr) this.instance).setBattleRoomId(j4);
            return this;
        }

        public Builder setHost(String str) {
            copyOnWrite();
            ((BattleServerAddr) this.instance).setHost(str);
            return this;
        }

        public Builder setHostBytes(ByteString byteString) {
            copyOnWrite();
            ((BattleServerAddr) this.instance).setHostBytes(byteString);
            return this;
        }

        public Builder setNetType(NetType netType) {
            copyOnWrite();
            ((BattleServerAddr) this.instance).setNetType(netType);
            return this;
        }

        public Builder setNetTypeValue(int i2) {
            copyOnWrite();
            ((BattleServerAddr) this.instance).setNetTypeValue(i2);
            return this;
        }

        public Builder setPort(int i2) {
            copyOnWrite();
            ((BattleServerAddr) this.instance).setPort(i2);
            return this;
        }

        private Builder() {
            super(BattleServerAddr.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes4.dex */
    public enum NetType implements Internal.EnumLite {
        TCP(0),
        UDP(1),
        UNRECOGNIZED(-1);
        
        public static final int TCP_VALUE = 0;
        public static final int UDP_VALUE = 1;
        private static final Internal.EnumLiteMap<NetType> internalValueMap = new Internal.EnumLiteMap<NetType>() { // from class: com.papa91.battle.protocol.BattleServerAddr.NetType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public NetType findValueByNumber(int i2) {
                return NetType.forNumber(i2);
            }
        };
        private final int value;

        NetType(int i2) {
            this.value = i2;
        }

        public static NetType forNumber(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    return null;
                }
                return UDP;
            }
            return TCP;
        }

        public static Internal.EnumLiteMap<NetType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static NetType valueOf(int i2) {
            return forNumber(i2);
        }
    }

    static {
        BattleServerAddr battleServerAddr = new BattleServerAddr();
        DEFAULT_INSTANCE = battleServerAddr;
        battleServerAddr.makeImmutable();
    }

    private BattleServerAddr() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBattleRoomId() {
        this.battleRoomId_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHost() {
        this.host_ = getDefaultInstance().getHost();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNetType() {
        this.netType_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPort() {
        this.port_ = 0;
    }

    public static BattleServerAddr getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BattleServerAddr parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BattleServerAddr) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BattleServerAddr parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (BattleServerAddr) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<BattleServerAddr> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleRoomId(long j4) {
        this.battleRoomId_ = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHost(String str) {
        Objects.requireNonNull(str);
        this.host_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHostBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.host_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNetType(NetType netType) {
        Objects.requireNonNull(netType);
        this.netType_ = netType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNetTypeValue(int i2) {
        this.netType_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPort(int i2) {
        this.port_ = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new BattleServerAddr();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                BattleServerAddr battleServerAddr = (BattleServerAddr) obj2;
                this.host_ = visitor.visitString(!this.host_.isEmpty(), this.host_, !battleServerAddr.host_.isEmpty(), battleServerAddr.host_);
                int i2 = this.port_;
                boolean z4 = i2 != 0;
                int i4 = battleServerAddr.port_;
                this.port_ = visitor.visitInt(z4, i2, i4 != 0, i4);
                int i5 = this.netType_;
                boolean z5 = i5 != 0;
                int i6 = battleServerAddr.netType_;
                this.netType_ = visitor.visitInt(z5, i5, i6 != 0, i6);
                long j4 = this.battleRoomId_;
                boolean z6 = j4 != 0;
                long j5 = battleServerAddr.battleRoomId_;
                this.battleRoomId_ = visitor.visitLong(z6, j4, j5 != 0, j5);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.host_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 16) {
                                    this.port_ = codedInputStream.readUInt32();
                                } else if (readTag == 24) {
                                    this.netType_ = codedInputStream.readEnum();
                                } else if (readTag != 32) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.battleRoomId_ = codedInputStream.readUInt64();
                                }
                            }
                            z3 = true;
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
                    synchronized (BattleServerAddr.class) {
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

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public long getBattleRoomId() {
        return this.battleRoomId_;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public String getHost() {
        return this.host_;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public ByteString getHostBytes() {
        return ByteString.copyFromUtf8(this.host_);
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public NetType getNetType() {
        NetType forNumber = NetType.forNumber(this.netType_);
        return forNumber == null ? NetType.UNRECOGNIZED : forNumber;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public int getNetTypeValue() {
        return this.netType_;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public int getPort() {
        return this.port_;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.host_.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, getHost());
        int i4 = this.port_;
        if (i4 != 0) {
            computeStringSize += CodedOutputStream.computeUInt32Size(2, i4);
        }
        if (this.netType_ != NetType.TCP.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(3, this.netType_);
        }
        long j4 = this.battleRoomId_;
        if (j4 != 0) {
            computeStringSize += CodedOutputStream.computeUInt64Size(4, j4);
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.host_.isEmpty()) {
            codedOutputStream.writeString(1, getHost());
        }
        int i2 = this.port_;
        if (i2 != 0) {
            codedOutputStream.writeUInt32(2, i2);
        }
        if (this.netType_ != NetType.TCP.getNumber()) {
            codedOutputStream.writeEnum(3, this.netType_);
        }
        long j4 = this.battleRoomId_;
        if (j4 != 0) {
            codedOutputStream.writeUInt64(4, j4);
        }
    }

    public static Builder newBuilder(BattleServerAddr battleServerAddr) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) battleServerAddr);
    }

    public static BattleServerAddr parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleServerAddr) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BattleServerAddr parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BattleServerAddr) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BattleServerAddr parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (BattleServerAddr) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BattleServerAddr parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BattleServerAddr) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static BattleServerAddr parseFrom(InputStream inputStream) throws IOException {
        return (BattleServerAddr) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BattleServerAddr parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleServerAddr) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BattleServerAddr parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (BattleServerAddr) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BattleServerAddr parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleServerAddr) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
