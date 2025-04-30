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
/* compiled from: MessageCheckTokenRequestParameters.java */
/* loaded from: classes2.dex */
public final class k extends GeneratedMessageLite<k, b> implements l {

    /* renamed from: e  reason: collision with root package name */
    public static final int f62137e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62138f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f62139g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f62140h = 4;

    /* renamed from: i  reason: collision with root package name */
    private static final k f62141i;

    /* renamed from: j  reason: collision with root package name */
    private static volatile Parser<k> f62142j;

    /* renamed from: a  reason: collision with root package name */
    private int f62143a;

    /* renamed from: b  reason: collision with root package name */
    private String f62144b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f62145c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f62146d = "";

    /* compiled from: MessageCheckTokenRequestParameters.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62147a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62147a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62147a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62147a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62147a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62147a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62147a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62147a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62147a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: MessageCheckTokenRequestParameters.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<k, b> implements l {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((k) this.instance).e3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((k) this.instance).f3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((k) this.instance).clearToken();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((k) this.instance).clearUid();
            return this;
        }

        public b W2(String str) {
            copyOnWrite();
            ((k) this.instance).t3(str);
            return this;
        }

        public b X2(ByteString byteString) {
            copyOnWrite();
            ((k) this.instance).u3(byteString);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((k) this.instance).v3(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((k) this.instance).w3(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.l
        public ByteString a() {
            return ((k) this.instance).a();
        }

        public b a3(String str) {
            copyOnWrite();
            ((k) this.instance).setToken(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.l
        public ByteString b() {
            return ((k) this.instance).b();
        }

        public b b3(ByteString byteString) {
            copyOnWrite();
            ((k) this.instance).setTokenBytes(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.l
        public String c() {
            return ((k) this.instance).c();
        }

        public b c3(int i2) {
            copyOnWrite();
            ((k) this.instance).setUid(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.l
        public String getAppVersion() {
            return ((k) this.instance).getAppVersion();
        }

        @Override // com.wufan.user.service.protobuf.l
        public String getToken() {
            return ((k) this.instance).getToken();
        }

        @Override // com.wufan.user.service.protobuf.l
        public ByteString getTokenBytes() {
            return ((k) this.instance).getTokenBytes();
        }

        @Override // com.wufan.user.service.protobuf.l
        public int getUid() {
            return ((k) this.instance).getUid();
        }

        private b() {
            super(k.f62141i);
        }
    }

    static {
        k kVar = new k();
        f62141i = kVar;
        kVar.makeImmutable();
    }

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearToken() {
        this.f62144b = g3().getToken();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUid() {
        this.f62143a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3() {
        this.f62145c = g3().getAppVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f62146d = g3().c();
    }

    public static k g3() {
        return f62141i;
    }

    public static b h3() {
        return f62141i.toBuilder();
    }

    public static b i3(k kVar) {
        return f62141i.toBuilder().mergeFrom((b) kVar);
    }

    public static k j3(InputStream inputStream) throws IOException {
        return (k) GeneratedMessageLite.parseDelimitedFrom(f62141i, inputStream);
    }

    public static k k3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (k) GeneratedMessageLite.parseDelimitedFrom(f62141i, inputStream, extensionRegistryLite);
    }

    public static k l3(ByteString byteString) throws InvalidProtocolBufferException {
        return (k) GeneratedMessageLite.parseFrom(f62141i, byteString);
    }

    public static k m3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (k) GeneratedMessageLite.parseFrom(f62141i, byteString, extensionRegistryLite);
    }

    public static k n3(CodedInputStream codedInputStream) throws IOException {
        return (k) GeneratedMessageLite.parseFrom(f62141i, codedInputStream);
    }

    public static k o3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (k) GeneratedMessageLite.parseFrom(f62141i, codedInputStream, extensionRegistryLite);
    }

    public static k p3(InputStream inputStream) throws IOException {
        return (k) GeneratedMessageLite.parseFrom(f62141i, inputStream);
    }

    public static Parser<k> parser() {
        return f62141i.getParserForType();
    }

    public static k q3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (k) GeneratedMessageLite.parseFrom(f62141i, inputStream, extensionRegistryLite);
    }

    public static k r3(byte[] bArr) throws InvalidProtocolBufferException {
        return (k) GeneratedMessageLite.parseFrom(f62141i, bArr);
    }

    public static k s3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (k) GeneratedMessageLite.parseFrom(f62141i, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setToken(String str) {
        Objects.requireNonNull(str);
        this.f62144b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTokenBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62144b = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUid(int i2) {
        this.f62143a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(String str) {
        Objects.requireNonNull(str);
        this.f62145c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62145c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(String str) {
        Objects.requireNonNull(str);
        this.f62146d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62146d = byteString.toStringUtf8();
    }

    @Override // com.wufan.user.service.protobuf.l
    public ByteString a() {
        return ByteString.copyFromUtf8(this.f62145c);
    }

    @Override // com.wufan.user.service.protobuf.l
    public ByteString b() {
        return ByteString.copyFromUtf8(this.f62146d);
    }

    @Override // com.wufan.user.service.protobuf.l
    public String c() {
        return this.f62146d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62147a[methodToInvoke.ordinal()]) {
            case 1:
                return new k();
            case 2:
                return f62141i;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                k kVar = (k) obj2;
                int i2 = this.f62143a;
                boolean z3 = i2 != 0;
                int i4 = kVar.f62143a;
                this.f62143a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62144b = visitor.visitString(!this.f62144b.isEmpty(), this.f62144b, !kVar.f62144b.isEmpty(), kVar.f62144b);
                this.f62145c = visitor.visitString(!this.f62145c.isEmpty(), this.f62145c, !kVar.f62145c.isEmpty(), kVar.f62145c);
                this.f62146d = visitor.visitString(!this.f62146d.isEmpty(), this.f62146d, !kVar.f62146d.isEmpty(), kVar.f62146d);
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
                                    this.f62143a = codedInputStream.readInt32();
                                } else if (readTag == 18) {
                                    this.f62144b = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 26) {
                                    this.f62145c = codedInputStream.readStringRequireUtf8();
                                } else if (readTag != 34) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.f62146d = codedInputStream.readStringRequireUtf8();
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
                if (f62142j == null) {
                    synchronized (k.class) {
                        if (f62142j == null) {
                            f62142j = new GeneratedMessageLite.DefaultInstanceBasedParser(f62141i);
                        }
                    }
                }
                return f62142j;
            default:
                throw new UnsupportedOperationException();
        }
        return f62141i;
    }

    @Override // com.wufan.user.service.protobuf.l
    public String getAppVersion() {
        return this.f62145c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62143a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (!this.f62144b.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(2, getToken());
        }
        if (!this.f62145c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, getAppVersion());
        }
        if (!this.f62146d.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(4, c());
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.l
    public String getToken() {
        return this.f62144b;
    }

    @Override // com.wufan.user.service.protobuf.l
    public ByteString getTokenBytes() {
        return ByteString.copyFromUtf8(this.f62144b);
    }

    @Override // com.wufan.user.service.protobuf.l
    public int getUid() {
        return this.f62143a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62143a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (!this.f62144b.isEmpty()) {
            codedOutputStream.writeString(2, getToken());
        }
        if (!this.f62145c.isEmpty()) {
            codedOutputStream.writeString(3, getAppVersion());
        }
        if (this.f62146d.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(4, c());
    }
}
