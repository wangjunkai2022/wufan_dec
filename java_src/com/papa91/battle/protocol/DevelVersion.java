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
public final class DevelVersion extends GeneratedMessageLite<DevelVersion, Builder> implements DevelVersionOrBuilder, Serializable {
    private static final DevelVersion DEFAULT_INSTANCE;
    private static volatile Parser<DevelVersion> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 20170627;
    private int version_;

    /* renamed from: com.papa91.battle.protocol.DevelVersion$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<DevelVersion, Builder> implements DevelVersionOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearVersion() {
            copyOnWrite();
            ((DevelVersion) this.instance).clearVersion();
            return this;
        }

        @Override // com.papa91.battle.protocol.DevelVersionOrBuilder
        public int getVersion() {
            return ((DevelVersion) this.instance).getVersion();
        }

        public Builder setVersion(int i2) {
            copyOnWrite();
            ((DevelVersion) this.instance).setVersion(i2);
            return this;
        }

        private Builder() {
            super(DevelVersion.DEFAULT_INSTANCE);
        }
    }

    static {
        DevelVersion develVersion = new DevelVersion();
        DEFAULT_INSTANCE = develVersion;
        develVersion.makeImmutable();
    }

    private DevelVersion() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVersion() {
        this.version_ = 0;
    }

    public static DevelVersion getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DevelVersion parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DevelVersion) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DevelVersion parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (DevelVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<DevelVersion> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVersion(int i2) {
        this.version_ = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new DevelVersion();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                DevelVersion develVersion = (DevelVersion) obj2;
                int i2 = this.version_;
                boolean z3 = i2 != 0;
                int i4 = develVersion.version_;
                this.version_ = visitor.visitInt(z3, i2, i4 != 0, i4);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag != 161365016) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.version_ = codedInputStream.readInt32();
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
                    synchronized (DevelVersion.class) {
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
        int i4 = this.version_;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(VERSION_FIELD_NUMBER, i4) : 0;
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.papa91.battle.protocol.DevelVersionOrBuilder
    public int getVersion() {
        return this.version_;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.version_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(VERSION_FIELD_NUMBER, i2);
        }
    }

    public static Builder newBuilder(DevelVersion develVersion) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) develVersion);
    }

    public static DevelVersion parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (DevelVersion) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static DevelVersion parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (DevelVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static DevelVersion parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (DevelVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static DevelVersion parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (DevelVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static DevelVersion parseFrom(InputStream inputStream) throws IOException {
        return (DevelVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DevelVersion parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (DevelVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static DevelVersion parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (DevelVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static DevelVersion parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (DevelVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
