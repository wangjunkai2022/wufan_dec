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
/* compiled from: FriendChangePlayStateNotification.java */
/* loaded from: classes2.dex */
public final class v extends GeneratedMessageLite<v, b> implements w {

    /* renamed from: c  reason: collision with root package name */
    public static final int f61927c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f61928d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final v f61929e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<v> f61930f;

    /* renamed from: a  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f61931a;

    /* renamed from: b  reason: collision with root package name */
    private d1 f61932b;

    /* compiled from: FriendChangePlayStateNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61933a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61933a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61933a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61933a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61933a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61933a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61933a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61933a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61933a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: FriendChangePlayStateNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<v, b> implements w {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.w
        public boolean Q() {
            return ((v) this.instance).Q();
        }

        public b S2() {
            copyOnWrite();
            ((v) this.instance).b3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((v) this.instance).clearState();
            return this;
        }

        public b U2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((v) this.instance).d3(aVar);
            return this;
        }

        public b V2(d1 d1Var) {
            copyOnWrite();
            ((v) this.instance).e3(d1Var);
            return this;
        }

        public b W2(a.b bVar) {
            copyOnWrite();
            ((v) this.instance).r3(bVar);
            return this;
        }

        public b X2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((v) this.instance).s3(aVar);
            return this;
        }

        public b Y2(d1.b bVar) {
            copyOnWrite();
            ((v) this.instance).t3(bVar);
            return this;
        }

        public b Z2(d1 d1Var) {
            copyOnWrite();
            ((v) this.instance).u3(d1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.w
        public boolean e() {
            return ((v) this.instance).e();
        }

        @Override // com.wufan.friend.chat.protocol.w
        public com.wufan.friend.chat.protocol.a g() {
            return ((v) this.instance).g();
        }

        @Override // com.wufan.friend.chat.protocol.w
        public d1 getState() {
            return ((v) this.instance).getState();
        }

        private b() {
            super(v.f61929e);
        }
    }

    static {
        v vVar = new v();
        f61929e = vVar;
        vVar.makeImmutable();
    }

    private v() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3() {
        this.f61931a = null;
    }

    public static v c3() {
        return f61929e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.f61932b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f61931a;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f61931a = com.wufan.friend.chat.protocol.a.p3(this.f61931a).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f61931a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3(d1 d1Var) {
        d1 d1Var2 = this.f61932b;
        if (d1Var2 != null && d1Var2 != d1.h3()) {
            this.f61932b = d1.j3(this.f61932b).mergeFrom((d1.b) d1Var).buildPartial();
        } else {
            this.f61932b = d1Var;
        }
    }

    public static b f3() {
        return f61929e.toBuilder();
    }

    public static b g3(v vVar) {
        return f61929e.toBuilder().mergeFrom((b) vVar);
    }

    public static v h3(InputStream inputStream) throws IOException {
        return (v) GeneratedMessageLite.parseDelimitedFrom(f61929e, inputStream);
    }

    public static v i3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (v) GeneratedMessageLite.parseDelimitedFrom(f61929e, inputStream, extensionRegistryLite);
    }

    public static v j3(ByteString byteString) throws InvalidProtocolBufferException {
        return (v) GeneratedMessageLite.parseFrom(f61929e, byteString);
    }

    public static v k3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (v) GeneratedMessageLite.parseFrom(f61929e, byteString, extensionRegistryLite);
    }

    public static v l3(CodedInputStream codedInputStream) throws IOException {
        return (v) GeneratedMessageLite.parseFrom(f61929e, codedInputStream);
    }

    public static v m3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (v) GeneratedMessageLite.parseFrom(f61929e, codedInputStream, extensionRegistryLite);
    }

    public static v n3(InputStream inputStream) throws IOException {
        return (v) GeneratedMessageLite.parseFrom(f61929e, inputStream);
    }

    public static v o3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (v) GeneratedMessageLite.parseFrom(f61929e, inputStream, extensionRegistryLite);
    }

    public static v p3(byte[] bArr) throws InvalidProtocolBufferException {
        return (v) GeneratedMessageLite.parseFrom(f61929e, bArr);
    }

    public static Parser<v> parser() {
        return f61929e.getParserForType();
    }

    public static v q3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (v) GeneratedMessageLite.parseFrom(f61929e, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3(a.b bVar) {
        this.f61931a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f61931a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(d1.b bVar) {
        this.f61932b = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(d1 d1Var) {
        Objects.requireNonNull(d1Var);
        this.f61932b = d1Var;
    }

    @Override // com.wufan.friend.chat.protocol.w
    public boolean Q() {
        return this.f61932b != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61933a[methodToInvoke.ordinal()]) {
            case 1:
                return new v();
            case 2:
                return f61929e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                v vVar = (v) obj2;
                this.f61931a = (com.wufan.friend.chat.protocol.a) visitor.visitMessage(this.f61931a, vVar.f61931a);
                this.f61932b = (d1) visitor.visitMessage(this.f61932b, vVar.f61932b);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z3 = false;
                while (!z3) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    com.wufan.friend.chat.protocol.a aVar = this.f61931a;
                                    a.b builder = aVar != null ? aVar.toBuilder() : null;
                                    com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                    this.f61931a = aVar2;
                                    if (builder != null) {
                                        builder.mergeFrom((a.b) aVar2);
                                        this.f61931a = builder.buildPartial();
                                    }
                                } else if (readTag != 18) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    d1 d1Var = this.f61932b;
                                    d1.b builder2 = d1Var != null ? d1Var.toBuilder() : null;
                                    d1 d1Var2 = (d1) codedInputStream.readMessage(d1.parser(), extensionRegistryLite);
                                    this.f61932b = d1Var2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom((d1.b) d1Var2);
                                        this.f61932b = builder2.buildPartial();
                                    }
                                }
                            }
                            z3 = true;
                        } catch (InvalidProtocolBufferException e4) {
                            throw new RuntimeException(e4.setUnfinishedMessage(this));
                        }
                    } catch (IOException e5) {
                        throw new RuntimeException(new InvalidProtocolBufferException(e5.getMessage()).setUnfinishedMessage(this));
                    }
                }
                break;
            case 7:
                break;
            case 8:
                if (f61930f == null) {
                    synchronized (v.class) {
                        if (f61930f == null) {
                            f61930f = new GeneratedMessageLite.DefaultInstanceBasedParser(f61929e);
                        }
                    }
                }
                return f61930f;
            default:
                throw new UnsupportedOperationException();
        }
        return f61929e;
    }

    @Override // com.wufan.friend.chat.protocol.w
    public boolean e() {
        return this.f61931a != null;
    }

    @Override // com.wufan.friend.chat.protocol.w
    public com.wufan.friend.chat.protocol.a g() {
        com.wufan.friend.chat.protocol.a aVar = this.f61931a;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61931a != null ? 0 + CodedOutputStream.computeMessageSize(1, g()) : 0;
        if (this.f61932b != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(2, getState());
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.wufan.friend.chat.protocol.w
    public d1 getState() {
        d1 d1Var = this.f61932b;
        return d1Var == null ? d1.h3() : d1Var;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61931a != null) {
            codedOutputStream.writeMessage(1, g());
        }
        if (this.f61932b != null) {
            codedOutputStream.writeMessage(2, getState());
        }
    }
}
