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
/* compiled from: FriendChangeStateNotification.java */
/* loaded from: classes2.dex */
public final class x extends GeneratedMessageLite<x, b> implements y {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61964d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61965e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61966f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final x f61967g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<x> f61968h;

    /* renamed from: a  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f61969a;

    /* renamed from: b  reason: collision with root package name */
    private int f61970b;

    /* renamed from: c  reason: collision with root package name */
    private d1 f61971c;

    /* compiled from: FriendChangeStateNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61972a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61972a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61972a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61972a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61972a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61972a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61972a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61972a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61972a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: FriendChangeStateNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<x, b> implements y {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((x) this.instance).e3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((x) this.instance).f3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((x) this.instance).clearState();
            return this;
        }

        public b V2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((x) this.instance).h3(aVar);
            return this;
        }

        public b W2(d1 d1Var) {
            copyOnWrite();
            ((x) this.instance).i3(d1Var);
            return this;
        }

        public b X2(a.b bVar) {
            copyOnWrite();
            ((x) this.instance).v3(bVar);
            return this;
        }

        public b Y2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((x) this.instance).w3(aVar);
            return this;
        }

        public b Z2(d1.b bVar) {
            copyOnWrite();
            ((x) this.instance).x3(bVar);
            return this;
        }

        public b a3(d1 d1Var) {
            copyOnWrite();
            ((x) this.instance).y3(d1Var);
            return this;
        }

        public b b3(OnlineState onlineState) {
            copyOnWrite();
            ((x) this.instance).z3(onlineState);
            return this;
        }

        public b c3(int i2) {
            copyOnWrite();
            ((x) this.instance).setStateValue(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y
        public boolean e() {
            return ((x) this.instance).e();
        }

        @Override // com.wufan.friend.chat.protocol.y
        public com.wufan.friend.chat.protocol.a g() {
            return ((x) this.instance).g();
        }

        @Override // com.wufan.friend.chat.protocol.y
        public OnlineState getState() {
            return ((x) this.instance).getState();
        }

        @Override // com.wufan.friend.chat.protocol.y
        public int getStateValue() {
            return ((x) this.instance).getStateValue();
        }

        @Override // com.wufan.friend.chat.protocol.y
        public d1 n() {
            return ((x) this.instance).n();
        }

        @Override // com.wufan.friend.chat.protocol.y
        public boolean o() {
            return ((x) this.instance).o();
        }

        private b() {
            super(x.f61967g);
        }
    }

    static {
        x xVar = new x();
        f61967g = xVar;
        xVar.makeImmutable();
    }

    private x() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.f61970b = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3() {
        this.f61969a = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f61971c = null;
    }

    public static x g3() {
        return f61967g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f61969a;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f61969a = com.wufan.friend.chat.protocol.a.p3(this.f61969a).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f61969a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i3(d1 d1Var) {
        d1 d1Var2 = this.f61971c;
        if (d1Var2 != null && d1Var2 != d1.h3()) {
            this.f61971c = d1.j3(this.f61971c).mergeFrom((d1.b) d1Var).buildPartial();
        } else {
            this.f61971c = d1Var;
        }
    }

    public static b j3() {
        return f61967g.toBuilder();
    }

    public static b k3(x xVar) {
        return f61967g.toBuilder().mergeFrom((b) xVar);
    }

    public static x l3(InputStream inputStream) throws IOException {
        return (x) GeneratedMessageLite.parseDelimitedFrom(f61967g, inputStream);
    }

    public static x m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x) GeneratedMessageLite.parseDelimitedFrom(f61967g, inputStream, extensionRegistryLite);
    }

    public static x n3(ByteString byteString) throws InvalidProtocolBufferException {
        return (x) GeneratedMessageLite.parseFrom(f61967g, byteString);
    }

    public static x o3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (x) GeneratedMessageLite.parseFrom(f61967g, byteString, extensionRegistryLite);
    }

    public static x p3(CodedInputStream codedInputStream) throws IOException {
        return (x) GeneratedMessageLite.parseFrom(f61967g, codedInputStream);
    }

    public static Parser<x> parser() {
        return f61967g.getParserForType();
    }

    public static x q3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x) GeneratedMessageLite.parseFrom(f61967g, codedInputStream, extensionRegistryLite);
    }

    public static x r3(InputStream inputStream) throws IOException {
        return (x) GeneratedMessageLite.parseFrom(f61967g, inputStream);
    }

    public static x s3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x) GeneratedMessageLite.parseFrom(f61967g, inputStream, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateValue(int i2) {
        this.f61970b = i2;
    }

    public static x t3(byte[] bArr) throws InvalidProtocolBufferException {
        return (x) GeneratedMessageLite.parseFrom(f61967g, bArr);
    }

    public static x u3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (x) GeneratedMessageLite.parseFrom(f61967g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(a.b bVar) {
        this.f61969a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f61969a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(d1.b bVar) {
        this.f61971c = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(d1 d1Var) {
        Objects.requireNonNull(d1Var);
        this.f61971c = d1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(OnlineState onlineState) {
        Objects.requireNonNull(onlineState);
        this.f61970b = onlineState.getNumber();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61972a[methodToInvoke.ordinal()]) {
            case 1:
                return new x();
            case 2:
                return f61967g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                x xVar = (x) obj2;
                this.f61969a = (com.wufan.friend.chat.protocol.a) visitor.visitMessage(this.f61969a, xVar.f61969a);
                int i2 = this.f61970b;
                boolean z3 = i2 != 0;
                int i4 = xVar.f61970b;
                this.f61970b = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f61971c = (d1) visitor.visitMessage(this.f61971c, xVar.f61971c);
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
                                    com.wufan.friend.chat.protocol.a aVar = this.f61969a;
                                    a.b builder = aVar != null ? aVar.toBuilder() : null;
                                    com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                    this.f61969a = aVar2;
                                    if (builder != null) {
                                        builder.mergeFrom((a.b) aVar2);
                                        this.f61969a = builder.buildPartial();
                                    }
                                } else if (readTag == 16) {
                                    this.f61970b = codedInputStream.readEnum();
                                } else if (readTag != 26) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    d1 d1Var = this.f61971c;
                                    d1.b builder2 = d1Var != null ? d1Var.toBuilder() : null;
                                    d1 d1Var2 = (d1) codedInputStream.readMessage(d1.parser(), extensionRegistryLite);
                                    this.f61971c = d1Var2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom((d1.b) d1Var2);
                                        this.f61971c = builder2.buildPartial();
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
                if (f61968h == null) {
                    synchronized (x.class) {
                        if (f61968h == null) {
                            f61968h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61967g);
                        }
                    }
                }
                return f61968h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61967g;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public boolean e() {
        return this.f61969a != null;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public com.wufan.friend.chat.protocol.a g() {
        com.wufan.friend.chat.protocol.a aVar = this.f61969a;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61969a != null ? 0 + CodedOutputStream.computeMessageSize(1, g()) : 0;
        if (this.f61970b != OnlineState.ONLINE.getNumber()) {
            computeMessageSize += CodedOutputStream.computeEnumSize(2, this.f61970b);
        }
        if (this.f61971c != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(3, n());
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public OnlineState getState() {
        OnlineState forNumber = OnlineState.forNumber(this.f61970b);
        return forNumber == null ? OnlineState.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public int getStateValue() {
        return this.f61970b;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public d1 n() {
        d1 d1Var = this.f61971c;
        return d1Var == null ? d1.h3() : d1Var;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public boolean o() {
        return this.f61971c != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61969a != null) {
            codedOutputStream.writeMessage(1, g());
        }
        if (this.f61970b != OnlineState.ONLINE.getNumber()) {
            codedOutputStream.writeEnum(2, this.f61970b);
        }
        if (this.f61971c != null) {
            codedOutputStream.writeMessage(3, n());
        }
    }
}
