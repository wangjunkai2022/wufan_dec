package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: TheThirdPartyRegisterRequestParameters.java */
/* loaded from: classes2.dex */
public final class j0 extends GeneratedMessageLite<j0, b> implements k0 {

    /* renamed from: i  reason: collision with root package name */
    public static final int f62118i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f62119j = 2;

    /* renamed from: k  reason: collision with root package name */
    public static final int f62120k = 3;

    /* renamed from: l  reason: collision with root package name */
    public static final int f62121l = 4;

    /* renamed from: m  reason: collision with root package name */
    public static final int f62122m = 5;

    /* renamed from: n  reason: collision with root package name */
    public static final int f62123n = 6;

    /* renamed from: o  reason: collision with root package name */
    public static final int f62124o = 7;

    /* renamed from: p  reason: collision with root package name */
    public static final int f62125p = 8;

    /* renamed from: q  reason: collision with root package name */
    private static final j0 f62126q;

    /* renamed from: r  reason: collision with root package name */
    private static volatile Parser<j0> f62127r;

    /* renamed from: d  reason: collision with root package name */
    private int f62131d;

    /* renamed from: a  reason: collision with root package name */
    private String f62128a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f62129b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f62130c = "";

    /* renamed from: e  reason: collision with root package name */
    private String f62132e = "";

    /* renamed from: f  reason: collision with root package name */
    private String f62133f = "";

    /* renamed from: g  reason: collision with root package name */
    private String f62134g = "";

    /* renamed from: h  reason: collision with root package name */
    private String f62135h = "";

