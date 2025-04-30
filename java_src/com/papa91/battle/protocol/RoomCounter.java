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
public final class RoomCounter extends GeneratedMessageLite<RoomCounter, Builder> implements RoomCounterOrBuilder, Serializable {
    private static final RoomCounter DEFAULT_INSTANCE;
    public static final int ELITE_FIELD_NUMBER = 2;
    public static final int NORMAL_FIELD_NUMBER = 1;
    private static volatile Parser<RoomCounter> PARSER;
    private int elite_;
    private int normal_;

    /* renamed from: com.papa91.battle.protocol.RoomCounter$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<RoomCounter, Builder> implements RoomCounterOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearElite() {
            copyOnWrite();
            ((RoomCounter) this.instance).clearElite();
            return this;
        }

        public Builder clearNormal() {
            copyOnWrite();
            ((RoomCounter) this.instance).clearNormal();
            return this;
        }

        @Override // com.papa91.battle.protocol.RoomCounterOrBuilder
        public int getElite() {
            return ((RoomCounter) this.instance).getElite();
        }

        @Override // com.papa91.battle.protocol.RoomCounterOrBuilder
        public int getNormal() {
            return ((RoomCounter) this.instance).getNormal();
        }

        public Builder setElite(int i2) {
            copyOnWrite();
            ((RoomCounter) this.instance).setElite(i2);
            return this;
        }

        public Builder setNormal(int i2) {
            copyOnWrite();
            ((RoomCounter) this.instance).setNormal(i2);
            return this;
        }

        private Builder() {
            super(RoomCounter.DEFAULT_INSTANCE);
        }
    }

    static {
        RoomCounter roomCounter = new RoomCounter();
        DEFAULT_INSTANCE = roomCounter;
        roomCounter.makeImmutable();
    }

    private RoomCounter() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearElite() {
        this.elite_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNormal() {
        this.normal_ = 0;
    }

    public static RoomCounter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RoomCounter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RoomCounter) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static RoomCounter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (RoomCounter) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<RoomCounter> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setElite(int i2) {
        this.elite_ = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNormal(int i2) {
        this.normal_ = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new RoomCounter();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                RoomCounter roomCounter = (RoomCounter) obj2;
                int i2 = this.normal_;
                boolean z3 = i2 != 0;
                int i4 = roomCounter.normal_;
                this.normal_ = visitor.visitInt(z3, i2, i4 != 0, i4);
                int i5 = this.elite_;
                boolean z4 = i5 != 0;
                int i6 = roomCounter.elite_;
                this.elite_ = visitor.visitInt(z4, i5, i6 != 0, i6);
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
                                this.normal_ = codedInputStream.readInt32();
                            } else if (readTag != 16) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.elite_ = codedInputStream.readInt32();
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
                    synchronized (RoomCounter.class) {
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

    @Override // com.papa91.battle.protocol.RoomCounterOrBuilder
    public int getElite() {
        return this.elite_;
    }

    @Override // com.papa91.battle.protocol.RoomCounterOrBuilder
    public int getNormal() {
        return this.normal_;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.normal_;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        int i5 = this.elite_;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(2, i5);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.normal_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        int i4 = this.elite_;
        if (i4 != 0) {
            codedOutputStream.writeInt32(2, i4);
        }
    }

    public static Builder newBuilder(RoomCounter roomCounter) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) roomCounter);
    }

    public static RoomCounter parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomCounter) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static RoomCounter parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (RoomCounter) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static RoomCounter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (RoomCounter) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static RoomCounter parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (RoomCounter) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static RoomCounter parseFrom(InputStream inputStream) throws IOException {
        return (RoomCounter) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static RoomCounter parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomCounter) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static RoomCounter parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (RoomCounter) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static RoomCounter parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomCounter) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
