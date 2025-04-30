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
/* compiled from: Friend.java */
/* loaded from: classes2.dex */
public final class r extends GeneratedMessageLite<r, b> implements b0 {

    /* renamed from: c  reason: collision with root package name */
    public static final int f61853c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f61854d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final r f61855e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<r> f61856f;

    /* renamed from: a  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f61857a;

    /* renamed from: b  reason: collision with root package name */
    private d1 f61858b;

    /* compiled from: Friend.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61859a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61859a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61859a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61859a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61859a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61859a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61859a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61859a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61859a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: Friend.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<r, b> implements b0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean Q() {
            return ((r) this.instance).Q();
        }

        public b S2() {
            copyOnWrite();
            ((r) this.instance).clearAccount();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((r) this.instance).clearState();
            return this;
        }

        public b U2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((r) this.instance).c3(aVar);
            return this;
        }

        public b V2(d1 d1Var) {
            copyOnWrite();
            ((r) this.instance).d3(d1Var);
            return this;
        }

        public b W2(a.b bVar) {
            copyOnWrite();
            ((r) this.instance).q3(bVar);
            return this;
        }

        public b X2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((r) this.instance).r3(aVar);
            return this;
        }

        public b Y2(d1.b bVar) {
            copyOnWrite();
            ((r) this.instance).s3(bVar);
            return this;
        }

        public b Z2(d1 d1Var) {
            copyOnWrite();
            ((r) this.instance).t3(d1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public com.wufan.friend.chat.protocol.a getAccount() {
            return ((r) this.instance).getAccount();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public d1 getState() {
            return ((r) this.instance).getState();
        }

        @Override // com.wufan.friend.chat.protocol.b0
        public boolean hasAccount() {
            return ((r) this.instance).hasAccount();
        }

        private b() {
            super(r.f61855e);
        }
    }

    static {
        r rVar = new r();
        f61855e = rVar;
        rVar.makeImmutable();
    }

    private r() {
    }

    public static r b3() {
        return f61855e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f61857a;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f61857a = com.wufan.friend.chat.protocol.a.p3(this.f61857a).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f61857a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAccount() {
        this.f61857a = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.f61858b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3(d1 d1Var) {
        d1 d1Var2 = this.f61858b;
        if (d1Var2 != null && d1Var2 != d1.h3()) {
            this.f61858b = d1.j3(this.f61858b).mergeFrom((d1.b) d1Var).buildPartial();
        } else {
            this.f61858b = d1Var;
        }
    }

    public static b e3() {
        return f61855e.toBuilder();
    }

    public static b f3(r rVar) {
        return f61855e.toBuilder().mergeFrom((b) rVar);
    }

    public static r g3(InputStream inputStream) throws IOException {
        return (r) GeneratedMessageLite.parseDelimitedFrom(f61855e, inputStream);
    }

    public static r h3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (r) GeneratedMessageLite.parseDelimitedFrom(f61855e, inputStream, extensionRegistryLite);
    }

    public static r i3(ByteString byteString) throws InvalidProtocolBufferException {
        return (r) GeneratedMessageLite.parseFrom(f61855e, byteString);
    }

    public static r j3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (r) GeneratedMessageLite.parseFrom(f61855e, byteString, extensionRegistryLite);
    }

    public static r k3(CodedInputStream codedInputStream) throws IOException {
        return (r) GeneratedMessageLite.parseFrom(f61855e, codedInputStream);
    }

    public static r l3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (r) GeneratedMessageLite.parseFrom(f61855e, codedInputStream, extensionRegistryLite);
    }

    public static r m3(InputStream inputStream) throws IOException {
        return (r) GeneratedMessageLite.parseFrom(f61855e, inputStream);
    }

    public static r n3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (r) GeneratedMessageLite.parseFrom(f61855e, inputStream, extensionRegistryLite);
    }

    public static r o3(byte[] bArr) throws InvalidProtocolBufferException {
        return (r) GeneratedMessageLite.parseFrom(f61855e, bArr);
    }

    public static r p3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (r) GeneratedMessageLite.parseFrom(f61855e, bArr, extensionRegistryLite);
    }

    public static Parser<r> parser() {
        return f61855e.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3(a.b bVar) {
        this.f61857a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f61857a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(d1.b bVar) {
        this.f61858b = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(d1 d1Var) {
        Objects.requireNonNull(d1Var);
        this.f61858b = d1Var;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean Q() {
        return this.f61858b != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61859a[methodToInvoke.ordinal()]) {
            case 1:
                return new r();
            case 2:
                return f61855e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                r rVar = (r) obj2;
                this.f61857a = (com.wufan.friend.chat.protocol.a) visitor.visitMessage(this.f61857a, rVar.f61857a);
                this.f61858b = (d1) visitor.visitMessage(this.f61858b, rVar.f61858b);
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
                                    com.wufan.friend.chat.protocol.a aVar = this.f61857a;
                                    a.b builder = aVar != null ? aVar.toBuilder() : null;
                                    com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                    this.f61857a = aVar2;
                                    if (builder != null) {
                                        builder.mergeFrom((a.b) aVar2);
                                        this.f61857a = builder.buildPartial();
                                    }
                                } else if (readTag != 18) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    d1 d1Var = this.f61858b;
                                    d1.b builder2 = d1Var != null ? d1Var.toBuilder() : null;
                                    d1 d1Var2 = (d1) codedInputStream.readMessage(d1.parser(), extensionRegistryLite);
                                    this.f61858b = d1Var2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom((d1.b) d1Var2);
                                        this.f61858b = builder2.buildPartial();
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
                if (f61856f == null) {
                    synchronized (r.class) {
                        if (f61856f == null) {
                            f61856f = new GeneratedMessageLite.DefaultInstanceBasedParser(f61855e);
                        }
                    }
                }
                return f61856f;
            default:
                throw new UnsupportedOperationException();
        }
        return f61855e;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public com.wufan.friend.chat.protocol.a getAccount() {
        com.wufan.friend.chat.protocol.a aVar = this.f61857a;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61857a != null ? 0 + CodedOutputStream.computeMessageSize(1, getAccount()) : 0;
        if (this.f61858b != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(2, getState());
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public d1 getState() {
        d1 d1Var = this.f61858b;
        return d1Var == null ? d1.h3() : d1Var;
    }

    @Override // com.wufan.friend.chat.protocol.b0
    public boolean hasAccount() {
        return this.f61857a != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61857a != null) {
            codedOutputStream.writeMessage(1, getAccount());
        }
        if (this.f61858b != null) {
            codedOutputStream.writeMessage(2, getState());
        }
    }
}
