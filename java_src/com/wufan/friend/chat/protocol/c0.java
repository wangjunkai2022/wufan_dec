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
/* compiled from: GameInfo.java */
/* loaded from: classes2.dex */
public final class c0 extends GeneratedMessageLite<c0, b> implements d0 {

    /* renamed from: c  reason: collision with root package name */
    public static final int f61681c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f61682d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final c0 f61683e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<c0> f61684f;

    /* renamed from: a  reason: collision with root package name */
    private long f61685a;

    /* renamed from: b  reason: collision with root package name */
    private String f61686b = "";

    /* compiled from: GameInfo.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61687a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61687a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61687a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61687a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61687a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61687a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61687a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61687a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61687a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: GameInfo.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<c0, b> implements d0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public ByteString R0() {
            return ((c0) this.instance).R0();
        }

        public b S2() {
            copyOnWrite();
            ((c0) this.instance).Y2();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((c0) this.instance).Z2();
            return this;
        }

        public b U2(long j4) {
            copyOnWrite();
            ((c0) this.instance).n3(j4);
            return this;
        }

        public b V2(String str) {
            copyOnWrite();
            ((c0) this.instance).o3(str);
            return this;
        }

        public b W2(ByteString byteString) {
            copyOnWrite();
            ((c0) this.instance).p3(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public String getName() {
            return ((c0) this.instance).getName();
        }

        @Override // com.wufan.friend.chat.protocol.d0
        public long k1() {
            return ((c0) this.instance).k1();
        }

        private b() {
            super(c0.f61683e);
        }
    }

    static {
        c0 c0Var = new c0();
        f61683e = c0Var;
        c0Var.makeImmutable();
    }

    private c0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y2() {
        this.f61685a = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z2() {
        this.f61686b = a3().getName();
    }

    public static c0 a3() {
        return f61683e;
    }

    public static b b3() {
        return f61683e.toBuilder();
    }

    public static b c3(c0 c0Var) {
        return f61683e.toBuilder().mergeFrom((b) c0Var);
    }

    public static c0 d3(InputStream inputStream) throws IOException {
        return (c0) GeneratedMessageLite.parseDelimitedFrom(f61683e, inputStream);
    }

    public static c0 e3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (c0) GeneratedMessageLite.parseDelimitedFrom(f61683e, inputStream, extensionRegistryLite);
    }

    public static c0 f3(ByteString byteString) throws InvalidProtocolBufferException {
        return (c0) GeneratedMessageLite.parseFrom(f61683e, byteString);
    }

    public static c0 g3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (c0) GeneratedMessageLite.parseFrom(f61683e, byteString, extensionRegistryLite);
    }

    public static c0 h3(CodedInputStream codedInputStream) throws IOException {
        return (c0) GeneratedMessageLite.parseFrom(f61683e, codedInputStream);
    }

    public static c0 i3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (c0) GeneratedMessageLite.parseFrom(f61683e, codedInputStream, extensionRegistryLite);
    }

    public static c0 j3(InputStream inputStream) throws IOException {
        return (c0) GeneratedMessageLite.parseFrom(f61683e, inputStream);
    }

    public static c0 k3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (c0) GeneratedMessageLite.parseFrom(f61683e, inputStream, extensionRegistryLite);
    }

    public static c0 l3(byte[] bArr) throws InvalidProtocolBufferException {
        return (c0) GeneratedMessageLite.parseFrom(f61683e, bArr);
    }

    public static c0 m3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (c0) GeneratedMessageLite.parseFrom(f61683e, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3(long j4) {
        this.f61685a = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3(String str) {
        Objects.requireNonNull(str);
        this.f61686b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61686b = byteString.toStringUtf8();
    }

    public static Parser<c0> parser() {
        return f61683e.getParserForType();
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public ByteString R0() {
        return ByteString.copyFromUtf8(this.f61686b);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f61687a[methodToInvoke.ordinal()]) {
            case 1:
                return new c0();
            case 2:
                return f61683e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                c0 c0Var = (c0) obj2;
                long j4 = this.f61685a;
                boolean z4 = j4 != 0;
                long j5 = c0Var.f61685a;
                this.f61685a = visitor.visitLong(z4, j4, j5 != 0, j5);
                this.f61686b = visitor.visitString(!this.f61686b.isEmpty(), this.f61686b, !c0Var.f61686b.isEmpty(), c0Var.f61686b);
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
                                this.f61685a = codedInputStream.readInt64();
                            } else if (readTag != 18) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61686b = codedInputStream.readStringRequireUtf8();
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
                if (f61684f == null) {
                    synchronized (c0.class) {
                        if (f61684f == null) {
                            f61684f = new GeneratedMessageLite.DefaultInstanceBasedParser(f61683e);
                        }
                    }
                }
                return f61684f;
            default:
                throw new UnsupportedOperationException();
        }
        return f61683e;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public String getName() {
        return this.f61686b;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        long j4 = this.f61685a;
        int computeInt64Size = j4 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j4) : 0;
        if (!this.f61686b.isEmpty()) {
            computeInt64Size += CodedOutputStream.computeStringSize(2, getName());
        }
        this.memoizedSerializedSize = computeInt64Size;
        return computeInt64Size;
    }

    @Override // com.wufan.friend.chat.protocol.d0
    public long k1() {
        return this.f61685a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j4 = this.f61685a;
        if (j4 != 0) {
            codedOutputStream.writeInt64(1, j4);
        }
        if (this.f61686b.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(2, getName());
    }
}
