package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.user.service.protobuf.f;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: MessageCheckTokenResponseResult.java */
/* loaded from: classes2.dex */
public final class n extends GeneratedMessageLite<n, b> implements o {

    /* renamed from: d  reason: collision with root package name */
    public static final int f62188d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f62189e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62190f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final n f62191g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<n> f62192h;

    /* renamed from: a  reason: collision with root package name */
    private int f62193a;

    /* renamed from: b  reason: collision with root package name */
    private f f62194b;

    /* renamed from: c  reason: collision with root package name */
    private String f62195c = "";

    /* compiled from: MessageCheckTokenResponseResult.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62196a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62196a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62196a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62196a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62196a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62196a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62196a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62196a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62196a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: MessageCheckTokenResponseResult.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<n, b> implements o {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((n) this.instance).c3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((n) this.instance).clearError();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((n) this.instance).d3();
            return this;
        }

        public b V2(f fVar) {
            copyOnWrite();
            ((n) this.instance).f3(fVar);
            return this;
        }

        public b W2(f.b bVar) {
            copyOnWrite();
            ((n) this.instance).s3(bVar);
            return this;
        }

        public b X2(f fVar) {
            copyOnWrite();
            ((n) this.instance).t3(fVar);
            return this;
        }

        public b Y2(int i2) {
            copyOnWrite();
            ((n) this.instance).u3(i2);
            return this;
        }

        public b Z2(String str) {
            copyOnWrite();
            ((n) this.instance).v3(str);
            return this;
        }

        public b a3(ByteString byteString) {
            copyOnWrite();
            ((n) this.instance).w3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.o
        public f getData() {
            return ((n) this.instance).getData();
        }

        @Override // com.wufan.user.service.protobuf.o
        public int getError() {
            return ((n) this.instance).getError();
        }

        @Override // com.wufan.user.service.protobuf.o
        public ByteString i() {
            return ((n) this.instance).i();
        }

        @Override // com.wufan.user.service.protobuf.o
        public String j() {
            return ((n) this.instance).j();
        }

        @Override // com.wufan.user.service.protobuf.o
        public boolean l() {
            return ((n) this.instance).l();
        }

        private b() {
            super(n.f62191g);
        }
    }

    static {
        n nVar = new n();
        f62191g = nVar;
        nVar.makeImmutable();
    }

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3() {
        this.f62194b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearError() {
        this.f62193a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3() {
        this.f62195c = e3().j();
    }

    public static n e3() {
        return f62191g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3(f fVar) {
        f fVar2 = this.f62194b;
        if (fVar2 != null && fVar2 != f.i3()) {
            this.f62194b = f.k3(this.f62194b).mergeFrom((f.b) fVar).buildPartial();
        } else {
            this.f62194b = fVar;
        }
    }

    public static b g3() {
        return f62191g.toBuilder();
    }

    public static b h3(n nVar) {
        return f62191g.toBuilder().mergeFrom((b) nVar);
    }

    public static n i3(InputStream inputStream) throws IOException {
        return (n) GeneratedMessageLite.parseDelimitedFrom(f62191g, inputStream);
    }

    public static n j3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n) GeneratedMessageLite.parseDelimitedFrom(f62191g, inputStream, extensionRegistryLite);
    }

    public static n k3(ByteString byteString) throws InvalidProtocolBufferException {
        return (n) GeneratedMessageLite.parseFrom(f62191g, byteString);
    }

    public static n l3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (n) GeneratedMessageLite.parseFrom(f62191g, byteString, extensionRegistryLite);
    }

    public static n m3(CodedInputStream codedInputStream) throws IOException {
        return (n) GeneratedMessageLite.parseFrom(f62191g, codedInputStream);
    }

    public static n n3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n) GeneratedMessageLite.parseFrom(f62191g, codedInputStream, extensionRegistryLite);
    }

    public static n o3(InputStream inputStream) throws IOException {
        return (n) GeneratedMessageLite.parseFrom(f62191g, inputStream);
    }

    public static n p3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n) GeneratedMessageLite.parseFrom(f62191g, inputStream, extensionRegistryLite);
    }

    public static Parser<n> parser() {
        return f62191g.getParserForType();
    }

    public static n q3(byte[] bArr) throws InvalidProtocolBufferException {
        return (n) GeneratedMessageLite.parseFrom(f62191g, bArr);
    }

    public static n r3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (n) GeneratedMessageLite.parseFrom(f62191g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(f.b bVar) {
        this.f62194b = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(f fVar) {
        Objects.requireNonNull(fVar);
        this.f62194b = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(int i2) {
        this.f62193a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(String str) {
        Objects.requireNonNull(str);
        this.f62195c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62195c = byteString.toStringUtf8();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62196a[methodToInvoke.ordinal()]) {
            case 1:
                return new n();
            case 2:
                return f62191g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                n nVar = (n) obj2;
                int i2 = this.f62193a;
                boolean z3 = i2 != 0;
                int i4 = nVar.f62193a;
                this.f62193a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62194b = (f) visitor.visitMessage(this.f62194b, nVar.f62194b);
                this.f62195c = visitor.visitString(!this.f62195c.isEmpty(), this.f62195c, !nVar.f62195c.isEmpty(), nVar.f62195c);
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
                                this.f62193a = codedInputStream.readInt32();
                            } else if (readTag == 18) {
                                f fVar = this.f62194b;
                                f.b builder = fVar != null ? fVar.toBuilder() : null;
                                f fVar2 = (f) codedInputStream.readMessage(f.parser(), extensionRegistryLite);
                                this.f62194b = fVar2;
                                if (builder != null) {
                                    builder.mergeFrom((f.b) fVar2);
                                    this.f62194b = builder.buildPartial();
                                }
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62195c = codedInputStream.readStringRequireUtf8();
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
                if (f62192h == null) {
                    synchronized (n.class) {
                        if (f62192h == null) {
                            f62192h = new GeneratedMessageLite.DefaultInstanceBasedParser(f62191g);
                        }
                    }
                }
                return f62192h;
            default:
                throw new UnsupportedOperationException();
        }
        return f62191g;
    }

    @Override // com.wufan.user.service.protobuf.o
    public f getData() {
        f fVar = this.f62194b;
        return fVar == null ? f.i3() : fVar;
    }

    @Override // com.wufan.user.service.protobuf.o
    public int getError() {
        return this.f62193a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62193a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (this.f62194b != null) {
            computeInt32Size += CodedOutputStream.computeMessageSize(2, getData());
        }
        if (!this.f62195c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, j());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.o
    public ByteString i() {
        return ByteString.copyFromUtf8(this.f62195c);
    }

    @Override // com.wufan.user.service.protobuf.o
    public String j() {
        return this.f62195c;
    }

    @Override // com.wufan.user.service.protobuf.o
    public boolean l() {
        return this.f62194b != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62193a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (this.f62194b != null) {
            codedOutputStream.writeMessage(2, getData());
        }
        if (this.f62195c.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, j());
    }
}
