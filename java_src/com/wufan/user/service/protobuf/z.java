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
/* compiled from: RequestParameters.java */
/* loaded from: classes2.dex */
public final class z extends GeneratedMessageLite<z, b> implements a0 {

    /* renamed from: e  reason: collision with root package name */
    public static final int f62251e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62252f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f62253g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62254h = 4;

    /* renamed from: i  reason: collision with root package name */
    private static final z f62255i;

    /* renamed from: j  reason: collision with root package name */
    private static volatile Parser<z> f62256j;

    /* renamed from: a  reason: collision with root package name */
    private int f62257a;

    /* renamed from: b  reason: collision with root package name */
    private String f62258b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f62259c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f62260d = "";

    /* compiled from: RequestParameters.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62261a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62261a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62261a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62261a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62261a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62261a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62261a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62261a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62261a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: RequestParameters.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<z, b> implements a0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((z) this.instance).e3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((z) this.instance).f3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((z) this.instance).clearToken();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((z) this.instance).clearUid();
            return this;
        }

        public b W2(String str) {
            copyOnWrite();
            ((z) this.instance).t3(str);
            return this;
        }

        public b X2(ByteString byteString) {
            copyOnWrite();
            ((z) this.instance).u3(byteString);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((z) this.instance).v3(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((z) this.instance).w3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.a0
        public ByteString a() {
            return ((z) this.instance).a();
        }

        public b a3(String str) {
            copyOnWrite();
            ((z) this.instance).setToken(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.a0
        public ByteString b() {
            return ((z) this.instance).b();
        }

        public b b3(ByteString byteString) {
            copyOnWrite();
            ((z) this.instance).setTokenBytes(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.a0
        public String c() {
            return ((z) this.instance).c();
        }

        public b c3(int i2) {
            copyOnWrite();
            ((z) this.instance).setUid(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.a0
        public String getAppVersion() {
            return ((z) this.instance).getAppVersion();
        }

        @Override // com.wufan.user.service.protobuf.a0
        public String getToken() {
            return ((z) this.instance).getToken();
        }

        @Override // com.wufan.user.service.protobuf.a0
        public ByteString getTokenBytes() {
            return ((z) this.instance).getTokenBytes();
        }

        @Override // com.wufan.user.service.protobuf.a0
        public int getUid() {
            return ((z) this.instance).getUid();
        }

        private b() {
            super(z.f62255i);
        }
    }

    static {
        z zVar = new z();
        f62255i = zVar;
        zVar.makeImmutable();
    }

    private z() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearToken() {
        this.f62258b = g3().getToken();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUid() {
        this.f62257a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3() {
        this.f62260d = g3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f62259c = g3().c();
    }

    public static z g3() {
        return f62255i;
    }

    public static b h3() {
        return f62255i.toBuilder();
    }

    public static b i3(z zVar) {
        return f62255i.toBuilder().mergeFrom((b) zVar);
    }

    public static z j3(InputStream inputStream) throws IOException {
        return (z) GeneratedMessageLite.parseDelimitedFrom(f62255i, inputStream);
    }

    public static z k3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (z) GeneratedMessageLite.parseDelimitedFrom(f62255i, inputStream, extensionRegistryLite);
    }

    public static z l3(ByteString byteString) throws InvalidProtocolBufferException {
        return (z) GeneratedMessageLite.parseFrom(f62255i, byteString);
    }

    public static z m3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (z) GeneratedMessageLite.parseFrom(f62255i, byteString, extensionRegistryLite);
    }

    public static z n3(CodedInputStream codedInputStream) throws IOException {
        return (z) GeneratedMessageLite.parseFrom(f62255i, codedInputStream);
    }

    public static z o3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (z) GeneratedMessageLite.parseFrom(f62255i, codedInputStream, extensionRegistryLite);
    }

    public static z p3(InputStream inputStream) throws IOException {
        return (z) GeneratedMessageLite.parseFrom(f62255i, inputStream);
    }

    public static Parser<z> parser() {
        return f62255i.getParserForType();
    }

    public static z q3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (z) GeneratedMessageLite.parseFrom(f62255i, inputStream, extensionRegistryLite);
    }

    public static z r3(byte[] bArr) throws InvalidProtocolBufferException {
        return (z) GeneratedMessageLite.parseFrom(f62255i, bArr);
    }

    public static z s3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (z) GeneratedMessageLite.parseFrom(f62255i, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setToken(String str) {
        Objects.requireNonNull(str);
        this.f62258b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTokenBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62258b = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUid(int i2) {
        this.f62257a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(String str) {
        Objects.requireNonNull(str);
        this.f62260d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62260d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(String str) {
        Objects.requireNonNull(str);
        this.f62259c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62259c = byteString.toStringUtf8();
    }

    @Override // com.wufan.user.service.protobuf.a0
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f62260d);
    }

    @Override // com.wufan.user.service.protobuf.a0
    public ByteString b() {
        return ByteString.copyFromUtf8(this.f62259c);
    }

    @Override // com.wufan.user.service.protobuf.a0
    public String c() {
        return this.f62259c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62261a[methodToInvoke.ordinal()]) {
            case 1:
                return new z();
            case 2:
                return f62255i;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                z zVar = (z) obj2;
                int i2 = this.f62257a;
                boolean z3 = i2 != 0;
                int i4 = zVar.f62257a;
                this.f62257a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62258b = visitor.visitString(!this.f62258b.isEmpty(), this.f62258b, !zVar.f62258b.isEmpty(), zVar.f62258b);
                this.f62259c = visitor.visitString(!this.f62259c.isEmpty(), this.f62259c, !zVar.f62259c.isEmpty(), zVar.f62259c);
                this.f62260d = visitor.visitString(!this.f62260d.isEmpty(), this.f62260d, !zVar.f62260d.isEmpty(), zVar.f62260d);
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
                                if (readTag == 8) {
                                    this.f62257a = codedInputStream.readInt32();
                                } else if (readTag == 18) {
                                    this.f62258b = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 26) {
                                    this.f62259c = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 34) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.f62260d = codedInputStream.readStringRequireUtf8();
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
                if (f62256j == null) {
                    synchronized (z.class) {
                        if (f62256j == null) {
                            f62256j = new GeneratedMessageLite.DefaultInstanceBasedParser(f62255i);
                        }
                    }
                }
                return f62256j;
            default:
                throw new UnsupportedOperationException();
        }
        return f62255i;
    }

    @Override // com.wufan.user.service.protobuf.a0
    public String getAppVersion() {
        return this.f62260d;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62257a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (!this.f62258b.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(2, getToken());
        }
        if (!this.f62259c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, c());
        }
        if (!this.f62260d.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(4, getAppVersion());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.a0
    public String getToken() {
        return this.f62258b;
    }

    @Override // com.wufan.user.service.protobuf.a0
    public ByteString getTokenBytes() {
        return ByteString.copyFromUtf8(this.f62258b);
    }

    @Override // com.wufan.user.service.protobuf.a0
    public int getUid() {
        return this.f62257a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62257a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (!this.f62258b.isEmpty()) {
            codedOutputStream.writeString(2, getToken());
        }
        if (!this.f62259c.isEmpty()) {
            codedOutputStream.writeString(3, c());
        }
        if (this.f62260d.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(4, getAppVersion());
    }
}
