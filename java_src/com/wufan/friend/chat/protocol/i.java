package com.wufan.friend.chat.protocol;

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
import java.util.Objects;
/* compiled from: ChatMessageArgs.java */
/* loaded from: classes2.dex */
public final class i extends GeneratedMessageLite<i, b> implements j {

    /* renamed from: b  reason: collision with root package name */
    public static final int f61765b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final i f61766c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Parser<i> f61767d;

    /* renamed from: a  reason: collision with root package name */
    private String f61768a = "";

    /* compiled from: ChatMessageArgs.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61769a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61769a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61769a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61769a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61769a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61769a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61769a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61769a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61769a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: ChatMessageArgs.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<i, b> implements j {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((i) this.instance).clearMessage();
            return this;
        }

        public b T2(String str) {
            copyOnWrite();
            ((i) this.instance).setMessage(str);
            return this;
        }

        public b U2(ByteString byteString) {
            copyOnWrite();
            ((i) this.instance).setMessageBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.j
        public String getMessage() {
            return ((i) this.instance).getMessage();
        }

        @Override // com.wufan.friend.chat.protocol.j
        public ByteString getMessageBytes() {
            return ((i) this.instance).getMessageBytes();
        }

        private b() {
            super(i.f61766c);
        }
    }

    static {
        i iVar = new i();
        f61766c = iVar;
        iVar.makeImmutable();
    }

    private i() {
    }

    public static i W2() {
        return f61766c;
    }

    public static b X2() {
        return f61766c.toBuilder();
    }

    public static b Y2(i iVar) {
        return f61766c.toBuilder().mergeFrom((b) iVar);
    }

    public static i Z2(InputStream inputStream) throws IOException {
        return (i) GeneratedMessageLite.parseDelimitedFrom(f61766c, inputStream);
    }

    public static i a3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (i) GeneratedMessageLite.parseDelimitedFrom(f61766c, inputStream, extensionRegistryLite);
    }

    public static i b3(ByteString byteString) throws InvalidProtocolBufferException {
        return (i) GeneratedMessageLite.parseFrom(f61766c, byteString);
    }

    public static i c3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (i) GeneratedMessageLite.parseFrom(f61766c, byteString, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessage() {
        this.f61768a = W2().getMessage();
    }

    public static i d3(CodedInputStream codedInputStream) throws IOException {
        return (i) GeneratedMessageLite.parseFrom(f61766c, codedInputStream);
    }

    public static i e3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (i) GeneratedMessageLite.parseFrom(f61766c, codedInputStream, extensionRegistryLite);
    }

    public static i f3(InputStream inputStream) throws IOException {
        return (i) GeneratedMessageLite.parseFrom(f61766c, inputStream);
    }

    public static i g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (i) GeneratedMessageLite.parseFrom(f61766c, inputStream, extensionRegistryLite);
    }

    public static i h3(byte[] bArr) throws InvalidProtocolBufferException {
        return (i) GeneratedMessageLite.parseFrom(f61766c, bArr);
    }

    public static i i3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (i) GeneratedMessageLite.parseFrom(f61766c, bArr, extensionRegistryLite);
    }

    public static Parser<i> parser() {
        return f61766c.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessage(String str) {
        Objects.requireNonNull(str);
        this.f61768a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessageBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61768a = byteString.toStringUtf8();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61769a[methodToInvoke.ordinal()]) {
            case 1:
                return new i();
            case 2:
                return f61766c;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                i iVar = (i) obj2;
                this.f61768a = ((GeneratedMessageLite.Visitor) obj).visitString(!this.f61768a.isEmpty(), this.f61768a, true ^ iVar.f61768a.isEmpty(), iVar.f61768a);
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
                            if (readTag != 10) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61768a = codedInputStream.readStringRequireUtf8();
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
                if (f61767d == null) {
                    synchronized (i.class) {
                        if (f61767d == null) {
                            f61767d = new GeneratedMessageLite.DefaultInstanceBasedParser(f61766c);
                        }
                    }
                }
                return f61767d;
            default:
                throw new UnsupportedOperationException();
        }
        return f61766c;
    }

    @Override // com.wufan.friend.chat.protocol.j
    public String getMessage() {
        return this.f61768a;
    }

    @Override // com.wufan.friend.chat.protocol.j
    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.f61768a);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.f61768a.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, getMessage());
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61768a.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(1, getMessage());
    }
}
