package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.t1;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: Request.java */
/* loaded from: classes2.dex */
public final class s1 extends GeneratedMessageLite<s1, b> implements v1 {

    /* renamed from: h  reason: collision with root package name */
    public static final int f61869h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f61870i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f61871j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f61872k = 4;

    /* renamed from: l  reason: collision with root package name */
    public static final int f61873l = 5;

    /* renamed from: m  reason: collision with root package name */
    public static final int f61874m = 6;

    /* renamed from: n  reason: collision with root package name */
    public static final int f61875n = 7;

    /* renamed from: o  reason: collision with root package name */
    private static final s1 f61876o;

    /* renamed from: p  reason: collision with root package name */
    private static volatile Parser<s1> f61877p;

    /* renamed from: a  reason: collision with root package name */
    private long f61878a;

    /* renamed from: b  reason: collision with root package name */
    private long f61879b;

    /* renamed from: c  reason: collision with root package name */
    private int f61880c;

    /* renamed from: d  reason: collision with root package name */
    private int f61881d;

    /* renamed from: e  reason: collision with root package name */
    private int f61882e;

    /* renamed from: f  reason: collision with root package name */
    private String f61883f = "";

    /* renamed from: g  reason: collision with root package name */
    private t1 f61884g;

    /* compiled from: Request.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61885a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61885a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61885a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61885a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61885a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61885a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61885a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61885a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61885a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: Request.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<s1, b> implements v1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public ServiceName A() {
            return ((s1) this.instance).A();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public int F() {
            return ((s1) this.instance).F();
        }

        public b S2() {
            copyOnWrite();
            ((s1) this.instance).n3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((s1) this.instance).o3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((s1) this.instance).p3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((s1) this.instance).clearPlatform();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((s1) this.instance).clearRequestId();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((s1) this.instance).q3();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((s1) this.instance).clearTimestamp();
            return this;
        }

        public b Z2(t1 t1Var) {
            copyOnWrite();
            ((s1) this.instance).s3(t1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public ByteString a() {
            return ((s1) this.instance).a();
        }

        public b a3(String str) {
            copyOnWrite();
            ((s1) this.instance).F3(str);
            return this;
        }

        public b b3(ByteString byteString) {
            copyOnWrite();
            ((s1) this.instance).G3(byteString);
            return this;
        }

        public b c3(t1.b bVar) {
            copyOnWrite();
            ((s1) this.instance).H3(bVar);
            return this;
        }

        public b d3(t1 t1Var) {
            copyOnWrite();
            ((s1) this.instance).I3(t1Var);
            return this;
        }

        public b e3(ServicePath servicePath) {
            copyOnWrite();
            ((s1) this.instance).J3(servicePath);
            return this;
        }

        public b f3(int i2) {
            copyOnWrite();
            ((s1) this.instance).K3(i2);
            return this;
        }

        public b g3(Platform platform) {
            copyOnWrite();
            ((s1) this.instance).L3(platform);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public String getAppVersion() {
            return ((s1) this.instance).getAppVersion();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public ServicePath getPath() {
            return ((s1) this.instance).getPath();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public Platform getPlatform() {
            return ((s1) this.instance).getPlatform();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public int getPlatformValue() {
            return ((s1) this.instance).getPlatformValue();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public long getRequestId() {
            return ((s1) this.instance).getRequestId();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public long getTimestamp() {
            return ((s1) this.instance).getTimestamp();
        }

        public b h3(int i2) {
            copyOnWrite();
            ((s1) this.instance).setPlatformValue(i2);
            return this;
        }

        public b i3(long j4) {
            copyOnWrite();
            ((s1) this.instance).setRequestId(j4);
            return this;
        }

        public b j3(ServiceName serviceName) {
            copyOnWrite();
            ((s1) this.instance).M3(serviceName);
            return this;
        }

        public b k3(int i2) {
            copyOnWrite();
            ((s1) this.instance).N3(i2);
            return this;
        }

        public b l3(long j4) {
            copyOnWrite();
            ((s1) this.instance).setTimestamp(j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public boolean v1() {
            return ((s1) this.instance).v1();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public t1 w1() {
            return ((s1) this.instance).w1();
        }

        @Override // com.wufan.friend.chat.protocol.v1
        public int y() {
            return ((s1) this.instance).y();
        }

        private b() {
            super(s1.f61876o);
        }
    }

    static {
        s1 s1Var = new s1();
        f61876o = s1Var;
        s1Var.makeImmutable();
    }

    private s1() {
    }

    public static s1 A3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (s1) GeneratedMessageLite.parseFrom(f61876o, codedInputStream, extensionRegistryLite);
    }

    public static s1 B3(InputStream inputStream) throws IOException {
        return (s1) GeneratedMessageLite.parseFrom(f61876o, inputStream);
    }

    public static s1 C3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (s1) GeneratedMessageLite.parseFrom(f61876o, inputStream, extensionRegistryLite);
    }

    public static s1 D3(byte[] bArr) throws InvalidProtocolBufferException {
        return (s1) GeneratedMessageLite.parseFrom(f61876o, bArr);
    }

    public static s1 E3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (s1) GeneratedMessageLite.parseFrom(f61876o, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F3(String str) {
        Objects.requireNonNull(str);
        this.f61883f = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61883f = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H3(t1.b bVar) {
        this.f61884g = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I3(t1 t1Var) {
        Objects.requireNonNull(t1Var);
        this.f61884g = t1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J3(ServicePath servicePath) {
        Objects.requireNonNull(servicePath);
        this.f61882e = servicePath.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K3(int i2) {
        this.f61882e = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L3(Platform platform) {
        Objects.requireNonNull(platform);
        this.f61880c = platform.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M3(ServiceName serviceName) {
        Objects.requireNonNull(serviceName);
        this.f61881d = serviceName.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N3(int i2) {
        this.f61881d = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlatform() {
        this.f61880c = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequestId() {
        this.f61878a = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTimestamp() {
        this.f61879b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3() {
        this.f61883f = r3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3() {
        this.f61884g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3() {
        this.f61882e = 0;
    }

    public static Parser<s1> parser() {
        return f61876o.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3() {
        this.f61881d = 0;
    }

    public static s1 r3() {
        return f61876o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(t1 t1Var) {
        t1 t1Var2 = this.f61884g;
        if (t1Var2 != null && t1Var2 != t1.R3()) {
            this.f61884g = t1.d4(this.f61884g).mergeFrom((t1.b) t1Var).buildPartial();
        } else {
            this.f61884g = t1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlatformValue(int i2) {
        this.f61880c = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestId(long j4) {
        this.f61878a = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimestamp(long j4) {
        this.f61879b = j4;
    }

    public static b t3() {
        return f61876o.toBuilder();
    }

    public static b u3(s1 s1Var) {
        return f61876o.toBuilder().mergeFrom((b) s1Var);
    }

    public static s1 v3(InputStream inputStream) throws IOException {
        return (s1) GeneratedMessageLite.parseDelimitedFrom(f61876o, inputStream);
    }

    public static s1 w3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (s1) GeneratedMessageLite.parseDelimitedFrom(f61876o, inputStream, extensionRegistryLite);
    }

    public static s1 x3(ByteString byteString) throws InvalidProtocolBufferException {
        return (s1) GeneratedMessageLite.parseFrom(f61876o, byteString);
    }

    public static s1 y3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (s1) GeneratedMessageLite.parseFrom(f61876o, byteString, extensionRegistryLite);
    }

    public static s1 z3(CodedInputStream codedInputStream) throws IOException {
        return (s1) GeneratedMessageLite.parseFrom(f61876o, codedInputStream);
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public ServiceName A() {
        ServiceName forNumber = ServiceName.forNumber(this.f61881d);
        return forNumber == null ? ServiceName.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public int F() {
        return this.f61882e;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f61883f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61885a[methodToInvoke.ordinal()]) {
            case 1:
                return new s1();
            case 2:
                return f61876o;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                s1 s1Var = (s1) obj2;
                long j4 = this.f61878a;
                boolean z3 = j4 != 0;
                long j5 = s1Var.f61878a;
                this.f61878a = visitor.visitLong(z3, j4, j5 != 0, j5);
                long j6 = this.f61879b;
                boolean z4 = j6 != 0;
                long j7 = s1Var.f61879b;
                this.f61879b = visitor.visitLong(z4, j6, j7 != 0, j7);
                int i2 = this.f61880c;
                boolean z5 = i2 != 0;
                int i4 = s1Var.f61880c;
                this.f61880c = visitor.visitInt(z5, i2, i4 != 0, i4);
                int i5 = this.f61881d;
                boolean z6 = i5 != 0;
                int i6 = s1Var.f61881d;
                this.f61881d = visitor.visitInt(z6, i5, i6 != 0, i6);
                int i7 = this.f61882e;
                boolean z7 = i7 != 0;
                int i8 = s1Var.f61882e;
                this.f61882e = visitor.visitInt(z7, i7, i8 != 0, i8);
                this.f61883f = visitor.visitString(!this.f61883f.isEmpty(), this.f61883f, !s1Var.f61883f.isEmpty(), s1Var.f61883f);
                this.f61884g = (t1) visitor.visitMessage(this.f61884g, s1Var.f61884g);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    this.f61878a = codedInputStream.readInt64();
                                } else if (readTag == 16) {
                                    this.f61879b = codedInputStream.readInt64();
                                } else if (readTag == 24) {
                                    this.f61880c = codedInputStream.readEnum();
                                } else if (readTag == 32) {
                                    this.f61881d = codedInputStream.readEnum();
                                } else if (readTag == 40) {
                                    this.f61882e = codedInputStream.readEnum();
                                } else if (readTag == 50) {
                                    this.f61883f = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 58) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    t1 t1Var = this.f61884g;
                                    t1.b builder = t1Var != null ? t1Var.toBuilder() : null;
                                    t1 t1Var2 = (t1) codedInputStream.readMessage(t1.parser(), extensionRegistryLite);
                                    this.f61884g = t1Var2;
                                    if (builder != null) {
                                        builder.mergeFrom((t1.b) t1Var2);
                                        this.f61884g = builder.buildPartial();
                                    }
                                }
                            }
                            r1 = true;
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
                if (f61877p == null) {
                    synchronized (s1.class) {
                        if (f61877p == null) {
                            f61877p = new GeneratedMessageLite.DefaultInstanceBasedParser(f61876o);
                        }
                    }
                }
                return f61877p;
            default:
                throw new UnsupportedOperationException();
        }
        return f61876o;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public String getAppVersion() {
        return this.f61883f;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public ServicePath getPath() {
        ServicePath forNumber = ServicePath.forNumber(this.f61882e);
        return forNumber == null ? ServicePath.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public Platform getPlatform() {
        Platform forNumber = Platform.forNumber(this.f61880c);
        return forNumber == null ? Platform.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public int getPlatformValue() {
        return this.f61880c;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public long getRequestId() {
        return this.f61878a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        long j4 = this.f61878a;
        int computeInt64Size = j4 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j4) : 0;
        long j5 = this.f61879b;
        if (j5 != 0) {
            computeInt64Size += CodedOutputStream.computeInt64Size(2, j5);
        }
        if (this.f61880c != Platform.UNDEFINED_PT.getNumber()) {
            computeInt64Size += CodedOutputStream.computeEnumSize(3, this.f61880c);
        }
        if (this.f61881d != ServiceName.UNDEFINED_SN.getNumber()) {
            computeInt64Size += CodedOutputStream.computeEnumSize(4, this.f61881d);
        }
        if (this.f61882e != ServicePath.UNDEFINED_SP.getNumber()) {
            computeInt64Size += CodedOutputStream.computeEnumSize(5, this.f61882e);
        }
        if (!this.f61883f.isEmpty()) {
            computeInt64Size += CodedOutputStream.computeStringSize(6, getAppVersion());
        }
        if (this.f61884g != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(7, w1());
        }
        this.memoizedSerializedSize = computeInt64Size;
        return computeInt64Size;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public long getTimestamp() {
        return this.f61879b;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public boolean v1() {
        return this.f61884g != null;
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public t1 w1() {
        t1 t1Var = this.f61884g;
        return t1Var == null ? t1.R3() : t1Var;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j4 = this.f61878a;
        if (j4 != 0) {
            codedOutputStream.writeInt64(1, j4);
        }
        long j5 = this.f61879b;
        if (j5 != 0) {
            codedOutputStream.writeInt64(2, j5);
        }
        if (this.f61880c != Platform.UNDEFINED_PT.getNumber()) {
            codedOutputStream.writeEnum(3, this.f61880c);
        }
        if (this.f61881d != ServiceName.UNDEFINED_SN.getNumber()) {
            codedOutputStream.writeEnum(4, this.f61881d);
        }
        if (this.f61882e != ServicePath.UNDEFINED_SP.getNumber()) {
            codedOutputStream.writeEnum(5, this.f61882e);
        }
        if (!this.f61883f.isEmpty()) {
            codedOutputStream.writeString(6, getAppVersion());
        }
        if (this.f61884g != null) {
            codedOutputStream.writeMessage(7, w1());
        }
    }

    @Override // com.wufan.friend.chat.protocol.v1
    public int y() {
        return this.f61881d;
    }
}
