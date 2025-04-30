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
/* compiled from: KickNotification.java */
/* loaded from: classes2.dex */
public final class l0 extends GeneratedMessageLite<l0, b> implements m0 {

    /* renamed from: b  reason: collision with root package name */
    public static final int f61803b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final l0 f61804c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Parser<l0> f61805d;

    /* renamed from: a  reason: collision with root package name */
    private String f61806a = "";

    /* compiled from: KickNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61807a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61807a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61807a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61807a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61807a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61807a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61807a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61807a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61807a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: KickNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<l0, b> implements m0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public String L1() {
            return ((l0) this.instance).L1();
        }

        public b S2() {
            copyOnWrite();
            ((l0) this.instance).W2();
            return this;
        }

        public b T2(String str) {
            copyOnWrite();
            ((l0) this.instance).k3(str);
            return this;
        }

        public b U2(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).l3(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.m0
        public ByteString b2() {
            return ((l0) this.instance).b2();
        }

        private b() {
            super(l0.f61804c);
        }
    }

    static {
        l0 l0Var = new l0();
        f61804c = l0Var;
        l0Var.makeImmutable();
    }

    private l0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W2() {
        this.f61806a = X2().L1();
    }

    public static l0 X2() {
        return f61804c;
    }

    public static b Y2() {
        return f61804c.toBuilder();
    }

    public static b Z2(l0 l0Var) {
        return f61804c.toBuilder().mergeFrom((b) l0Var);
    }

    public static l0 a3(InputStream inputStream) throws IOException {
        return (l0) GeneratedMessageLite.parseDelimitedFrom(f61804c, inputStream);
    }

    public static l0 b3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l0) GeneratedMessageLite.parseDelimitedFrom(f61804c, inputStream, extensionRegistryLite);
    }

    public static l0 c3(ByteString byteString) throws InvalidProtocolBufferException {
        return (l0) GeneratedMessageLite.parseFrom(f61804c, byteString);
    }

    public static l0 d3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (l0) GeneratedMessageLite.parseFrom(f61804c, byteString, extensionRegistryLite);
    }

    public static l0 e3(CodedInputStream codedInputStream) throws IOException {
        return (l0) GeneratedMessageLite.parseFrom(f61804c, codedInputStream);
    }

    public static l0 f3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l0) GeneratedMessageLite.parseFrom(f61804c, codedInputStream, extensionRegistryLite);
    }

    public static l0 g3(InputStream inputStream) throws IOException {
        return (l0) GeneratedMessageLite.parseFrom(f61804c, inputStream);
    }

    public static l0 h3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l0) GeneratedMessageLite.parseFrom(f61804c, inputStream, extensionRegistryLite);
    }

    public static l0 i3(byte[] bArr) throws InvalidProtocolBufferException {
        return (l0) GeneratedMessageLite.parseFrom(f61804c, bArr);
    }

    public static l0 j3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (l0) GeneratedMessageLite.parseFrom(f61804c, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k3(String str) {
        Objects.requireNonNull(str);
        this.f61806a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61806a = byteString.toStringUtf8();
    }

    public static Parser<l0> parser() {
        return f61804c.getParserForType();
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public String L1() {
        return this.f61806a;
    }

    @Override // com.wufan.friend.chat.protocol.m0
    public ByteString b2() {
        return ByteString.copyFromUtf8(this.f61806a);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61807a[methodToInvoke.ordinal()]) {
            case 1:
                return new l0();
            case 2:
                return f61804c;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                l0 l0Var = (l0) obj2;
                this.f61806a = ((GeneratedMessageLite.Visitor) obj).visitString(!this.f61806a.isEmpty(), this.f61806a, true ^ l0Var.f61806a.isEmpty(), l0Var.f61806a);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z3 = false;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag != 10) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61806a = codedInputStream.readStringRequireUtf8();
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
                if (f61805d == null) {
                    synchronized (l0.class) {
                        if (f61805d == null) {
                            f61805d = new GeneratedMessageLite.DefaultInstanceBasedParser(f61804c);
                        }
                    }
                }
                return f61805d;
            default:
                throw new UnsupportedOperationException();
        }
        return f61804c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.f61806a.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, L1());
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61806a.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(1, L1());
    }
}
