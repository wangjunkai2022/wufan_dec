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
/* compiled from: AccountInfo.java */
/* loaded from: classes2.dex */
public final class a extends GeneratedMessageLite<a, b> implements com.wufan.friend.chat.protocol.b {

    /* renamed from: h  reason: collision with root package name */
    public static final int f61650h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f61651i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f61652j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f61653k = 4;

    /* renamed from: l  reason: collision with root package name */
    public static final int f61654l = 5;

    /* renamed from: m  reason: collision with root package name */
    public static final int f61655m = 6;

    /* renamed from: n  reason: collision with root package name */
    public static final int f61656n = 7;

    /* renamed from: o  reason: collision with root package name */
    private static final a f61657o;

    /* renamed from: p  reason: collision with root package name */
    private static volatile Parser<a> f61658p;

    /* renamed from: a  reason: collision with root package name */
    private boolean f61659a;

    /* renamed from: b  reason: collision with root package name */
    private int f61660b;

    /* renamed from: c  reason: collision with root package name */
    private String f61661c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f61662d = "";

    /* renamed from: e  reason: collision with root package name */
    private int f61663e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f61664f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f61665g;

    /* compiled from: AccountInfo.java */
    /* renamed from: com.wufan.friend.chat.protocol.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C0365a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61666a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61666a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61666a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61666a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61666a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61666a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61666a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61666a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61666a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: AccountInfo.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<a, b> implements com.wufan.friend.chat.protocol.b {
        /* synthetic */ b(C0365a c0365a) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((a) this.instance).j3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((a) this.instance).k3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((a) this.instance).clearAvatar();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((a) this.instance).l3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((a) this.instance).m3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((a) this.instance).clearNickname();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((a) this.instance).clearVip();
            return this;
        }

        public b Z2(int i2) {
            copyOnWrite();
            ((a) this.instance).A3(i2);
            return this;
        }

        public b a3(boolean z3) {
            copyOnWrite();
            ((a) this.instance).B3(z3);
            return this;
        }

        public b b3(String str) {
            copyOnWrite();
            ((a) this.instance).setAvatar(str);
            return this;
        }

        public b c3(ByteString byteString) {
            copyOnWrite();
            ((a) this.instance).setAvatarBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.b
        public int d() {
            return ((a) this.instance).d();
        }

        public b d3(boolean z3) {
            copyOnWrite();
            ((a) this.instance).C3(z3);
            return this;
        }

        public b e3(int i2) {
            copyOnWrite();
            ((a) this.instance).D3(i2);
            return this;
        }

        public b f3(String str) {
            copyOnWrite();
            ((a) this.instance).setNickname(str);
            return this;
        }

        public b g3(ByteString byteString) {
            copyOnWrite();
            ((a) this.instance).setNicknameBytes(byteString);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.b
        public String getAvatar() {
            return ((a) this.instance).getAvatar();
        }

        @Override // com.wufan.friend.chat.protocol.b
        public ByteString getAvatarBytes() {
            return ((a) this.instance).getAvatarBytes();
        }

        @Override // com.wufan.friend.chat.protocol.b
        public String getNickname() {
            return ((a) this.instance).getNickname();
        }

        @Override // com.wufan.friend.chat.protocol.b
        public ByteString getNicknameBytes() {
            return ((a) this.instance).getNicknameBytes();
        }

        @Override // com.wufan.friend.chat.protocol.b
        public boolean getVip() {
            return ((a) this.instance).getVip();
        }

        @Override // com.wufan.friend.chat.protocol.b
        public int h() {
            return ((a) this.instance).h();
        }

        public b h3(boolean z3) {
            copyOnWrite();
            ((a) this.instance).setVip(z3);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.b
        public boolean i0() {
            return ((a) this.instance).i0();
        }

        @Override // com.wufan.friend.chat.protocol.b
        public boolean z() {
            return ((a) this.instance).z();
        }

        private b() {
            super(a.f61657o);
        }
    }

    static {
        a aVar = new a();
        f61657o = aVar;
        aVar.makeImmutable();
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(int i2) {
        this.f61660b = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B3(boolean z3) {
        this.f61659a = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(boolean z3) {
        this.f61665g = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D3(int i2) {
        this.f61663e = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAvatar() {
        this.f61662d = n3().getAvatar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNickname() {
        this.f61661c = n3().getNickname();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVip() {
        this.f61664f = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j3() {
        this.f61660b = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k3() {
        this.f61659a = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l3() {
        this.f61665g = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3() {
        this.f61663e = 0;
    }

    public static a n3() {
        return f61657o;
    }

    public static b o3() {
        return f61657o.toBuilder();
    }

    public static b p3(a aVar) {
        return f61657o.toBuilder().mergeFrom((b) aVar);
    }

    public static Parser<a> parser() {
        return f61657o.getParserForType();
    }

    public static a q3(InputStream inputStream) throws IOException {
        return (a) GeneratedMessageLite.parseDelimitedFrom(f61657o, inputStream);
    }

    public static a r3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a) GeneratedMessageLite.parseDelimitedFrom(f61657o, inputStream, extensionRegistryLite);
    }

    public static a s3(ByteString byteString) throws InvalidProtocolBufferException {
        return (a) GeneratedMessageLite.parseFrom(f61657o, byteString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvatar(String str) {
        Objects.requireNonNull(str);
        this.f61662d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvatarBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61662d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNickname(String str) {
        Objects.requireNonNull(str);
        this.f61661c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNicknameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61661c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVip(boolean z3) {
        this.f61664f = z3;
    }

    public static a t3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (a) GeneratedMessageLite.parseFrom(f61657o, byteString, extensionRegistryLite);
    }

    public static a u3(CodedInputStream codedInputStream) throws IOException {
        return (a) GeneratedMessageLite.parseFrom(f61657o, codedInputStream);
    }

    public static a v3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a) GeneratedMessageLite.parseFrom(f61657o, codedInputStream, extensionRegistryLite);
    }

    public static a w3(InputStream inputStream) throws IOException {
        return (a) GeneratedMessageLite.parseFrom(f61657o, inputStream);
    }

    public static a x3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a) GeneratedMessageLite.parseFrom(f61657o, inputStream, extensionRegistryLite);
    }

    public static a y3(byte[] bArr) throws InvalidProtocolBufferException {
        return (a) GeneratedMessageLite.parseFrom(f61657o, bArr);
    }

    public static a z3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (a) GeneratedMessageLite.parseFrom(f61657o, bArr, extensionRegistryLite);
    }

    @Override // com.wufan.friend.chat.protocol.b
    public int d() {
        return this.f61660b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C0365a.f61666a[methodToInvoke.ordinal()]) {
            case 1:
                return new a();
            case 2:
                return f61657o;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                a aVar = (a) obj2;
                boolean z3 = this.f61659a;
                boolean z4 = aVar.f61659a;
                this.f61659a = visitor.visitBoolean(z3, z3, z4, z4);
                int i2 = this.f61660b;
                boolean z5 = i2 != 0;
                int i4 = aVar.f61660b;
                this.f61660b = visitor.visitInt(z5, i2, i4 != 0, i4);
                this.f61661c = visitor.visitString(!this.f61661c.isEmpty(), this.f61661c, !aVar.f61661c.isEmpty(), aVar.f61661c);
                this.f61662d = visitor.visitString(!this.f61662d.isEmpty(), this.f61662d, !aVar.f61662d.isEmpty(), aVar.f61662d);
                int i5 = this.f61663e;
                boolean z6 = i5 != 0;
                int i6 = aVar.f61663e;
                this.f61663e = visitor.visitInt(z6, i5, i6 != 0, i6);
                boolean z7 = this.f61664f;
                boolean z8 = aVar.f61664f;
                this.f61664f = visitor.visitBoolean(z7, z7, z8, z8);
                boolean z9 = this.f61665g;
                boolean z10 = aVar.f61665g;
                this.f61665g = visitor.visitBoolean(z9, z9, z10, z10);
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
                                this.f61659a = codedInputStream.readBool();
                            } else if (readTag == 16) {
                                this.f61660b = codedInputStream.readInt32();
                            } else if (readTag == 26) {
                                this.f61661c = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 34) {
                                this.f61662d = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 40) {
                                this.f61663e = codedInputStream.readInt32();
                            } else if (readTag == 48) {
                                this.f61664f = codedInputStream.readBool();
                            } else if (readTag != 56) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61665g = codedInputStream.readBool();
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
                if (f61658p == null) {
                    synchronized (a.class) {
                        if (f61658p == null) {
                            f61658p = new GeneratedMessageLite.DefaultInstanceBasedParser(f61657o);
                        }
                    }
                }
                return f61658p;
            default:
                throw new UnsupportedOperationException();
        }
        return f61657o;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public String getAvatar() {
        return this.f61662d;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public ByteString getAvatarBytes() {
        return ByteString.copyFromUtf8(this.f61662d);
    }

    @Override // com.wufan.friend.chat.protocol.b
    public String getNickname() {
        return this.f61661c;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public ByteString getNicknameBytes() {
        return ByteString.copyFromUtf8(this.f61661c);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        boolean z3 = this.f61659a;
        int computeBoolSize = z3 ? 0 + CodedOutputStream.computeBoolSize(1, z3) : 0;
        int i4 = this.f61660b;
        if (i4 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(2, i4);
        }
        if (!this.f61661c.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(3, getNickname());
        }
        if (!this.f61662d.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(4, getAvatar());
        }
        int i5 = this.f61663e;
        if (i5 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(5, i5);
        }
        boolean z4 = this.f61664f;
        if (z4) {
            computeBoolSize += CodedOutputStream.computeBoolSize(6, z4);
        }
        boolean z5 = this.f61665g;
        if (z5) {
            computeBoolSize += CodedOutputStream.computeBoolSize(7, z5);
        }
        this.memoizedSerializedSize = computeBoolSize;
        return computeBoolSize;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public boolean getVip() {
        return this.f61664f;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public int h() {
        return this.f61663e;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public boolean i0() {
        return this.f61659a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z3 = this.f61659a;
        if (z3) {
            codedOutputStream.writeBool(1, z3);
        }
        int i2 = this.f61660b;
        if (i2 != 0) {
            codedOutputStream.writeInt32(2, i2);
        }
        if (!this.f61661c.isEmpty()) {
            codedOutputStream.writeString(3, getNickname());
        }
        if (!this.f61662d.isEmpty()) {
            codedOutputStream.writeString(4, getAvatar());
        }
        int i4 = this.f61663e;
        if (i4 != 0) {
            codedOutputStream.writeInt32(5, i4);
        }
        boolean z4 = this.f61664f;
        if (z4) {
            codedOutputStream.writeBool(6, z4);
        }
        boolean z5 = this.f61665g;
        if (z5) {
            codedOutputStream.writeBool(7, z5);
        }
    }

    @Override // com.wufan.friend.chat.protocol.b
    public boolean z() {
        return this.f61665g;
    }
}
