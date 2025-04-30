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
/* compiled from: GameInviteArgs.java */
/* loaded from: classes2.dex */
public final class e0 extends GeneratedMessageLite<e0, b> implements f0 {

    /* renamed from: g  reason: collision with root package name */
    public static final int f61711g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f61712h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f61713i = 3;

    /* renamed from: j  reason: collision with root package name */
    public static final int f61714j = 4;

    /* renamed from: k  reason: collision with root package name */
    public static final int f61715k = 5;

    /* renamed from: l  reason: collision with root package name */
    public static final int f61716l = 6;

    /* renamed from: m  reason: collision with root package name */
    private static final e0 f61717m;

    /* renamed from: n  reason: collision with root package name */
    private static volatile Parser<e0> f61718n;

    /* renamed from: a  reason: collision with root package name */
    private int f61719a;

    /* renamed from: b  reason: collision with root package name */
    private long f61720b;

    /* renamed from: c  reason: collision with root package name */
    private long f61721c;

    /* renamed from: d  reason: collision with root package name */
    private String f61722d = "";

    /* renamed from: e  reason: collision with root package name */
    private boolean f61723e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f61724f;

    /* compiled from: GameInviteArgs.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61725a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61725a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61725a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61725a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61725a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61725a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61725a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61725a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61725a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: GameInviteArgs.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<e0, b> implements f0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public boolean B() {
            return ((e0) this.instance).B();
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public int E() {
            return ((e0) this.instance).E();
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public ByteString I() {
            return ((e0) this.instance).I();
        }

        public b S2() {
            copyOnWrite();
            ((e0) this.instance).g3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((e0) this.instance).h3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((e0) this.instance).clearGameId();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((e0) this.instance).i3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((e0) this.instance).j3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((e0) this.instance).k3();
            return this;
        }

        public b Y2(boolean z3) {
            copyOnWrite();
            ((e0) this.instance).y3(z3);
            return this;
        }

        public b Z2(int i2) {
            copyOnWrite();
            ((e0) this.instance).z3(i2);
            return this;
        }

        public b a3(long j4) {
            copyOnWrite();
            ((e0) this.instance).setGameId(j4);
            return this;
        }

        public b b3(long j4) {
            copyOnWrite();
            ((e0) this.instance).A3(j4);
            return this;
        }

        public b c3(String str) {
            copyOnWrite();
            ((e0) this.instance).B3(str);
            return this;
        }

        public b d3(ByteString byteString) {
            copyOnWrite();
            ((e0) this.instance).C3(byteString);
            return this;
        }

        public b e3(boolean z3) {
            copyOnWrite();
            ((e0) this.instance).D3(z3);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public long f() {
            return ((e0) this.instance).f();
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public long getGameId() {
            return ((e0) this.instance).getGameId();
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public String p() {
            return ((e0) this.instance).p();
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public boolean u() {
            return ((e0) this.instance).u();
        }

        private b() {
            super(e0.f61717m);
        }
    }

    static {
        e0 e0Var = new e0();
        f61717m = e0Var;
        e0Var.makeImmutable();
    }

    private e0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(long j4) {
        this.f61720b = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B3(String str) {
        Objects.requireNonNull(str);
        this.f61722d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61722d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D3(boolean z3) {
        this.f61724f = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f61721c = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3() {
        this.f61723e = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3() {
        this.f61719a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i3() {
        this.f61720b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j3() {
        this.f61722d = l3().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k3() {
        this.f61724f = false;
    }

    public static e0 l3() {
        return f61717m;
    }

    public static b m3() {
        return f61717m.toBuilder();
    }

    public static b n3(e0 e0Var) {
        return f61717m.toBuilder().mergeFrom((b) e0Var);
    }

    public static e0 o3(InputStream inputStream) throws IOException {
        return (e0) GeneratedMessageLite.parseDelimitedFrom(f61717m, inputStream);
    }

    public static e0 p3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (e0) GeneratedMessageLite.parseDelimitedFrom(f61717m, inputStream, extensionRegistryLite);
    }

    public static Parser<e0> parser() {
        return f61717m.getParserForType();
    }

    public static e0 q3(ByteString byteString) throws InvalidProtocolBufferException {
        return (e0) GeneratedMessageLite.parseFrom(f61717m, byteString);
    }

    public static e0 r3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (e0) GeneratedMessageLite.parseFrom(f61717m, byteString, extensionRegistryLite);
    }

    public static e0 s3(CodedInputStream codedInputStream) throws IOException {
        return (e0) GeneratedMessageLite.parseFrom(f61717m, codedInputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f61721c = j4;
    }

    public static e0 t3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (e0) GeneratedMessageLite.parseFrom(f61717m, codedInputStream, extensionRegistryLite);
    }

    public static e0 u3(InputStream inputStream) throws IOException {
        return (e0) GeneratedMessageLite.parseFrom(f61717m, inputStream);
    }

    public static e0 v3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (e0) GeneratedMessageLite.parseFrom(f61717m, inputStream, extensionRegistryLite);
    }

    public static e0 w3(byte[] bArr) throws InvalidProtocolBufferException {
        return (e0) GeneratedMessageLite.parseFrom(f61717m, bArr);
    }

    public static e0 x3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (e0) GeneratedMessageLite.parseFrom(f61717m, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(boolean z3) {
        this.f61723e = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(int i2) {
        this.f61719a = i2;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public boolean B() {
        return this.f61724f;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public int E() {
        return this.f61719a;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public ByteString I() {
        return ByteString.copyFromUtf8(this.f61722d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f61725a[methodToInvoke.ordinal()]) {
            case 1:
                return new e0();
            case 2:
                return f61717m;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                e0 e0Var = (e0) obj2;
                int i2 = this.f61719a;
                boolean z4 = i2 != 0;
                int i4 = e0Var.f61719a;
                this.f61719a = visitor.visitInt(z4, i2, i4 != 0, i4);
                long j4 = this.f61720b;
                boolean z5 = j4 != 0;
                long j5 = e0Var.f61720b;
                this.f61720b = visitor.visitLong(z5, j4, j5 != 0, j5);
                long j6 = this.f61721c;
                boolean z6 = j6 != 0;
                long j7 = e0Var.f61721c;
                this.f61721c = visitor.visitLong(z6, j6, j7 != 0, j7);
                this.f61722d = visitor.visitString(!this.f61722d.isEmpty(), this.f61722d, !e0Var.f61722d.isEmpty(), e0Var.f61722d);
                boolean z7 = this.f61723e;
                boolean z8 = e0Var.f61723e;
                this.f61723e = visitor.visitBoolean(z7, z7, z8, z8);
                boolean z9 = this.f61724f;
                boolean z10 = e0Var.f61724f;
                this.f61724f = visitor.visitBoolean(z9, z9, z10, z10);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.f61719a = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.f61720b = codedInputStream.readInt64();
                            } else if (readTag == 24) {
                                this.f61721c = codedInputStream.readInt64();
                            } else if (readTag == 34) {
                                this.f61722d = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 40) {
                                this.f61723e = codedInputStream.readBool();
                            } else if (readTag != 48) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61724f = codedInputStream.readBool();
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
                if (f61718n == null) {
                    synchronized (e0.class) {
                        if (f61718n == null) {
                            f61718n = new GeneratedMessageLite.DefaultInstanceBasedParser(f61717m);
                        }
                    }
                }
                return f61718n;
            default:
                throw new UnsupportedOperationException();
        }
        return f61717m;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public long f() {
        return this.f61720b;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public long getGameId() {
        return this.f61721c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f61719a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        long j4 = this.f61720b;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(2, j4);
        }
        long j5 = this.f61721c;
        if (j5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(3, j5);
        }
        if (!this.f61722d.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(4, p());
        }
        boolean z3 = this.f61723e;
        if (z3) {
            computeInt32Size += CodedOutputStream.computeBoolSize(5, z3);
        }
        boolean z4 = this.f61724f;
        if (z4) {
            computeInt32Size += CodedOutputStream.computeBoolSize(6, z4);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public String p() {
        return this.f61722d;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public boolean u() {
        return this.f61723e;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f61719a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        long j4 = this.f61720b;
        if (j4 != 0) {
            codedOutputStream.writeInt64(2, j4);
        }
        long j5 = this.f61721c;
        if (j5 != 0) {
            codedOutputStream.writeInt64(3, j5);
        }
        if (!this.f61722d.isEmpty()) {
            codedOutputStream.writeString(4, p());
        }
        boolean z3 = this.f61723e;
        if (z3) {
            codedOutputStream.writeBool(5, z3);
        }
        boolean z4 = this.f61724f;
        if (z4) {
            codedOutputStream.writeBool(6, z4);
        }
    }
}
