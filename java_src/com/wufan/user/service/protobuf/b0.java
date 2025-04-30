package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.user.service.protobuf.l0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: ResponseResult.java */
/* loaded from: classes2.dex */
public final class b0 extends GeneratedMessageLite<b0, b> implements c0 {

    /* renamed from: d  reason: collision with root package name */
    public static final int f62039d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f62040e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62041f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final b0 f62042g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<b0> f62043h;

    /* renamed from: a  reason: collision with root package name */
    private int f62044a;

    /* renamed from: b  reason: collision with root package name */
    private l0 f62045b;

    /* renamed from: c  reason: collision with root package name */
    private String f62046c = "";

    /* compiled from: ResponseResult.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62047a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62047a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62047a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62047a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62047a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62047a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62047a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62047a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62047a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: ResponseResult.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<b0, b> implements c0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((b0) this.instance).c3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((b0) this.instance).clearError();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((b0) this.instance).d3();
            return this;
        }

        public b V2(l0 l0Var) {
            copyOnWrite();
            ((b0) this.instance).f3(l0Var);
            return this;
        }

        public b W2(l0.b bVar) {
            copyOnWrite();
            ((b0) this.instance).s3(bVar);
            return this;
        }

        public b X2(l0 l0Var) {
            copyOnWrite();
            ((b0) this.instance).t3(l0Var);
            return this;
        }

        public b Y2(int i2) {
            copyOnWrite();
            ((b0) this.instance).u3(i2);
            return this;
        }

        public b Z2(String str) {
            copyOnWrite();
            ((b0) this.instance).v3(str);
            return this;
        }

        public b a3(ByteString byteString) {
            copyOnWrite();
            ((b0) this.instance).w3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.c0
        public l0 getData() {
            return ((b0) this.instance).getData();
        }

        @Override // com.wufan.user.service.protobuf.c0
        public int getError() {
            return ((b0) this.instance).getError();
        }

        @Override // com.wufan.user.service.protobuf.c0
        public ByteString i() {
            return ((b0) this.instance).i();
        }

        @Override // com.wufan.user.service.protobuf.c0
        public String j() {
            return ((b0) this.instance).j();
        }

        @Override // com.wufan.user.service.protobuf.c0
        public boolean l() {
            return ((b0) this.instance).l();
        }

        private b() {
            super(b0.f62042g);
        }
    }

    static {
        b0 b0Var = new b0();
        f62042g = b0Var;
        b0Var.makeImmutable();
    }

    private b0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3() {
        this.f62045b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearError() {
        this.f62044a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3() {
        this.f62046c = e3().j();
    }

    public static b0 e3() {
        return f62042g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3(l0 l0Var) {
        l0 l0Var2 = this.f62045b;
        if (l0Var2 != null && l0Var2 != l0.Y4()) {
            this.f62045b = l0.d5(this.f62045b).mergeFrom((l0.b) l0Var).buildPartial();
        } else {
            this.f62045b = l0Var;
        }
    }

    public static b g3() {
        return f62042g.toBuilder();
    }

    public static b h3(b0 b0Var) {
        return f62042g.toBuilder().mergeFrom((b) b0Var);
    }

    public static b0 i3(InputStream inputStream) throws IOException {
        return (b0) GeneratedMessageLite.parseDelimitedFrom(f62042g, inputStream);
    }

    public static b0 j3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (b0) GeneratedMessageLite.parseDelimitedFrom(f62042g, inputStream, extensionRegistryLite);
    }

    public static b0 k3(ByteString byteString) throws InvalidProtocolBufferException {
        return (b0) GeneratedMessageLite.parseFrom(f62042g, byteString);
    }

    public static b0 l3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (b0) GeneratedMessageLite.parseFrom(f62042g, byteString, extensionRegistryLite);
    }

    public static b0 m3(CodedInputStream codedInputStream) throws IOException {
        return (b0) GeneratedMessageLite.parseFrom(f62042g, codedInputStream);
    }

    public static b0 n3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (b0) GeneratedMessageLite.parseFrom(f62042g, codedInputStream, extensionRegistryLite);
    }

    public static b0 o3(InputStream inputStream) throws IOException {
        return (b0) GeneratedMessageLite.parseFrom(f62042g, inputStream);
    }

    public static b0 p3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (b0) GeneratedMessageLite.parseFrom(f62042g, inputStream, extensionRegistryLite);
    }

    public static Parser<b0> parser() {
        return f62042g.getParserForType();
    }

    public static b0 q3(byte[] bArr) throws InvalidProtocolBufferException {
        return (b0) GeneratedMessageLite.parseFrom(f62042g, bArr);
    }

    public static b0 r3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (b0) GeneratedMessageLite.parseFrom(f62042g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(l0.b bVar) {
        this.f62045b = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(l0 l0Var) {
        Objects.requireNonNull(l0Var);
        this.f62045b = l0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(int i2) {
        this.f62044a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(String str) {
        Objects.requireNonNull(str);
        this.f62046c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62046c = byteString.toStringUtf8();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62047a[methodToInvoke.ordinal()]) {
            case 1:
                return new b0();
            case 2:
                return f62042g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                b0 b0Var = (b0) obj2;
                int i2 = this.f62044a;
                boolean z3 = i2 != 0;
                int i4 = b0Var.f62044a;
                this.f62044a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62045b = (l0) visitor.visitMessage(this.f62045b, b0Var.f62045b);
                this.f62046c = visitor.visitString(!this.f62046c.isEmpty(), this.f62046c, !b0Var.f62046c.isEmpty(), b0Var.f62046c);
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
                                this.f62044a = codedInputStream.readInt32();
                            } else if (readTag == 18) {
                                l0 l0Var = this.f62045b;
                                l0.b builder = l0Var != null ? l0Var.toBuilder() : null;
                                l0 l0Var2 = (l0) codedInputStream.readMessage(l0.parser(), extensionRegistryLite);
                                this.f62045b = l0Var2;
                                if (builder != null) {
                                    builder.mergeFrom((l0.b) l0Var2);
                                    this.f62045b = builder.buildPartial();
                                }
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62046c = codedInputStream.readStringRequireUtf8();
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
                if (f62043h == null) {
                    synchronized (b0.class) {
                        if (f62043h == null) {
                            f62043h = new GeneratedMessageLite.DefaultInstanceBasedParser(f62042g);
                        }
                    }
                }
                return f62043h;
            default:
                throw new UnsupportedOperationException();
        }
        return f62042g;
    }

    @Override // com.wufan.user.service.protobuf.c0
    public l0 getData() {
        l0 l0Var = this.f62045b;
        return l0Var == null ? l0.Y4() : l0Var;
    }

    @Override // com.wufan.user.service.protobuf.c0
    public int getError() {
        return this.f62044a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62044a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (this.f62045b != null) {
            computeInt32Size += CodedOutputStream.computeMessageSize(2, getData());
        }
        if (!this.f62046c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, j());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.c0
    public ByteString i() {
        return ByteString.copyFromUtf8(this.f62046c);
    }

    @Override // com.wufan.user.service.protobuf.c0
    public String j() {
        return this.f62046c;
    }

    @Override // com.wufan.user.service.protobuf.c0
    public boolean l() {
        return this.f62045b != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62044a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (this.f62045b != null) {
            codedOutputStream.writeMessage(2, getData());
        }
        if (this.f62046c.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, j());
    }
}
