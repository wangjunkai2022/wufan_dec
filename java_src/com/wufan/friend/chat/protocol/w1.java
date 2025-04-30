package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.x1;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: Response.java */
/* loaded from: classes2.dex */
public final class w1 extends GeneratedMessageLite<w1, b> implements z1 {

    /* renamed from: k  reason: collision with root package name */
    public static final int f61941k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f61942l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final int f61943m = 3;

    /* renamed from: n  reason: collision with root package name */
    public static final int f61944n = 4;

    /* renamed from: o  reason: collision with root package name */
    public static final int f61945o = 5;

    /* renamed from: p  reason: collision with root package name */
    public static final int f61946p = 6;

    /* renamed from: q  reason: collision with root package name */
    public static final int f61947q = 7;

    /* renamed from: r  reason: collision with root package name */
    public static final int f61948r = 8;

    /* renamed from: s  reason: collision with root package name */
    public static final int f61949s = 9;

    /* renamed from: t  reason: collision with root package name */
    public static final int f61950t = 10;

    /* renamed from: u  reason: collision with root package name */
    private static final w1 f61951u;

    /* renamed from: v  reason: collision with root package name */
    private static volatile Parser<w1> f61952v;

    /* renamed from: a  reason: collision with root package name */
    private long f61953a;

    /* renamed from: b  reason: collision with root package name */
    private long f61954b;

    /* renamed from: c  reason: collision with root package name */
    private int f61955c;

    /* renamed from: d  reason: collision with root package name */
    private int f61956d;

    /* renamed from: e  reason: collision with root package name */
    private int f61957e;

    /* renamed from: g  reason: collision with root package name */
    private int f61959g;

    /* renamed from: i  reason: collision with root package name */
    private int f61961i;

    /* renamed from: j  reason: collision with root package name */
    private x1 f61962j;

    /* renamed from: f  reason: collision with root package name */
    private String f61958f = "";

    /* renamed from: h  reason: collision with root package name */
    private String f61960h = "";

