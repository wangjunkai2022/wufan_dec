package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: UserLoginRequestParameters.java */
/* loaded from: classes2.dex */
public final class n0 extends GeneratedMessageLite<n0, b> implements o0 {

    /* renamed from: e  reason: collision with root package name */
    public static final int f62197e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62198f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f62199g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62200h = 4;

    /* renamed from: i  reason: collision with root package name */
    private static final n0 f62201i;

    /* renamed from: j  reason: collision with root package name */
    private static volatile Parser<n0> f62202j;

    /* renamed from: a  reason: collision with root package name */
    private String f62203a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f62204b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f62205c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f62206d = "";

    /* compiled from: UserLoginRequestParameters.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62207a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62207a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62207a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62207a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62207a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62207a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62207a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62207a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62207a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: UserLoginRequestParameters.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<n0, b> implements o0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((n0) this.instance).clearAccount();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((n0) this.instance).f3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((n0) this.instance).clearPassword();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((n0) this.instance).g3();
            return this;
        }

        public b W2(String str) {
            copyOnWrite();
            ((n0) this.instance).u3(str);
            return this;
        }

        public b X2(ByteString byteString) {
            copyOnWrite();
            ((n0) this.instance).v3(byteString);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((n0) this.instance).w3(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((n0) this.instance).x3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.o0
        public ByteString a() {
            return ((n0) this.instance).a();
        }

        public b a3(String str) {
            copyOnWrite();
            ((n0) this.instance).setPassword(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.o0
        public ByteString b() {
            return ((n0) this.instance).b();
        }

        public b b3(ByteString byteString) {
            copyOnWrite();
            ((n0) this.instance).setPasswordBytes(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.o0
        public String c() {
            return ((n0) this.instance).c();
        }

        public b c3(String str) {
            copyOnWrite();
            ((n0) this.instance).y3(str);
            return this;
        }

        public b d3(ByteString byteString) {
            copyOnWrite();
            ((n0) this.instance).z3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.o0
        public String getAccount() {
            return ((n0) this.instance).getAccount();
        }

        @Override // com.wufan.user.service.protobuf.o0
        public String getAppVersion() {
            return ((n0) this.instance).getAppVersion();
        }

        @Override // com.wufan.user.service.protobuf.o0
        public String getPassword() {
            return ((n0) this.instance).getPassword();
        }

        @Override // com.wufan.user.service.protobuf.o0
        public ByteString getPasswordBytes() {
            return ((n0) this.instance).getPasswordBytes();
        }

        @Override // com.wufan.user.service.protobuf.o0
        public ByteString k() {
            return ((n0) this.instance).k();
        }

        private b() {
            super(n0.f62201i);
        }
    }

    static {
        n0 n0Var = new n0();
        f62201i = n0Var;
        n0Var.makeImmutable();
    }

    private n0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAccount() {
        this.f62203a = h3().getAccount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPassword() {
        this.f62204b = h3().getPassword();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f62206d = h3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3() {
        this.f62205c = h3().c();
    }

    public static n0 h3() {
        return f62201i;
    }

    public static b i3() {
        return f62201i.toBuilder();
    }

    public static b j3(n0 n0Var) {
        return f62201i.toBuilder().mergeFrom((b) n0Var);
    }

    public static n0 k3(InputStream inputStream) throws IOException {
        return (n0) GeneratedMessageLite.parseDelimitedFrom(f62201i, inputStream);
    }

    public static n0 l3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n0) GeneratedMessageLite.parseDelimitedFrom(f62201i, inputStream, extensionRegistryLite);
    }

    public static n0 m3(ByteString byteString) throws InvalidProtocolBufferException {
        return (n0) GeneratedMessageLite.parseFrom(f62201i, byteString);
    }

    public static n0 n3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (n0) GeneratedMessageLite.parseFrom(f62201i, byteString, extensionRegistryLite);
    }

    public static n0 o3(CodedInputStream codedInputStream) throws IOException {
        return (n0) GeneratedMessageLite.parseFrom(f62201i, codedInputStream);
    }

    public static n0 p3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n0) GeneratedMessageLite.parseFrom(f62201i, codedInputStream, extensionRegistryLite);
    }

    public static Parser<n0> parser() {
        return f62201i.getParserForType();
    }

    public static n0 q3(InputStream inputStream) throws IOException {
        return (n0) GeneratedMessageLite.parseFrom(f62201i, inputStream);
    }

    public static n0 r3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n0) GeneratedMessageLite.parseFrom(f62201i, inputStream, extensionRegistryLite);
    }

    public static n0 s3(byte[] bArr) throws InvalidProtocolBufferException {
        return (n0) GeneratedMessageLite.parseFrom(f62201i, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPassword(String str) {
        Objects.requireNonNull(str);
        this.f62204b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPasswordBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62204b = byteString.toStringUtf8();
    }

    public static n0 t3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (n0) GeneratedMessageLite.parseFrom(f62201i, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(String str) {
        Objects.requireNonNull(str);
        this.f62203a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62203a = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(String str) {
        Objects.requireNonNull(str);
        this.f62206d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62206d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(String str) {
        Objects.requireNonNull(str);
        this.f62205c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62205c = byteString.toStringUtf8();
    }

    @Override // com.wufan.user.service.protobuf.o0
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f62206d);
    }

    @Override // com.wufan.user.service.protobuf.o0
    public ByteString b() {
        return ByteString.copyFromUtf8(this.f62205c);
    }

    @Override // com.wufan.user.service.protobuf.o0
    public String c() {
        return this.f62205c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62207a[methodToInvoke.ordinal()]) {
            case 1:
                return new n0();
            case 2:
                return f62201i;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                n0 n0Var = (n0) obj2;
                this.f62203a = visitor.visitString(!this.f62203a.isEmpty(), this.f62203a, !n0Var.f62203a.isEmpty(), n0Var.f62203a);
                this.f62204b = visitor.visitString(!this.f62204b.isEmpty(), this.f62204b, !n0Var.f62204b.isEmpty(), n0Var.f62204b);
                this.f62205c = visitor.visitString(!this.f62205c.isEmpty(), this.f62205c, !n0Var.f62205c.isEmpty(), n0Var.f62205c);
                this.f62206d = visitor.visitString(!this.f62206d.isEmpty(), this.f62206d, true ^ n0Var.f62206d.isEmpty(), n0Var.f62206d);
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
                                    this.f62203a = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.f62204b = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 26) {
                                    this.f62205c = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 34) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.f62206d = codedInputStream.readStringRequireUtf8();
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
                if (f62202j == null) {
                    synchronized (n0.class) {
                        if (f62202j == null) {
                            f62202j = new GeneratedMessageLite.DefaultInstanceBasedParser(f62201i);
                        }
                    }
                }
                return f62202j;
            default:
                throw new UnsupportedOperationException();
        }
        return f62201i;
    }

    @Override // com.wufan.user.service.protobuf.o0
    public String getAccount() {
        return this.f62203a;
    }

    @Override // com.wufan.user.service.protobuf.o0
    public String getAppVersion() {
        return this.f62206d;
    }

    @Override // com.wufan.user.service.protobuf.o0
    public String getPassword() {
        return this.f62204b;
    }

    @Override // com.wufan.user.service.protobuf.o0
    public ByteString getPasswordBytes() {
        return ByteString.copyFromUtf8(this.f62204b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.f62203a.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, getAccount());
        if (!this.f62204b.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(2, getPassword());
        }
        if (!this.f62205c.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(3, c());
        }
        if (!this.f62206d.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(4, getAppVersion());
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.wufan.user.service.protobuf.o0
    public ByteString k() {
        return ByteString.copyFromUtf8(this.f62203a);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.f62203a.isEmpty()) {
            codedOutputStream.writeString(1, getAccount());
        }
        if (!this.f62204b.isEmpty()) {
            codedOutputStream.writeString(2, getPassword());
        }
        if (!this.f62205c.isEmpty()) {
            codedOutputStream.writeString(3, c());
        }
        if (this.f62206d.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(4, getAppVersion());
    }
}
