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
/* compiled from: RecommendPlayer.java */
/* loaded from: classes2.dex */
public final class j1 extends GeneratedMessageLite<j1, b> implements n1 {

    /* renamed from: i  reason: collision with root package name */
    public static final int f61777i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f61778j = 2;

    /* renamed from: k  reason: collision with root package name */
    public static final int f61779k = 3;

    /* renamed from: l  reason: collision with root package name */
    public static final int f61780l = 4;

    /* renamed from: m  reason: collision with root package name */
    public static final int f61781m = 5;

    /* renamed from: n  reason: collision with root package name */
    public static final int f61782n = 6;

    /* renamed from: o  reason: collision with root package name */
    public static final int f61783o = 7;

    /* renamed from: p  reason: collision with root package name */
    public static final int f61784p = 8;

    /* renamed from: q  reason: collision with root package name */
    private static final j1 f61785q;

    /* renamed from: r  reason: collision with root package name */
    private static volatile Parser<j1> f61786r;

    /* renamed from: a  reason: collision with root package name */
    private int f61787a;

    /* renamed from: d  reason: collision with root package name */
    private long f61790d;

    /* renamed from: f  reason: collision with root package name */
    private int f61792f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f61794h;

    /* renamed from: b  reason: collision with root package name */
    private String f61788b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f61789c = "";

    /* renamed from: e  reason: collision with root package name */
    private String f61791e = "";

    /* renamed from: g  reason: collision with root package name */
    private String f61793g = "";

