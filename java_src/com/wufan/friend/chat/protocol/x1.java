package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.k;
import com.wufan.friend.chat.protocol.l1;
import com.wufan.friend.chat.protocol.p0;
import com.wufan.friend.chat.protocol.v0;
import com.wufan.friend.chat.protocol.y0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: ResponseData.java */
/* loaded from: classes2.dex */
public final class x1 extends GeneratedMessageLite<x1, b> implements y1 {

    /* renamed from: f  reason: collision with root package name */
    public static final int f61973f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f61974g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f61975h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final int f61976i = 4;

    /* renamed from: j  reason: collision with root package name */
    public static final int f61977j = 5;

    /* renamed from: k  reason: collision with root package name */
    private static final x1 f61978k;

    /* renamed from: l  reason: collision with root package name */
    private static volatile Parser<x1> f61979l;

    /* renamed from: a  reason: collision with root package name */
    private v0 f61980a;

    /* renamed from: b  reason: collision with root package name */
    private y0 f61981b;

    /* renamed from: c  reason: collision with root package name */
    private l1 f61982c;

    /* renamed from: d  reason: collision with root package name */
    private p0 f61983d;

    /* renamed from: e  reason: collision with root package name */
    private k f61984e;

    /* compiled from: ResponseData.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61985a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61985a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61985a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61985a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61985a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61985a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61985a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61985a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61985a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: ResponseData.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<x1, b> implements y1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public l1 E1() {
            return ((x1) this.instance).E1();
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public k J0() {
            return ((x1) this.instance).J0();
        }

        public b S2() {
            copyOnWrite();
            ((x1) this.instance).n3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((x1) this.instance).o3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public boolean U0() {
            return ((x1) this.instance).U0();
        }

        public b U2() {
            copyOnWrite();
            ((x1) this.instance).p3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public p0 V0() {
            return ((x1) this.instance).V0();
        }

        public b V2() {
            copyOnWrite();
            ((x1) this.instance).clearNotification();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((x1) this.instance).q3();
            return this;
        }

        public b X2(k kVar) {
            copyOnWrite();
            ((x1) this.instance).s3(kVar);
            return this;
        }

        public b Y2(p0 p0Var) {
            copyOnWrite();
            ((x1) this.instance).t3(p0Var);
            return this;
        }

        public b Z2(v0 v0Var) {
            copyOnWrite();
            ((x1) this.instance).u3(v0Var);
            return this;
        }

        public b a3(y0 y0Var) {
            copyOnWrite();
            ((x1) this.instance).v3(y0Var);
            return this;
        }

        public b b3(l1 l1Var) {
            copyOnWrite();
            ((x1) this.instance).w3(l1Var);
            return this;
        }

        public b c3(k.b bVar) {
            copyOnWrite();
            ((x1) this.instance).J3(bVar);
            return this;
        }

        public b d3(k kVar) {
            copyOnWrite();
            ((x1) this.instance).K3(kVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public boolean e1() {
            return ((x1) this.instance).e1();
        }

        public b e3(p0.b bVar) {
            copyOnWrite();
            ((x1) this.instance).L3(bVar);
            return this;
        }

        public b f3(p0 p0Var) {
            copyOnWrite();
            ((x1) this.instance).M3(p0Var);
            return this;
        }

        public b g3(v0.b bVar) {
            copyOnWrite();
            ((x1) this.instance).N3(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public y0 getNotification() {
            return ((x1) this.instance).getNotification();
        }

        public b h3(v0 v0Var) {
            copyOnWrite();
            ((x1) this.instance).O3(v0Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public boolean hasNotification() {
            return ((x1) this.instance).hasNotification();
        }

        public b i3(y0.b bVar) {
            copyOnWrite();
            ((x1) this.instance).P3(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public boolean j1() {
            return ((x1) this.instance).j1();
        }

        public b j3(y0 y0Var) {
            copyOnWrite();
            ((x1) this.instance).Q3(y0Var);
            return this;
        }

        public b k3(l1.b bVar) {
            copyOnWrite();
            ((x1) this.instance).R3(bVar);
            return this;
        }

        public b l3(l1 l1Var) {
            copyOnWrite();
            ((x1) this.instance).S3(l1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public boolean m1() {
            return ((x1) this.instance).m1();
        }

        @Override // com.wufan.friend.chat.protocol.y1
        public v0 x2() {
            return ((x1) this.instance).x2();
        }

        private b() {
            super(x1.f61978k);
        }
    }

    static {
        x1 x1Var = new x1();
        f61978k = x1Var;
        x1Var.makeImmutable();
    }

    private x1() {
    }

    public static x1 A3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x1) GeneratedMessageLite.parseDelimitedFrom(f61978k, inputStream, extensionRegistryLite);
    }

    public static x1 B3(ByteString byteString) throws InvalidProtocolBufferException {
        return (x1) GeneratedMessageLite.parseFrom(f61978k, byteString);
    }

    public static x1 C3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (x1) GeneratedMessageLite.parseFrom(f61978k, byteString, extensionRegistryLite);
    }

    public static x1 D3(CodedInputStream codedInputStream) throws IOException {
        return (x1) GeneratedMessageLite.parseFrom(f61978k, codedInputStream);
    }

    public static x1 E3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x1) GeneratedMessageLite.parseFrom(f61978k, codedInputStream, extensionRegistryLite);
    }

    public static x1 F3(InputStream inputStream) throws IOException {
        return (x1) GeneratedMessageLite.parseFrom(f61978k, inputStream);
    }

    public static x1 G3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x1) GeneratedMessageLite.parseFrom(f61978k, inputStream, extensionRegistryLite);
    }

    public static x1 H3(byte[] bArr) throws InvalidProtocolBufferException {
        return (x1) GeneratedMessageLite.parseFrom(f61978k, bArr);
    }

    public static x1 I3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (x1) GeneratedMessageLite.parseFrom(f61978k, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J3(k.b bVar) {
        this.f61984e = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K3(k kVar) {
        Objects.requireNonNull(kVar);
        this.f61984e = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L3(p0.b bVar) {
        this.f61983d = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M3(p0 p0Var) {
        Objects.requireNonNull(p0Var);
        this.f61983d = p0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N3(v0.b bVar) {
        this.f61980a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O3(v0 v0Var) {
        Objects.requireNonNull(v0Var);
        this.f61980a = v0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P3(y0.b bVar) {
        this.f61981b = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q3(y0 y0Var) {
        Objects.requireNonNull(y0Var);
        this.f61981b = y0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R3(l1.b bVar) {
        this.f61982c = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S3(l1 l1Var) {
        Objects.requireNonNull(l1Var);
        this.f61982c = l1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNotification() {
        this.f61981b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3() {
        this.f61984e = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3() {
        this.f61983d = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3() {
        this.f61980a = null;
    }

    public static Parser<x1> parser() {
        return f61978k.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3() {
        this.f61982c = null;
    }

    public static x1 r3() {
        return f61978k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(k kVar) {
        k kVar2 = this.f61984e;
        if (kVar2 != null && kVar2 != k.Z2()) {
            this.f61984e = k.b3(this.f61984e).mergeFrom((k.b) kVar).buildPartial();
        } else {
            this.f61984e = kVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(p0 p0Var) {
        p0 p0Var2 = this.f61983d;
        if (p0Var2 != null && p0Var2 != p0.j3()) {
            this.f61983d = p0.n3(this.f61983d).mergeFrom((p0.b) p0Var).buildPartial();
        } else {
            this.f61983d = p0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(v0 v0Var) {
        v0 v0Var2 = this.f61980a;
        if (v0Var2 != null && v0Var2 != v0.Z2()) {
            this.f61980a = v0.b3(this.f61980a).mergeFrom((v0.b) v0Var).buildPartial();
        } else {
            this.f61980a = v0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(y0 y0Var) {
        y0 y0Var2 = this.f61981b;
        if (y0Var2 != null && y0Var2 != y0.J4()) {
            this.f61981b = y0.c5(this.f61981b).mergeFrom((y0.b) y0Var).buildPartial();
        } else {
            this.f61981b = y0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(l1 l1Var) {
        l1 l1Var2 = this.f61982c;
        if (l1Var2 != null && l1Var2 != l1.j3()) {
            this.f61982c = l1.n3(this.f61982c).mergeFrom((l1.b) l1Var).buildPartial();
        } else {
            this.f61982c = l1Var;
        }
    }

    public static b x3() {
        return f61978k.toBuilder();
    }

    public static b y3(x1 x1Var) {
        return f61978k.toBuilder().mergeFrom((b) x1Var);
    }

    public static x1 z3(InputStream inputStream) throws IOException {
        return (x1) GeneratedMessageLite.parseDelimitedFrom(f61978k, inputStream);
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public l1 E1() {
        l1 l1Var = this.f61982c;
        return l1Var == null ? l1.j3() : l1Var;
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public k J0() {
        k kVar = this.f61984e;
        return kVar == null ? k.Z2() : kVar;
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public boolean U0() {
        return this.f61984e != null;
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public p0 V0() {
        p0 p0Var = this.f61983d;
        return p0Var == null ? p0.j3() : p0Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61985a[methodToInvoke.ordinal()]) {
            case 1:
                return new x1();
            case 2:
                return f61978k;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                x1 x1Var = (x1) obj2;
                this.f61980a = (v0) visitor.visitMessage(this.f61980a, x1Var.f61980a);
                this.f61981b = (y0) visitor.visitMessage(this.f61981b, x1Var.f61981b);
                this.f61982c = (l1) visitor.visitMessage(this.f61982c, x1Var.f61982c);
                this.f61983d = (p0) visitor.visitMessage(this.f61983d, x1Var.f61983d);
                this.f61984e = (k) visitor.visitMessage(this.f61984e, x1Var.f61984e);
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
                                v0 v0Var = this.f61980a;
                                v0.b builder = v0Var != null ? v0Var.toBuilder() : null;
                                v0 v0Var2 = (v0) codedInputStream.readMessage(v0.parser(), extensionRegistryLite);
                                this.f61980a = v0Var2;
                                if (builder != null) {
                                    builder.mergeFrom((v0.b) v0Var2);
                                    this.f61980a = builder.buildPartial();
                                }
                            } else if (readTag == 18) {
                                y0 y0Var = this.f61981b;
                                y0.b builder2 = y0Var != null ? y0Var.toBuilder() : null;
                                y0 y0Var2 = (y0) codedInputStream.readMessage(y0.parser(), extensionRegistryLite);
                                this.f61981b = y0Var2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((y0.b) y0Var2);
                                    this.f61981b = builder2.buildPartial();
                                }
                            } else if (readTag == 26) {
                                l1 l1Var = this.f61982c;
                                l1.b builder3 = l1Var != null ? l1Var.toBuilder() : null;
                                l1 l1Var2 = (l1) codedInputStream.readMessage(l1.parser(), extensionRegistryLite);
                                this.f61982c = l1Var2;
                                if (builder3 != null) {
                                    builder3.mergeFrom((l1.b) l1Var2);
                                    this.f61982c = builder3.buildPartial();
                                }
                            } else if (readTag == 34) {
                                p0 p0Var = this.f61983d;
                                p0.b builder4 = p0Var != null ? p0Var.toBuilder() : null;
                                p0 p0Var2 = (p0) codedInputStream.readMessage(p0.parser(), extensionRegistryLite);
                                this.f61983d = p0Var2;
                                if (builder4 != null) {
                                    builder4.mergeFrom((p0.b) p0Var2);
                                    this.f61983d = builder4.buildPartial();
                                }
                            } else if (readTag != 42) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                k kVar = this.f61984e;
                                k.b builder5 = kVar != null ? kVar.toBuilder() : null;
                                k kVar2 = (k) codedInputStream.readMessage(k.parser(), extensionRegistryLite);
                                this.f61984e = kVar2;
                                if (builder5 != null) {
                                    builder5.mergeFrom((k.b) kVar2);
                                    this.f61984e = builder5.buildPartial();
                                }
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
                if (f61979l == null) {
                    synchronized (x1.class) {
                        if (f61979l == null) {
                            f61979l = new GeneratedMessageLite.DefaultInstanceBasedParser(f61978k);
                        }
                    }
                }
                return f61979l;
            default:
                throw new UnsupportedOperationException();
        }
        return f61978k;
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public boolean e1() {
        return this.f61983d != null;
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public y0 getNotification() {
        y0 y0Var = this.f61981b;
        return y0Var == null ? y0.J4() : y0Var;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61980a != null ? 0 + CodedOutputStream.computeMessageSize(1, x2()) : 0;
        if (this.f61981b != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(2, getNotification());
        }
        if (this.f61982c != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(3, E1());
        }
        if (this.f61983d != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(4, V0());
        }
        if (this.f61984e != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(5, J0());
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public boolean hasNotification() {
        return this.f61981b != null;
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public boolean j1() {
        return this.f61982c != null;
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public boolean m1() {
        return this.f61980a != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61980a != null) {
            codedOutputStream.writeMessage(1, x2());
        }
        if (this.f61981b != null) {
            codedOutputStream.writeMessage(2, getNotification());
        }
        if (this.f61982c != null) {
            codedOutputStream.writeMessage(3, E1());
        }
        if (this.f61983d != null) {
            codedOutputStream.writeMessage(4, V0());
        }
        if (this.f61984e != null) {
            codedOutputStream.writeMessage(5, J0());
        }
    }

    @Override // com.wufan.friend.chat.protocol.y1
    public v0 x2() {
        v0 v0Var = this.f61980a;
        return v0Var == null ? v0.Z2() : v0Var;
    }
}
