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
/* compiled from: MobileRegisterRequestParameters.java */
/* loaded from: classes2.dex */
public final class x extends GeneratedMessageLite<x, b> implements y {

    /* renamed from: g  reason: collision with root package name */
    public static final int f62236g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62237h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f62238i = 3;

    /* renamed from: j  reason: collision with root package name */
    public static final int f62239j = 4;

    /* renamed from: k  reason: collision with root package name */
    public static final int f62240k = 5;

    /* renamed from: l  reason: collision with root package name */
    public static final int f62241l = 6;

    /* renamed from: m  reason: collision with root package name */
    private static final x f62242m;

    /* renamed from: n  reason: collision with root package name */
    private static volatile Parser<x> f62243n;

    /* renamed from: a  reason: collision with root package name */
    private String f62244a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f62245b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f62246c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f62247d = "";

    /* renamed from: e  reason: collision with root package name */
    private String f62248e = "";

    /* renamed from: f  reason: collision with root package name */
    private String f62249f = "";

    /* compiled from: MobileRegisterRequestParameters.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62250a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62250a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62250a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62250a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62250a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62250a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62250a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62250a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62250a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: MobileRegisterRequestParameters.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<x, b> implements y {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.user.service.protobuf.y
        public String D() {
            return ((x) this.instance).D();
        }

        @Override // com.wufan.user.service.protobuf.y
        public ByteString G() {
            return ((x) this.instance).G();
        }

        @Override // com.wufan.user.service.protobuf.y
        public String P() {
            return ((x) this.instance).P();
        }

        public b S2() {
            copyOnWrite();
            ((x) this.instance).clearAccount();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((x) this.instance).l3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((x) this.instance).m3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((x) this.instance).clearPassword();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((x) this.instance).n3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((x) this.instance).o3();
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((x) this.instance).C3(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((x) this.instance).D3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.y
        public ByteString a() {
            return ((x) this.instance).a();
        }

        public b a3(String str) {
            copyOnWrite();
            ((x) this.instance).E3(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.y
        public ByteString b() {
            return ((x) this.instance).b();
        }

        public b b3(ByteString byteString) {
            copyOnWrite();
            ((x) this.instance).F3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.y
        public String c() {
            return ((x) this.instance).c();
        }

        public b c3(String str) {
            copyOnWrite();
            ((x) this.instance).G3(str);
            return this;
        }

        public b d3(ByteString byteString) {
            copyOnWrite();
            ((x) this.instance).H3(byteString);
            return this;
        }

        public b e3(String str) {
            copyOnWrite();
            ((x) this.instance).setPassword(str);
            return this;
        }

        public b f3(ByteString byteString) {
            copyOnWrite();
            ((x) this.instance).setPasswordBytes(byteString);
            return this;
        }

        public b g3(String str) {
            copyOnWrite();
            ((x) this.instance).I3(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.y
        public String getAccount() {
            return ((x) this.instance).getAccount();
        }

        @Override // com.wufan.user.service.protobuf.y
        public String getAppVersion() {
            return ((x) this.instance).getAppVersion();
        }

        @Override // com.wufan.user.service.protobuf.y
        public String getPassword() {
            return ((x) this.instance).getPassword();
        }

        @Override // com.wufan.user.service.protobuf.y
        public ByteString getPasswordBytes() {
            return ((x) this.instance).getPasswordBytes();
        }

        public b h3(ByteString byteString) {
            copyOnWrite();
            ((x) this.instance).J3(byteString);
            return this;
        }

        public b i3(String str) {
            copyOnWrite();
            ((x) this.instance).K3(str);
            return this;
        }

        public b j3(ByteString byteString) {
            copyOnWrite();
            ((x) this.instance).L3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.y
        public ByteString k() {
            return ((x) this.instance).k();
        }

        @Override // com.wufan.user.service.protobuf.y
        public ByteString x() {
            return ((x) this.instance).x();
        }

        private b() {
            super(x.f62242m);
        }
    }

    static {
        x xVar = new x();
        f62242m = xVar;
        xVar.makeImmutable();
    }

    private x() {
    }

    public static x A3(byte[] bArr) throws InvalidProtocolBufferException {
        return (x) GeneratedMessageLite.parseFrom(f62242m, bArr);
    }

    public static x B3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (x) GeneratedMessageLite.parseFrom(f62242m, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(String str) {
        Objects.requireNonNull(str);
        this.f62244a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62244a = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E3(String str) {
        Objects.requireNonNull(str);
        this.f62249f = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62249f = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G3(String str) {
        Objects.requireNonNull(str);
        this.f62247d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62247d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I3(String str) {
        Objects.requireNonNull(str);
        this.f62248e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62248e = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K3(String str) {
        Objects.requireNonNull(str);
        this.f62246c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62246c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAccount() {
        this.f62244a = p3().getAccount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPassword() {
        this.f62245b = p3().getPassword();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l3() {
        this.f62249f = p3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3() {
        this.f62247d = p3().P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3() {
        this.f62248e = p3().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3() {
        this.f62246c = p3().D();
    }

    public static x p3() {
        return f62242m;
    }

    public static Parser<x> parser() {
        return f62242m.getParserForType();
    }

    public static b q3() {
        return f62242m.toBuilder();
    }

    public static b r3(x xVar) {
        return f62242m.toBuilder().mergeFrom((b) xVar);
    }

    public static x s3(InputStream inputStream) throws IOException {
        return (x) GeneratedMessageLite.parseDelimitedFrom(f62242m, inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPassword(String str) {
        Objects.requireNonNull(str);
        this.f62245b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPasswordBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62245b = byteString.toStringUtf8();
    }

    public static x t3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x) GeneratedMessageLite.parseDelimitedFrom(f62242m, inputStream, extensionRegistryLite);
    }

    public static x u3(ByteString byteString) throws InvalidProtocolBufferException {
        return (x) GeneratedMessageLite.parseFrom(f62242m, byteString);
    }

    public static x v3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (x) GeneratedMessageLite.parseFrom(f62242m, byteString, extensionRegistryLite);
    }

    public static x w3(CodedInputStream codedInputStream) throws IOException {
        return (x) GeneratedMessageLite.parseFrom(f62242m, codedInputStream);
    }

    public static x x3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x) GeneratedMessageLite.parseFrom(f62242m, codedInputStream, extensionRegistryLite);
    }

    public static x y3(InputStream inputStream) throws IOException {
        return (x) GeneratedMessageLite.parseFrom(f62242m, inputStream);
    }

    public static x z3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (x) GeneratedMessageLite.parseFrom(f62242m, inputStream, extensionRegistryLite);
    }

    @Override // com.wufan.user.service.protobuf.y
    public String D() {
        return this.f62246c;
    }

    @Override // com.wufan.user.service.protobuf.y
    public ByteString G() {
        return ByteString.copyFromUtf8(this.f62247d);
    }

    @Override // com.wufan.user.service.protobuf.y
    public String P() {
        return this.f62247d;
    }

    @Override // com.wufan.user.service.protobuf.y
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f62249f);
    }

    @Override // com.wufan.user.service.protobuf.y
    public ByteString b() {
        return ByteString.copyFromUtf8(this.f62248e);
    }

    @Override // com.wufan.user.service.protobuf.y
    public String c() {
        return this.f62248e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62250a[methodToInvoke.ordinal()]) {
            case 1:
                return new x();
            case 2:
                return f62242m;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                x xVar = (x) obj2;
                this.f62244a = visitor.visitString(!this.f62244a.isEmpty(), this.f62244a, !xVar.f62244a.isEmpty(), xVar.f62244a);
                this.f62245b = visitor.visitString(!this.f62245b.isEmpty(), this.f62245b, !xVar.f62245b.isEmpty(), xVar.f62245b);
                this.f62246c = visitor.visitString(!this.f62246c.isEmpty(), this.f62246c, !xVar.f62246c.isEmpty(), xVar.f62246c);
                this.f62247d = visitor.visitString(!this.f62247d.isEmpty(), this.f62247d, !xVar.f62247d.isEmpty(), xVar.f62247d);
                this.f62248e = visitor.visitString(!this.f62248e.isEmpty(), this.f62248e, !xVar.f62248e.isEmpty(), xVar.f62248e);
                this.f62249f = visitor.visitString(!this.f62249f.isEmpty(), this.f62249f, true ^ xVar.f62249f.isEmpty(), xVar.f62249f);
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
                                this.f62244a = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 18) {
                                this.f62245b = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 26) {
                                this.f62246c = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 34) {
                                this.f62247d = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 42) {
                                this.f62248e = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 50) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62249f = codedInputStream.readStringRequireUtf8();
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
                if (f62243n == null) {
                    synchronized (x.class) {
                        if (f62243n == null) {
                            f62243n = new GeneratedMessageLite.DefaultInstanceBasedParser(f62242m);
                        }
                    }
                }
                return f62243n;
            default:
                throw new UnsupportedOperationException();
        }
        return f62242m;
    }

    @Override // com.wufan.user.service.protobuf.y
    public String getAccount() {
        return this.f62244a;
    }

    @Override // com.wufan.user.service.protobuf.y
    public String getAppVersion() {
        return this.f62249f;
    }

    @Override // com.wufan.user.service.protobuf.y
    public String getPassword() {
        return this.f62245b;
    }

    @Override // com.wufan.user.service.protobuf.y
    public ByteString getPasswordBytes() {
        return ByteString.copyFromUtf8(this.f62245b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.f62244a.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, getAccount());
        if (!this.f62245b.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(2, getPassword());
        }
        if (!this.f62246c.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(3, D());
        }
        if (!this.f62247d.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(4, P());
        }
        if (!this.f62248e.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(5, c());
        }
        if (!this.f62249f.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(6, getAppVersion());
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.wufan.user.service.protobuf.y
    public ByteString k() {
        return ByteString.copyFromUtf8(this.f62244a);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.f62244a.isEmpty()) {
            codedOutputStream.writeString(1, getAccount());
        }
        if (!this.f62245b.isEmpty()) {
            codedOutputStream.writeString(2, getPassword());
        }
        if (!this.f62246c.isEmpty()) {
            codedOutputStream.writeString(3, D());
        }
        if (!this.f62247d.isEmpty()) {
            codedOutputStream.writeString(4, P());
        }
        if (!this.f62248e.isEmpty()) {
            codedOutputStream.writeString(5, c());
        }
        if (this.f62249f.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(6, getAppVersion());
    }

    @Override // com.wufan.user.service.protobuf.y
    public ByteString x() {
        return ByteString.copyFromUtf8(this.f62246c);
    }
}
