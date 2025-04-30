package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.user.service.protobuf.enumeration.LoginType;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: UserRegStatusRequestArgs.java */
/* loaded from: classes2.dex */
public final class q0 extends GeneratedMessageLite<q0, b> implements r0 {

    /* renamed from: e  reason: collision with root package name */
    public static final int f62208e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62209f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f62210g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62211h = 4;

    /* renamed from: i  reason: collision with root package name */
    private static final q0 f62212i;

    /* renamed from: j  reason: collision with root package name */
    private static volatile Parser<q0> f62213j;

    /* renamed from: b  reason: collision with root package name */
    private int f62215b;

    /* renamed from: a  reason: collision with root package name */
    private String f62214a = "";

    /* renamed from: c  reason: collision with root package name */
    private String f62216c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f62217d = "";

    /* compiled from: UserRegStatusRequestArgs.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62218a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62218a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62218a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62218a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62218a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62218a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62218a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62218a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62218a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: UserRegStatusRequestArgs.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<q0, b> implements r0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.user.service.protobuf.r0
        public String N2() {
            return ((q0) this.instance).N2();
        }

        public b S2() {
            copyOnWrite();
            ((q0) this.instance).f3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((q0) this.instance).g3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((q0) this.instance).h3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((q0) this.instance).i3();
            return this;
        }

        public b W2(String str) {
            copyOnWrite();
            ((q0) this.instance).w3(str);
            return this;
        }

        public b X2(ByteString byteString) {
            copyOnWrite();
            ((q0) this.instance).x3(byteString);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((q0) this.instance).y3(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((q0) this.instance).z3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.r0
        public ByteString a() {
            return ((q0) this.instance).a();
        }

        public b a3(LoginType loginType) {
            copyOnWrite();
            ((q0) this.instance).A3(loginType);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.r0
        public ByteString b() {
            return ((q0) this.instance).b();
        }

        public b b3(int i2) {
            copyOnWrite();
            ((q0) this.instance).B3(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.r0
        public String c() {
            return ((q0) this.instance).c();
        }

        public b c3(String str) {
            copyOnWrite();
            ((q0) this.instance).C3(str);
            return this;
        }

        public b d3(ByteString byteString) {
            copyOnWrite();
            ((q0) this.instance).D3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.r0
        public String getAppVersion() {
            return ((q0) this.instance).getAppVersion();
        }

        @Override // com.wufan.user.service.protobuf.r0
        public LoginType m0() {
            return ((q0) this.instance).m0();
        }

        @Override // com.wufan.user.service.protobuf.r0
        public int w0() {
            return ((q0) this.instance).w0();
        }

        @Override // com.wufan.user.service.protobuf.r0
        public ByteString y2() {
            return ((q0) this.instance).y2();
        }

        private b() {
            super(q0.f62212i);
        }
    }

    static {
        q0 q0Var = new q0();
        f62212i = q0Var;
        q0Var.makeImmutable();
    }

    private q0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(LoginType loginType) {
        Objects.requireNonNull(loginType);
        this.f62215b = loginType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B3(int i2) {
        this.f62215b = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(String str) {
        Objects.requireNonNull(str);
        this.f62216c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62216c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f62217d = j3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3() {
        this.f62214a = j3().N2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3() {
        this.f62215b = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i3() {
        this.f62216c = j3().c();
    }

    public static q0 j3() {
        return f62212i;
    }

    public static b k3() {
        return f62212i.toBuilder();
    }

    public static b l3(q0 q0Var) {
        return f62212i.toBuilder().mergeFrom((b) q0Var);
    }

    public static q0 m3(InputStream inputStream) throws IOException {
        return (q0) GeneratedMessageLite.parseDelimitedFrom(f62212i, inputStream);
    }

    public static q0 n3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (q0) GeneratedMessageLite.parseDelimitedFrom(f62212i, inputStream, extensionRegistryLite);
    }

    public static q0 o3(ByteString byteString) throws InvalidProtocolBufferException {
        return (q0) GeneratedMessageLite.parseFrom(f62212i, byteString);
    }

    public static q0 p3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (q0) GeneratedMessageLite.parseFrom(f62212i, byteString, extensionRegistryLite);
    }

    public static Parser<q0> parser() {
        return f62212i.getParserForType();
    }

    public static q0 q3(CodedInputStream codedInputStream) throws IOException {
        return (q0) GeneratedMessageLite.parseFrom(f62212i, codedInputStream);
    }

    public static q0 r3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (q0) GeneratedMessageLite.parseFrom(f62212i, codedInputStream, extensionRegistryLite);
    }

    public static q0 s3(InputStream inputStream) throws IOException {
        return (q0) GeneratedMessageLite.parseFrom(f62212i, inputStream);
    }

    public static q0 t3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (q0) GeneratedMessageLite.parseFrom(f62212i, inputStream, extensionRegistryLite);
    }

    public static q0 u3(byte[] bArr) throws InvalidProtocolBufferException {
        return (q0) GeneratedMessageLite.parseFrom(f62212i, bArr);
    }

    public static q0 v3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (q0) GeneratedMessageLite.parseFrom(f62212i, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(String str) {
        Objects.requireNonNull(str);
        this.f62217d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62217d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(String str) {
        Objects.requireNonNull(str);
        this.f62214a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62214a = byteString.toStringUtf8();
    }

    @Override // com.wufan.user.service.protobuf.r0
    public String N2() {
        return this.f62214a;
    }

    @Override // com.wufan.user.service.protobuf.r0
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f62217d);
    }

    @Override // com.wufan.user.service.protobuf.r0
    public ByteString b() {
        return ByteString.copyFromUtf8(this.f62216c);
    }

    @Override // com.wufan.user.service.protobuf.r0
    public String c() {
        return this.f62216c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62218a[methodToInvoke.ordinal()]) {
            case 1:
                return new q0();
            case 2:
                return f62212i;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                q0 q0Var = (q0) obj2;
                this.f62214a = visitor.visitString(!this.f62214a.isEmpty(), this.f62214a, !q0Var.f62214a.isEmpty(), q0Var.f62214a);
                int i2 = this.f62215b;
                boolean z3 = i2 != 0;
                int i4 = q0Var.f62215b;
                this.f62215b = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62216c = visitor.visitString(!this.f62216c.isEmpty(), this.f62216c, !q0Var.f62216c.isEmpty(), q0Var.f62216c);
                this.f62217d = visitor.visitString(!this.f62217d.isEmpty(), this.f62217d, !q0Var.f62217d.isEmpty(), q0Var.f62217d);
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
                                if (readTag == 10) {
                                    this.f62214a = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 16) {
                                    this.f62215b = codedInputStream.readEnum();
                                } else if (readTag == 26) {
                                    this.f62216c = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 34) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.f62217d = codedInputStream.readStringRequireUtf8();
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
                if (f62213j == null) {
                    synchronized (q0.class) {
                        if (f62213j == null) {
                            f62213j = new GeneratedMessageLite.DefaultInstanceBasedParser(f62212i);
                        }
                    }
                }
                return f62213j;
            default:
                throw new UnsupportedOperationException();
        }
        return f62212i;
    }

    @Override // com.wufan.user.service.protobuf.r0
    public String getAppVersion() {
        return this.f62217d;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.f62214a.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, N2());
        if (this.f62215b != LoginType.QQ.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(2, this.f62215b);
        }
        if (!this.f62216c.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(3, c());
        }
        if (!this.f62217d.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(4, getAppVersion());
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.wufan.user.service.protobuf.r0
    public LoginType m0() {
        LoginType forNumber = LoginType.forNumber(this.f62215b);
        return forNumber == null ? LoginType.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.user.service.protobuf.r0
    public int w0() {
        return this.f62215b;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.f62214a.isEmpty()) {
            codedOutputStream.writeString(1, N2());
        }
        if (this.f62215b != LoginType.QQ.getNumber()) {
            codedOutputStream.writeEnum(2, this.f62215b);
        }
        if (!this.f62216c.isEmpty()) {
            codedOutputStream.writeString(3, c());
        }
        if (this.f62217d.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(4, getAppVersion());
    }

    @Override // com.wufan.user.service.protobuf.r0
    public ByteString y2() {
        return ByteString.copyFromUtf8(this.f62214a);
    }
}
