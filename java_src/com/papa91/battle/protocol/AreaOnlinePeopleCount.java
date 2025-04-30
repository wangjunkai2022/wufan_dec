package com.papa91.battle.protocol;

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
/* loaded from: classes4.dex */
public final class AreaOnlinePeopleCount extends GeneratedMessageLite<AreaOnlinePeopleCount, Builder> implements AreaOnlinePeopleCountOrBuilder, Serializable {
    public static final int BJ_FIELD_NUMBER = 1;
    private static final AreaOnlinePeopleCount DEFAULT_INSTANCE;
    public static final int GZ_FIELD_NUMBER = 3;
    private static volatile Parser<AreaOnlinePeopleCount> PARSER = null;
    public static final int SH_FIELD_NUMBER = 2;
    private int bj_;
    private int gz_;
    private int sh_;

    /* renamed from: com.papa91.battle.protocol.AreaOnlinePeopleCount$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<AreaOnlinePeopleCount, Builder> implements AreaOnlinePeopleCountOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearBj() {
            copyOnWrite();
            ((AreaOnlinePeopleCount) this.instance).clearBj();
            return this;
        }

        public Builder clearGz() {
            copyOnWrite();
            ((AreaOnlinePeopleCount) this.instance).clearGz();
            return this;
        }

        public Builder clearSh() {
            copyOnWrite();
            ((AreaOnlinePeopleCount) this.instance).clearSh();
            return this;
        }

        @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
        public int getBj() {
            return ((AreaOnlinePeopleCount) this.instance).getBj();
        }

        @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
        public int getGz() {
            return ((AreaOnlinePeopleCount) this.instance).getGz();
        }

        @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
        public int getSh() {
            return ((AreaOnlinePeopleCount) this.instance).getSh();
        }

        public Builder setBj(int i2) {
            copyOnWrite();
            ((AreaOnlinePeopleCount) this.instance).setBj(i2);
            return this;
        }

        public Builder setGz(int i2) {
            copyOnWrite();
            ((AreaOnlinePeopleCount) this.instance).setGz(i2);
            return this;
        }

        public Builder setSh(int i2) {
            copyOnWrite();
            ((AreaOnlinePeopleCount) this.instance).setSh(i2);
            return this;
        }

        private Builder() {
            super(AreaOnlinePeopleCount.DEFAULT_INSTANCE);
        }
    }

    static {
        AreaOnlinePeopleCount areaOnlinePeopleCount = new AreaOnlinePeopleCount();
        DEFAULT_INSTANCE = areaOnlinePeopleCount;
        areaOnlinePeopleCount.makeImmutable();
    }

    private AreaOnlinePeopleCount() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBj() {
        this.bj_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGz() {
        this.gz_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSh() {
        this.sh_ = 0;
    }

    public static AreaOnlinePeopleCount getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AreaOnlinePeopleCount parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AreaOnlinePeopleCount parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<AreaOnlinePeopleCount> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBj(int i2) {
        this.bj_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGz(int i2) {
        this.gz_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSh(int i2) {
        this.sh_ = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new AreaOnlinePeopleCount();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                AreaOnlinePeopleCount areaOnlinePeopleCount = (AreaOnlinePeopleCount) obj2;
                int i2 = this.bj_;
                boolean z3 = i2 != 0;
                int i4 = areaOnlinePeopleCount.bj_;
                this.bj_ = visitor.visitInt(z3, i2, i4 != 0, i4);
                int i5 = this.sh_;
                boolean z4 = i5 != 0;
                int i6 = areaOnlinePeopleCount.sh_;
                this.sh_ = visitor.visitInt(z4, i5, i6 != 0, i6);
                int i7 = this.gz_;
                boolean z5 = i7 != 0;
                int i8 = areaOnlinePeopleCount.gz_;
                this.gz_ = visitor.visitInt(z5, i7, i8 != 0, i8);
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
                                this.bj_ = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.sh_ = codedInputStream.readInt32();
                            } else if (readTag != 24) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.gz_ = codedInputStream.readInt32();
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
                    synchronized (AreaOnlinePeopleCount.class) {
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

    @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
    public int getBj() {
        return this.bj_;
    }

    @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
    public int getGz() {
        return this.gz_;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.bj_;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        int i5 = this.sh_;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(2, i5);
        }
        int i6 = this.gz_;
        if (i6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(3, i6);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
    public int getSh() {
        return this.sh_;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.bj_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        int i4 = this.sh_;
        if (i4 != 0) {
            codedOutputStream.writeInt32(2, i4);
        }
        int i5 = this.gz_;
        if (i5 != 0) {
            codedOutputStream.writeInt32(3, i5);
        }
    }

    public static Builder newBuilder(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) areaOnlinePeopleCount);
    }

    public static AreaOnlinePeopleCount parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static AreaOnlinePeopleCount parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static AreaOnlinePeopleCount parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static AreaOnlinePeopleCount parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static AreaOnlinePeopleCount parseFrom(InputStream inputStream) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AreaOnlinePeopleCount parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static AreaOnlinePeopleCount parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static AreaOnlinePeopleCount parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
