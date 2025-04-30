package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.user.service.protobuf.enumeration.ContentType;
import com.wufan.user.service.protobuf.enumeration.SourceType;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: SmsCodeRequestParameters.java */
/* loaded from: classes2.dex */
public final class f0 extends GeneratedMessageLite<f0, b> implements g0 {

    /* renamed from: g  reason: collision with root package name */
    public static final int f62083g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62084h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f62085i = 3;

    /* renamed from: j  reason: collision with root package name */
    public static final int f62086j = 4;

    /* renamed from: k  reason: collision with root package name */
    public static final int f62087k = 5;

    /* renamed from: l  reason: collision with root package name */
    public static final int f62088l = 6;

    /* renamed from: m  reason: collision with root package name */
    private static final f0 f62089m;

    /* renamed from: n  reason: collision with root package name */
    private static volatile Parser<f0> f62090n;

    /* renamed from: a  reason: collision with root package name */
    private int f62091a;

    /* renamed from: b  reason: collision with root package name */
    private int f62092b;

    /* renamed from: c  reason: collision with root package name */
    private int f62093c;

    /* renamed from: d  reason: collision with root package name */
    private String f62094d = "";

    /* renamed from: e  reason: collision with root package name */
    private String f62095e = "";

    /* renamed from: f  reason: collision with root package name */
    private String f62096f = "";

