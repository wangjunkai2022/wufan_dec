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
/* compiled from: ErrorMsg.java */
/* loaded from: classes2.dex */
public final class a extends GeneratedMessageLite<a, b> implements com.wufan.user.service.protobuf.b {

    /* renamed from: c  reason: collision with root package name */
    public static final int f62032c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f62033d = 3;

    /* renamed from: e  reason: collision with root package name */
    private static final a f62034e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<a> f62035f;

    /* renamed from: a  reason: collision with root package name */
    private int f62036a;

    /* renamed from: b  reason: collision with root package name */
    private String f62037b = "";

    /* compiled from: ErrorMsg.java */
    /* renamed from: com.wufan.user.service.protobuf.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C0366a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62038a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62038a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62038a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62038a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62038a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62038a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62038a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62038a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62038a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: ErrorMsg.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<a, b> implements com.wufan.user.service.protobuf.b {
        /* synthetic */ b(C0366a c0366a) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((a) this.instance).clearError();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((a) this.instance).Y2();
            return this;
        }

        public b U2(int i2) {
            copyOnWrite();
            ((a) this.instance).m3(i2);
            return this;
        }

        public b V2(String str) {
            copyOnWrite();
            ((a) this.instance).n3(str);
            return this;
        }

        public b W2(ByteString byteString) {
            copyOnWrite();
            ((a) this.instance).o3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.b
        public int getError() {
            return ((a) this.instance).getError();
        }

        @Override // com.wufan.user.service.protobuf.b
        public ByteString i() {
            return ((a) this.instance).i();
        }

        @Override // com.wufan.user.service.protobuf.b
        public String j() {
            return ((a) this.instance).j();
        }

        private b() {
            super(a.f62034e);
        }
    }

    static {
        a aVar = new a();
        f62034e = aVar;
        aVar.makeImmutable();
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y2() {
        this.f62037b = Z2().j();
    }

    public static a Z2() {
        return f62034e;
    }

    public static b a3() {
        return f62034e.toBuilder();
    }

    public static b b3(a aVar) {
        return f62034e.toBuilder().mergeFrom((b) aVar);
    }

    public static a c3(InputStream inputStream) throws IOException {
        return (a) GeneratedMessageLite.parseDelimitedFrom(f62034e, inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearError() {
        this.f62036a = 0;
    }

    public static a d3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a) GeneratedMessageLite.parseDelimitedFrom(f62034e, inputStream, extensionRegistryLite);
    }

    public static a e3(ByteString byteString) throws InvalidProtocolBufferException {
        return (a) GeneratedMessageLite.parseFrom(f62034e, byteString);
    }

    public static a f3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (a) GeneratedMessageLite.parseFrom(f62034e, byteString, extensionRegistryLite);
    }

    public static a g3(CodedInputStream codedInputStream) throws IOException {
        return (a) GeneratedMessageLite.parseFrom(f62034e, codedInputStream);
    }

    public static a h3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a) GeneratedMessageLite.parseFrom(f62034e, codedInputStream, extensionRegistryLite);
    }

    public static a i3(InputStream inputStream) throws IOException {
        return (a) GeneratedMessageLite.parseFrom(f62034e, inputStream);
    }

    public static a j3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a) GeneratedMessageLite.parseFrom(f62034e, inputStream, extensionRegistryLite);
    }

    public static a k3(byte[] bArr) throws InvalidProtocolBufferException {
        return (a) GeneratedMessageLite.parseFrom(f62034e, bArr);
    }

    public static a l3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (a) GeneratedMessageLite.parseFrom(f62034e, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3(int i2) {
        this.f62036a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3(String str) {
        Objects.requireNonNull(str);
        this.f62037b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62037b = byteString.toStringUtf8();
    }

    public static Parser<a> parser() {
        return f62034e.getParserForType();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C0366a.f62038a[methodToInvoke.ordinal()]) {
            case 1:
                return new a();
            case 2:
                return f62034e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                a aVar = (a) obj2;
                int i2 = this.f62036a;
                boolean z3 = i2 != 0;
                int i4 = aVar.f62036a;
                this.f62036a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62037b = visitor.visitString(!this.f62037b.isEmpty(), this.f62037b, !aVar.f62037b.isEmpty(), aVar.f62037b);
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
                                this.f62036a = codedInputStream.readInt32();
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62037b = codedInputStream.readStringRequireUtf8();
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
                if (f62035f == null) {
                    synchronized (a.class) {
                        if (f62035f == null) {
                            f62035f = new GeneratedMessageLite.DefaultInstanceBasedParser(f62034e);
                        }
                    }
                }
                return f62035f;
            default:
                throw new UnsupportedOperationException();
        }
        return f62034e;
    }

    @Override // com.wufan.user.service.protobuf.b
    public int getError() {
        return this.f62036a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62036a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (!this.f62037b.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, j());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.b
    public ByteString i() {
        return ByteString.copyFromUtf8(this.f62037b);
    }

    @Override // com.wufan.user.service.protobuf.b
    public String j() {
        return this.f62037b;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62036a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (this.f62037b.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, j());
    }
}
