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
public final class Pong extends GeneratedMessageLite<Pong, Builder> implements PongOrBuilder, Serializable {
    private static final Pong DEFAULT_INSTANCE;
    private static volatile Parser<Pong> PARSER = null;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private long timestamp_;

    /* renamed from: com.papa91.battle.protocol.Pong$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<Pong, Builder> implements PongOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearTimestamp() {
            copyOnWrite();
            ((Pong) this.instance).clearTimestamp();
            return this;
        }

        @Override // com.papa91.battle.protocol.PongOrBuilder
        public long getTimestamp() {
            return ((Pong) this.instance).getTimestamp();
        }

        public Builder setTimestamp(long j4) {
            copyOnWrite();
            ((Pong) this.instance).setTimestamp(j4);
            return this;
        }

        private Builder() {
            super(Pong.DEFAULT_INSTANCE);
        }
    }

    static {
        Pong pong = new Pong();
        DEFAULT_INSTANCE = pong;
        pong.makeImmutable();
    }

    private Pong() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTimestamp() {
        this.timestamp_ = 0L;
    }

    public static Pong getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Pong parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Pong) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Pong parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (Pong) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<Pong> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimestamp(long j4) {
        this.timestamp_ = j4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new Pong();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                Pong pong = (Pong) obj2;
                long j4 = this.timestamp_;
                boolean z4 = j4 != 0;
                long j5 = pong.timestamp_;
                this.timestamp_ = visitor.visitLong(z4, j4, j5 != 0, j5);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag != 8) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.timestamp_ = codedInputStream.readInt64();
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
                    synchronized (Pong.class) {
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

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        long j4 = this.timestamp_;
        int computeInt64Size = j4 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j4) : 0;
        this.memoizedSerializedSize = computeInt64Size;
        return computeInt64Size;
    }

    @Override // com.papa91.battle.protocol.PongOrBuilder
    public long getTimestamp() {
        return this.timestamp_;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j4 = this.timestamp_;
        if (j4 != 0) {
            codedOutputStream.writeInt64(1, j4);
        }
    }

    public static Builder newBuilder(Pong pong) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) pong);
    }

    public static Pong parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Pong) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Pong parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Pong) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Pong parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (Pong) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Pong parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Pong) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Pong parseFrom(InputStream inputStream) throws IOException {
        return (Pong) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Pong parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Pong) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Pong parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Pong) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Pong parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Pong) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