    /* compiled from: SmsCodeRequestParameters.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62097a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62097a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62097a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62097a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62097a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62097a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62097a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62097a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62097a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: SmsCodeRequestParameters.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<f0, b> implements g0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.user.service.protobuf.g0
        public int F2() {
            return ((f0) this.instance).F2();
        }

        @Override // com.wufan.user.service.protobuf.g0
        public int I2() {
            return ((f0) this.instance).I2();
        }

        @Override // com.wufan.user.service.protobuf.g0
        public SourceType N1() {
            return ((f0) this.instance).N1();
        }

        public b S2() {
            copyOnWrite();
            ((f0) this.instance).k3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((f0) this.instance).l3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((f0) this.instance).m3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((f0) this.instance).n3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((f0) this.instance).o3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((f0) this.instance).clearUid();
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((f0) this.instance).C3(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((f0) this.instance).D3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.g0
        public ByteString a() {
            return ((f0) this.instance).a();
        }

        public b a3(ContentType contentType) {
            copyOnWrite();
            ((f0) this.instance).E3(contentType);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.g0
        public ByteString b() {
            return ((f0) this.instance).b();
        }

        public b b3(int i2) {
            copyOnWrite();
            ((f0) this.instance).F3(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.g0
        public String c() {
            return ((f0) this.instance).c();
        }

        public b c3(String str) {
            copyOnWrite();
            ((f0) this.instance).G3(str);
            return this;
        }

        public b d3(ByteString byteString) {
            copyOnWrite();
            ((f0) this.instance).H3(byteString);
            return this;
        }

        public b e3(String str) {
            copyOnWrite();
            ((f0) this.instance).I3(str);
            return this;
        }

        public b f3(ByteString byteString) {
            copyOnWrite();
            ((f0) this.instance).J3(byteString);
            return this;
        }

        public b g3(SourceType sourceType) {
            copyOnWrite();
            ((f0) this.instance).K3(sourceType);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.g0
        public String getAppVersion() {
            return ((f0) this.instance).getAppVersion();
        }

        @Override // com.wufan.user.service.protobuf.g0
        public ContentType getContentType() {
            return ((f0) this.instance).getContentType();
        }

        @Override // com.wufan.user.service.protobuf.g0
        public int getUid() {
            return ((f0) this.instance).getUid();
        }

        public b h3(int i2) {
            copyOnWrite();
            ((f0) this.instance).L3(i2);
            return this;
        }

        public b i3(int i2) {
            copyOnWrite();
            ((f0) this.instance).setUid(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.g0
        public ByteString q() {
            return ((f0) this.instance).q();
        }

        @Override // com.wufan.user.service.protobuf.g0
        public String t() {
            return ((f0) this.instance).t();
        }

        private b() {
            super(f0.f62089m);
        }
    }

    static {
        f0 f0Var = new f0();
        f62089m = f0Var;
        f0Var.makeImmutable();
    }

    private f0() {
    }

    public static f0 A3(byte[] bArr) throws InvalidProtocolBufferException {
        return (f0) GeneratedMessageLite.parseFrom(f62089m, bArr);
    }

    public static f0 B3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (f0) GeneratedMessageLite.parseFrom(f62089m, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(String str) {
        Objects.requireNonNull(str);
        this.f62096f = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62096f = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E3(ContentType contentType) {
        Objects.requireNonNull(contentType);
        this.f62092b = contentType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F3(int i2) {
        this.f62092b = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G3(String str) {
        Objects.requireNonNull(str);
        this.f62094d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62094d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I3(String str) {
        Objects.requireNonNull(str);
        this.f62095e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62095e = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K3(SourceType sourceType) {
        Objects.requireNonNull(sourceType);
        this.f62093c = sourceType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L3(int i2) {
        this.f62093c = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUid() {
        this.f62091a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k3() {
        this.f62096f = p3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l3() {
        this.f62092b = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3() {
        this.f62094d = p3().t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3() {
        this.f62095e = p3().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3() {
        this.f62093c = 0;
    }

    public static f0 p3() {
        return f62089m;
    }

    public static Parser<f0> parser() {
        return f62089m.getParserForType();
    }

    public static b q3() {
        return f62089m.toBuilder();
    }

    public static b r3(f0 f0Var) {
        return f62089m.toBuilder().mergeFrom((b) f0Var);
    }

    public static f0 s3(InputStream inputStream) throws IOException {
        return (f0) GeneratedMessageLite.parseDelimitedFrom(f62089m, inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUid(int i2) {
        this.f62091a = i2;
    }

    public static f0 t3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f0) GeneratedMessageLite.parseDelimitedFrom(f62089m, inputStream, extensionRegistryLite);
    }

    public static f0 u3(ByteString byteString) throws InvalidProtocolBufferException {
        return (f0) GeneratedMessageLite.parseFrom(f62089m, byteString);
    }

    public static f0 v3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (f0) GeneratedMessageLite.parseFrom(f62089m, byteString, extensionRegistryLite);
    }

    public static f0 w3(CodedInputStream codedInputStream) throws IOException {
        return (f0) GeneratedMessageLite.parseFrom(f62089m, codedInputStream);
    }

    public static f0 x3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f0) GeneratedMessageLite.parseFrom(f62089m, codedInputStream, extensionRegistryLite);
    }

    public static f0 y3(InputStream inputStream) throws IOException {
        return (f0) GeneratedMessageLite.parseFrom(f62089m, inputStream);
    }

    public static f0 z3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f0) GeneratedMessageLite.parseFrom(f62089m, inputStream, extensionRegistryLite);
    }

    @Override // com.wufan.user.service.protobuf.g0
    public int F2() {
        return this.f62092b;
    }

    @Override // com.wufan.user.service.protobuf.g0
    public int I2() {
        return this.f62093c;
    }

    @Override // com.wufan.user.service.protobuf.g0
    public SourceType N1() {
        SourceType forNumber = SourceType.forNumber(this.f62093c);
        return forNumber == null ? SourceType.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.user.service.protobuf.g0
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f62096f);
    }

    @Override // com.wufan.user.service.protobuf.g0
    public ByteString b() {
        return ByteString.copyFromUtf8(this.f62095e);
    }

    @Override // com.wufan.user.service.protobuf.g0
    public String c() {
        return this.f62095e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62097a[methodToInvoke.ordinal()]) {
            case 1:
                return new f0();
            case 2:
                return f62089m;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                f0 f0Var = (f0) obj2;
                int i2 = this.f62091a;
                boolean z3 = i2 != 0;
                int i4 = f0Var.f62091a;
                this.f62091a = visitor.visitInt(z3, i2, i4 != 0, i4);
                int i5 = this.f62092b;
                boolean z4 = i5 != 0;
                int i6 = f0Var.f62092b;
                this.f62092b = visitor.visitInt(z4, i5, i6 != 0, i6);
                int i7 = this.f62093c;
                boolean z5 = i7 != 0;
                int i8 = f0Var.f62093c;
                this.f62093c = visitor.visitInt(z5, i7, i8 != 0, i8);
                this.f62094d = visitor.visitString(!this.f62094d.isEmpty(), this.f62094d, !f0Var.f62094d.isEmpty(), f0Var.f62094d);
                this.f62095e = visitor.visitString(!this.f62095e.isEmpty(), this.f62095e, !f0Var.f62095e.isEmpty(), f0Var.f62095e);
                this.f62096f = visitor.visitString(!this.f62096f.isEmpty(), this.f62096f, !f0Var.f62096f.isEmpty(), f0Var.f62096f);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.f62091a = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.f62092b = codedInputStream.readEnum();
                            } else if (readTag == 24) {
                                this.f62093c = codedInputStream.readEnum();
                            } else if (readTag == 34) {
                                this.f62094d = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 42) {
                                this.f62095e = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 50) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62096f = codedInputStream.readStringRequireUtf8();
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
                if (f62090n == null) {
                    synchronized (f0.class) {
                        if (f62090n == null) {
                            f62090n = new GeneratedMessageLite.DefaultInstanceBasedParser(f62089m);
                        }
                    }
                }
                return f62090n;
            default:
                throw new UnsupportedOperationException();
        }
        return f62089m;
    }

    @Override // com.wufan.user.service.protobuf.g0
    public String getAppVersion() {
        return this.f62096f;
    }

    @Override // com.wufan.user.service.protobuf.g0
    public ContentType getContentType() {
        ContentType forNumber = ContentType.forNumber(this.f62092b);
        return forNumber == null ? ContentType.UNRECOGNIZED : forNumber;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62091a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (this.f62092b != ContentType.MOBILE_REG.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(2, this.f62092b);
        }
        if (this.f62093c != SourceType.WORLD.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(3, this.f62093c);
        }
        if (!this.f62094d.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(4, t());
        }
        if (!this.f62095e.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(5, c());
        }
        if (!this.f62096f.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(6, getAppVersion());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.g0
    public int getUid() {
        return this.f62091a;
    }

    @Override // com.wufan.user.service.protobuf.g0
    public ByteString q() {
        return ByteString.copyFromUtf8(this.f62094d);
    }

    @Override // com.wufan.user.service.protobuf.g0
    public String t() {
        return this.f62094d;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62091a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (this.f62092b != ContentType.MOBILE_REG.getNumber()) {
            codedOutputStream.writeEnum(2, this.f62092b);
        }
        if (this.f62093c != SourceType.WORLD.getNumber()) {
            codedOutputStream.writeEnum(3, this.f62093c);
        }
        if (!this.f62094d.isEmpty()) {
            codedOutputStream.writeString(4, t());
        }
        if (!this.f62095e.isEmpty()) {
            codedOutputStream.writeString(5, c());
        }
        if (this.f62096f.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(6, getAppVersion());
    }
}
