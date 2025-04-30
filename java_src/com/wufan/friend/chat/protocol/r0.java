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
/* compiled from: LocalBattleGameInfo.java */
/* loaded from: classes2.dex */
public final class r0 extends GeneratedMessageLite<r0, b> implements s0 {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61860d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61861e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61862f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final r0 f61863g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<r0> f61864h;

    /* renamed from: a  reason: collision with root package name */
    private long f61865a;

    /* renamed from: b  reason: collision with root package name */
    private String f61866b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f61867c = "";

    /* compiled from: LocalBattleGameInfo.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61868a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61868a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61868a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61868a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61868a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61868a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61868a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61868a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61868a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: LocalBattleGameInfo.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<r0, b> implements s0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.s0
        public String I1() {
            return ((r0) this.instance).I1();
        }

        public b S2() {
            copyOnWrite();
            ((r0) this.instance).clearGameId();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((r0) this.instance).clearGameName();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((r0) this.instance).b3();
            return this;
        }

        public b V2(long j4) {
            copyOnWrite();
            ((r0) this.instance).setGameId(j4);
            return this;
        }

        public b W2(String str) {
            copyOnWrite();
            ((r0) this.instance).setGameName(str);
            return this;
        }

        public b X2(ByteString byteString) {
            copyOnWrite();
            ((r0) this.instance).setGameNameBytes(byteString);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((r0) this.instance).p3(str);
            return this;
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((r0) this.instance).q3(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.s0
        public long getGameId() {
            return ((r0) this.instance).getGameId();
        }

        @Override // com.wufan.friend.chat.protocol.s0
        public String getGameName() {
            return ((r0) this.instance).getGameName();
        }

        @Override // com.wufan.friend.chat.protocol.s0
        public ByteString getGameNameBytes() {
            return ((r0) this.instance).getGameNameBytes();
        }

        @Override // com.wufan.friend.chat.protocol.s0
        public ByteString w2() {
            return ((r0) this.instance).w2();
        }

        private b() {
            super(r0.f61863g);
        }
    }

    static {
        r0 r0Var = new r0();
        f61863g = r0Var;
        r0Var.makeImmutable();
    }

    private r0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3() {
        this.f61867c = c3().I1();
    }

    public static r0 c3() {
        return f61863g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f61865a = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameName() {
        this.f61866b = c3().getGameName();
    }

    public static b d3() {
        return f61863g.toBuilder();
    }

    public static b e3(r0 r0Var) {
        return f61863g.toBuilder().mergeFrom((b) r0Var);
    }

    public static r0 f3(InputStream inputStream) throws IOException {
        return (r0) GeneratedMessageLite.parseDelimitedFrom(f61863g, inputStream);
    }

    public static r0 g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (r0) GeneratedMessageLite.parseDelimitedFrom(f61863g, inputStream, extensionRegistryLite);
    }

    public static r0 h3(ByteString byteString) throws InvalidProtocolBufferException {
        return (r0) GeneratedMessageLite.parseFrom(f61863g, byteString);
    }

    public static r0 i3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (r0) GeneratedMessageLite.parseFrom(f61863g, byteString, extensionRegistryLite);
    }

    public static r0 j3(CodedInputStream codedInputStream) throws IOException {
        return (r0) GeneratedMessageLite.parseFrom(f61863g, codedInputStream);
    }

    public static r0 k3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (r0) GeneratedMessageLite.parseFrom(f61863g, codedInputStream, extensionRegistryLite);
    }

    public static r0 l3(InputStream inputStream) throws IOException {
        return (r0) GeneratedMessageLite.parseFrom(f61863g, inputStream);
    }

    public static r0 m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (r0) GeneratedMessageLite.parseFrom(f61863g, inputStream, extensionRegistryLite);
    }

    public static r0 n3(byte[] bArr) throws InvalidProtocolBufferException {
        return (r0) GeneratedMessageLite.parseFrom(f61863g, bArr);
    }

    public static r0 o3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (r0) GeneratedMessageLite.parseFrom(f61863g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(String str) {
        Objects.requireNonNull(str);
        this.f61867c = str;
    }

    public static Parser<r0> parser() {
        return f61863g.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61867c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f61865a = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameName(String str) {
        Objects.requireNonNull(str);
        this.f61866b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameNameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61866b = byteString.toStringUtf8();
    }

    @Override // com.wufan.friend.chat.protocol.s0
    public String I1() {
        return this.f61867c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f61868a[methodToInvoke.ordinal()]) {
            case 1:
                return new r0();
            case 2:
                return f61863g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                r0 r0Var = (r0) obj2;
                long j4 = this.f61865a;
                boolean z4 = j4 != 0;
                long j5 = r0Var.f61865a;
                this.f61865a = visitor.visitLong(z4, j4, j5 != 0, j5);
                this.f61866b = visitor.visitString(!this.f61866b.isEmpty(), this.f61866b, !r0Var.f61866b.isEmpty(), r0Var.f61866b);
                this.f61867c = visitor.visitString(!this.f61867c.isEmpty(), this.f61867c, !r0Var.f61867c.isEmpty(), r0Var.f61867c);
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
                                this.f61865a = codedInputStream.readInt64();
                            } else if (readTag == 18) {
                                this.f61866b = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61867c = codedInputStream.readStringRequireUtf8();
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
                if (f61864h == null) {
                    synchronized (r0.class) {
                        if (f61864h == null) {
                            f61864h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61863g);
                        }
                    }
                }
                return f61864h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61863g;
    }

    @Override // com.wufan.friend.chat.protocol.s0
    public long getGameId() {
        return this.f61865a;
    }

    @Override // com.wufan.friend.chat.protocol.s0
    public String getGameName() {
        return this.f61866b;
    }

    @Override // com.wufan.friend.chat.protocol.s0
    public ByteString getGameNameBytes() {
        return ByteString.copyFromUtf8(this.f61866b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        long j4 = this.f61865a;
        int computeInt64Size = j4 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j4) : 0;
        if (!this.f61866b.isEmpty()) {
            computeInt64Size += CodedOutputStream.computeStringSize(2, getGameName());
        }
        if (!this.f61867c.isEmpty()) {
            computeInt64Size += CodedOutputStream.computeStringSize(3, I1());
        }
        this.memoizedSerializedSize = computeInt64Size;
        return computeInt64Size;
    }

    @Override // com.wufan.friend.chat.protocol.s0
    public ByteString w2() {
        return ByteString.copyFromUtf8(this.f61867c);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j4 = this.f61865a;
        if (j4 != 0) {
            codedOutputStream.writeInt64(1, j4);
        }
        if (!this.f61866b.isEmpty()) {
            codedOutputStream.writeString(2, getGameName());
        }
        if (this.f61867c.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, I1());
    }
}
