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
/* compiled from: ResponseStatusResult.java */
/* loaded from: classes2.dex */
public final class d0 extends GeneratedMessageLite<d0, b> implements e0 {

    /* renamed from: d  reason: collision with root package name */
    public static final int f62061d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f62062e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62063f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final d0 f62064g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<d0> f62065h;

    /* renamed from: a  reason: collision with root package name */
    private int f62066a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f62067b;

    /* renamed from: c  reason: collision with root package name */
    private String f62068c = "";

    /* compiled from: ResponseStatusResult.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62069a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62069a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62069a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62069a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62069a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62069a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62069a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62069a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62069a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: ResponseStatusResult.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<d0, b> implements e0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((d0) this.instance).clearError();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((d0) this.instance).a3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((d0) this.instance).b3();
            return this;
        }

        public b V2(int i2) {
            copyOnWrite();
            ((d0) this.instance).p3(i2);
            return this;
        }

        public b W2(String str) {
            copyOnWrite();
            ((d0) this.instance).q3(str);
            return this;
        }

        public b X2(ByteString byteString) {
            copyOnWrite();
            ((d0) this.instance).r3(byteString);
            return this;
        }

        public b Y2(boolean z3) {
            copyOnWrite();
            ((d0) this.instance).s3(z3);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.e0
        public int getError() {
            return ((d0) this.instance).getError();
        }

        @Override // com.wufan.user.service.protobuf.e0
        public boolean getStatus() {
            return ((d0) this.instance).getStatus();
        }

        @Override // com.wufan.user.service.protobuf.e0
        public ByteString i() {
            return ((d0) this.instance).i();
        }

        @Override // com.wufan.user.service.protobuf.e0
        public String j() {
            return ((d0) this.instance).j();
        }

        private b() {
            super(d0.f62064g);
        }
    }

    static {
        d0 d0Var = new d0();
        f62064g = d0Var;
        d0Var.makeImmutable();
    }

    private d0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a3() {
        this.f62068c = c3().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3() {
        this.f62067b = false;
    }

    public static d0 c3() {
        return f62064g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearError() {
        this.f62066a = 0;
    }

    public static b d3() {
        return f62064g.toBuilder();
    }

    public static b e3(d0 d0Var) {
        return f62064g.toBuilder().mergeFrom((b) d0Var);
    }

    public static d0 f3(InputStream inputStream) throws IOException {
        return (d0) GeneratedMessageLite.parseDelimitedFrom(f62064g, inputStream);
    }

    public static d0 g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d0) GeneratedMessageLite.parseDelimitedFrom(f62064g, inputStream, extensionRegistryLite);
    }

    public static d0 h3(ByteString byteString) throws InvalidProtocolBufferException {
        return (d0) GeneratedMessageLite.parseFrom(f62064g, byteString);
    }

    public static d0 i3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (d0) GeneratedMessageLite.parseFrom(f62064g, byteString, extensionRegistryLite);
    }

    public static d0 j3(CodedInputStream codedInputStream) throws IOException {
        return (d0) GeneratedMessageLite.parseFrom(f62064g, codedInputStream);
    }

    public static d0 k3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d0) GeneratedMessageLite.parseFrom(f62064g, codedInputStream, extensionRegistryLite);
    }

    public static d0 l3(InputStream inputStream) throws IOException {
        return (d0) GeneratedMessageLite.parseFrom(f62064g, inputStream);
    }

    public static d0 m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d0) GeneratedMessageLite.parseFrom(f62064g, inputStream, extensionRegistryLite);
    }

    public static d0 n3(byte[] bArr) throws InvalidProtocolBufferException {
        return (d0) GeneratedMessageLite.parseFrom(f62064g, bArr);
    }

    public static d0 o3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (d0) GeneratedMessageLite.parseFrom(f62064g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(int i2) {
        this.f62066a = i2;
    }

    public static Parser<d0> parser() {
        return f62064g.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3(String str) {
        Objects.requireNonNull(str);
        this.f62068c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62068c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(boolean z3) {
        this.f62067b = z3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62069a[methodToInvoke.ordinal()]) {
            case 1:
                return new d0();
            case 2:
                return f62064g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                d0 d0Var = (d0) obj2;
                int i2 = this.f62066a;
                boolean z3 = i2 != 0;
                int i4 = d0Var.f62066a;
                this.f62066a = visitor.visitInt(z3, i2, i4 != 0, i4);
                boolean z4 = this.f62067b;
                boolean z5 = d0Var.f62067b;
                this.f62067b = visitor.visitBoolean(z4, z4, z5, z5);
                this.f62068c = visitor.visitString(!this.f62068c.isEmpty(), this.f62068c, !d0Var.f62068c.isEmpty(), d0Var.f62068c);
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
                                this.f62066a = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.f62067b = codedInputStream.readBool();
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62068c = codedInputStream.readStringRequireUtf8();
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
                if (f62065h == null) {
                    synchronized (d0.class) {
                        if (f62065h == null) {
                            f62065h = new GeneratedMessageLite.DefaultInstanceBasedParser(f62064g);
                        }
                    }
                }
                return f62065h;
            default:
                throw new UnsupportedOperationException();
        }
        return f62064g;
    }

    @Override // com.wufan.user.service.protobuf.e0
    public int getError() {
        return this.f62066a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62066a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        boolean z3 = this.f62067b;
        if (z3) {
            computeInt32Size += CodedOutputStream.computeBoolSize(2, z3);
        }
        if (!this.f62068c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, j());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.e0
    public boolean getStatus() {
        return this.f62067b;
    }

    @Override // com.wufan.user.service.protobuf.e0
    public ByteString i() {
        return ByteString.copyFromUtf8(this.f62068c);
    }

    @Override // com.wufan.user.service.protobuf.e0
    public String j() {
        return this.f62068c;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62066a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        boolean z3 = this.f62067b;
        if (z3) {
            codedOutputStream.writeBool(2, z3);
        }
        if (this.f62068c.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, j());
    }
}
