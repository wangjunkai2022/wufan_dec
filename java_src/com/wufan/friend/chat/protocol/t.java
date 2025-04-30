package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.a;
import com.wufan.friend.chat.protocol.d1;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: FriendAddSuccessNotification.java */
/* loaded from: classes2.dex */
public final class t extends GeneratedMessageLite<t, b> implements u {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61886d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61887e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61888f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final t f61889g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<t> f61890h;

    /* renamed from: a  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f61891a;

    /* renamed from: b  reason: collision with root package name */
    private d1 f61892b;

    /* renamed from: c  reason: collision with root package name */
    private int f61893c;

    /* compiled from: FriendAddSuccessNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61894a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61894a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61894a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61894a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61894a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61894a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61894a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61894a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61894a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: FriendAddSuccessNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<t, b> implements u {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((t) this.instance).e3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u
        public OnlineState T0() {
            return ((t) this.instance).T0();
        }

        public b T2() {
            copyOnWrite();
            ((t) this.instance).f3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((t) this.instance).g3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u
        public int V() {
            return ((t) this.instance).V();
        }

        public b V2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((t) this.instance).i3(aVar);
            return this;
        }

        public b W2(d1 d1Var) {
            copyOnWrite();
            ((t) this.instance).j3(d1Var);
            return this;
        }

        public b X2(a.b bVar) {
            copyOnWrite();
            ((t) this.instance).w3(bVar);
            return this;
        }

        public b Y2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((t) this.instance).x3(aVar);
            return this;
        }

        public b Z2(OnlineState onlineState) {
            copyOnWrite();
            ((t) this.instance).y3(onlineState);
            return this;
        }

        public b a3(int i2) {
            copyOnWrite();
            ((t) this.instance).z3(i2);
            return this;
        }

        public b b3(d1.b bVar) {
            copyOnWrite();
            ((t) this.instance).A3(bVar);
            return this;
        }

        public b c3(d1 d1Var) {
            copyOnWrite();
            ((t) this.instance).B3(d1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u
        public boolean e() {
            return ((t) this.instance).e();
        }

        @Override // com.wufan.friend.chat.protocol.u
        public com.wufan.friend.chat.protocol.a g() {
            return ((t) this.instance).g();
        }

        @Override // com.wufan.friend.chat.protocol.u
        public d1 n() {
            return ((t) this.instance).n();
        }

        @Override // com.wufan.friend.chat.protocol.u
        public boolean o() {
            return ((t) this.instance).o();
        }

        private b() {
            super(t.f61889g);
        }
    }

    static {
        t tVar = new t();
        f61889g = tVar;
        tVar.makeImmutable();
    }

    private t() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(d1.b bVar) {
        this.f61892b = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B3(d1 d1Var) {
        Objects.requireNonNull(d1Var);
        this.f61892b = d1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3() {
        this.f61891a = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f61893c = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3() {
        this.f61892b = null;
    }

    public static t h3() {
        return f61889g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i3(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f61891a;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f61891a = com.wufan.friend.chat.protocol.a.p3(this.f61891a).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f61891a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j3(d1 d1Var) {
        d1 d1Var2 = this.f61892b;
        if (d1Var2 != null && d1Var2 != d1.h3()) {
            this.f61892b = d1.j3(this.f61892b).mergeFrom((d1.b) d1Var).buildPartial();
        } else {
            this.f61892b = d1Var;
        }
    }

    public static b k3() {
        return f61889g.toBuilder();
    }

    public static b l3(t tVar) {
        return f61889g.toBuilder().mergeFrom((b) tVar);
    }

    public static t m3(InputStream inputStream) throws IOException {
        return (t) GeneratedMessageLite.parseDelimitedFrom(f61889g, inputStream);
    }

    public static t n3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t) GeneratedMessageLite.parseDelimitedFrom(f61889g, inputStream, extensionRegistryLite);
    }

    public static t o3(ByteString byteString) throws InvalidProtocolBufferException {
        return (t) GeneratedMessageLite.parseFrom(f61889g, byteString);
    }

    public static t p3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (t) GeneratedMessageLite.parseFrom(f61889g, byteString, extensionRegistryLite);
    }

    public static Parser<t> parser() {
        return f61889g.getParserForType();
    }

    public static t q3(CodedInputStream codedInputStream) throws IOException {
        return (t) GeneratedMessageLite.parseFrom(f61889g, codedInputStream);
    }

    public static t r3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t) GeneratedMessageLite.parseFrom(f61889g, codedInputStream, extensionRegistryLite);
    }

    public static t s3(InputStream inputStream) throws IOException {
        return (t) GeneratedMessageLite.parseFrom(f61889g, inputStream);
    }

    public static t t3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t) GeneratedMessageLite.parseFrom(f61889g, inputStream, extensionRegistryLite);
    }

    public static t u3(byte[] bArr) throws InvalidProtocolBufferException {
        return (t) GeneratedMessageLite.parseFrom(f61889g, bArr);
    }

    public static t v3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (t) GeneratedMessageLite.parseFrom(f61889g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(a.b bVar) {
        this.f61891a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f61891a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(OnlineState onlineState) {
        Objects.requireNonNull(onlineState);
        this.f61893c = onlineState.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(int i2) {
        this.f61893c = i2;
    }

    @Override // com.wufan.friend.chat.protocol.u
    public OnlineState T0() {
        OnlineState forNumber = OnlineState.forNumber(this.f61893c);
        return forNumber == null ? OnlineState.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.u
    public int V() {
        return this.f61893c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61894a[methodToInvoke.ordinal()]) {
            case 1:
                return new t();
            case 2:
                return f61889g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                t tVar = (t) obj2;
                this.f61891a = (com.wufan.friend.chat.protocol.a) visitor.visitMessage(this.f61891a, tVar.f61891a);
                this.f61892b = (d1) visitor.visitMessage(this.f61892b, tVar.f61892b);
                int i2 = this.f61893c;
                boolean z3 = i2 != 0;
                int i4 = tVar.f61893c;
                this.f61893c = visitor.visitInt(z3, i2, i4 != 0, i4);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r0) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    com.wufan.friend.chat.protocol.a aVar = this.f61891a;
                                    a.b builder = aVar != null ? aVar.toBuilder() : null;
                                    com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                    this.f61891a = aVar2;
                                    if (builder != null) {
                                        builder.mergeFrom((a.b) aVar2);
                                        this.f61891a = builder.buildPartial();
                                    }
                                } else if (readTag == 18) {
                                    d1 d1Var = this.f61892b;
                                    d1.b builder2 = d1Var != null ? d1Var.toBuilder() : null;
                                    d1 d1Var2 = (d1) codedInputStream.readMessage(d1.parser(), extensionRegistryLite);
                                    this.f61892b = d1Var2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom((d1.b) d1Var2);
                                        this.f61892b = builder2.buildPartial();
                                    }
                                } else if (readTag != 24) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.f61893c = codedInputStream.readEnum();
                                }
                            }
                            r0 = true;
                        } catch (IOException e4) {
                            throw new RuntimeException(new InvalidProtocolBufferException(e4.getMessage()).setUnfinishedMessage(this));
                        }
                    } catch (InvalidProtocolBufferException e5) {
                        throw new RuntimeException(e5.setUnfinishedMessage(this));
                    }
                }
                break;
            case 7:
                break;
            case 8:
                if (f61890h == null) {
                    synchronized (t.class) {
                        if (f61890h == null) {
                            f61890h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61889g);
                        }
                    }
                }
                return f61890h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61889g;
    }

    @Override // com.wufan.friend.chat.protocol.u
    public boolean e() {
        return this.f61891a != null;
    }

    @Override // com.wufan.friend.chat.protocol.u
    public com.wufan.friend.chat.protocol.a g() {
        com.wufan.friend.chat.protocol.a aVar = this.f61891a;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61891a != null ? 0 + CodedOutputStream.computeMessageSize(1, g()) : 0;
        if (this.f61892b != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(2, n());
        }
        if (this.f61893c != OnlineState.ONLINE.getNumber()) {
            computeMessageSize += CodedOutputStream.computeEnumSize(3, this.f61893c);
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.wufan.friend.chat.protocol.u
    public d1 n() {
        d1 d1Var = this.f61892b;
        return d1Var == null ? d1.h3() : d1Var;
    }

    @Override // com.wufan.friend.chat.protocol.u
    public boolean o() {
        return this.f61892b != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61891a != null) {
            codedOutputStream.writeMessage(1, g());
        }
        if (this.f61892b != null) {
            codedOutputStream.writeMessage(2, n());
        }
        if (this.f61893c != OnlineState.ONLINE.getNumber()) {
            codedOutputStream.writeEnum(3, this.f61893c);
        }
    }
}
