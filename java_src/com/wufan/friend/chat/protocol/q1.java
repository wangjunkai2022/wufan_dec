package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.a;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: RejectBattleInviteNotification.java */
/* loaded from: classes2.dex */
public final class q1 extends GeneratedMessageLite<q1, b> implements r1 {

    /* renamed from: c  reason: collision with root package name */
    public static final int f61846c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f61847d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final q1 f61848e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<q1> f61849f;

    /* renamed from: a  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f61850a;

    /* renamed from: b  reason: collision with root package name */
    private String f61851b = "";

    /* compiled from: RejectBattleInviteNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61852a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61852a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61852a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61852a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61852a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61852a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61852a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61852a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61852a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: RejectBattleInviteNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<q1, b> implements r1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((q1) this.instance).a3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((q1) this.instance).clearMessage();
            return this;
        }

        public b U2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((q1) this.instance).c3(aVar);
            return this;
        }

        public b V2(a.b bVar) {
            copyOnWrite();
            ((q1) this.instance).p3(bVar);
            return this;
        }

        public b W2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((q1) this.instance).q3(aVar);
            return this;
        }

        public b X2(String str) {
            copyOnWrite();
            ((q1) this.instance).setMessage(str);
            return this;
        }

        public b Y2(ByteString byteString) {
            copyOnWrite();
            ((q1) this.instance).setMessageBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.r1
        public boolean e() {
            return ((q1) this.instance).e();
        }

        @Override // com.wufan.friend.chat.protocol.r1
        public com.wufan.friend.chat.protocol.a g() {
            return ((q1) this.instance).g();
        }

        @Override // com.wufan.friend.chat.protocol.r1
        public String getMessage() {
            return ((q1) this.instance).getMessage();
        }

        @Override // com.wufan.friend.chat.protocol.r1
        public ByteString getMessageBytes() {
            return ((q1) this.instance).getMessageBytes();
        }

        private b() {
            super(q1.f61848e);
        }
    }

    static {
        q1 q1Var = new q1();
        f61848e = q1Var;
        q1Var.makeImmutable();
    }

    private q1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a3() {
        this.f61850a = null;
    }

    public static q1 b3() {
        return f61848e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f61850a;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f61850a = com.wufan.friend.chat.protocol.a.p3(this.f61850a).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f61850a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessage() {
        this.f61851b = b3().getMessage();
    }

    public static b d3() {
        return f61848e.toBuilder();
    }

    public static b e3(q1 q1Var) {
        return f61848e.toBuilder().mergeFrom((b) q1Var);
    }

    public static q1 f3(InputStream inputStream) throws IOException {
        return (q1) GeneratedMessageLite.parseDelimitedFrom(f61848e, inputStream);
    }

    public static q1 g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (q1) GeneratedMessageLite.parseDelimitedFrom(f61848e, inputStream, extensionRegistryLite);
    }

    public static q1 h3(ByteString byteString) throws InvalidProtocolBufferException {
        return (q1) GeneratedMessageLite.parseFrom(f61848e, byteString);
    }

    public static q1 i3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (q1) GeneratedMessageLite.parseFrom(f61848e, byteString, extensionRegistryLite);
    }

    public static q1 j3(CodedInputStream codedInputStream) throws IOException {
        return (q1) GeneratedMessageLite.parseFrom(f61848e, codedInputStream);
    }

    public static q1 k3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (q1) GeneratedMessageLite.parseFrom(f61848e, codedInputStream, extensionRegistryLite);
    }

    public static q1 l3(InputStream inputStream) throws IOException {
        return (q1) GeneratedMessageLite.parseFrom(f61848e, inputStream);
    }

    public static q1 m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (q1) GeneratedMessageLite.parseFrom(f61848e, inputStream, extensionRegistryLite);
    }

    public static q1 n3(byte[] bArr) throws InvalidProtocolBufferException {
        return (q1) GeneratedMessageLite.parseFrom(f61848e, bArr);
    }

    public static q1 o3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (q1) GeneratedMessageLite.parseFrom(f61848e, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(a.b bVar) {
        this.f61850a = bVar.build();
    }

    public static Parser<q1> parser() {
        return f61848e.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f61850a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessage(String str) {
        Objects.requireNonNull(str);
        this.f61851b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessageBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61851b = byteString.toStringUtf8();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61852a[methodToInvoke.ordinal()]) {
            case 1:
                return new q1();
            case 2:
                return f61848e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                q1 q1Var = (q1) obj2;
                this.f61850a = (com.wufan.friend.chat.protocol.a) visitor.visitMessage(this.f61850a, q1Var.f61850a);
                this.f61851b = visitor.visitString(!this.f61851b.isEmpty(), this.f61851b, true ^ q1Var.f61851b.isEmpty(), q1Var.f61851b);
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
                                com.wufan.friend.chat.protocol.a aVar = this.f61850a;
                                a.b builder = aVar != null ? aVar.toBuilder() : null;
                                com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                this.f61850a = aVar2;
                                if (builder != null) {
                                    builder.mergeFrom((a.b) aVar2);
                                    this.f61850a = builder.buildPartial();
                                }
                            } else if (readTag != 18) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61851b = codedInputStream.readStringRequireUtf8();
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
                if (f61849f == null) {
                    synchronized (q1.class) {
                        if (f61849f == null) {
                            f61849f = new GeneratedMessageLite.DefaultInstanceBasedParser(f61848e);
                        }
                    }
                }
                return f61849f;
            default:
                throw new UnsupportedOperationException();
        }
        return f61848e;
    }

    @Override // com.wufan.friend.chat.protocol.r1
    public boolean e() {
        return this.f61850a != null;
    }

    @Override // com.wufan.friend.chat.protocol.r1
    public com.wufan.friend.chat.protocol.a g() {
        com.wufan.friend.chat.protocol.a aVar = this.f61850a;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.wufan.friend.chat.protocol.r1
    public String getMessage() {
        return this.f61851b;
    }

    @Override // com.wufan.friend.chat.protocol.r1
    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.f61851b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61850a != null ? 0 + CodedOutputStream.computeMessageSize(1, g()) : 0;
        if (!this.f61851b.isEmpty()) {
            computeMessageSize += CodedOutputStream.computeStringSize(2, getMessage());
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61850a != null) {
            codedOutputStream.writeMessage(1, g());
        }
        if (this.f61851b.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(2, getMessage());
    }
}
