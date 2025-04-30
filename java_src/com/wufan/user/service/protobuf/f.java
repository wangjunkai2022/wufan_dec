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
/* compiled from: MemberInfo.java */
/* loaded from: classes2.dex */
public final class f extends GeneratedMessageLite<f, b> implements g {

    /* renamed from: f  reason: collision with root package name */
    public static final int f62070f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f62071g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62072h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final int f62073i = 4;

    /* renamed from: j  reason: collision with root package name */
    public static final int f62074j = 5;

    /* renamed from: k  reason: collision with root package name */
    private static final f f62075k;

    /* renamed from: l  reason: collision with root package name */
    private static volatile Parser<f> f62076l;

    /* renamed from: a  reason: collision with root package name */
    private int f62077a;

    /* renamed from: b  reason: collision with root package name */
    private int f62078b;

    /* renamed from: c  reason: collision with root package name */
    private int f62079c;

    /* renamed from: d  reason: collision with root package name */
    private long f62080d;

    /* renamed from: e  reason: collision with root package name */
    private String f62081e = "";

    /* compiled from: MemberInfo.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62082a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62082a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62082a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62082a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62082a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62082a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62082a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62082a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62082a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: MemberInfo.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<f, b> implements g {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.user.service.protobuf.g
        public String C() {
            return ((f) this.instance).C();
        }

        @Override // com.wufan.user.service.protobuf.g
        public int J() {
            return ((f) this.instance).J();
        }

        public b S2() {
            copyOnWrite();
            ((f) this.instance).e3();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.g
        public int T1() {
            return ((f) this.instance).T1();
        }

        public b T2() {
            copyOnWrite();
            ((f) this.instance).f3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((f) this.instance).clearUid();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((f) this.instance).g3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((f) this.instance).h3();
            return this;
        }

        public b X2(String str) {
            copyOnWrite();
            ((f) this.instance).v3(str);
            return this;
        }

        public b Y2(ByteString byteString) {
            copyOnWrite();
            ((f) this.instance).w3(byteString);
            return this;
        }

        public b Z2(int i2) {
            copyOnWrite();
            ((f) this.instance).x3(i2);
            return this;
        }

        public b a3(int i2) {
            copyOnWrite();
            ((f) this.instance).setUid(i2);
            return this;
        }

        public b b3(long j4) {
            copyOnWrite();
            ((f) this.instance).y3(j4);
            return this;
        }

        public b c3(int i2) {
            copyOnWrite();
            ((f) this.instance).z3(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.g
        public int getUid() {
            return ((f) this.instance).getUid();
        }

        @Override // com.wufan.user.service.protobuf.g
        public long r() {
            return ((f) this.instance).r();
        }

        @Override // com.wufan.user.service.protobuf.g
        public ByteString w() {
            return ((f) this.instance).w();
        }

        private b() {
            super(f.f62075k);
        }
    }

    static {
        f fVar = new f();
        f62075k = fVar;
        fVar.makeImmutable();
    }

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUid() {
        this.f62077a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3() {
        this.f62081e = i3().C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f62079c = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3() {
        this.f62080d = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3() {
        this.f62078b = 0;
    }

    public static f i3() {
        return f62075k;
    }

    public static b j3() {
        return f62075k.toBuilder();
    }

    public static b k3(f fVar) {
        return f62075k.toBuilder().mergeFrom((b) fVar);
    }

    public static f l3(InputStream inputStream) throws IOException {
        return (f) GeneratedMessageLite.parseDelimitedFrom(f62075k, inputStream);
    }

    public static f m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f) GeneratedMessageLite.parseDelimitedFrom(f62075k, inputStream, extensionRegistryLite);
    }

    public static f n3(ByteString byteString) throws InvalidProtocolBufferException {
        return (f) GeneratedMessageLite.parseFrom(f62075k, byteString);
    }

    public static f o3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (f) GeneratedMessageLite.parseFrom(f62075k, byteString, extensionRegistryLite);
    }

    public static f p3(CodedInputStream codedInputStream) throws IOException {
        return (f) GeneratedMessageLite.parseFrom(f62075k, codedInputStream);
    }

    public static Parser<f> parser() {
        return f62075k.getParserForType();
    }

    public static f q3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f) GeneratedMessageLite.parseFrom(f62075k, codedInputStream, extensionRegistryLite);
    }

    public static f r3(InputStream inputStream) throws IOException {
        return (f) GeneratedMessageLite.parseFrom(f62075k, inputStream);
    }

    public static f s3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f) GeneratedMessageLite.parseFrom(f62075k, inputStream, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUid(int i2) {
        this.f62077a = i2;
    }

    public static f t3(byte[] bArr) throws InvalidProtocolBufferException {
        return (f) GeneratedMessageLite.parseFrom(f62075k, bArr);
    }

    public static f u3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (f) GeneratedMessageLite.parseFrom(f62075k, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(String str) {
        Objects.requireNonNull(str);
        this.f62081e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62081e = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(int i2) {
        this.f62079c = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(long j4) {
        this.f62080d = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(int i2) {
        this.f62078b = i2;
    }

    @Override // com.wufan.user.service.protobuf.g
    public String C() {
        return this.f62081e;
    }

    @Override // com.wufan.user.service.protobuf.g
    public int J() {
        return this.f62078b;
    }

    @Override // com.wufan.user.service.protobuf.g
    public int T1() {
        return this.f62079c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f62082a[methodToInvoke.ordinal()]) {
            case 1:
                return new f();
            case 2:
                return f62075k;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                f fVar = (f) obj2;
                int i2 = this.f62077a;
                boolean z4 = i2 != 0;
                int i4 = fVar.f62077a;
                this.f62077a = visitor.visitInt(z4, i2, i4 != 0, i4);
                int i5 = this.f62078b;
                boolean z5 = i5 != 0;
                int i6 = fVar.f62078b;
                this.f62078b = visitor.visitInt(z5, i5, i6 != 0, i6);
                int i7 = this.f62079c;
                boolean z6 = i7 != 0;
                int i8 = fVar.f62079c;
                this.f62079c = visitor.visitInt(z6, i7, i8 != 0, i8);
                long j4 = this.f62080d;
                boolean z7 = j4 != 0;
                long j5 = fVar.f62080d;
                this.f62080d = visitor.visitLong(z7, j4, j5 != 0, j5);
                this.f62081e = visitor.visitString(!this.f62081e.isEmpty(), this.f62081e, !fVar.f62081e.isEmpty(), fVar.f62081e);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.f62077a = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.f62078b = codedInputStream.readInt32();
                            } else if (readTag == 24) {
                                this.f62079c = codedInputStream.readInt32();
                            } else if (readTag == 32) {
                                this.f62080d = codedInputStream.readInt64();
                            } else if (readTag != 42) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62081e = codedInputStream.readStringRequireUtf8();
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
                if (f62076l == null) {
                    synchronized (f.class) {
                        if (f62076l == null) {
                            f62076l = new GeneratedMessageLite.DefaultInstanceBasedParser(f62075k);
                        }
                    }
                }
                return f62076l;
            default:
                throw new UnsupportedOperationException();
        }
        return f62075k;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62077a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        int i5 = this.f62078b;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(2, i5);
        }
        int i6 = this.f62079c;
        if (i6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(3, i6);
        }
        long j4 = this.f62080d;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(4, j4);
        }
        if (!this.f62081e.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(5, C());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.g
    public int getUid() {
        return this.f62077a;
    }

    @Override // com.wufan.user.service.protobuf.g
    public long r() {
        return this.f62080d;
    }

    @Override // com.wufan.user.service.protobuf.g
    public ByteString w() {
        return ByteString.copyFromUtf8(this.f62081e);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62077a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        int i4 = this.f62078b;
        if (i4 != 0) {
            codedOutputStream.writeInt32(2, i4);
        }
        int i5 = this.f62079c;
        if (i5 != 0) {
            codedOutputStream.writeInt32(3, i5);
        }
        long j4 = this.f62080d;
        if (j4 != 0) {
            codedOutputStream.writeInt64(4, j4);
        }
        if (this.f62081e.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(5, C());
    }
}
