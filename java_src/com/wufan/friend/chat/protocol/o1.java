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
/* compiled from: RecommendPlayerStateChangeNotification.java */
/* loaded from: classes2.dex */
public final class o1 extends GeneratedMessageLite<o1, b> implements p1 {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61829d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61830e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61831f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final o1 f61832g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<o1> f61833h;

    /* renamed from: a  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f61834a;

    /* renamed from: b  reason: collision with root package name */
    private int f61835b;

    /* renamed from: c  reason: collision with root package name */
    private d1 f61836c;

    /* compiled from: RecommendPlayerStateChangeNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61837a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61837a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61837a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61837a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61837a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61837a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61837a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61837a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61837a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: RecommendPlayerStateChangeNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<o1, b> implements p1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((o1) this.instance).e3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((o1) this.instance).f3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((o1) this.instance).clearState();
            return this;
        }

        public b V2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((o1) this.instance).h3(aVar);
            return this;
        }

        public b W2(d1 d1Var) {
            copyOnWrite();
            ((o1) this.instance).i3(d1Var);
            return this;
        }

        public b X2(a.b bVar) {
            copyOnWrite();
            ((o1) this.instance).v3(bVar);
            return this;
        }

        public b Y2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((o1) this.instance).w3(aVar);
            return this;
        }

        public b Z2(d1.b bVar) {
            copyOnWrite();
            ((o1) this.instance).x3(bVar);
            return this;
        }

        public b a3(d1 d1Var) {
            copyOnWrite();
            ((o1) this.instance).y3(d1Var);
            return this;
        }

        public b b3(OnlineState onlineState) {
            copyOnWrite();
            ((o1) this.instance).z3(onlineState);
            return this;
        }

        public b c3(int i2) {
            copyOnWrite();
            ((o1) this.instance).setStateValue(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.p1
        public boolean e() {
            return ((o1) this.instance).e();
        }

        @Override // com.wufan.friend.chat.protocol.p1
        public com.wufan.friend.chat.protocol.a g() {
            return ((o1) this.instance).g();
        }

        @Override // com.wufan.friend.chat.protocol.p1
        public OnlineState getState() {
            return ((o1) this.instance).getState();
        }

        @Override // com.wufan.friend.chat.protocol.p1
        public int getStateValue() {
            return ((o1) this.instance).getStateValue();
        }

        @Override // com.wufan.friend.chat.protocol.p1
        public d1 n() {
            return ((o1) this.instance).n();
        }

        @Override // com.wufan.friend.chat.protocol.p1
        public boolean o() {
            return ((o1) this.instance).o();
        }

        private b() {
            super(o1.f61832g);
        }
    }

    static {
        o1 o1Var = new o1();
        f61832g = o1Var;
        o1Var.makeImmutable();
    }

    private o1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.f61835b = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3() {
        this.f61834a = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f61836c = null;
    }

    public static o1 g3() {
        return f61832g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f61834a;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f61834a = com.wufan.friend.chat.protocol.a.p3(this.f61834a).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f61834a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i3(d1 d1Var) {
        d1 d1Var2 = this.f61836c;
        if (d1Var2 != null && d1Var2 != d1.h3()) {
            this.f61836c = d1.j3(this.f61836c).mergeFrom((d1.b) d1Var).buildPartial();
        } else {
            this.f61836c = d1Var;
        }
    }

    public static b j3() {
        return f61832g.toBuilder();
    }

    public static b k3(o1 o1Var) {
        return f61832g.toBuilder().mergeFrom((b) o1Var);
    }

    public static o1 l3(InputStream inputStream) throws IOException {
        return (o1) GeneratedMessageLite.parseDelimitedFrom(f61832g, inputStream);
    }

    public static o1 m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (o1) GeneratedMessageLite.parseDelimitedFrom(f61832g, inputStream, extensionRegistryLite);
    }

    public static o1 n3(ByteString byteString) throws InvalidProtocolBufferException {
        return (o1) GeneratedMessageLite.parseFrom(f61832g, byteString);
    }

    public static o1 o3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (o1) GeneratedMessageLite.parseFrom(f61832g, byteString, extensionRegistryLite);
    }

    public static o1 p3(CodedInputStream codedInputStream) throws IOException {
        return (o1) GeneratedMessageLite.parseFrom(f61832g, codedInputStream);
    }

    public static Parser<o1> parser() {
        return f61832g.getParserForType();
    }

    public static o1 q3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (o1) GeneratedMessageLite.parseFrom(f61832g, codedInputStream, extensionRegistryLite);
    }

    public static o1 r3(InputStream inputStream) throws IOException {
        return (o1) GeneratedMessageLite.parseFrom(f61832g, inputStream);
    }

    public static o1 s3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (o1) GeneratedMessageLite.parseFrom(f61832g, inputStream, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateValue(int i2) {
        this.f61835b = i2;
    }

    public static o1 t3(byte[] bArr) throws InvalidProtocolBufferException {
        return (o1) GeneratedMessageLite.parseFrom(f61832g, bArr);
    }

    public static o1 u3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (o1) GeneratedMessageLite.parseFrom(f61832g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(a.b bVar) {
        this.f61834a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f61834a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(d1.b bVar) {
        this.f61836c = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(d1 d1Var) {
        Objects.requireNonNull(d1Var);
        this.f61836c = d1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(OnlineState onlineState) {
        Objects.requireNonNull(onlineState);
        this.f61835b = onlineState.getNumber();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61837a[methodToInvoke.ordinal()]) {
            case 1:
                return new o1();
            case 2:
                return f61832g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                o1 o1Var = (o1) obj2;
                this.f61834a = (com.wufan.friend.chat.protocol.a) visitor.visitMessage(this.f61834a, o1Var.f61834a);
                int i2 = this.f61835b;
                boolean z3 = i2 != 0;
                int i4 = o1Var.f61835b;
                this.f61835b = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f61836c = (d1) visitor.visitMessage(this.f61836c, o1Var.f61836c);
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
                                    com.wufan.friend.chat.protocol.a aVar = this.f61834a;
                                    a.b builder = aVar != null ? aVar.toBuilder() : null;
                                    com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                    this.f61834a = aVar2;
                                    if (builder != null) {
                                        builder.mergeFrom((a.b) aVar2);
                                        this.f61834a = builder.buildPartial();
                                    }
                                } else if (readTag == 16) {
                                    this.f61835b = codedInputStream.readEnum();
                                } else if (readTag != 26) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    d1 d1Var = this.f61836c;
                                    d1.b builder2 = d1Var != null ? d1Var.toBuilder() : null;
                                    d1 d1Var2 = (d1) codedInputStream.readMessage(d1.parser(), extensionRegistryLite);
                                    this.f61836c = d1Var2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom((d1.b) d1Var2);
                                        this.f61836c = builder2.buildPartial();
                                    }
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
                if (f61833h == null) {
                    synchronized (o1.class) {
                        if (f61833h == null) {
                            f61833h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61832g);
                        }
                    }
                }
                return f61833h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61832g;
    }

    @Override // com.wufan.friend.chat.protocol.p1
    public boolean e() {
        return this.f61834a != null;
    }

    @Override // com.wufan.friend.chat.protocol.p1
    public com.wufan.friend.chat.protocol.a g() {
        com.wufan.friend.chat.protocol.a aVar = this.f61834a;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61834a != null ? 0 + CodedOutputStream.computeMessageSize(1, g()) : 0;
        if (this.f61835b != OnlineState.ONLINE.getNumber()) {
            computeMessageSize += CodedOutputStream.computeEnumSize(2, this.f61835b);
        }
        if (this.f61836c != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(3, n());
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.wufan.friend.chat.protocol.p1
    public OnlineState getState() {
        OnlineState forNumber = OnlineState.forNumber(this.f61835b);
        return forNumber == null ? OnlineState.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.p1
    public int getStateValue() {
        return this.f61835b;
    }

    @Override // com.wufan.friend.chat.protocol.p1
    public d1 n() {
        d1 d1Var = this.f61836c;
        return d1Var == null ? d1.h3() : d1Var;
    }

    @Override // com.wufan.friend.chat.protocol.p1
    public boolean o() {
        return this.f61836c != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61834a != null) {
            codedOutputStream.writeMessage(1, g());
        }
        if (this.f61835b != OnlineState.ONLINE.getNumber()) {
            codedOutputStream.writeEnum(2, this.f61835b);
        }
        if (this.f61836c != null) {
            codedOutputStream.writeMessage(3, n());
        }
    }
}
