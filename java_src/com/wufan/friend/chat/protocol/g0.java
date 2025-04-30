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
/* compiled from: GameInviteNotification.java */
/* loaded from: classes2.dex */
public final class g0 extends GeneratedMessageLite<g0, b> implements h0 {

    /* renamed from: k  reason: collision with root package name */
    public static final int f61739k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f61740l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final int f61741m = 3;

    /* renamed from: n  reason: collision with root package name */
    public static final int f61742n = 4;

    /* renamed from: o  reason: collision with root package name */
    public static final int f61743o = 5;

    /* renamed from: p  reason: collision with root package name */
    public static final int f61744p = 6;

    /* renamed from: q  reason: collision with root package name */
    public static final int f61745q = 7;

    /* renamed from: r  reason: collision with root package name */
    public static final int f61746r = 8;

    /* renamed from: s  reason: collision with root package name */
    public static final int f61747s = 9;

    /* renamed from: t  reason: collision with root package name */
    public static final int f61748t = 10;

    /* renamed from: u  reason: collision with root package name */
    private static final g0 f61749u;

    /* renamed from: v  reason: collision with root package name */
    private static volatile Parser<g0> f61750v;

    /* renamed from: a  reason: collision with root package name */
    private int f61751a;

    /* renamed from: c  reason: collision with root package name */
    private long f61753c;

    /* renamed from: d  reason: collision with root package name */
    private long f61754d;

    /* renamed from: h  reason: collision with root package name */
    private boolean f61758h;

    /* renamed from: i  reason: collision with root package name */
    private int f61759i;

    /* renamed from: j  reason: collision with root package name */
    private int f61760j;

    /* renamed from: b  reason: collision with root package name */
    private String f61752b = "";

    /* renamed from: e  reason: collision with root package name */
    private String f61755e = "";

    /* renamed from: f  reason: collision with root package name */
    private String f61756f = "";

    /* renamed from: g  reason: collision with root package name */
    private String f61757g = "";