    /* compiled from: Response.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61963a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61963a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61963a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61963a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61963a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61963a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61963a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61963a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61963a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: Response.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<w1, b> implements z1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public ServiceName A() {
            return ((w1) this.instance).A();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public int A1() {
            return ((w1) this.instance).A1();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public int F() {
            return ((w1) this.instance).F();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public String H() {
            return ((w1) this.instance).H();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public ByteString L() {
            return ((w1) this.instance).L();
        }

        public b S2() {
            copyOnWrite();
            ((w1) this.instance).w3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public NotificationType T() {
            return ((w1) this.instance).T();
        }

        public b T2() {
            copyOnWrite();
            ((w1) this.instance).x3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((w1) this.instance).clearMessage();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((w1) this.instance).y3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((w1) this.instance).z3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((w1) this.instance).clearRequestId();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((w1) this.instance).A3();
            return this;
        }

        public b Z2() {
            copyOnWrite();
            ((w1) this.instance).B3();
            return this;
        }

        public b a3() {
            copyOnWrite();
            ((w1) this.instance).C3();
            return this;
        }

        public b b3() {
            copyOnWrite();
            ((w1) this.instance).clearTimestamp();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public int c1() {
            return ((w1) this.instance).c1();
        }

        public b c3(x1 x1Var) {
            copyOnWrite();
            ((w1) this.instance).E3(x1Var);
            return this;
        }

        public b d3(x1.b bVar) {
            copyOnWrite();
            ((w1) this.instance).R3(bVar);
            return this;
        }

        public b e3(x1 x1Var) {
            copyOnWrite();
            ((w1) this.instance).S3(x1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public int f1() {
            return ((w1) this.instance).f1();
        }

        public b f3(String str) {
            copyOnWrite();
            ((w1) this.instance).T3(str);
            return this;
        }

        public b g3(ByteString byteString) {
            copyOnWrite();
            ((w1) this.instance).U3(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public x1 getData() {
            return ((w1) this.instance).getData();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public String getMessage() {
            return ((w1) this.instance).getMessage();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public ByteString getMessageBytes() {
            return ((w1) this.instance).getMessageBytes();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public ServicePath getPath() {
            return ((w1) this.instance).getPath();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public long getRequestId() {
            return ((w1) this.instance).getRequestId();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public ResponseStatus getStatus() {
            return ((w1) this.instance).getStatus();
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public long getTimestamp() {
            return ((w1) this.instance).getTimestamp();
        }

        public b h3(String str) {
            copyOnWrite();
            ((w1) this.instance).setMessage(str);
            return this;
        }

        public b i3(ByteString byteString) {
            copyOnWrite();
            ((w1) this.instance).setMessageBytes(byteString);
            return this;
        }

        public b j3(NotificationType notificationType) {
            copyOnWrite();
            ((w1) this.instance).V3(notificationType);
            return this;
        }

        public b k3(int i2) {
            copyOnWrite();
            ((w1) this.instance).W3(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public boolean l() {
            return ((w1) this.instance).l();
        }

        public b l3(ServicePath servicePath) {
            copyOnWrite();
            ((w1) this.instance).X3(servicePath);
            return this;
        }

        public b m3(int i2) {
            copyOnWrite();
            ((w1) this.instance).Y3(i2);
            return this;
        }

        public b n3(long j4) {
            copyOnWrite();
            ((w1) this.instance).setRequestId(j4);
            return this;
        }

        public b o3(ResponseType responseType) {
            copyOnWrite();
            ((w1) this.instance).Z3(responseType);
            return this;
        }

        public b p3(int i2) {
            copyOnWrite();
            ((w1) this.instance).a4(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public ResponseType q0() {
            return ((w1) this.instance).q0();
        }

        public b q3(ServiceName serviceName) {
            copyOnWrite();
            ((w1) this.instance).b4(serviceName);
            return this;
        }

        public b r3(int i2) {
            copyOnWrite();
            ((w1) this.instance).c4(i2);
            return this;
        }

        public b s3(ResponseStatus responseStatus) {
            copyOnWrite();
            ((w1) this.instance).d4(responseStatus);
            return this;
        }

        public b t3(int i2) {
            copyOnWrite();
            ((w1) this.instance).e4(i2);
            return this;
        }

        public b u3(long j4) {
            copyOnWrite();
            ((w1) this.instance).setTimestamp(j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z1
        public int y() {
            return ((w1) this.instance).y();
        }

        private b() {
            super(w1.f61951u);
        }
    }

    static {
        w1 w1Var = new w1();
        f61951u = w1Var;
        w1Var.makeImmutable();
    }

    private w1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3() {
        this.f61955c = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B3() {
        this.f61956d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3() {
        this.f61959g = 0;
    }

    public static w1 D3() {
        return f61951u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E3(x1 x1Var) {
        x1 x1Var2 = this.f61962j;
        if (x1Var2 != null && x1Var2 != x1.r3()) {
            this.f61962j = x1.y3(this.f61962j).mergeFrom((x1.b) x1Var).buildPartial();
        } else {
            this.f61962j = x1Var;
        }
    }

    public static b F3() {
        return f61951u.toBuilder();
    }

    public static b G3(w1 w1Var) {
        return f61951u.toBuilder().mergeFrom((b) w1Var);
    }

    public static w1 H3(InputStream inputStream) throws IOException {
        return (w1) GeneratedMessageLite.parseDelimitedFrom(f61951u, inputStream);
    }

    public static w1 I3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (w1) GeneratedMessageLite.parseDelimitedFrom(f61951u, inputStream, extensionRegistryLite);
    }

    public static w1 J3(ByteString byteString) throws InvalidProtocolBufferException {
        return (w1) GeneratedMessageLite.parseFrom(f61951u, byteString);
    }

    public static w1 K3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (w1) GeneratedMessageLite.parseFrom(f61951u, byteString, extensionRegistryLite);
    }

    public static w1 L3(CodedInputStream codedInputStream) throws IOException {
        return (w1) GeneratedMessageLite.parseFrom(f61951u, codedInputStream);
    }

    public static w1 M3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (w1) GeneratedMessageLite.parseFrom(f61951u, codedInputStream, extensionRegistryLite);
    }

    public static w1 N3(InputStream inputStream) throws IOException {
        return (w1) GeneratedMessageLite.parseFrom(f61951u, inputStream);
    }

    public static w1 O3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (w1) GeneratedMessageLite.parseFrom(f61951u, inputStream, extensionRegistryLite);
    }

    public static w1 P3(byte[] bArr) throws InvalidProtocolBufferException {
        return (w1) GeneratedMessageLite.parseFrom(f61951u, bArr);
    }

    public static w1 Q3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (w1) GeneratedMessageLite.parseFrom(f61951u, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R3(x1.b bVar) {
        this.f61962j = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S3(x1 x1Var) {
        Objects.requireNonNull(x1Var);
        this.f61962j = x1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T3(String str) {
        Objects.requireNonNull(str);
        this.f61958f = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61958f = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V3(NotificationType notificationType) {
        Objects.requireNonNull(notificationType);
        this.f61961i = notificationType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W3(int i2) {
        this.f61961i = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X3(ServicePath servicePath) {
        Objects.requireNonNull(servicePath);
        this.f61957e = servicePath.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y3(int i2) {
        this.f61957e = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z3(ResponseType responseType) {
        Objects.requireNonNull(responseType);
        this.f61955c = responseType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a4(int i2) {
        this.f61955c = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b4(ServiceName serviceName) {
        Objects.requireNonNull(serviceName);
        this.f61956d = serviceName.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c4(int i2) {
        this.f61956d = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessage() {
        this.f61960h = D3().getMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequestId() {
        this.f61953a = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTimestamp() {
        this.f61954b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d4(ResponseStatus responseStatus) {
        Objects.requireNonNull(responseStatus);
        this.f61959g = responseStatus.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e4(int i2) {
        this.f61959g = i2;
    }

    public static Parser<w1> parser() {
        return f61951u.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessage(String str) {
        Objects.requireNonNull(str);
        this.f61960h = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessageBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61960h = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestId(long j4) {
        this.f61953a = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimestamp(long j4) {
        this.f61954b = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3() {
        this.f61962j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3() {
        this.f61958f = D3().H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3() {
        this.f61961i = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3() {
        this.f61957e = 0;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public ServiceName A() {
        ServiceName forNumber = ServiceName.forNumber(this.f61956d);
        return forNumber == null ? ServiceName.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public int A1() {
        return this.f61961i;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public int F() {
        return this.f61957e;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public String H() {
        return this.f61958f;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public ByteString L() {
        return ByteString.copyFromUtf8(this.f61958f);
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public NotificationType T() {
        NotificationType forNumber = NotificationType.forNumber(this.f61961i);
        return forNumber == null ? NotificationType.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public int c1() {
        return this.f61959g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61963a[methodToInvoke.ordinal()]) {
            case 1:
                return new w1();
            case 2:
                return f61951u;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                w1 w1Var = (w1) obj2;
                long j4 = this.f61953a;
                boolean z3 = j4 != 0;
                long j5 = w1Var.f61953a;
                this.f61953a = visitor.visitLong(z3, j4, j5 != 0, j5);
                long j6 = this.f61954b;
                boolean z4 = j6 != 0;
                long j7 = w1Var.f61954b;
                this.f61954b = visitor.visitLong(z4, j6, j7 != 0, j7);
                int i2 = this.f61955c;
                boolean z5 = i2 != 0;
                int i4 = w1Var.f61955c;
                this.f61955c = visitor.visitInt(z5, i2, i4 != 0, i4);
                int i5 = this.f61956d;
                boolean z6 = i5 != 0;
                int i6 = w1Var.f61956d;
                this.f61956d = visitor.visitInt(z6, i5, i6 != 0, i6);
                int i7 = this.f61957e;
                boolean z7 = i7 != 0;
                int i8 = w1Var.f61957e;
                this.f61957e = visitor.visitInt(z7, i7, i8 != 0, i8);
                this.f61958f = visitor.visitString(!this.f61958f.isEmpty(), this.f61958f, !w1Var.f61958f.isEmpty(), w1Var.f61958f);
                int i9 = this.f61959g;
                boolean z8 = i9 != 0;
                int i10 = w1Var.f61959g;
                this.f61959g = visitor.visitInt(z8, i9, i10 != 0, i10);
                this.f61960h = visitor.visitString(!this.f61960h.isEmpty(), this.f61960h, !w1Var.f61960h.isEmpty(), w1Var.f61960h);
                int i11 = this.f61961i;
                boolean z9 = i11 != 0;
                int i12 = w1Var.f61961i;
                this.f61961i = visitor.visitInt(z9, i11, i12 != 0, i12);
                this.f61962j = (x1) visitor.visitMessage(this.f61962j, w1Var.f61962j);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 8:
                                this.f61953a = codedInputStream.readInt64();
                                continue;
                            case 16:
                                this.f61954b = codedInputStream.readInt64();
                                continue;
                            case 24:
                                this.f61955c = codedInputStream.readEnum();
                                continue;
                            case 32:
                                this.f61956d = codedInputStream.readEnum();
                                continue;
                            case 40:
                                this.f61957e = codedInputStream.readEnum();
                                continue;
                            case 50:
                                this.f61958f = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 56:
                                this.f61959g = codedInputStream.readEnum();
                                continue;
                            case 66:
                                this.f61960h = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 72:
                                this.f61961i = codedInputStream.readEnum();
                                continue;
                            case 82:
                                x1 x1Var = this.f61962j;
                                x1.b builder = x1Var != null ? x1Var.toBuilder() : null;
                                x1 x1Var2 = (x1) codedInputStream.readMessage(x1.parser(), extensionRegistryLite);
                                this.f61962j = x1Var2;
                                if (builder != null) {
                                    builder.mergeFrom((x1.b) x1Var2);
                                    this.f61962j = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            default:
                                if (!codedInputStream.skipField(readTag)) {
                                    break;
                                } else {
                                    continue;
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
                if (f61952v == null) {
                    synchronized (w1.class) {
                        if (f61952v == null) {
                            f61952v = new GeneratedMessageLite.DefaultInstanceBasedParser(f61951u);
                        }
                    }
                }
                return f61952v;
            default:
                throw new UnsupportedOperationException();
        }
        return f61951u;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public int f1() {
        return this.f61955c;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public x1 getData() {
        x1 x1Var = this.f61962j;
        return x1Var == null ? x1.r3() : x1Var;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public String getMessage() {
        return this.f61960h;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.f61960h);
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public ServicePath getPath() {
        ServicePath forNumber = ServicePath.forNumber(this.f61957e);
        return forNumber == null ? ServicePath.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public long getRequestId() {
        return this.f61953a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        long j4 = this.f61953a;
        int computeInt64Size = j4 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j4) : 0;
        long j5 = this.f61954b;
        if (j5 != 0) {
            computeInt64Size += CodedOutputStream.computeInt64Size(2, j5);
        }
        if (this.f61955c != ResponseType.UNDEFINED_CT.getNumber()) {
            computeInt64Size += CodedOutputStream.computeEnumSize(3, this.f61955c);
        }
        if (this.f61956d != ServiceName.UNDEFINED_SN.getNumber()) {
            computeInt64Size += CodedOutputStream.computeEnumSize(4, this.f61956d);
        }
        if (this.f61957e != ServicePath.UNDEFINED_SP.getNumber()) {
            computeInt64Size += CodedOutputStream.computeEnumSize(5, this.f61957e);
        }
        if (!this.f61958f.isEmpty()) {
            computeInt64Size += CodedOutputStream.computeStringSize(6, H());
        }
        if (this.f61959g != ResponseStatus.UNKNOWN_RS.getNumber()) {
            computeInt64Size += CodedOutputStream.computeEnumSize(7, this.f61959g);
        }
        if (!this.f61960h.isEmpty()) {
            computeInt64Size += CodedOutputStream.computeStringSize(8, getMessage());
        }
        if (this.f61961i != NotificationType.UNKNOWN_NT.getNumber()) {
            computeInt64Size += CodedOutputStream.computeEnumSize(9, this.f61961i);
        }
        if (this.f61962j != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(10, getData());
        }
        this.memoizedSerializedSize = computeInt64Size;
        return computeInt64Size;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public ResponseStatus getStatus() {
        ResponseStatus forNumber = ResponseStatus.forNumber(this.f61959g);
        return forNumber == null ? ResponseStatus.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public long getTimestamp() {
        return this.f61954b;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public boolean l() {
        return this.f61962j != null;
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public ResponseType q0() {
        ResponseType forNumber = ResponseType.forNumber(this.f61955c);
        return forNumber == null ? ResponseType.UNRECOGNIZED : forNumber;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j4 = this.f61953a;
        if (j4 != 0) {
            codedOutputStream.writeInt64(1, j4);
        }
        long j5 = this.f61954b;
        if (j5 != 0) {
            codedOutputStream.writeInt64(2, j5);
        }
        if (this.f61955c != ResponseType.UNDEFINED_CT.getNumber()) {
            codedOutputStream.writeEnum(3, this.f61955c);
        }
        if (this.f61956d != ServiceName.UNDEFINED_SN.getNumber()) {
            codedOutputStream.writeEnum(4, this.f61956d);
        }
        if (this.f61957e != ServicePath.UNDEFINED_SP.getNumber()) {
            codedOutputStream.writeEnum(5, this.f61957e);
        }
        if (!this.f61958f.isEmpty()) {
            codedOutputStream.writeString(6, H());
        }
        if (this.f61959g != ResponseStatus.UNKNOWN_RS.getNumber()) {
            codedOutputStream.writeEnum(7, this.f61959g);
        }
        if (!this.f61960h.isEmpty()) {
            codedOutputStream.writeString(8, getMessage());
        }
        if (this.f61961i != NotificationType.UNKNOWN_NT.getNumber()) {
            codedOutputStream.writeEnum(9, this.f61961i);
        }
        if (this.f61962j != null) {
            codedOutputStream.writeMessage(10, getData());
        }
    }

    @Override // com.wufan.friend.chat.protocol.z1
    public int y() {
        return this.f61956d;
    }
}
