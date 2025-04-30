package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: UserRegStatusResponseField.java */
/* loaded from: classes2.dex */
public final class t0 extends GeneratedMessageLite<t0, b> implements u0 {

    /* renamed from: d  reason: collision with root package name */
    public static final int f62219d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f62220e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62221f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final t0 f62222g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<t0> f62223h;

    /* renamed from: a  reason: collision with root package name */
    private int f62224a;

    /* renamed from: b  reason: collision with root package name */
    private c f62225b;

    /* renamed from: c  reason: collision with root package name */
    private String f62226c = "";

    /* compiled from: UserRegStatusResponseField.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62227a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62227a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62227a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62227a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62227a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62227a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62227a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62227a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62227a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: UserRegStatusResponseField.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<t0, b> implements u0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((t0) this.instance).c3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((t0) this.instance).clearError();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((t0) this.instance).d3();
            return this;
        }

        public b V2(c cVar) {
            copyOnWrite();
            ((t0) this.instance).f3(cVar);
            return this;
        }

        public b W2(c.a aVar) {
            copyOnWrite();
            ((t0) this.instance).s3(aVar);
            return this;
        }

        public b X2(c cVar) {
            copyOnWrite();
            ((t0) this.instance).t3(cVar);
            return this;
        }

        public b Y2(int i2) {
            copyOnWrite();
            ((t0) this.instance).u3(i2);
            return this;
        }

        public b Z2(String str) {
            copyOnWrite();
            ((t0) this.instance).v3(str);
            return this;
        }

        public b a3(ByteString byteString) {
            copyOnWrite();
            ((t0) this.instance).w3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.u0
        public c getData() {
            return ((t0) this.instance).getData();
        }

        @Override // com.wufan.user.service.protobuf.u0
        public int getError() {
            return ((t0) this.instance).getError();
        }

        @Override // com.wufan.user.service.protobuf.u0
        public ByteString i() {
            return ((t0) this.instance).i();
        }

        @Override // com.wufan.user.service.protobuf.u0
        public String j() {
            return ((t0) this.instance).j();
        }

        @Override // com.wufan.user.service.protobuf.u0
        public boolean l() {
            return ((t0) this.instance).l();
        }

        private b() {
            super(t0.f62222g);
        }
    }

    /* compiled from: UserRegStatusResponseField.java */
    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageLite<c, a> implements d {

        /* renamed from: d  reason: collision with root package name */
        public static final int f62228d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final int f62229e = 5;

        /* renamed from: f  reason: collision with root package name */
        public static final int f62230f = 6;

        /* renamed from: g  reason: collision with root package name */
        private static final c f62231g;

        /* renamed from: h  reason: collision with root package name */
        private static volatile Parser<c> f62232h;

        /* renamed from: a  reason: collision with root package name */
        private boolean f62233a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f62234b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f62235c;

        /* compiled from: UserRegStatusResponseField.java */
        /* loaded from: classes2.dex */
        public static final class a extends GeneratedMessageLite.Builder<c, a> implements d {
            /* synthetic */ a(a aVar) {
                this();
            }

            @Override // com.wufan.user.service.protobuf.t0.d
            public boolean P0() {
                return ((c) this.instance).P0();
            }

            public a S2() {
                copyOnWrite();
                ((c) this.instance).Z2();
                return this;
            }

            public a T2() {
                copyOnWrite();
                ((c) this.instance).a3();
                return this;
            }

            public a U2() {
                copyOnWrite();
                ((c) this.instance).b3();
                return this;
            }

            public a V2(boolean z3) {
                copyOnWrite();
                ((c) this.instance).p3(z3);
                return this;
            }

            public a W2(boolean z3) {
                copyOnWrite();
                ((c) this.instance).q3(z3);
                return this;
            }

            public a X2(boolean z3) {
                copyOnWrite();
                ((c) this.instance).r3(z3);
                return this;
            }

            @Override // com.wufan.user.service.protobuf.t0.d
            public boolean h0() {
                return ((c) this.instance).h0();
            }

            @Override // com.wufan.user.service.protobuf.t0.d
            public boolean o0() {
                return ((c) this.instance).o0();
            }

            private a() {
                super(c.f62231g);
            }
        }

        static {
            c cVar = new c();
            f62231g = cVar;
            cVar.makeImmutable();
        }

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void Z2() {
            this.f62235c = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a3() {
            this.f62233a = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b3() {
            this.f62234b = false;
        }

        public static c c3() {
            return f62231g;
        }

        public static a d3() {
            return f62231g.toBuilder();
        }

        public static a e3(c cVar) {
            return f62231g.toBuilder().mergeFrom((a) cVar);
        }

        public static c f3(InputStream inputStream) throws IOException {
            return (c) GeneratedMessageLite.parseDelimitedFrom(f62231g, inputStream);
        }

        public static c g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (c) GeneratedMessageLite.parseDelimitedFrom(f62231g, inputStream, extensionRegistryLite);
        }

        public static c h3(ByteString byteString) throws InvalidProtocolBufferException {
            return (c) GeneratedMessageLite.parseFrom(f62231g, byteString);
        }

        public static c i3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (c) GeneratedMessageLite.parseFrom(f62231g, byteString, extensionRegistryLite);
        }

        public static c j3(CodedInputStream codedInputStream) throws IOException {
            return (c) GeneratedMessageLite.parseFrom(f62231g, codedInputStream);
        }

        public static c k3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (c) GeneratedMessageLite.parseFrom(f62231g, codedInputStream, extensionRegistryLite);
        }

