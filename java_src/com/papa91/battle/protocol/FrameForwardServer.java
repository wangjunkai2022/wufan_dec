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
public final class FrameForwardServer extends GeneratedMessageLite<FrameForwardServer, Builder> implements FrameForwardServerOrBuilder, Serializable {
    private static final FrameForwardServer DEFAULT_INSTANCE;
    public static final int HOST_FIELD_NUMBER = 1;
    private static volatile Parser<FrameForwardServer> PARSER = null;
    public static final int PORT_FIELD_NUMBER = 2;
    private String host_ = "";
    private int port_;

    /* renamed from: com.papa91.battle.protocol.FrameForwardServer$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<FrameForwardServer, Builder> implements FrameForwardServerOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearHost() {
            copyOnWrite();
            ((FrameForwardServer) this.instance).clearHost();
            return this;
        }

        public Builder clearPort() {
            copyOnWrite();
            ((FrameForwardServer) this.instance).clearPort();
            return this;
        }

        @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
        public String getHost() {
            return ((FrameForwardServer) this.instance).getHost();
        }

        @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
        public ByteString getHostBytes() {
            return ((FrameForwardServer) this.instance).getHostBytes();
        }

        @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
        public int getPort() {
            return ((FrameForwardServer) this.instance).getPort();
        }

        public Builder setHost(String str) {
            copyOnWrite();
            ((FrameForwardServer) this.instance).setHost(str);
            return this;
        }

        public Builder setHostBytes(ByteString byteString) {
            copyOnWrite();
            ((FrameForwardServer) this.instance).setHostBytes(byteString);
            return this;
        }

        public Builder setPort(int i2) {
            copyOnWrite();
            ((FrameForwardServer) this.instance).setPort(i2);
            return this;
        }

        private Builder() {
            super(FrameForwardServer.DEFAULT_INSTANCE);
        }
    }

    static {
        FrameForwardServer frameForwardServer = new FrameForwardServer();
        DEFAULT_INSTANCE = frameForwardServer;
        frameForwardServer.makeImmutable();
    }

    private FrameForwardServer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHost() {
        this.host_ = getDefaultInstance().getHost();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPort() {
        this.port_ = 0;
    }

    public static FrameForwardServer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FrameForwardServer parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FrameForwardServer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FrameForwardServer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (FrameForwardServer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<FrameForwardServer> parser() {
        return DEFAULT_INSTANCE.getParserForType();
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
    public void setPort(int i2) {
        this.port_ = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new FrameForwardServer();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                FrameForwardServer frameForwardServer = (FrameForwardServer) obj2;
                this.host_ = visitor.visitString(!this.host_.isEmpty(), this.host_, !frameForwardServer.host_.isEmpty(), frameForwardServer.host_);
                int i2 = this.port_;
                boolean z3 = i2 != 0;
                int i4 = frameForwardServer.port_;
                this.port_ = visitor.visitInt(z3, i2, i4 != 0, i4);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.host_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 16) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.port_ = codedInputStream.readUInt32();
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
                    synchronized (FrameForwardServer.class) {
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

    @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
    public String getHost() {
        return this.host_;
    }

    @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
    public ByteString getHostBytes() {
        return ByteString.copyFromUtf8(this.host_);
    }

    @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
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
    }

    public static Builder newBuilder(FrameForwardServer frameForwardServer) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) frameForwardServer);
    }

    public static FrameForwardServer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FrameForwardServer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static FrameForwardServer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (FrameForwardServer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static FrameForwardServer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (FrameForwardServer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static FrameForwardServer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (FrameForwardServer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static FrameForwardServer parseFrom(InputStream inputStream) throws IOException {
        return (FrameForwardServer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FrameForwardServer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FrameForwardServer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static FrameForwardServer parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (FrameForwardServer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static FrameForwardServer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FrameForwardServer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
