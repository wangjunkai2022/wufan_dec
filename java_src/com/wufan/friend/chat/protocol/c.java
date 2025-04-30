package com.wufan.friend.chat.protocol;

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
/* compiled from: AckArgs.java */
/* loaded from: classes2.dex */
public final class c extends GeneratedMessageLite<c, b> implements d {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61672d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61673e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61674f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final c f61675g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<c> f61676h;

    /* renamed from: a  reason: collision with root package name */
    private long f61677a;

    /* renamed from: b  reason: collision with root package name */
    private long f61678b;

    /* renamed from: c  reason: collision with root package name */
    private String f61679c = "";

    /* compiled from: AckArgs.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61680a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61680a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61680a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61680a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61680a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61680a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61680a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61680a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61680a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: AckArgs.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<c, b> implements d {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.d
        public String H() {
            return ((c) this.instance).H();
        }

        @Override // com.wufan.friend.chat.protocol.d
        public ByteString L() {
            return ((c) this.instance).L();
        }

        @Override // com.wufan.friend.chat.protocol.d
        public long M() {
            return ((c) this.instance).M();
        }

        @Override // com.wufan.friend.chat.protocol.d
        public long O() {
            return ((c) this.instance).O();
        }

        public b S2() {
            copyOnWrite();
            ((c) this.instance).a3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((c) this.instance).b3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((c) this.instance).c3();
            return this;
        }

        public b V2(String str) {
            copyOnWrite();
            ((c) this.instance).q3(str);
            return this;
        }

        public b W2(ByteString byteString) {
            copyOnWrite();
            ((c) this.instance).r3(byteString);
            return this;
        }

        public b X2(long j4) {
            copyOnWrite();
            ((c) this.instance).s3(j4);
            return this;
        }

        public b Y2(long j4) {
            copyOnWrite();
            ((c) this.instance).t3(j4);
            return this;
        }

        private b() {
            super(c.f61675g);
        }
    }

    static {
        c cVar = new c();
        f61675g = cVar;
        cVar.makeImmutable();
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a3() {
        this.f61679c = d3().H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3() {
        this.f61677a = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3() {
        this.f61678b = 0L;
    }

    public static c d3() {
        return f61675g;
    }

    public static b e3() {
        return f61675g.toBuilder();
    }

    public static b f3(c cVar) {
        return f61675g.toBuilder().mergeFrom((b) cVar);
    }

    public static c g3(InputStream inputStream) throws IOException {
        return (c) GeneratedMessageLite.parseDelimitedFrom(f61675g, inputStream);
    }

    public static c h3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (c) GeneratedMessageLite.parseDelimitedFrom(f61675g, inputStream, extensionRegistryLite);
    }

    public static c i3(ByteString byteString) throws InvalidProtocolBufferException {
        return (c) GeneratedMessageLite.parseFrom(f61675g, byteString);
    }

    public static c j3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (c) GeneratedMessageLite.parseFrom(f61675g, byteString, extensionRegistryLite);
    }

    public static c k3(CodedInputStream codedInputStream) throws IOException {
        return (c) GeneratedMessageLite.parseFrom(f61675g, codedInputStream);
    }

    public static c l3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (c) GeneratedMessageLite.parseFrom(f61675g, codedInputStream, extensionRegistryLite);
    }

    public static c m3(InputStream inputStream) throws IOException {
        return (c) GeneratedMessageLite.parseFrom(f61675g, inputStream);
    }

    public static c n3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (c) GeneratedMessageLite.parseFrom(f61675g, inputStream, extensionRegistryLite);
    }

    public static c o3(byte[] bArr) throws InvalidProtocolBufferException {
        return (c) GeneratedMessageLite.parseFrom(f61675g, bArr);
    }

    public static c p3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (c) GeneratedMessageLite.parseFrom(f61675g, bArr, extensionRegistryLite);
    }

    public static Parser<c> parser() {
        return f61675g.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3(String str) {
        Objects.requireNonNull(str);
        this.f61679c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61679c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(long j4) {
        this.f61677a = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(long j4) {
        this.f61678b = j4;
    }

    @Override // com.wufan.friend.chat.protocol.d
    public String H() {
        return this.f61679c;
    }

    @Override // com.wufan.friend.chat.protocol.d
    public ByteString L() {
        return ByteString.copyFromUtf8(this.f61679c);
    }

    @Override // com.wufan.friend.chat.protocol.d
    public long M() {
        return this.f61678b;
    }

    @Override // com.wufan.friend.chat.protocol.d
    public long O() {
        return this.f61677a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f61680a[methodToInvoke.ordinal()]) {
            case 1:
                return new c();
            case 2:
                return f61675g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                c cVar = (c) obj2;
                long j4 = this.f61677a;
                boolean z4 = j4 != 0;
                long j5 = cVar.f61677a;
                this.f61677a = visitor.visitLong(z4, j4, j5 != 0, j5);
                long j6 = this.f61678b;
                boolean z5 = j6 != 0;
                long j7 = cVar.f61678b;
                this.f61678b = visitor.visitLong(z5, j6, j7 != 0, j7);
                this.f61679c = visitor.visitString(!this.f61679c.isEmpty(), this.f61679c, !cVar.f61679c.isEmpty(), cVar.f61679c);
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
                                this.f61677a = codedInputStream.readInt64();
                            } else if (readTag == 16) {
                                this.f61678b = codedInputStream.readInt64();
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61679c = codedInputStream.readStringRequireUtf8();
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
                if (f61676h == null) {
                    synchronized (c.class) {
                        if (f61676h == null) {
                            f61676h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61675g);
                        }
                    }
                }
                return f61676h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61675g;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        long j4 = this.f61677a;
        int computeInt64Size = j4 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j4) : 0;
        long j5 = this.f61678b;
        if (j5 != 0) {
            computeInt64Size += CodedOutputStream.computeInt64Size(2, j5);
        }
        if (!this.f61679c.isEmpty()) {
            computeInt64Size += CodedOutputStream.computeStringSize(3, H());
        }
        this.memoizedSerializedSize = computeInt64Size;
        return computeInt64Size;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j4 = this.f61677a;
        if (j4 != 0) {
            codedOutputStream.writeInt64(1, j4);
        }
        long j5 = this.f61678b;
        if (j5 != 0) {
            codedOutputStream.writeInt64(2, j5);
        }
        if (this.f61679c.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, H());
    }
}