        public static c l3(InputStream inputStream) throws IOException {
            return (c) GeneratedMessageLite.parseFrom(f62231g, inputStream);
        }

        public static c m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (c) GeneratedMessageLite.parseFrom(f62231g, inputStream, extensionRegistryLite);
        }

        public static c n3(byte[] bArr) throws InvalidProtocolBufferException {
            return (c) GeneratedMessageLite.parseFrom(f62231g, bArr);
        }

        public static c o3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (c) GeneratedMessageLite.parseFrom(f62231g, bArr, extensionRegistryLite);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p3(boolean z3) {
            this.f62235c = z3;
        }

        public static Parser<c> parser() {
            return f62231g.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q3(boolean z3) {
            this.f62233a = z3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r3(boolean z3) {
            this.f62234b = z3;
        }

        @Override // com.wufan.user.service.protobuf.t0.d
        public boolean P0() {
            return this.f62234b;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (a.f62227a[methodToInvoke.ordinal()]) {
                case 1:
                    return new c();
                case 2:
                    return f62231g;
                case 3:
                    return null;
                case 4:
                    return new a(null);
                case 5:
                    GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                    c cVar = (c) obj2;
                    boolean z3 = this.f62233a;
                    boolean z4 = cVar.f62233a;
                    this.f62233a = visitor.visitBoolean(z3, z3, z4, z4);
                    boolean z5 = this.f62234b;
                    boolean z6 = cVar.f62234b;
                    this.f62234b = visitor.visitBoolean(z5, z5, z6, z6);
                    boolean z7 = this.f62235c;
                    boolean z8 = cVar.f62235c;
                    this.f62235c = visitor.visitBoolean(z7, z7, z8, z8);
                    GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                    return this;
                case 6:
                    CodedInputStream codedInputStream = (CodedInputStream) obj;
                    ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                    boolean z9 = false;
                    while (!z9) {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 32) {
                                    this.f62233a = codedInputStream.readBool();
                                } else if (readTag == 40) {
                                    this.f62234b = codedInputStream.readBool();
                                } else if (readTag != 48) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.f62235c = codedInputStream.readBool();
                                }
                            }
                            z9 = true;
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
                    if (f62232h == null) {
                        synchronized (c.class) {
                            if (f62232h == null) {
                                f62232h = new GeneratedMessageLite.DefaultInstanceBasedParser(f62231g);
                            }
                        }
                    }
                    return f62232h;
                default:
                    throw new UnsupportedOperationException();
            }
            return f62231g;
        }

        @Override // com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSerializedSize;
            if (i2 != -1) {
                return i2;
            }
            boolean z3 = this.f62233a;
            int computeBoolSize = z3 ? 0 + CodedOutputStream.computeBoolSize(4, z3) : 0;
            boolean z4 = this.f62234b;
            if (z4) {
                computeBoolSize += CodedOutputStream.computeBoolSize(5, z4);
            }
            boolean z5 = this.f62235c;
            if (z5) {
                computeBoolSize += CodedOutputStream.computeBoolSize(6, z5);
            }
            this.memoizedSerializedSize = computeBoolSize;
            return computeBoolSize;
        }

        @Override // com.wufan.user.service.protobuf.t0.d
        public boolean h0() {
            return this.f62235c;
        }

        @Override // com.wufan.user.service.protobuf.t0.d
        public boolean o0() {
            return this.f62233a;
        }

        @Override // com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            boolean z3 = this.f62233a;
            if (z3) {
                codedOutputStream.writeBool(4, z3);
            }
            boolean z4 = this.f62234b;
            if (z4) {
                codedOutputStream.writeBool(5, z4);
            }
            boolean z5 = this.f62235c;
            if (z5) {
                codedOutputStream.writeBool(6, z5);
            }
        }
    }

    /* compiled from: UserRegStatusResponseField.java */
    /* loaded from: classes2.dex */
    public interface d extends MessageLiteOrBuilder {
        boolean P0();

        boolean h0();

        boolean o0();
    }

    static {
        t0 t0Var = new t0();
        f62222g = t0Var;
        t0Var.makeImmutable();
    }

    private t0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3() {
        this.f62225b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearError() {
        this.f62224a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3() {
        this.f62226c = e3().j();
    }

    public static t0 e3() {
        return f62222g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3(c cVar) {
        c cVar2 = this.f62225b;
        if (cVar2 != null && cVar2 != c.c3()) {
            this.f62225b = c.e3(this.f62225b).mergeFrom((c.a) cVar).buildPartial();
        } else {
            this.f62225b = cVar;
        }
    }

    public static b g3() {
        return f62222g.toBuilder();
    }

    public static b h3(t0 t0Var) {
        return f62222g.toBuilder().mergeFrom((b) t0Var);
    }

    public static t0 i3(InputStream inputStream) throws IOException {
        return (t0) GeneratedMessageLite.parseDelimitedFrom(f62222g, inputStream);
    }

    public static t0 j3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t0) GeneratedMessageLite.parseDelimitedFrom(f62222g, inputStream, extensionRegistryLite);
    }

    public static t0 k3(ByteString byteString) throws InvalidProtocolBufferException {
        return (t0) GeneratedMessageLite.parseFrom(f62222g, byteString);
    }

    public static t0 l3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (t0) GeneratedMessageLite.parseFrom(f62222g, byteString, extensionRegistryLite);
    }

    public static t0 m3(CodedInputStream codedInputStream) throws IOException {
        return (t0) GeneratedMessageLite.parseFrom(f62222g, codedInputStream);
    }

    public static t0 n3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t0) GeneratedMessageLite.parseFrom(f62222g, codedInputStream, extensionRegistryLite);
    }

    public static t0 o3(InputStream inputStream) throws IOException {
        return (t0) GeneratedMessageLite.parseFrom(f62222g, inputStream);
    }

    public static t0 p3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t0) GeneratedMessageLite.parseFrom(f62222g, inputStream, extensionRegistryLite);
    }

    public static Parser<t0> parser() {
        return f62222g.getParserForType();
    }

    public static t0 q3(byte[] bArr) throws InvalidProtocolBufferException {
        return (t0) GeneratedMessageLite.parseFrom(f62222g, bArr);
    }

    public static t0 r3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (t0) GeneratedMessageLite.parseFrom(f62222g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(c.a aVar) {
        this.f62225b = aVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(c cVar) {
        Objects.requireNonNull(cVar);
        this.f62225b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(int i2) {
        this.f62224a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(String str) {
        Objects.requireNonNull(str);
        this.f62226c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62226c = byteString.toStringUtf8();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62227a[methodToInvoke.ordinal()]) {
            case 1:
                return new t0();
            case 2:
                return f62222g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                t0 t0Var = (t0) obj2;
                int i2 = this.f62224a;
                boolean z3 = i2 != 0;
                int i4 = t0Var.f62224a;
                this.f62224a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62225b = (c) visitor.visitMessage(this.f62225b, t0Var.f62225b);
                this.f62226c = visitor.visitString(!this.f62226c.isEmpty(), this.f62226c, !t0Var.f62226c.isEmpty(), t0Var.f62226c);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r0) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.f62224a = codedInputStream.readInt32();
                            } else if (readTag == 18) {
                                c cVar = this.f62225b;
                                c.a builder = cVar != null ? cVar.toBuilder() : null;
                                c cVar2 = (c) codedInputStream.readMessage(c.parser(), extensionRegistryLite);
                                this.f62225b = cVar2;
                                if (builder != null) {
                                    builder.mergeFrom((c.a) cVar2);
                                    this.f62225b = builder.buildPartial();
                                }
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62226c = codedInputStream.readStringRequireUtf8();
                            }
                        }
                        r0 = true;
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
                if (f62223h == null) {
                    synchronized (t0.class) {
                        if (f62223h == null) {
                            f62223h = new GeneratedMessageLite.DefaultInstanceBasedParser(f62222g);
                        }
                    }
                }
                return f62223h;
            default:
                throw new UnsupportedOperationException();
        }
        return f62222g;
    }

    @Override // com.wufan.user.service.protobuf.u0
    public c getData() {
        c cVar = this.f62225b;
        return cVar == null ? c.c3() : cVar;
    }

    @Override // com.wufan.user.service.protobuf.u0
    public int getError() {
        return this.f62224a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62224a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (this.f62225b != null) {
            computeInt32Size += CodedOutputStream.computeMessageSize(2, getData());
        }
        if (!this.f62226c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, j());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.u0
    public ByteString i() {
        return ByteString.copyFromUtf8(this.f62226c);
    }

    @Override // com.wufan.user.service.protobuf.u0
    public String j() {
        return this.f62226c;
    }

    @Override // com.wufan.user.service.protobuf.u0
    public boolean l() {
        return this.f62225b != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62224a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (this.f62225b != null) {
            codedOutputStream.writeMessage(2, getData());
        }
        if (this.f62226c.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, j());
    }
}
