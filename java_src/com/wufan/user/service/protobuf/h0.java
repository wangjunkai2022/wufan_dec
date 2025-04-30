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
/* compiled from: TheThirdPartyLoginRequestParameters.java */
/* loaded from: classes2.dex */
public final class h0 extends GeneratedMessageLite<h0, b> implements i0 {

    /* renamed from: e  reason: collision with root package name */
    public static final int f62107e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62108f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f62109g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62110h = 4;

    /* renamed from: i  reason: collision with root package name */
    private static final h0 f62111i;

    /* renamed from: j  reason: collision with root package name */
    private static volatile Parser<h0> f62112j;

    /* renamed from: b  reason: collision with root package name */
    private int f62114b;

    /* renamed from: a  reason: collision with root package name */
    private String f62113a = "";

    /* renamed from: c  reason: collision with root package name */
    private String f62115c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f62116d = "";

    /* compiled from: TheThirdPartyLoginRequestParameters.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62117a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62117a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62117a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62117a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62117a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62117a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62117a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62117a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62117a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: TheThirdPartyLoginRequestParameters.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<h0, b> implements i0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.user.service.protobuf.i0
        public TheThirdPartLoginType K() {
            return ((h0) this.instance).K();
        }

        public b S2() {
            copyOnWrite();
            ((h0) this.instance).f3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((h0) this.instance).g3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((h0) this.instance).h3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((h0) this.instance).i3();
            return this;
        }

        public b W2(String str) {
            copyOnWrite();
            ((h0) this.instance).w3(str);
            return this;
        }

        public b X2(ByteString byteString) {
            copyOnWrite();
            ((h0) this.instance).x3(byteString);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((h0) this.instance).y3(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((h0) this.instance).z3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.i0
        public ByteString a() {
            return ((h0) this.instance).a();
        }

        public b a3(TheThirdPartLoginType theThirdPartLoginType) {
            copyOnWrite();
            ((h0) this.instance).A3(theThirdPartLoginType);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.i0
        public ByteString b() {
            return ((h0) this.instance).b();
        }

        public b b3(int i2) {
            copyOnWrite();
            ((h0) this.instance).B3(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.i0
        public String c() {
            return ((h0) this.instance).c();
        }

        public b c3(String str) {
            copyOnWrite();
            ((h0) this.instance).C3(str);
            return this;
        }

        public b d3(ByteString byteString) {
            copyOnWrite();
            ((h0) this.instance).D3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.i0
        public String getAppVersion() {
            return ((h0) this.instance).getAppVersion();
        }

        @Override // com.wufan.user.service.protobuf.i0
        public String m() {
            return ((h0) this.instance).m();
        }

        @Override // com.wufan.user.service.protobuf.i0
        public int s() {
            return ((h0) this.instance).s();
        }

        @Override // com.wufan.user.service.protobuf.i0
        public ByteString v() {
            return ((h0) this.instance).v();
        }

        private b() {
            super(h0.f62111i);
        }
    }

    static {
        h0 h0Var = new h0();
        f62111i = h0Var;
        h0Var.makeImmutable();
    }

    private h0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(TheThirdPartLoginType theThirdPartLoginType) {
        Objects.requireNonNull(theThirdPartLoginType);
        this.f62114b = theThirdPartLoginType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B3(int i2) {
        this.f62114b = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(String str) {
        Objects.requireNonNull(str);
        this.f62113a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62113a = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f62116d = j3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3() {
        this.f62115c = j3().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3() {
        this.f62114b = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i3() {
        this.f62113a = j3().m();
    }

    public static h0 j3() {
        return f62111i;
    }

    public static b k3() {
        return f62111i.toBuilder();
    }

    public static b l3(h0 h0Var) {
        return f62111i.toBuilder().mergeFrom((b) h0Var);
    }

    public static h0 m3(InputStream inputStream) throws IOException {
        return (h0) GeneratedMessageLite.parseDelimitedFrom(f62111i, inputStream);
    }

    public static h0 n3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h0) GeneratedMessageLite.parseDelimitedFrom(f62111i, inputStream, extensionRegistryLite);
    }

    public static h0 o3(ByteString byteString) throws InvalidProtocolBufferException {
        return (h0) GeneratedMessageLite.parseFrom(f62111i, byteString);
    }

    public static h0 p3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (h0) GeneratedMessageLite.parseFrom(f62111i, byteString, extensionRegistryLite);
    }

    public static Parser<h0> parser() {
        return f62111i.getParserForType();
    }

    public static h0 q3(CodedInputStream codedInputStream) throws IOException {
        return (h0) GeneratedMessageLite.parseFrom(f62111i, codedInputStream);
    }

    public static h0 r3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h0) GeneratedMessageLite.parseFrom(f62111i, codedInputStream, extensionRegistryLite);
    }

    public static h0 s3(InputStream inputStream) throws IOException {
        return (h0) GeneratedMessageLite.parseFrom(f62111i, inputStream);
    }

    public static h0 t3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h0) GeneratedMessageLite.parseFrom(f62111i, inputStream, extensionRegistryLite);
    }

    public static h0 u3(byte[] bArr) throws InvalidProtocolBufferException {
        return (h0) GeneratedMessageLite.parseFrom(f62111i, bArr);
    }

    public static h0 v3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (h0) GeneratedMessageLite.parseFrom(f62111i, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(String str) {
        Objects.requireNonNull(str);
        this.f62116d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62116d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(String str) {
        Objects.requireNonNull(str);
        this.f62115c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62115c = byteString.toStringUtf8();
    }

    @Override // com.wufan.user.service.protobuf.i0
    public TheThirdPartLoginType K() {
        TheThirdPartLoginType forNumber = TheThirdPartLoginType.forNumber(this.f62114b);
        return forNumber == null ? TheThirdPartLoginType.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.user.service.protobuf.i0
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f62116d);
    }

    @Override // com.wufan.user.service.protobuf.i0
    public ByteString b() {
        return ByteString.copyFromUtf8(this.f62115c);
    }

    @Override // com.wufan.user.service.protobuf.i0
    public String c() {
        return this.f62115c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62117a[methodToInvoke.ordinal()]) {
            case 1:
                return new h0();
            case 2:
                return f62111i;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                h0 h0Var = (h0) obj2;
                this.f62113a = visitor.visitString(!this.f62113a.isEmpty(), this.f62113a, !h0Var.f62113a.isEmpty(), h0Var.f62113a);
                int i2 = this.f62114b;
                boolean z3 = i2 != 0;
                int i4 = h0Var.f62114b;
                this.f62114b = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62115c = visitor.visitString(!this.f62115c.isEmpty(), this.f62115c, !h0Var.f62115c.isEmpty(), h0Var.f62115c);
                this.f62116d = visitor.visitString(!this.f62116d.isEmpty(), this.f62116d, !h0Var.f62116d.isEmpty(), h0Var.f62116d);
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
                                    this.f62113a = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 16) {
                                    this.f62114b = codedInputStream.readEnum();
                                } else if (readTag == 26) {
                                    this.f62115c = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 34) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.f62116d = codedInputStream.readStringRequireUtf8();
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
                if (f62112j == null) {
                    synchronized (h0.class) {
                        if (f62112j == null) {
                            f62112j = new GeneratedMessageLite.DefaultInstanceBasedParser(f62111i);
                        }
                    }
                }
                return f62112j;
            default:
                throw new UnsupportedOperationException();
        }
        return f62111i;
    }

    @Override // com.wufan.user.service.protobuf.i0
    public String getAppVersion() {
        return this.f62116d;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.f62113a.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, m());
        if (this.f62114b != TheThirdPartLoginType.T_PAPA.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(2, this.f62114b);
        }
        if (!this.f62115c.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(3, c());
        }
        if (!this.f62116d.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(4, getAppVersion());
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.wufan.user.service.protobuf.i0
    public String m() {
        return this.f62113a;
    }

    @Override // com.wufan.user.service.protobuf.i0
    public int s() {
        return this.f62114b;
    }

    @Override // com.wufan.user.service.protobuf.i0
    public ByteString v() {
        return ByteString.copyFromUtf8(this.f62113a);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.f62113a.isEmpty()) {
            codedOutputStream.writeString(1, m());
        }
        if (this.f62114b != TheThirdPartLoginType.T_PAPA.getNumber()) {
            codedOutputStream.writeEnum(2, this.f62114b);
        }
        if (!this.f62115c.isEmpty()) {
            codedOutputStream.writeString(3, c());
        }
        if (this.f62116d.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(4, getAppVersion());
    }
}
