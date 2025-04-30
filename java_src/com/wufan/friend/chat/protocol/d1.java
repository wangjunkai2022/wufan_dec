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
/* compiled from: PlayState.java */
/* loaded from: classes2.dex */
public final class d1 extends GeneratedMessageLite<d1, b> implements e1 {

    /* renamed from: f  reason: collision with root package name */
    public static final int f61688f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f61689g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f61690h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final int f61691i = 4;

    /* renamed from: j  reason: collision with root package name */
    public static final int f61692j = 5;

    /* renamed from: k  reason: collision with root package name */
    private static final d1 f61693k;

    /* renamed from: l  reason: collision with root package name */
    private static volatile Parser<d1> f61694l;

    /* renamed from: a  reason: collision with root package name */
    private int f61695a;

    /* renamed from: b  reason: collision with root package name */
    private long f61696b;

    /* renamed from: c  reason: collision with root package name */
    private String f61697c = "";

    /* renamed from: d  reason: collision with root package name */
    private long f61698d;

    /* renamed from: e  reason: collision with root package name */
    private int f61699e;

    /* compiled from: PlayState.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61700a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61700a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61700a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61700a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61700a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61700a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61700a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61700a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61700a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: PlayState.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<d1, b> implements e1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((d1) this.instance).clearGameId();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((d1) this.instance).clearGameName();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((d1) this.instance).f3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((d1) this.instance).g3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((d1) this.instance).clearRoomType();
            return this;
        }

        public b X2(long j4) {
            copyOnWrite();
            ((d1) this.instance).setGameId(j4);
            return this;
        }

        public b Y2(String str) {
            copyOnWrite();
            ((d1) this.instance).setGameName(str);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.e1
        public PlayType Z() {
            return ((d1) this.instance).Z();
        }

        public b Z2(ByteString byteString) {
            copyOnWrite();
            ((d1) this.instance).setGameNameBytes(byteString);
            return this;
        }

        public b a3(long j4) {
            copyOnWrite();
            ((d1) this.instance).u3(j4);
            return this;
        }

        public b b3(PlayType playType) {
            copyOnWrite();
            ((d1) this.instance).v3(playType);
            return this;
        }

        public b c3(int i2) {
            copyOnWrite();
            ((d1) this.instance).w3(i2);
            return this;
        }

        public b d3(int i2) {
            copyOnWrite();
            ((d1) this.instance).x3(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.e1
        public long f() {
            return ((d1) this.instance).f();
        }

        @Override // com.wufan.friend.chat.protocol.e1
        public long getGameId() {
            return ((d1) this.instance).getGameId();
        }

        @Override // com.wufan.friend.chat.protocol.e1
        public String getGameName() {
            return ((d1) this.instance).getGameName();
        }

        @Override // com.wufan.friend.chat.protocol.e1
        public ByteString getGameNameBytes() {
            return ((d1) this.instance).getGameNameBytes();
        }

        @Override // com.wufan.friend.chat.protocol.e1
        public int getRoomType() {
            return ((d1) this.instance).getRoomType();
        }

        @Override // com.wufan.friend.chat.protocol.e1
        public int s0() {
            return ((d1) this.instance).s0();
        }

        private b() {
            super(d1.f61693k);
        }
    }

    static {
        d1 d1Var = new d1();
        f61693k = d1Var;
        d1Var.makeImmutable();
    }

    private d1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f61696b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameName() {
        this.f61697c = h3().getGameName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRoomType() {
        this.f61699e = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3() {
        this.f61698d = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3() {
        this.f61695a = 0;
    }

    public static d1 h3() {
        return f61693k;
    }

    public static b i3() {
        return f61693k.toBuilder();
    }

    public static b j3(d1 d1Var) {
        return f61693k.toBuilder().mergeFrom((b) d1Var);
    }

    public static d1 k3(InputStream inputStream) throws IOException {
        return (d1) GeneratedMessageLite.parseDelimitedFrom(f61693k, inputStream);
    }

    public static d1 l3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d1) GeneratedMessageLite.parseDelimitedFrom(f61693k, inputStream, extensionRegistryLite);
    }

    public static d1 m3(ByteString byteString) throws InvalidProtocolBufferException {
        return (d1) GeneratedMessageLite.parseFrom(f61693k, byteString);
    }

    public static d1 n3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (d1) GeneratedMessageLite.parseFrom(f61693k, byteString, extensionRegistryLite);
    }

    public static d1 o3(CodedInputStream codedInputStream) throws IOException {
        return (d1) GeneratedMessageLite.parseFrom(f61693k, codedInputStream);
    }

    public static d1 p3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d1) GeneratedMessageLite.parseFrom(f61693k, codedInputStream, extensionRegistryLite);
    }

    public static Parser<d1> parser() {
        return f61693k.getParserForType();
    }

    public static d1 q3(InputStream inputStream) throws IOException {
        return (d1) GeneratedMessageLite.parseFrom(f61693k, inputStream);
    }

    public static d1 r3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (d1) GeneratedMessageLite.parseFrom(f61693k, inputStream, extensionRegistryLite);
    }

    public static d1 s3(byte[] bArr) throws InvalidProtocolBufferException {
        return (d1) GeneratedMessageLite.parseFrom(f61693k, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f61696b = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameName(String str) {
        Objects.requireNonNull(str);
        this.f61697c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameNameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61697c = byteString.toStringUtf8();
    }

    public static d1 t3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (d1) GeneratedMessageLite.parseFrom(f61693k, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(long j4) {
        this.f61698d = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(PlayType playType) {
        Objects.requireNonNull(playType);
        this.f61695a = playType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(int i2) {
        this.f61695a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3(int i2) {
        this.f61699e = i2;
    }

    @Override // com.wufan.friend.chat.protocol.e1
    public PlayType Z() {
        PlayType forNumber = PlayType.forNumber(this.f61695a);
        return forNumber == null ? PlayType.UNRECOGNIZED : forNumber;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61700a[methodToInvoke.ordinal()]) {
            case 1:
                return new d1();
            case 2:
                return f61693k;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                d1 d1Var = (d1) obj2;
                int i2 = this.f61695a;
                boolean z3 = i2 != 0;
                int i4 = d1Var.f61695a;
                this.f61695a = visitor.visitInt(z3, i2, i4 != 0, i4);
                long j4 = this.f61696b;
                boolean z4 = j4 != 0;
                long j5 = d1Var.f61696b;
                this.f61696b = visitor.visitLong(z4, j4, j5 != 0, j5);
                this.f61697c = visitor.visitString(!this.f61697c.isEmpty(), this.f61697c, !d1Var.f61697c.isEmpty(), d1Var.f61697c);
                long j6 = this.f61698d;
                boolean z5 = j6 != 0;
                long j7 = d1Var.f61698d;
                this.f61698d = visitor.visitLong(z5, j6, j7 != 0, j7);
                int i5 = this.f61699e;
                boolean z6 = i5 != 0;
                int i6 = d1Var.f61699e;
                this.f61699e = visitor.visitInt(z6, i5, i6 != 0, i6);
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
                                this.f61695a = codedInputStream.readEnum();
                            } else if (readTag == 16) {
                                this.f61696b = codedInputStream.readInt64();
                            } else if (readTag == 26) {
                                this.f61697c = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 32) {
                                this.f61698d = codedInputStream.readInt64();
                            } else if (readTag != 40) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61699e = codedInputStream.readInt32();
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
                if (f61694l == null) {
                    synchronized (d1.class) {
                        if (f61694l == null) {
                            f61694l = new GeneratedMessageLite.DefaultInstanceBasedParser(f61693k);
                        }
                    }
                }
                return f61694l;
            default:
                throw new UnsupportedOperationException();
        }
        return f61693k;
    }

    @Override // com.wufan.friend.chat.protocol.e1
    public long f() {
        return this.f61698d;
    }

    @Override // com.wufan.friend.chat.protocol.e1
    public long getGameId() {
        return this.f61696b;
    }

    @Override // com.wufan.friend.chat.protocol.e1
    public String getGameName() {
        return this.f61697c;
    }

    @Override // com.wufan.friend.chat.protocol.e1
    public ByteString getGameNameBytes() {
        return ByteString.copyFromUtf8(this.f61697c);
    }

    @Override // com.wufan.friend.chat.protocol.e1
    public int getRoomType() {
        return this.f61699e;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeEnumSize = this.f61695a != PlayType.STAND.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.f61695a) : 0;
        long j4 = this.f61696b;
        if (j4 != 0) {
            computeEnumSize += CodedOutputStream.computeInt64Size(2, j4);
        }
        if (!this.f61697c.isEmpty()) {
            computeEnumSize += CodedOutputStream.computeStringSize(3, getGameName());
        }
        long j5 = this.f61698d;
        if (j5 != 0) {
            computeEnumSize += CodedOutputStream.computeInt64Size(4, j5);
        }
        int i4 = this.f61699e;
        if (i4 != 0) {
            computeEnumSize += CodedOutputStream.computeInt32Size(5, i4);
        }
        this.memoizedSerializedSize = computeEnumSize;
        return computeEnumSize;
    }

    @Override // com.wufan.friend.chat.protocol.e1
    public int s0() {
        return this.f61695a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61695a != PlayType.STAND.getNumber()) {
            codedOutputStream.writeEnum(1, this.f61695a);
        }
        long j4 = this.f61696b;
        if (j4 != 0) {
            codedOutputStream.writeInt64(2, j4);
        }
        if (!this.f61697c.isEmpty()) {
            codedOutputStream.writeString(3, getGameName());
        }
        long j5 = this.f61698d;
        if (j5 != 0) {
            codedOutputStream.writeInt64(4, j5);
        }
        int i2 = this.f61699e;
        if (i2 != 0) {
            codedOutputStream.writeInt32(5, i2);
        }
    }
}
