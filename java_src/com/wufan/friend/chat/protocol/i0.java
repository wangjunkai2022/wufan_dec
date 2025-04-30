package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: GetLocalBattleGameArgs.java */
/* loaded from: classes2.dex */
public final class i0 extends GeneratedMessageLite<i0, b> implements j0 {

    /* renamed from: c  reason: collision with root package name */
    public static final int f61770c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f61771d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final i0 f61772e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<i0> f61773f;

    /* renamed from: a  reason: collision with root package name */
    private int f61774a;

    /* renamed from: b  reason: collision with root package name */
    private long f61775b;

    /* compiled from: GetLocalBattleGameArgs.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61776a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61776a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61776a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61776a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61776a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61776a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61776a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61776a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61776a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: GetLocalBattleGameArgs.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<i0, b> implements j0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((i0) this.instance).X2();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((i0) this.instance).clearGameId();
            return this;
        }

        public b U2(int i2) {
            copyOnWrite();
            ((i0) this.instance).l3(i2);
            return this;
        }

        public b V2(long j4) {
            copyOnWrite();
            ((i0) this.instance).setGameId(j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public int d() {
            return ((i0) this.instance).d();
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public long getGameId() {
            return ((i0) this.instance).getGameId();
        }

        private b() {
            super(i0.f61772e);
        }
    }

    static {
        i0 i0Var = new i0();
        f61772e = i0Var;
        i0Var.makeImmutable();
    }

    private i0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X2() {
        this.f61774a = 0;
    }

    public static i0 Y2() {
        return f61772e;
    }

    public static b Z2() {
        return f61772e.toBuilder();
    }

    public static b a3(i0 i0Var) {
        return f61772e.toBuilder().mergeFrom((b) i0Var);
    }

    public static i0 b3(InputStream inputStream) throws IOException {
        return (i0) GeneratedMessageLite.parseDelimitedFrom(f61772e, inputStream);
    }

    public static i0 c3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (i0) GeneratedMessageLite.parseDelimitedFrom(f61772e, inputStream, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f61775b = 0L;
    }

    public static i0 d3(ByteString byteString) throws InvalidProtocolBufferException {
        return (i0) GeneratedMessageLite.parseFrom(f61772e, byteString);
    }

    public static i0 e3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (i0) GeneratedMessageLite.parseFrom(f61772e, byteString, extensionRegistryLite);
    }

    public static i0 f3(CodedInputStream codedInputStream) throws IOException {
        return (i0) GeneratedMessageLite.parseFrom(f61772e, codedInputStream);
    }

    public static i0 g3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (i0) GeneratedMessageLite.parseFrom(f61772e, codedInputStream, extensionRegistryLite);
    }

    public static i0 h3(InputStream inputStream) throws IOException {
        return (i0) GeneratedMessageLite.parseFrom(f61772e, inputStream);
    }

    public static i0 i3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (i0) GeneratedMessageLite.parseFrom(f61772e, inputStream, extensionRegistryLite);
    }

    public static i0 j3(byte[] bArr) throws InvalidProtocolBufferException {
        return (i0) GeneratedMessageLite.parseFrom(f61772e, bArr);
    }

    public static i0 k3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (i0) GeneratedMessageLite.parseFrom(f61772e, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l3(int i2) {
        this.f61774a = i2;
    }

    public static Parser<i0> parser() {
        return f61772e.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f61775b = j4;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public int d() {
        return this.f61774a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f61776a[methodToInvoke.ordinal()]) {
            case 1:
                return new i0();
            case 2:
                return f61772e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                i0 i0Var = (i0) obj2;
                int i2 = this.f61774a;
                boolean z4 = i2 != 0;
                int i4 = i0Var.f61774a;
                this.f61774a = visitor.visitInt(z4, i2, i4 != 0, i4);
                long j4 = this.f61775b;
                boolean z5 = j4 != 0;
                long j5 = i0Var.f61775b;
                this.f61775b = visitor.visitLong(z5, j4, j5 != 0, j5);
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
                                this.f61774a = codedInputStream.readInt32();
                            } else if (readTag != 16) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61775b = codedInputStream.readInt64();
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
                if (f61773f == null) {
                    synchronized (i0.class) {
                        if (f61773f == null) {
                            f61773f = new GeneratedMessageLite.DefaultInstanceBasedParser(f61772e);
                        }
                    }
                }
                return f61773f;
            default:
                throw new UnsupportedOperationException();
        }
        return f61772e;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public long getGameId() {
        return this.f61775b;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f61774a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        long j4 = this.f61775b;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(2, j4);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f61774a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        long j4 = this.f61775b;
        if (j4 != 0) {
            codedOutputStream.writeInt64(2, j4);
        }
    }
}
