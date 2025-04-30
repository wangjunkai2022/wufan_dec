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
/* compiled from: ChatMessageNotification.java */
/* loaded from: classes2.dex */
public final class m extends GeneratedMessageLite<m, b> implements n {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61813d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61814e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61815f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final m f61816g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<m> f61817h;

    /* renamed from: a  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f61818a;

    /* renamed from: b  reason: collision with root package name */
    private String f61819b = "";

    /* renamed from: c  reason: collision with root package name */
    private long f61820c;

    /* compiled from: ChatMessageNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61821a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61821a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61821a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61821a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61821a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61821a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61821a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61821a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61821a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: ChatMessageNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<m, b> implements n {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((m) this.instance).c3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((m) this.instance).clearMessage();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((m) this.instance).clearTimestamp();
            return this;
        }

        public b V2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((m) this.instance).e3(aVar);
            return this;
        }

        public b W2(a.b bVar) {
            copyOnWrite();
            ((m) this.instance).r3(bVar);
            return this;
        }

        public b X2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((m) this.instance).s3(aVar);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((m) this.instance).setMessage(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((m) this.instance).setMessageBytes(byteString);
            return this;
        }

        public b a3(long j4) {
            copyOnWrite();
            ((m) this.instance).setTimestamp(j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.n
        public boolean e() {
            return ((m) this.instance).e();
        }

        @Override // com.wufan.friend.chat.protocol.n
        public com.wufan.friend.chat.protocol.a g() {
            return ((m) this.instance).g();
        }

        @Override // com.wufan.friend.chat.protocol.n
        public String getMessage() {
            return ((m) this.instance).getMessage();
        }

        @Override // com.wufan.friend.chat.protocol.n
        public ByteString getMessageBytes() {
            return ((m) this.instance).getMessageBytes();
        }

        @Override // com.wufan.friend.chat.protocol.n
        public long getTimestamp() {
            return ((m) this.instance).getTimestamp();
        }

        private b() {
            super(m.f61816g);
        }
    }

    static {
        m mVar = new m();
        f61816g = mVar;
        mVar.makeImmutable();
    }

    private m() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3() {
        this.f61818a = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessage() {
        this.f61819b = d3().getMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTimestamp() {
        this.f61820c = 0L;
    }

    public static m d3() {
        return f61816g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f61818a;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f61818a = com.wufan.friend.chat.protocol.a.p3(this.f61818a).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f61818a = aVar;
        }
    }

    public static b f3() {
        return f61816g.toBuilder();
    }

    public static b g3(m mVar) {
        return f61816g.toBuilder().mergeFrom((b) mVar);
    }

    public static m h3(InputStream inputStream) throws IOException {
        return (m) GeneratedMessageLite.parseDelimitedFrom(f61816g, inputStream);
    }

    public static m i3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (m) GeneratedMessageLite.parseDelimitedFrom(f61816g, inputStream, extensionRegistryLite);
    }

    public static m j3(ByteString byteString) throws InvalidProtocolBufferException {
        return (m) GeneratedMessageLite.parseFrom(f61816g, byteString);
    }

    public static m k3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (m) GeneratedMessageLite.parseFrom(f61816g, byteString, extensionRegistryLite);
    }

    public static m l3(CodedInputStream codedInputStream) throws IOException {
        return (m) GeneratedMessageLite.parseFrom(f61816g, codedInputStream);
    }

    public static m m3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (m) GeneratedMessageLite.parseFrom(f61816g, codedInputStream, extensionRegistryLite);
    }

    public static m n3(InputStream inputStream) throws IOException {
        return (m) GeneratedMessageLite.parseFrom(f61816g, inputStream);
    }

    public static m o3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (m) GeneratedMessageLite.parseFrom(f61816g, inputStream, extensionRegistryLite);
    }

    public static m p3(byte[] bArr) throws InvalidProtocolBufferException {
        return (m) GeneratedMessageLite.parseFrom(f61816g, bArr);
    }

    public static Parser<m> parser() {
        return f61816g.getParserForType();
    }

    public static m q3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (m) GeneratedMessageLite.parseFrom(f61816g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3(a.b bVar) {
        this.f61818a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f61818a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessage(String str) {
        Objects.requireNonNull(str);
        this.f61819b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessageBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61819b = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimestamp(long j4) {
        this.f61820c = j4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f61821a[methodToInvoke.ordinal()]) {
            case 1:
                return new m();
            case 2:
                return f61816g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                m mVar = (m) obj2;
                this.f61818a = (com.wufan.friend.chat.protocol.a) visitor.visitMessage(this.f61818a, mVar.f61818a);
                this.f61819b = visitor.visitString(!this.f61819b.isEmpty(), this.f61819b, !mVar.f61819b.isEmpty(), mVar.f61819b);
                long j4 = this.f61820c;
                boolean z4 = j4 != 0;
                long j5 = mVar.f61820c;
                this.f61820c = visitor.visitLong(z4, j4, j5 != 0, j5);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                com.wufan.friend.chat.protocol.a aVar = this.f61818a;
                                a.b builder = aVar != null ? aVar.toBuilder() : null;
                                com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                this.f61818a = aVar2;
                                if (builder != null) {
                                    builder.mergeFrom((a.b) aVar2);
                                    this.f61818a = builder.buildPartial();
                                }
                            } else if (readTag == 18) {
                                this.f61819b = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 24) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61820c = codedInputStream.readInt64();
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
                if (f61817h == null) {
                    synchronized (m.class) {
                        if (f61817h == null) {
                            f61817h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61816g);
                        }
                    }
                }
                return f61817h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61816g;
    }

    @Override // com.wufan.friend.chat.protocol.n
    public boolean e() {
        return this.f61818a != null;
    }

    @Override // com.wufan.friend.chat.protocol.n
    public com.wufan.friend.chat.protocol.a g() {
        com.wufan.friend.chat.protocol.a aVar = this.f61818a;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.wufan.friend.chat.protocol.n
    public String getMessage() {
        return this.f61819b;
    }

    @Override // com.wufan.friend.chat.protocol.n
    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.f61819b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61818a != null ? 0 + CodedOutputStream.computeMessageSize(1, g()) : 0;
        if (!this.f61819b.isEmpty()) {
            computeMessageSize += CodedOutputStream.computeStringSize(2, getMessage());
        }
        long j4 = this.f61820c;
        if (j4 != 0) {
            computeMessageSize += CodedOutputStream.computeInt64Size(3, j4);
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.wufan.friend.chat.protocol.n
    public long getTimestamp() {
        return this.f61820c;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61818a != null) {
            codedOutputStream.writeMessage(1, g());
        }
        if (!this.f61819b.isEmpty()) {
            codedOutputStream.writeString(2, getMessage());
        }
        long j4 = this.f61820c;
        if (j4 != 0) {
            codedOutputStream.writeInt64(3, j4);
        }
    }
}