    /* compiled from: TheThirdPartyRegisterRequestParameters.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62136a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62136a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62136a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62136a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62136a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62136a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62136a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62136a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62136a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: TheThirdPartyRegisterRequestParameters.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<j0, b> implements k0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public String D() {
            return ((j0) this.instance).D();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public ByteString G() {
            return ((j0) this.instance).G();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public TheThirdPartLoginType K() {
            return ((j0) this.instance).K();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public String P() {
            return ((j0) this.instance).P();
        }

        public b S2() {
            copyOnWrite();
            ((j0) this.instance).clearAccount();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((j0) this.instance).r3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((j0) this.instance).s3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((j0) this.instance).clearPassword();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((j0) this.instance).t3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((j0) this.instance).u3();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((j0) this.instance).v3();
            return this;
        }

        public b Z2() {
            copyOnWrite();
            ((j0) this.instance).w3();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.k0
        public ByteString a() {
            return ((j0) this.instance).a();
        }

        public b a3(String str) {
            copyOnWrite();
            ((j0) this.instance).K3(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.k0
        public ByteString b() {
            return ((j0) this.instance).b();
        }

        public b b3(ByteString byteString) {
            copyOnWrite();
            ((j0) this.instance).L3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.k0
        public String c() {
            return ((j0) this.instance).c();
        }

        public b c3(String str) {
            copyOnWrite();
            ((j0) this.instance).M3(str);
            return this;
        }

        public b d3(ByteString byteString) {
            copyOnWrite();
            ((j0) this.instance).N3(byteString);
            return this;
        }

        public b e3(String str) {
            copyOnWrite();
            ((j0) this.instance).O3(str);
            return this;
        }

        public b f3(ByteString byteString) {
            copyOnWrite();
            ((j0) this.instance).P3(byteString);
            return this;
        }

        public b g3(String str) {
            copyOnWrite();
            ((j0) this.instance).setPassword(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.k0
        public String getAccount() {
            return ((j0) this.instance).getAccount();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public String getAppVersion() {
            return ((j0) this.instance).getAppVersion();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public String getPassword() {
            return ((j0) this.instance).getPassword();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public ByteString getPasswordBytes() {
            return ((j0) this.instance).getPasswordBytes();
        }

        public b h3(ByteString byteString) {
            copyOnWrite();
            ((j0) this.instance).setPasswordBytes(byteString);
            return this;
        }

        public b i3(String str) {
            copyOnWrite();
            ((j0) this.instance).Q3(str);
            return this;
        }

        public b j3(ByteString byteString) {
            copyOnWrite();
            ((j0) this.instance).R3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.k0
        public ByteString k() {
            return ((j0) this.instance).k();
        }

        public b k3(String str) {
            copyOnWrite();
            ((j0) this.instance).S3(str);
            return this;
        }

        public b l3(ByteString byteString) {
            copyOnWrite();
            ((j0) this.instance).T3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.k0
        public String m() {
            return ((j0) this.instance).m();
        }

        public b m3(TheThirdPartLoginType theThirdPartLoginType) {
            copyOnWrite();
            ((j0) this.instance).U3(theThirdPartLoginType);
            return this;
        }

        public b n3(int i2) {
            copyOnWrite();
            ((j0) this.instance).V3(i2);
            return this;
        }

        public b o3(String str) {
            copyOnWrite();
            ((j0) this.instance).W3(str);
            return this;
        }

        public b p3(ByteString byteString) {
            copyOnWrite();
            ((j0) this.instance).X3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.k0
        public int s() {
            return ((j0) this.instance).s();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public ByteString v() {
            return ((j0) this.instance).v();
        }

        @Override // com.wufan.user.service.protobuf.k0
        public ByteString x() {
            return ((j0) this.instance).x();
        }

        private b() {
            super(j0.f62126q);
        }
    }

    static {
        j0 j0Var = new j0();
        f62126q = j0Var;
        j0Var.makeImmutable();
    }

    private j0() {
    }

    public static j0 A3(InputStream inputStream) throws IOException {
        return (j0) GeneratedMessageLite.parseDelimitedFrom(f62126q, inputStream);
    }

    public static j0 B3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (j0) GeneratedMessageLite.parseDelimitedFrom(f62126q, inputStream, extensionRegistryLite);
    }

    public static j0 C3(ByteString byteString) throws InvalidProtocolBufferException {
        return (j0) GeneratedMessageLite.parseFrom(f62126q, byteString);
    }

    public static j0 D3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (j0) GeneratedMessageLite.parseFrom(f62126q, byteString, extensionRegistryLite);
    }

    public static j0 E3(CodedInputStream codedInputStream) throws IOException {
        return (j0) GeneratedMessageLite.parseFrom(f62126q, codedInputStream);
    }

    public static j0 F3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (j0) GeneratedMessageLite.parseFrom(f62126q, codedInputStream, extensionRegistryLite);
    }

    public static j0 G3(InputStream inputStream) throws IOException {
        return (j0) GeneratedMessageLite.parseFrom(f62126q, inputStream);
    }

    public static j0 H3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (j0) GeneratedMessageLite.parseFrom(f62126q, inputStream, extensionRegistryLite);
    }

    public static j0 I3(byte[] bArr) throws InvalidProtocolBufferException {
        return (j0) GeneratedMessageLite.parseFrom(f62126q, bArr);
    }

    public static j0 J3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (j0) GeneratedMessageLite.parseFrom(f62126q, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K3(String str) {
        Objects.requireNonNull(str);
        this.f62128a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62128a = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M3(String str) {
        Objects.requireNonNull(str);
        this.f62135h = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62135h = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O3(String str) {
        Objects.requireNonNull(str);
        this.f62133f = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62133f = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q3(String str) {
        Objects.requireNonNull(str);
        this.f62134g = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62134g = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S3(String str) {
        Objects.requireNonNull(str);
        this.f62132e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62132e = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U3(TheThirdPartLoginType theThirdPartLoginType) {
        Objects.requireNonNull(theThirdPartLoginType);
        this.f62131d = theThirdPartLoginType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V3(int i2) {
        this.f62131d = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W3(String str) {
        Objects.requireNonNull(str);
        this.f62130c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62130c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAccount() {
        this.f62128a = x3().getAccount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPassword() {
        this.f62129b = x3().getPassword();
    }

    public static Parser<j0> parser() {
        return f62126q.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3() {
        this.f62135h = x3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3() {
        this.f62133f = x3().P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPassword(String str) {
        Objects.requireNonNull(str);
        this.f62129b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPasswordBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62129b = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3() {
        this.f62134g = x3().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3() {
        this.f62132e = x3().D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3() {
        this.f62131d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3() {
        this.f62130c = x3().m();
    }

    public static j0 x3() {
        return f62126q;
    }

    public static b y3() {
        return f62126q.toBuilder();
    }

    public static b z3(j0 j0Var) {
        return f62126q.toBuilder().mergeFrom((b) j0Var);
    }

    @Override // com.wufan.user.service.protobuf.k0
    public String D() {
        return this.f62132e;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public ByteString G() {
        return ByteString.copyFromUtf8(this.f62133f);
    }

    @Override // com.wufan.user.service.protobuf.k0
    public TheThirdPartLoginType K() {
        TheThirdPartLoginType forNumber = TheThirdPartLoginType.forNumber(this.f62131d);
        return forNumber == null ? TheThirdPartLoginType.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public String P() {
        return this.f62133f;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f62135h);
    }

    @Override // com.wufan.user.service.protobuf.k0
    public ByteString b() {
        return ByteString.copyFromUtf8(this.f62134g);
    }

    @Override // com.wufan.user.service.protobuf.k0
    public String c() {
        return this.f62134g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62136a[methodToInvoke.ordinal()]) {
            case 1:
                return new j0();
            case 2:
                return f62126q;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                j0 j0Var = (j0) obj2;
                this.f62128a = visitor.visitString(!this.f62128a.isEmpty(), this.f62128a, !j0Var.f62128a.isEmpty(), j0Var.f62128a);
                this.f62129b = visitor.visitString(!this.f62129b.isEmpty(), this.f62129b, !j0Var.f62129b.isEmpty(), j0Var.f62129b);
                this.f62130c = visitor.visitString(!this.f62130c.isEmpty(), this.f62130c, !j0Var.f62130c.isEmpty(), j0Var.f62130c);
                int i2 = this.f62131d;
                boolean z3 = i2 != 0;
                int i4 = j0Var.f62131d;
                this.f62131d = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62132e = visitor.visitString(!this.f62132e.isEmpty(), this.f62132e, !j0Var.f62132e.isEmpty(), j0Var.f62132e);
                this.f62133f = visitor.visitString(!this.f62133f.isEmpty(), this.f62133f, !j0Var.f62133f.isEmpty(), j0Var.f62133f);
                this.f62134g = visitor.visitString(!this.f62134g.isEmpty(), this.f62134g, !j0Var.f62134g.isEmpty(), j0Var.f62134g);
                this.f62135h = visitor.visitString(!this.f62135h.isEmpty(), this.f62135h, !j0Var.f62135h.isEmpty(), j0Var.f62135h);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.f62128a = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 18) {
                                this.f62129b = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 26) {
                                this.f62130c = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 32) {
                                this.f62131d = codedInputStream.readEnum();
                            } else if (readTag == 42) {
                                this.f62132e = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 50) {
                                this.f62133f = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 58) {
                                this.f62134g = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 66) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62135h = codedInputStream.readStringRequireUtf8();
                            }
                        }
                        r1 = true;
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
                if (f62127r == null) {
                    synchronized (j0.class) {
                        if (f62127r == null) {
                            f62127r = new GeneratedMessageLite.DefaultInstanceBasedParser(f62126q);
                        }
                    }
                }
                return f62127r;
            default:
                throw new UnsupportedOperationException();
        }
        return f62126q;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public String getAccount() {
        return this.f62128a;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public String getAppVersion() {
        return this.f62135h;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public String getPassword() {
        return this.f62129b;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public ByteString getPasswordBytes() {
        return ByteString.copyFromUtf8(this.f62129b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.f62128a.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, getAccount());
        if (!this.f62129b.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(2, getPassword());
        }
        if (!this.f62130c.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(3, m());
        }
        if (this.f62131d != TheThirdPartLoginType.T_PAPA.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(4, this.f62131d);
        }
        if (!this.f62132e.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(5, D());
        }
        if (!this.f62133f.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(6, P());
        }
        if (!this.f62134g.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(7, c());
        }
        if (!this.f62135h.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(8, getAppVersion());
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public ByteString k() {
        return ByteString.copyFromUtf8(this.f62128a);
    }

    @Override // com.wufan.user.service.protobuf.k0
    public String m() {
        return this.f62130c;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public int s() {
        return this.f62131d;
    }

    @Override // com.wufan.user.service.protobuf.k0
    public ByteString v() {
        return ByteString.copyFromUtf8(this.f62130c);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.f62128a.isEmpty()) {
            codedOutputStream.writeString(1, getAccount());
        }
        if (!this.f62129b.isEmpty()) {
            codedOutputStream.writeString(2, getPassword());
        }
        if (!this.f62130c.isEmpty()) {
            codedOutputStream.writeString(3, m());
        }
        if (this.f62131d != TheThirdPartLoginType.T_PAPA.getNumber()) {
            codedOutputStream.writeEnum(4, this.f62131d);
        }
        if (!this.f62132e.isEmpty()) {
            codedOutputStream.writeString(5, D());
        }
        if (!this.f62133f.isEmpty()) {
            codedOutputStream.writeString(6, P());
        }
        if (!this.f62134g.isEmpty()) {
            codedOutputStream.writeString(7, c());
        }
        if (this.f62135h.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(8, getAppVersion());
    }

    @Override // com.wufan.user.service.protobuf.k0
    public ByteString x() {
        return ByteString.copyFromUtf8(this.f62132e);
    }
}
