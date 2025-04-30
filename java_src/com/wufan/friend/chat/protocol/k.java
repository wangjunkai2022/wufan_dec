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
/* compiled from: ChatMessageMuteData.java */
/* loaded from: classes2.dex */
public final class k extends GeneratedMessageLite<k, b> implements l {

    /* renamed from: c  reason: collision with root package name */
    public static final int f61796c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f61797d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final k f61798e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<k> f61799f;

    /* renamed from: a  reason: collision with root package name */
    private boolean f61800a;

    /* renamed from: b  reason: collision with root package name */
    private String f61801b = "";

    /* compiled from: ChatMessageMuteData.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61802a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61802a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61802a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61802a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61802a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61802a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61802a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61802a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61802a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: ChatMessageMuteData.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<k, b> implements l {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.l
        public boolean F0() {
            return ((k) this.instance).F0();
        }

        public b S2() {
            copyOnWrite();
            ((k) this.instance).clearMessage();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((k) this.instance).Y2();
            return this;
        }

        public b U2(String str) {
            copyOnWrite();
            ((k) this.instance).setMessage(str);
            return this;
        }

        public b V2(ByteString byteString) {
            copyOnWrite();
            ((k) this.instance).setMessageBytes(byteString);
            return this;
        }

        public b W2(boolean z3) {
            copyOnWrite();
            ((k) this.instance).m3(z3);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.l
        public String getMessage() {
            return ((k) this.instance).getMessage();
        }

        @Override // com.wufan.friend.chat.protocol.l
        public ByteString getMessageBytes() {
            return ((k) this.instance).getMessageBytes();
        }

        private b() {
            super(k.f61798e);
        }
    }

    static {
        k kVar = new k();
        f61798e = kVar;
        kVar.makeImmutable();
    }

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y2() {
        this.f61800a = false;
    }

    public static k Z2() {
        return f61798e;
    }

    public static b a3() {
        return f61798e.toBuilder();
    }

    public static b b3(k kVar) {
        return f61798e.toBuilder().mergeFrom((b) kVar);
    }

    public static k c3(InputStream inputStream) throws IOException {
        return (k) GeneratedMessageLite.parseDelimitedFrom(f61798e, inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessage() {
        this.f61801b = Z2().getMessage();
    }

    public static k d3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (k) GeneratedMessageLite.parseDelimitedFrom(f61798e, inputStream, extensionRegistryLite);
    }

    public static k e3(ByteString byteString) throws InvalidProtocolBufferException {
        return (k) GeneratedMessageLite.parseFrom(f61798e, byteString);
    }

    public static k f3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (k) GeneratedMessageLite.parseFrom(f61798e, byteString, extensionRegistryLite);
    }

    public static k g3(CodedInputStream codedInputStream) throws IOException {
        return (k) GeneratedMessageLite.parseFrom(f61798e, codedInputStream);
    }

    public static k h3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (k) GeneratedMessageLite.parseFrom(f61798e, codedInputStream, extensionRegistryLite);
    }

    public static k i3(InputStream inputStream) throws IOException {
        return (k) GeneratedMessageLite.parseFrom(f61798e, inputStream);
    }

    public static k j3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (k) GeneratedMessageLite.parseFrom(f61798e, inputStream, extensionRegistryLite);
    }

    public static k k3(byte[] bArr) throws InvalidProtocolBufferException {
        return (k) GeneratedMessageLite.parseFrom(f61798e, bArr);
    }

    public static k l3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (k) GeneratedMessageLite.parseFrom(f61798e, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3(boolean z3) {
        this.f61800a = z3;
    }

    public static Parser<k> parser() {
        return f61798e.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessage(String str) {
        Objects.requireNonNull(str);
        this.f61801b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessageBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61801b = byteString.toStringUtf8();
    }

    @Override // com.wufan.friend.chat.protocol.l
    public boolean F0() {
        return this.f61800a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61802a[methodToInvoke.ordinal()]) {
            case 1:
                return new k();
            case 2:
                return f61798e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                k kVar = (k) obj2;
                boolean z3 = this.f61800a;
                boolean z4 = kVar.f61800a;
                this.f61800a = visitor.visitBoolean(z3, z3, z4, z4);
                this.f61801b = visitor.visitString(!this.f61801b.isEmpty(), this.f61801b, true ^ kVar.f61801b.isEmpty(), kVar.f61801b);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z5 = false;
                while (!z5) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.f61800a = codedInputStream.readBool();
                            } else if (readTag != 18) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61801b = codedInputStream.readStringRequireUtf8();
                            }
                        }
                        z5 = true;
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
                if (f61799f == null) {
                    synchronized (k.class) {
                        if (f61799f == null) {
                            f61799f = new GeneratedMessageLite.DefaultInstanceBasedParser(f61798e);
                        }
                    }
                }
                return f61799f;
            default:
                throw new UnsupportedOperationException();
        }
        return f61798e;
    }

    @Override // com.wufan.friend.chat.protocol.l
    public String getMessage() {
        return this.f61801b;
    }

    @Override // com.wufan.friend.chat.protocol.l
    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.f61801b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        boolean z3 = this.f61800a;
        int computeBoolSize = z3 ? 0 + CodedOutputStream.computeBoolSize(1, z3) : 0;
        if (!this.f61801b.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(2, getMessage());
        }
        this.memoizedSerializedSize = computeBoolSize;
        return computeBoolSize;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z3 = this.f61800a;
        if (z3) {
            codedOutputStream.writeBool(1, z3);
        }
        if (this.f61801b.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(2, getMessage());
    }
}
