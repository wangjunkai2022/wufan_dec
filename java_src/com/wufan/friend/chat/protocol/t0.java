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
/* compiled from: LoginArgs.java */
/* loaded from: classes2.dex */
public final class t0 extends GeneratedMessageLite<t0, b> implements u0 {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61895d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61896e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61897f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final t0 f61898g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<t0> f61899h;

    /* renamed from: a  reason: collision with root package name */
    private int f61900a;

    /* renamed from: b  reason: collision with root package name */
    private String f61901b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f61902c = "";

    /* compiled from: LoginArgs.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61903a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61903a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61903a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61903a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61903a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61903a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61903a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61903a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61903a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: LoginArgs.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<t0, b> implements u0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((t0) this.instance).b3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((t0) this.instance).clearNickname();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((t0) this.instance).clearToken();
            return this;
        }

        public b V2(int i2) {
            copyOnWrite();
            ((t0) this.instance).p3(i2);
            return this;
        }

        public b W2(String str) {
            copyOnWrite();
            ((t0) this.instance).setNickname(str);
            return this;
        }

        public b X2(ByteString byteString) {
            copyOnWrite();
            ((t0) this.instance).setNicknameBytes(byteString);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((t0) this.instance).setToken(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((t0) this.instance).setTokenBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u0
        public int d() {
            return ((t0) this.instance).d();
        }

        @Override // com.wufan.friend.chat.protocol.u0
        public String getNickname() {
            return ((t0) this.instance).getNickname();
        }

        @Override // com.wufan.friend.chat.protocol.u0
        public ByteString getNicknameBytes() {
            return ((t0) this.instance).getNicknameBytes();
        }

        @Override // com.wufan.friend.chat.protocol.u0
        public String getToken() {
            return ((t0) this.instance).getToken();
        }

        @Override // com.wufan.friend.chat.protocol.u0
        public ByteString getTokenBytes() {
            return ((t0) this.instance).getTokenBytes();
        }

        private b() {
            super(t0.f61898g);
        }
    }

    static {
        t0 t0Var = new t0();
        f61898g = t0Var;
        t0Var.makeImmutable();
    }

    private t0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3() {
        this.f61900a = 0;
    }

    public static t0 c3() {
        return f61898g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNickname() {
        this.f61901b = c3().getNickname();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearToken() {
        this.f61902c = c3().getToken();
    }

    public static b d3() {
        return f61898g.toBuilder();
    }

    public static b e3(t0 t0Var) {
        return f61898g.toBuilder().mergeFrom((b) t0Var);
    }

    public static t0 f3(InputStream inputStream) throws IOException {
        return (t0) GeneratedMessageLite.parseDelimitedFrom(f61898g, inputStream);
    }

    public static t0 g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t0) GeneratedMessageLite.parseDelimitedFrom(f61898g, inputStream, extensionRegistryLite);
    }

    public static t0 h3(ByteString byteString) throws InvalidProtocolBufferException {
        return (t0) GeneratedMessageLite.parseFrom(f61898g, byteString);
    }

    public static t0 i3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (t0) GeneratedMessageLite.parseFrom(f61898g, byteString, extensionRegistryLite);
    }

    public static t0 j3(CodedInputStream codedInputStream) throws IOException {
        return (t0) GeneratedMessageLite.parseFrom(f61898g, codedInputStream);
    }

    public static t0 k3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t0) GeneratedMessageLite.parseFrom(f61898g, codedInputStream, extensionRegistryLite);
    }

    public static t0 l3(InputStream inputStream) throws IOException {
        return (t0) GeneratedMessageLite.parseFrom(f61898g, inputStream);
    }

    public static t0 m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t0) GeneratedMessageLite.parseFrom(f61898g, inputStream, extensionRegistryLite);
    }

    public static t0 n3(byte[] bArr) throws InvalidProtocolBufferException {
        return (t0) GeneratedMessageLite.parseFrom(f61898g, bArr);
    }

    public static t0 o3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (t0) GeneratedMessageLite.parseFrom(f61898g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(int i2) {
        this.f61900a = i2;
    }

    public static Parser<t0> parser() {
        return f61898g.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNickname(String str) {
        Objects.requireNonNull(str);
        this.f61901b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNicknameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61901b = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setToken(String str) {
        Objects.requireNonNull(str);
        this.f61902c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTokenBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61902c = byteString.toStringUtf8();
    }

    @Override // com.wufan.friend.chat.protocol.u0
    public int d() {
        return this.f61900a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61903a[methodToInvoke.ordinal()]) {
            case 1:
                return new t0();
            case 2:
                return f61898g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                t0 t0Var = (t0) obj2;
                int i2 = this.f61900a;
                boolean z3 = i2 != 0;
                int i4 = t0Var.f61900a;
                this.f61900a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f61901b = visitor.visitString(!this.f61901b.isEmpty(), this.f61901b, !t0Var.f61901b.isEmpty(), t0Var.f61901b);
                this.f61902c = visitor.visitString(!this.f61902c.isEmpty(), this.f61902c, !t0Var.f61902c.isEmpty(), t0Var.f61902c);
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
                                this.f61900a = codedInputStream.readInt32();
                            } else if (readTag == 18) {
                                this.f61901b = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61902c = codedInputStream.readStringRequireUtf8();
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
                if (f61899h == null) {
                    synchronized (t0.class) {
                        if (f61899h == null) {
                            f61899h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61898g);
                        }
                    }
                }
                return f61899h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61898g;
    }

    @Override // com.wufan.friend.chat.protocol.u0
    public String getNickname() {
        return this.f61901b;
    }

    @Override // com.wufan.friend.chat.protocol.u0
    public ByteString getNicknameBytes() {
        return ByteString.copyFromUtf8(this.f61901b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f61900a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (!this.f61901b.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(2, getNickname());
        }
        if (!this.f61902c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, getToken());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.friend.chat.protocol.u0
    public String getToken() {
        return this.f61902c;
    }

    @Override // com.wufan.friend.chat.protocol.u0
    public ByteString getTokenBytes() {
        return ByteString.copyFromUtf8(this.f61902c);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f61900a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (!this.f61901b.isEmpty()) {
            codedOutputStream.writeString(2, getNickname());
        }
        if (this.f61902c.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, getToken());
    }
}
