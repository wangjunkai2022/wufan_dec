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
public final class Notification extends GeneratedMessageLite<Notification, Builder> implements NotificationOrBuilder, Serializable {
    private static final Notification DEFAULT_INSTANCE;
    public static final int JUMPJSON_FIELD_NUMBER = 2;
    public static final int MESSAGE_FIELD_NUMBER = 1;
    private static volatile Parser<Notification> PARSER;
    private String message_ = "";
    private String jumpJSON_ = "";

    /* renamed from: com.papa91.battle.protocol.Notification$1  reason: invalid class name */
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
    public static final class Builder extends GeneratedMessageLite.Builder<Notification, Builder> implements NotificationOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearJumpJSON() {
            copyOnWrite();
            ((Notification) this.instance).clearJumpJSON();
            return this;
        }

        public Builder clearMessage() {
            copyOnWrite();
            ((Notification) this.instance).clearMessage();
            return this;
        }

        @Override // com.papa91.battle.protocol.NotificationOrBuilder
        public String getJumpJSON() {
            return ((Notification) this.instance).getJumpJSON();
        }

        @Override // com.papa91.battle.protocol.NotificationOrBuilder
        public ByteString getJumpJSONBytes() {
            return ((Notification) this.instance).getJumpJSONBytes();
        }

        @Override // com.papa91.battle.protocol.NotificationOrBuilder
        public String getMessage() {
            return ((Notification) this.instance).getMessage();
        }

        @Override // com.papa91.battle.protocol.NotificationOrBuilder
        public ByteString getMessageBytes() {
            return ((Notification) this.instance).getMessageBytes();
        }

        public Builder setJumpJSON(String str) {
            copyOnWrite();
            ((Notification) this.instance).setJumpJSON(str);
            return this;
        }

        public Builder setJumpJSONBytes(ByteString byteString) {
            copyOnWrite();
            ((Notification) this.instance).setJumpJSONBytes(byteString);
            return this;
        }

        public Builder setMessage(String str) {
            copyOnWrite();
            ((Notification) this.instance).setMessage(str);
            return this;
        }

        public Builder setMessageBytes(ByteString byteString) {
            copyOnWrite();
            ((Notification) this.instance).setMessageBytes(byteString);
            return this;
        }

        private Builder() {
            super(Notification.DEFAULT_INSTANCE);
        }
    }

    static {
        Notification notification = new Notification();
        DEFAULT_INSTANCE = notification;
        notification.makeImmutable();
    }

    private Notification() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearJumpJSON() {
        this.jumpJSON_ = getDefaultInstance().getJumpJSON();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessage() {
        this.message_ = getDefaultInstance().getMessage();
    }

    public static Notification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Notification parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Notification) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Notification parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (Notification) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<Notification> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJumpJSON(String str) {
        Objects.requireNonNull(str);
        this.jumpJSON_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJumpJSONBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.jumpJSON_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessage(String str) {
        Objects.requireNonNull(str);
        this.message_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessageBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.message_ = byteString.toStringUtf8();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new Notification();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                Notification notification = (Notification) obj2;
                this.message_ = visitor.visitString(!this.message_.isEmpty(), this.message_, !notification.message_.isEmpty(), notification.message_);
                this.jumpJSON_ = visitor.visitString(!this.jumpJSON_.isEmpty(), this.jumpJSON_, true ^ notification.jumpJSON_.isEmpty(), notification.jumpJSON_);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z3 = false;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.message_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 18) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.jumpJSON_ = codedInputStream.readStringRequireUtf8();
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
                    synchronized (Notification.class) {
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

    @Override // com.papa91.battle.protocol.NotificationOrBuilder
    public String getJumpJSON() {
        return this.jumpJSON_;
    }

    @Override // com.papa91.battle.protocol.NotificationOrBuilder
    public ByteString getJumpJSONBytes() {
        return ByteString.copyFromUtf8(this.jumpJSON_);
    }

    @Override // com.papa91.battle.protocol.NotificationOrBuilder
    public String getMessage() {
        return this.message_;
    }

    @Override // com.papa91.battle.protocol.NotificationOrBuilder
    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.message_);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.message_.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, getMessage());
        if (!this.jumpJSON_.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(2, getJumpJSON());
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.message_.isEmpty()) {
            codedOutputStream.writeString(1, getMessage());
        }
        if (this.jumpJSON_.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(2, getJumpJSON());
    }

    public static Builder newBuilder(Notification notification) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) notification);
    }

    public static Notification parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Notification) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Notification parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Notification) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Notification parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (Notification) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Notification parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Notification) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Notification parseFrom(InputStream inputStream) throws IOException {
        return (Notification) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Notification parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Notification) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Notification parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Notification) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Notification parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Notification) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
