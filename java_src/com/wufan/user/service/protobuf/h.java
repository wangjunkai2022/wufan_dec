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
/* compiled from: MemberTitleInfo.java */
/* loaded from: classes2.dex */
public final class h extends GeneratedMessageLite<h, b> implements i {

    /* renamed from: d  reason: collision with root package name */
    public static final int f62098d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f62099e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f62100f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final h f62101g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<h> f62102h;

    /* renamed from: b  reason: collision with root package name */
    private int f62104b;

    /* renamed from: a  reason: collision with root package name */
    private String f62103a = "";

    /* renamed from: c  reason: collision with root package name */
    private String f62105c = "";

    /* compiled from: MemberTitleInfo.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62106a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62106a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62106a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62106a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62106a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62106a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62106a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62106a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62106a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: MemberTitleInfo.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<h, b> implements i {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((h) this.instance).clearBattleTitle();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((h) this.instance).clearBattleTitleColor();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((h) this.instance).b3();
            return this;
        }

        public b V2(String str) {
            copyOnWrite();
            ((h) this.instance).setBattleTitle(str);
            return this;
        }

        public b W2(ByteString byteString) {
            copyOnWrite();
            ((h) this.instance).setBattleTitleBytes(byteString);
            return this;
        }

        public b X2(String str) {
            copyOnWrite();
            ((h) this.instance).setBattleTitleColor(str);
            return this;
        }

        public b Y2(ByteString byteString) {
            copyOnWrite();
            ((h) this.instance).setBattleTitleColorBytes(byteString);
            return this;
        }

        public b Z2(int i2) {
            copyOnWrite();
            ((h) this.instance).p3(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.i
        public String getBattleTitle() {
            return ((h) this.instance).getBattleTitle();
        }

        @Override // com.wufan.user.service.protobuf.i
        public ByteString getBattleTitleBytes() {
            return ((h) this.instance).getBattleTitleBytes();
        }

        @Override // com.wufan.user.service.protobuf.i
        public String getBattleTitleColor() {
            return ((h) this.instance).getBattleTitleColor();
        }

        @Override // com.wufan.user.service.protobuf.i
        public ByteString getBattleTitleColorBytes() {
            return ((h) this.instance).getBattleTitleColorBytes();
        }

        @Override // com.wufan.user.service.protobuf.i
        public int h() {
            return ((h) this.instance).h();
        }

        private b() {
            super(h.f62101g);
        }
    }

    static {
        h hVar = new h();
        f62101g = hVar;
        hVar.makeImmutable();
    }

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3() {
        this.f62104b = 0;
    }

    public static h c3() {
        return f62101g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBattleTitle() {
        this.f62103a = c3().getBattleTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBattleTitleColor() {
        this.f62105c = c3().getBattleTitleColor();
    }

    public static b d3() {
        return f62101g.toBuilder();
    }

    public static b e3(h hVar) {
        return f62101g.toBuilder().mergeFrom((b) hVar);
    }

    public static h f3(InputStream inputStream) throws IOException {
        return (h) GeneratedMessageLite.parseDelimitedFrom(f62101g, inputStream);
    }

    public static h g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h) GeneratedMessageLite.parseDelimitedFrom(f62101g, inputStream, extensionRegistryLite);
    }

    public static h h3(ByteString byteString) throws InvalidProtocolBufferException {
        return (h) GeneratedMessageLite.parseFrom(f62101g, byteString);
    }

    public static h i3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (h) GeneratedMessageLite.parseFrom(f62101g, byteString, extensionRegistryLite);
    }

    public static h j3(CodedInputStream codedInputStream) throws IOException {
        return (h) GeneratedMessageLite.parseFrom(f62101g, codedInputStream);
    }

    public static h k3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h) GeneratedMessageLite.parseFrom(f62101g, codedInputStream, extensionRegistryLite);
    }

    public static h l3(InputStream inputStream) throws IOException {
        return (h) GeneratedMessageLite.parseFrom(f62101g, inputStream);
    }

    public static h m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h) GeneratedMessageLite.parseFrom(f62101g, inputStream, extensionRegistryLite);
    }

    public static h n3(byte[] bArr) throws InvalidProtocolBufferException {
        return (h) GeneratedMessageLite.parseFrom(f62101g, bArr);
    }

    public static h o3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (h) GeneratedMessageLite.parseFrom(f62101g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(int i2) {
        this.f62104b = i2;
    }

    public static Parser<h> parser() {
        return f62101g.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleTitle(String str) {
        Objects.requireNonNull(str);
        this.f62103a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleTitleBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62103a = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleTitleColor(String str) {
        Objects.requireNonNull(str);
        this.f62105c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBattleTitleColorBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62105c = byteString.toStringUtf8();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62106a[methodToInvoke.ordinal()]) {
            case 1:
                return new h();
            case 2:
                return f62101g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                h hVar = (h) obj2;
                this.f62103a = visitor.visitString(!this.f62103a.isEmpty(), this.f62103a, !hVar.f62103a.isEmpty(), hVar.f62103a);
                int i2 = this.f62104b;
                boolean z3 = i2 != 0;
                int i4 = hVar.f62104b;
                this.f62104b = visitor.visitInt(z3, i2, i4 != 0, i4);
                this.f62105c = visitor.visitString(!this.f62105c.isEmpty(), this.f62105c, !hVar.f62105c.isEmpty(), hVar.f62105c);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.f62103a = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 16) {
                                this.f62104b = codedInputStream.readInt32();
                            } else if (readTag != 26) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f62105c = codedInputStream.readStringRequireUtf8();
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
                if (f62102h == null) {
                    synchronized (h.class) {
                        if (f62102h == null) {
                            f62102h = new GeneratedMessageLite.DefaultInstanceBasedParser(f62101g);
                        }
                    }
                }
                return f62102h;
            default:
                throw new UnsupportedOperationException();
        }
        return f62101g;
    }

    @Override // com.wufan.user.service.protobuf.i
    public String getBattleTitle() {
        return this.f62103a;
    }

    @Override // com.wufan.user.service.protobuf.i
    public ByteString getBattleTitleBytes() {
        return ByteString.copyFromUtf8(this.f62103a);
    }

    @Override // com.wufan.user.service.protobuf.i
    public String getBattleTitleColor() {
        return this.f62105c;
    }

    @Override // com.wufan.user.service.protobuf.i
    public ByteString getBattleTitleColorBytes() {
        return ByteString.copyFromUtf8(this.f62105c);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.f62103a.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, getBattleTitle());
        int i4 = this.f62104b;
        if (i4 != 0) {
            computeStringSize += CodedOutputStream.computeInt32Size(2, i4);
        }
        if (!this.f62105c.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(3, getBattleTitleColor());
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.wufan.user.service.protobuf.i
    public int h() {
        return this.f62104b;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.f62103a.isEmpty()) {
            codedOutputStream.writeString(1, getBattleTitle());
        }
        int i2 = this.f62104b;
        if (i2 != 0) {
            codedOutputStream.writeInt32(2, i2);
        }
        if (this.f62105c.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(3, getBattleTitleColor());
    }
}
