package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: GameListPermission.java */
/* loaded from: classes2.dex */
public final class d extends GeneratedMessageLite<d, b> implements e {

    /* renamed from: f  reason: collision with root package name */
    public static final int f62048f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f62049g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62050h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final int f62051i = 4;

    /* renamed from: j  reason: collision with root package name */
    public static final int f62052j = 5;

    /* renamed from: k  reason: collision with root package name */
    private static final d f62053k;

    /* renamed from: l  reason: collision with root package name */
    private static volatile Parser<d> f62054l;

    /* renamed from: a  reason: collision with root package name */
    private long f62055a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f62056b;

    /* renamed from: c  reason: collision with root package name */
    private long f62057c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f62058d;

    /* renamed from: e  reason: collision with root package name */
    private long f62059e;

    /* compiled from: GameListPermission.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62060a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62060a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62060a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62060a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62060a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62060a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62060a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62060a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62060a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: GameListPermission.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<d, b> implements e {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.user.service.protobuf.e
        public boolean S() {
            return ((d) this.instance).S();
        }

        public b S2() {
            copyOnWrite();
            ((d) this.instance).d3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((d) this.instance).clearGameId();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((d) this.instance).e3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((d) this.instance).f3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((d) this.instance).g3();
            return this;
        }

        public b X2(long j4) {
            copyOnWrite();
            ((d) this.instance).u3(j4);
            return this;
        }

        public b Y2(long j4) {
            copyOnWrite();
            ((d) this.instance).setGameId(j4);
            return this;
        }

        public b Z2(boolean z3) {
            copyOnWrite();
            ((d) this.instance).v3(z3);
            return this;
        }

        public b a3(boolean z3) {
            copyOnWrite();
            ((d) this.instance).w3(z3);
            return this;
        }

        public b b3(long j4) {
            copyOnWrite();
            ((d) this.instance).x3(j4);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.e
        public long getGameId() {
            return ((d) this.instance).getGameId();
        }

        @Override // com.wufan.user.service.protobuf.e
        public boolean n2() {
            return ((d) this.instance).n2();
        }

        @Override // com.wufan.user.service.protobuf.e
        public long r1() {
            return ((d) this.instance).r1();
        }

        @Override // com.wufan.user.service.protobuf.e
        public long x1() {
            return ((d) this.instance).x1();
        }

        private b() {
            super(d.f62053k);
        }
    }

    static {
        d dVar = new d();
        f62053k = dVar;
        dVar.makeImmutable();
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f62055a = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3() {
        this.f62059e = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3() {
        this.f62058d = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f62056b = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3() {
        this.f62057c = 0L;
    }

    public static d h3() {
        return f62053k;
    }

    public static b i3() {
        return f62053k.toBuilder();
    }

    public static b j3(d dVar) {
        return f62053k.toBuilder().mergeFrom((b) dVar);
    }

    public static d k3(InputStream inputStream) throws IOException {
        return (d) GeneratedMessageLite.parseDelimitedFrom(f62053k, inputStream);
    }

    public static d l3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d) GeneratedMessageLite.parseDelimitedFrom(f62053k, inputStream, extensionRegistryLite);
    }

    public static d m3(ByteString byteString) throws InvalidProtocolBufferException {
        return (d) GeneratedMessageLite.parseFrom(f62053k, byteString);
    }

    public static d n3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (d) GeneratedMessageLite.parseFrom(f62053k, byteString, extensionRegistryLite);
    }

    public static d o3(CodedInputStream codedInputStream) throws IOException {
        return (d) GeneratedMessageLite.parseFrom(f62053k, codedInputStream);
    }

    public static d p3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d) GeneratedMessageLite.parseFrom(f62053k, codedInputStream, extensionRegistryLite);
    }

    public static Parser<d> parser() {
        return f62053k.getParserForType();
    }

    public static d q3(InputStream inputStream) throws IOException {
        return (d) GeneratedMessageLite.parseFrom(f62053k, inputStream);
    }

    public static d r3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d) GeneratedMessageLite.parseFrom(f62053k, inputStream, extensionRegistryLite);
    }

    public static d s3(byte[] bArr) throws InvalidProtocolBufferException {
        return (d) GeneratedMessageLite.parseFrom(f62053k, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f62055a = j4;
    }

    public static d t3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (d) GeneratedMessageLite.parseFrom(f62053k, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(long j4) {
        this.f62059e = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(boolean z3) {
        this.f62058d = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(boolean z3) {
        this.f62056b = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(long j4) {
        this.f62057c = j4;
    }

    @Override // com.wufan.user.service.protobuf.e
    public boolean S() {
        return this.f62056b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f62060a[methodToInvoke.ordinal()]) {
            case 1:
                return new d();
            case 2:
                return f62053k;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                d dVar = (d) obj2;
                long j4 = this.f62055a;
                boolean z4 = j4 != 0;
                long j5 = dVar.f62055a;
                this.f62055a = visitor.visitLong(z4, j4, j5 != 0, j5);
                boolean z5 = this.f62056b;
                boolean z6 = dVar.f62056b;
                this.f62056b = visitor.visitBoolean(z5, z5, z6, z6);
                long j6 = this.f62057c;
                boolean z7 = j6 != 0;
                long j7 = dVar.f62057c;
                this.f62057c = visitor.visitLong(z7, j6, j7 != 0, j7);
                boolean z8 = this.f62058d;
                boolean z9 = dVar.f62058d;
                this.f62058d = visitor.visitBoolean(z8, z8, z9, z9);
                long j8 = this.f62059e;
                boolean z10 = j8 != 0;
                long j9 = dVar.f62059e;
                this.f62059e = visitor.visitLong(z10, j8, j9 != 0, j9);
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
                                this.f62055a = codedInputStream.readInt64();
                            } else if (readTag == 16) {
                                this.f62056b = codedInputStream.readBool();
                            } else if (readTag == 24) {
                                this.f62057c = codedInputStream.readInt64();
                            } else if (readTag == 32) {
                                this.f62058d = codedInputStream.readBool();
                            } else if (readTag != 40) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62059e = codedInputStream.readInt64();
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
                if (f62054l == null) {
                    synchronized (d.class) {
                        if (f62054l == null) {
                            f62054l = new GeneratedMessageLite.DefaultInstanceBasedParser(f62053k);
                        }
                    }
                }
                return f62054l;
            default:
                throw new UnsupportedOperationException();
        }
        return f62053k;
    }

    @Override // com.wufan.user.service.protobuf.e
    public long getGameId() {
        return this.f62055a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        long j4 = this.f62055a;
        int computeInt64Size = j4 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j4) : 0;
        boolean z3 = this.f62056b;
        if (z3) {
            computeInt64Size += CodedOutputStream.computeBoolSize(2, z3);
        }
        long j5 = this.f62057c;
        if (j5 != 0) {
            computeInt64Size += CodedOutputStream.computeInt64Size(3, j5);
        }
        boolean z4 = this.f62058d;
        if (z4) {
            computeInt64Size += CodedOutputStream.computeBoolSize(4, z4);
        }
        long j6 = this.f62059e;
        if (j6 != 0) {
            computeInt64Size += CodedOutputStream.computeInt64Size(5, j6);
        }
        this.memoizedSerializedSize = computeInt64Size;
        return computeInt64Size;
    }

    @Override // com.wufan.user.service.protobuf.e
    public boolean n2() {
        return this.f62058d;
    }

    @Override // com.wufan.user.service.protobuf.e
    public long r1() {
        return this.f62059e;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j4 = this.f62055a;
        if (j4 != 0) {
            codedOutputStream.writeInt64(1, j4);
        }
        boolean z3 = this.f62056b;
        if (z3) {
            codedOutputStream.writeBool(2, z3);
        }
        long j5 = this.f62057c;
        if (j5 != 0) {
            codedOutputStream.writeInt64(3, j5);
        }
        boolean z4 = this.f62058d;
        if (z4) {
            codedOutputStream.writeBool(4, z4);
        }
        long j6 = this.f62059e;
        if (j6 != 0) {
            codedOutputStream.writeInt64(5, j6);
        }
    }

    @Override // com.wufan.user.service.protobuf.e
    public long x1() {
        return this.f62057c;
    }
}