    /* compiled from: RecommendPlayer.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61795a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61795a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61795a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61795a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61795a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61795a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61795a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61795a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61795a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: RecommendPlayer.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<j1, b> implements n1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((j1) this.instance).n3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((j1) this.instance).clearAvatar();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((j1) this.instance).o3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public ByteString V1() {
            return ((j1) this.instance).V1();
        }

        public b V2() {
            copyOnWrite();
            ((j1) this.instance).clearGameId();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((j1) this.instance).clearGameName();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((j1) this.instance).p3();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((j1) this.instance).q3();
            return this;
        }

        public b Z2() {
            copyOnWrite();
            ((j1) this.instance).clearNickname();
            return this;
        }

        public b a3(int i2) {
            copyOnWrite();
            ((j1) this.instance).E3(i2);
            return this;
        }

        public b b3(String str) {
            copyOnWrite();
            ((j1) this.instance).setAvatar(str);
            return this;
        }

        public b c3(ByteString byteString) {
            copyOnWrite();
            ((j1) this.instance).setAvatarBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public int d() {
            return ((j1) this.instance).d();
        }

        public b d3(boolean z3) {
            copyOnWrite();
            ((j1) this.instance).F3(z3);
            return this;
        }

        public b e3(long j4) {
            copyOnWrite();
            ((j1) this.instance).setGameId(j4);
            return this;
        }

        public b f3(String str) {
            copyOnWrite();
            ((j1) this.instance).setGameName(str);
            return this;
        }

        public b g3(ByteString byteString) {
            copyOnWrite();
            ((j1) this.instance).setGameNameBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public String getAvatar() {
            return ((j1) this.instance).getAvatar();
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public ByteString getAvatarBytes() {
            return ((j1) this.instance).getAvatarBytes();
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public long getGameId() {
            return ((j1) this.instance).getGameId();
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public String getGameName() {
            return ((j1) this.instance).getGameName();
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public ByteString getGameNameBytes() {
            return ((j1) this.instance).getGameNameBytes();
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public String getNickname() {
            return ((j1) this.instance).getNickname();
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public ByteString getNicknameBytes() {
            return ((j1) this.instance).getNicknameBytes();
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public int h() {
            return ((j1) this.instance).h();
        }

        public b h3(int i2) {
            copyOnWrite();
            ((j1) this.instance).G3(i2);
            return this;
        }

        public b i3(String str) {
            copyOnWrite();
            ((j1) this.instance).H3(str);
            return this;
        }

        public b j3(ByteString byteString) {
            copyOnWrite();
            ((j1) this.instance).I3(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public String k0() {
            return ((j1) this.instance).k0();
        }

        public b k3(String str) {
            copyOnWrite();
            ((j1) this.instance).setNickname(str);
            return this;
        }

        public b l3(ByteString byteString) {
            copyOnWrite();
            ((j1) this.instance).setNicknameBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.n1
        public boolean z() {
            return ((j1) this.instance).z();
        }

        private b() {
            super(j1.f61785q);
        }
    }

    static {
        j1 j1Var = new j1();
        f61785q = j1Var;
        j1Var.makeImmutable();
    }

    private j1() {
    }

    public static j1 A3(InputStream inputStream) throws IOException {
        return (j1) GeneratedMessageLite.parseFrom(f61785q, inputStream);
    }

    public static j1 B3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (j1) GeneratedMessageLite.parseFrom(f61785q, inputStream, extensionRegistryLite);
    }

    public static j1 C3(byte[] bArr) throws InvalidProtocolBufferException {
        return (j1) GeneratedMessageLite.parseFrom(f61785q, bArr);
    }

    public static j1 D3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (j1) GeneratedMessageLite.parseFrom(f61785q, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E3(int i2) {
        this.f61787a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F3(boolean z3) {
        this.f61794h = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G3(int i2) {
        this.f61792f = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H3(String str) {
        Objects.requireNonNull(str);
        this.f61793g = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61793g = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAvatar() {
        this.f61788b = r3().getAvatar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f61790d = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameName() {
        this.f61791e = r3().getGameName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNickname() {
        this.f61789c = r3().getNickname();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3() {
        this.f61787a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3() {
        this.f61794h = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3() {
        this.f61792f = 0;
    }

    public static Parser<j1> parser() {
        return f61785q.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3() {
        this.f61793g = r3().k0();
    }

    public static j1 r3() {
        return f61785q;
    }

    public static b s3() {
        return f61785q.toBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvatar(String str) {
        Objects.requireNonNull(str);
        this.f61788b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvatarBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61788b = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f61790d = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameName(String str) {
        Objects.requireNonNull(str);
        this.f61791e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameNameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61791e = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNickname(String str) {
        Objects.requireNonNull(str);
        this.f61789c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNicknameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61789c = byteString.toStringUtf8();
    }

    public static b t3(j1 j1Var) {
        return f61785q.toBuilder().mergeFrom((b) j1Var);
    }

    public static j1 u3(InputStream inputStream) throws IOException {
        return (j1) GeneratedMessageLite.parseDelimitedFrom(f61785q, inputStream);
    }

    public static j1 v3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (j1) GeneratedMessageLite.parseDelimitedFrom(f61785q, inputStream, extensionRegistryLite);
    }

    public static j1 w3(ByteString byteString) throws InvalidProtocolBufferException {
        return (j1) GeneratedMessageLite.parseFrom(f61785q, byteString);
    }

    public static j1 x3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (j1) GeneratedMessageLite.parseFrom(f61785q, byteString, extensionRegistryLite);
    }

    public static j1 y3(CodedInputStream codedInputStream) throws IOException {
        return (j1) GeneratedMessageLite.parseFrom(f61785q, codedInputStream);
    }

    public static j1 z3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (j1) GeneratedMessageLite.parseFrom(f61785q, codedInputStream, extensionRegistryLite);
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public ByteString V1() {
        return ByteString.copyFromUtf8(this.f61793g);
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public int d() {
        return this.f61787a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61795a[methodToInvoke.ordinal()]) {
            case 1:
                return new j1();
            case 2:
                return f61785q;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                j1 j1Var = (j1) obj2;
                int i2 = this.f61787a;
                boolean z3 = i2 != 0;
                int i4 = j1Var.f61787a;
                this.f61787a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f61788b = visitor.visitString(!this.f61788b.isEmpty(), this.f61788b, !j1Var.f61788b.isEmpty(), j1Var.f61788b);
                this.f61789c = visitor.visitString(!this.f61789c.isEmpty(), this.f61789c, !j1Var.f61789c.isEmpty(), j1Var.f61789c);
                long j4 = this.f61790d;
                boolean z4 = j4 != 0;
                long j5 = j1Var.f61790d;
                this.f61790d = visitor.visitLong(z4, j4, j5 != 0, j5);
                this.f61791e = visitor.visitString(!this.f61791e.isEmpty(), this.f61791e, !j1Var.f61791e.isEmpty(), j1Var.f61791e);
                int i5 = this.f61792f;
                boolean z5 = i5 != 0;
                int i6 = j1Var.f61792f;
                this.f61792f = visitor.visitInt(z5, i5, i6 != 0, i6);
                this.f61793g = visitor.visitString(!this.f61793g.isEmpty(), this.f61793g, !j1Var.f61793g.isEmpty(), j1Var.f61793g);
                boolean z6 = this.f61794h;
                boolean z7 = j1Var.f61794h;
                this.f61794h = visitor.visitBoolean(z6, z6, z7, z7);
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
                                this.f61787a = codedInputStream.readInt32();
                            } else if (readTag == 18) {
                                this.f61788b = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 26) {
                                this.f61789c = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 32) {
                                this.f61790d = codedInputStream.readInt64();
                            } else if (readTag == 42) {
                                this.f61791e = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 48) {
                                this.f61792f = codedInputStream.readInt32();
                            } else if (readTag == 58) {
                                this.f61793g = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 64) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61794h = codedInputStream.readBool();
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
                if (f61786r == null) {
                    synchronized (j1.class) {
                        if (f61786r == null) {
                            f61786r = new GeneratedMessageLite.DefaultInstanceBasedParser(f61785q);
                        }
                    }
                }
                return f61786r;
            default:
                throw new UnsupportedOperationException();
        }
        return f61785q;
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public String getAvatar() {
        return this.f61788b;
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public ByteString getAvatarBytes() {
        return ByteString.copyFromUtf8(this.f61788b);
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public long getGameId() {
        return this.f61790d;
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public String getGameName() {
        return this.f61791e;
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public ByteString getGameNameBytes() {
        return ByteString.copyFromUtf8(this.f61791e);
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public String getNickname() {
        return this.f61789c;
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public ByteString getNicknameBytes() {
        return ByteString.copyFromUtf8(this.f61789c);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f61787a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (!this.f61788b.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(2, getAvatar());
        }
        if (!this.f61789c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(3, getNickname());
        }
        long j4 = this.f61790d;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(4, j4);
        }
        if (!this.f61791e.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(5, getGameName());
        }
        int i5 = this.f61792f;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(6, i5);
        }
        if (!this.f61793g.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(7, k0());
        }
        boolean z3 = this.f61794h;
        if (z3) {
            computeInt32Size += CodedOutputStream.computeBoolSize(8, z3);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public int h() {
        return this.f61792f;
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public String k0() {
        return this.f61793g;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f61787a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (!this.f61788b.isEmpty()) {
            codedOutputStream.writeString(2, getAvatar());
        }
        if (!this.f61789c.isEmpty()) {
            codedOutputStream.writeString(3, getNickname());
        }
        long j4 = this.f61790d;
        if (j4 != 0) {
            codedOutputStream.writeInt64(4, j4);
        }
        if (!this.f61791e.isEmpty()) {
            codedOutputStream.writeString(5, getGameName());
        }
        int i4 = this.f61792f;
        if (i4 != 0) {
            codedOutputStream.writeInt32(6, i4);
        }
        if (!this.f61793g.isEmpty()) {
            codedOutputStream.writeString(7, k0());
        }
        boolean z3 = this.f61794h;
        if (z3) {
            codedOutputStream.writeBool(8, z3);
        }
    }

    @Override // com.wufan.friend.chat.protocol.n1
    public boolean z() {
        return this.f61794h;
    }
}