    /* compiled from: GameInviteNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61761a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61761a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61761a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61761a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61761a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61761a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61761a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61761a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61761a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: GameInviteNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<g0, b> implements h0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public ByteString I() {
            return ((g0) this.instance).I();
        }

        public b S2() {
            copyOnWrite();
            ((g0) this.instance).r3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((g0) this.instance).clearAvatar();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((g0) this.instance).s3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((g0) this.instance).t3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((g0) this.instance).u3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public String X() {
            return ((g0) this.instance).X();
        }

        public b X2() {
            copyOnWrite();
            ((g0) this.instance).clearGameId();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((g0) this.instance).clearGameName();
            return this;
        }

        public b Z2() {
            copyOnWrite();
            ((g0) this.instance).v3();
            return this;
        }

        public b a3() {
            copyOnWrite();
            ((g0) this.instance).w3();
            return this;
        }

        public b b3() {
            copyOnWrite();
            ((g0) this.instance).x3();
            return this;
        }

        public b c3(int i2) {
            copyOnWrite();
            ((g0) this.instance).L3(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public int d() {
            return ((g0) this.instance).d();
        }

        public b d3(String str) {
            copyOnWrite();
            ((g0) this.instance).setAvatar(str);
            return this;
        }

        public b e3(ByteString byteString) {
            copyOnWrite();
            ((g0) this.instance).setAvatarBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public long f() {
            return ((g0) this.instance).f();
        }

        public b f3(boolean z3) {
            copyOnWrite();
            ((g0) this.instance).M3(z3);
            return this;
        }

        public b g3(int i2) {
            copyOnWrite();
            ((g0) this.instance).N3(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public String getAvatar() {
            return ((g0) this.instance).getAvatar();
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public ByteString getAvatarBytes() {
            return ((g0) this.instance).getAvatarBytes();
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public long getGameId() {
            return ((g0) this.instance).getGameId();
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public String getGameName() {
            return ((g0) this.instance).getGameName();
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public ByteString getGameNameBytes() {
            return ((g0) this.instance).getGameNameBytes();
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public int getSource() {
            return ((g0) this.instance).getSource();
        }

        public b h3(String str) {
            copyOnWrite();
            ((g0) this.instance).O3(str);
            return this;
        }

        public b i3(ByteString byteString) {
            copyOnWrite();
            ((g0) this.instance).P3(byteString);
            return this;
        }

        public b j3(long j4) {
            copyOnWrite();
            ((g0) this.instance).setGameId(j4);
            return this;
        }

        public b k3(String str) {
            copyOnWrite();
            ((g0) this.instance).setGameName(str);
            return this;
        }

        public b l3(ByteString byteString) {
            copyOnWrite();
            ((g0) this.instance).setGameNameBytes(byteString);
            return this;
        }

        public b m3(long j4) {
            copyOnWrite();
            ((g0) this.instance).Q3(j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public ByteString n1() {
            return ((g0) this.instance).n1();
        }

        public b n3(String str) {
            copyOnWrite();
            ((g0) this.instance).R3(str);
            return this;
        }

        public b o3(ByteString byteString) {
            copyOnWrite();
            ((g0) this.instance).S3(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public String p() {
            return ((g0) this.instance).p();
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public int p0() {
            return ((g0) this.instance).p0();
        }

        public b p3(int i2) {
            copyOnWrite();
            ((g0) this.instance).T3(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.h0
        public boolean u() {
            return ((g0) this.instance).u();
        }

        private b() {
            super(g0.f61749u);
        }
    }

    static {
        g0 g0Var = new g0();
        f61749u = g0Var;
        g0Var.makeImmutable();
    }

    private g0() {
    }

    public static b A3(g0 g0Var) {
        return f61749u.toBuilder().mergeFrom((b) g0Var);
    }

    public static g0 B3(InputStream inputStream) throws IOException {
        return (g0) GeneratedMessageLite.parseDelimitedFrom(f61749u, inputStream);
    }

    public static g0 C3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (g0) GeneratedMessageLite.parseDelimitedFrom(f61749u, inputStream, extensionRegistryLite);
    }

    public static g0 D3(ByteString byteString) throws InvalidProtocolBufferException {
        return (g0) GeneratedMessageLite.parseFrom(f61749u, byteString);
    }

    public static g0 E3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (g0) GeneratedMessageLite.parseFrom(f61749u, byteString, extensionRegistryLite);
    }

    public static g0 F3(CodedInputStream codedInputStream) throws IOException {
        return (g0) GeneratedMessageLite.parseFrom(f61749u, codedInputStream);
    }

    public static g0 G3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (g0) GeneratedMessageLite.parseFrom(f61749u, codedInputStream, extensionRegistryLite);
    }

    public static g0 H3(InputStream inputStream) throws IOException {
        return (g0) GeneratedMessageLite.parseFrom(f61749u, inputStream);
    }

    public static g0 I3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (g0) GeneratedMessageLite.parseFrom(f61749u, inputStream, extensionRegistryLite);
    }

    public static g0 J3(byte[] bArr) throws InvalidProtocolBufferException {
        return (g0) GeneratedMessageLite.parseFrom(f61749u, bArr);
    }

    public static g0 K3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (g0) GeneratedMessageLite.parseFrom(f61749u, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L3(int i2) {
        this.f61759i = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M3(boolean z3) {
        this.f61758h = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N3(int i2) {
        this.f61751a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O3(String str) {
        Objects.requireNonNull(str);
        this.f61752b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61752b = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q3(long j4) {
        this.f61753c = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R3(String str) {
        Objects.requireNonNull(str);
        this.f61757g = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61757g = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T3(int i2) {
        this.f61760j = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAvatar() {
        this.f61755e = y3().getAvatar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f61754d = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameName() {
        this.f61756f = y3().getGameName();
    }

    public static Parser<g0> parser() {
        return f61749u.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3() {
        this.f61759i = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3() {
        this.f61758h = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvatar(String str) {
        Objects.requireNonNull(str);
        this.f61755e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvatarBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61755e = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f61754d = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameName(String str) {
        Objects.requireNonNull(str);
        this.f61756f = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameNameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61756f = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3() {
        this.f61751a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3() {
        this.f61752b = y3().X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3() {
        this.f61753c = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3() {
        this.f61757g = y3().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3() {
        this.f61760j = 0;
    }

    public static g0 y3() {
        return f61749u;
    }

    public static b z3() {
        return f61749u.toBuilder();
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public ByteString I() {
        return ByteString.copyFromUtf8(this.f61757g);
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public String X() {
        return this.f61752b;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public int d() {
        return this.f61759i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61761a[methodToInvoke.ordinal()]) {
            case 1:
                return new g0();
            case 2:
                return f61749u;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                g0 g0Var = (g0) obj2;
                int i2 = this.f61751a;
                boolean z3 = i2 != 0;
                int i4 = g0Var.f61751a;
                this.f61751a = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f61752b = visitor.visitString(!this.f61752b.isEmpty(), this.f61752b, !g0Var.f61752b.isEmpty(), g0Var.f61752b);
                long j4 = this.f61753c;
                boolean z4 = j4 != 0;
                long j5 = g0Var.f61753c;
                this.f61753c = visitor.visitLong(z4, j4, j5 != 0, j5);
                long j6 = this.f61754d;
                boolean z5 = j6 != 0;
                long j7 = g0Var.f61754d;
                this.f61754d = visitor.visitLong(z5, j6, j7 != 0, j7);
                this.f61755e = visitor.visitString(!this.f61755e.isEmpty(), this.f61755e, !g0Var.f61755e.isEmpty(), g0Var.f61755e);
                this.f61756f = visitor.visitString(!this.f61756f.isEmpty(), this.f61756f, !g0Var.f61756f.isEmpty(), g0Var.f61756f);
                this.f61757g = visitor.visitString(!this.f61757g.isEmpty(), this.f61757g, !g0Var.f61757g.isEmpty(), g0Var.f61757g);
                boolean z6 = this.f61758h;
                boolean z7 = g0Var.f61758h;
                this.f61758h = visitor.visitBoolean(z6, z6, z7, z7);
                int i5 = this.f61759i;
                boolean z8 = i5 != 0;
                int i6 = g0Var.f61759i;
                this.f61759i = visitor.visitInt(z8, i5, i6 != 0, i6);
                int i7 = this.f61760j;
                boolean z9 = i7 != 0;
                int i8 = g0Var.f61760j;
                this.f61760j = visitor.visitInt(z9, i7, i8 != 0, i8);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 8:
                                this.f61751a = codedInputStream.readInt32();
                                continue;
                            case 18:
                                this.f61752b = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 24:
                                this.f61753c = codedInputStream.readInt64();
                                continue;
                            case 32:
                                this.f61754d = codedInputStream.readInt64();
                                continue;
                            case 42:
                                this.f61755e = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 50:
                                this.f61756f = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 58:
                                this.f61757g = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 64:
                                this.f61758h = codedInputStream.readBool();
                                continue;
                            case 72:
                                this.f61759i = codedInputStream.readInt32();
                                continue;
                            case 80:
                                this.f61760j = codedInputStream.readInt32();
                                continue;
                            default:
                                if (!codedInputStream.skipField(readTag)) {
                                    break;
                                } else {
                                    continue;
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
                if (f61750v == null) {
                    synchronized (g0.class) {
                        if (f61750v == null) {
                            f61750v = new GeneratedMessageLite.DefaultInstanceBasedParser(f61749u);
                        }
                    }
                }
                return f61750v;
            default:
                throw new UnsupportedOperationException();
        }
        return f61749u;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public long f() {
        return this.f61753c;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public String getAvatar() {
        return this.f61755e;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public ByteString getAvatarBytes() {
        return ByteString.copyFromUtf8(this.f61755e);
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public long getGameId() {
        return this.f61754d;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public String getGameName() {
        return this.f61756f;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public ByteString getGameNameBytes() {
        return ByteString.copyFromUtf8(this.f61756f);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f61751a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        if (!this.f61752b.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(2, X());
        }
        long j4 = this.f61753c;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(3, j4);
        }
        long j5 = this.f61754d;
        if (j5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(4, j5);
        }
        if (!this.f61755e.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(5, getAvatar());
        }
        if (!this.f61756f.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(6, getGameName());
        }
        if (!this.f61757g.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(7, p());
        }
        boolean z3 = this.f61758h;
        if (z3) {
            computeInt32Size += CodedOutputStream.computeBoolSize(8, z3);
        }
        int i5 = this.f61759i;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(9, i5);
        }
        int i6 = this.f61760j;
        if (i6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(10, i6);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public int getSource() {
        return this.f61760j;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public ByteString n1() {
        return ByteString.copyFromUtf8(this.f61752b);
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public String p() {
        return this.f61757g;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public int p0() {
        return this.f61751a;
    }

    @Override // com.wufan.friend.chat.protocol.h0
    public boolean u() {
        return this.f61758h;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f61751a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (!this.f61752b.isEmpty()) {
            codedOutputStream.writeString(2, X());
        }
        long j4 = this.f61753c;
        if (j4 != 0) {
            codedOutputStream.writeInt64(3, j4);
        }
        long j5 = this.f61754d;
        if (j5 != 0) {
            codedOutputStream.writeInt64(4, j5);
        }
        if (!this.f61755e.isEmpty()) {
            codedOutputStream.writeString(5, getAvatar());
        }
        if (!this.f61756f.isEmpty()) {
            codedOutputStream.writeString(6, getGameName());
        }
        if (!this.f61757g.isEmpty()) {
            codedOutputStream.writeString(7, p());
        }
        boolean z3 = this.f61758h;
        if (z3) {
            codedOutputStream.writeBool(8, z3);
        }
        int i4 = this.f61759i;
        if (i4 != 0) {
            codedOutputStream.writeInt32(9, i4);
        }
        int i5 = this.f61760j;
        if (i5 != 0) {
            codedOutputStream.writeInt32(10, i5);
        }
    }
}
