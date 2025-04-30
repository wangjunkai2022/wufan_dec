package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class RecommendPlayerArgs extends GeneratedMessageLite<RecommendPlayerArgs, b> implements k1 {

    /* renamed from: f  reason: collision with root package name */
    public static final int f61638f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f61639g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f61640h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final int f61641i = 4;

    /* renamed from: j  reason: collision with root package name */
    private static final RecommendPlayerArgs f61642j;

    /* renamed from: k  reason: collision with root package name */
    private static volatile Parser<RecommendPlayerArgs> f61643k;

    /* renamed from: a  reason: collision with root package name */
    private int f61644a;

    /* renamed from: b  reason: collision with root package name */
    private int f61645b;

    /* renamed from: c  reason: collision with root package name */
    private Internal.LongList f61646c = GeneratedMessageLite.emptyLongList();

    /* renamed from: d  reason: collision with root package name */
    private String f61647d = "";

    /* renamed from: e  reason: collision with root package name */
    private long f61648e;

    /* loaded from: classes2.dex */
    public enum FriendLocationPageType implements Internal.EnumLite {
        BATTLE_HOME_PAGE(0),
        BATTLE_ROOM_LIST(1),
        BATTLE_ROOM(2),
        GAME_HOME_PAGE(3),
        UNRECOGNIZED(-1);
        
        public static final int BATTLE_HOME_PAGE_VALUE = 0;
        public static final int BATTLE_ROOM_LIST_VALUE = 1;
        public static final int BATTLE_ROOM_VALUE = 2;
        public static final int GAME_HOME_PAGE_VALUE = 3;
        private static final Internal.EnumLiteMap<FriendLocationPageType> internalValueMap = new a();
        private final int value;

        /* loaded from: classes2.dex */
        class a implements Internal.EnumLiteMap<FriendLocationPageType> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public FriendLocationPageType findValueByNumber(int i2) {
                return FriendLocationPageType.forNumber(i2);
            }
        }

        FriendLocationPageType(int i2) {
            this.value = i2;
        }

        public static FriendLocationPageType forNumber(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            return null;
                        }
                        return GAME_HOME_PAGE;
                    }
                    return BATTLE_ROOM;
                }
                return BATTLE_ROOM_LIST;
            }
            return BATTLE_HOME_PAGE;
        }

        public static Internal.EnumLiteMap<FriendLocationPageType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static FriendLocationPageType valueOf(int i2) {
            return forNumber(i2);
        }
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61649a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61649a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61649a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61649a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61649a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61649a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61649a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61649a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61649a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<RecommendPlayerArgs, b> implements k1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.k1
        public FriendLocationPageType E0() {
            return ((RecommendPlayerArgs) this.instance).E0();
        }

        public b S2(Iterable<? extends Long> iterable) {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).f3(iterable);
            return this;
        }

        public b T2(long j4) {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).g3(j4);
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).clearGameId();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).h3();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).i3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).j3();
            return this;
        }

        public b Y2(long j4) {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).setGameId(j4);
            return this;
        }

        public b Z2(String str) {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).y3(str);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.k1
        public ByteString a1() {
            return ((RecommendPlayerArgs) this.instance).a1();
        }

        public b a3(ByteString byteString) {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).z3(byteString);
            return this;
        }

        public b b3(int i2, long j4) {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).A3(i2, j4);
            return this;
        }

        public b c3(FriendLocationPageType friendLocationPageType) {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).B3(friendLocationPageType);
            return this;
        }

        public b d3(int i2) {
            copyOnWrite();
            ((RecommendPlayerArgs) this.instance).C3(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.k1
        public long getGameId() {
            return ((RecommendPlayerArgs) this.instance).getGameId();
        }

        @Override // com.wufan.friend.chat.protocol.k1
        public int j0() {
            return ((RecommendPlayerArgs) this.instance).j0();
        }

        @Override // com.wufan.friend.chat.protocol.k1
        public int o1() {
            return ((RecommendPlayerArgs) this.instance).o1();
        }

        @Override // com.wufan.friend.chat.protocol.k1
        public List<Long> s1() {
            return Collections.unmodifiableList(((RecommendPlayerArgs) this.instance).s1());
        }

        @Override // com.wufan.friend.chat.protocol.k1
        public String v0() {
            return ((RecommendPlayerArgs) this.instance).v0();
        }

        @Override // com.wufan.friend.chat.protocol.k1
        public long z0(int i2) {
            return ((RecommendPlayerArgs) this.instance).z0(i2);
        }

        private b() {
            super(RecommendPlayerArgs.f61642j);
        }
    }

    static {
        RecommendPlayerArgs recommendPlayerArgs = new RecommendPlayerArgs();
        f61642j = recommendPlayerArgs;
        recommendPlayerArgs.makeImmutable();
    }

    private RecommendPlayerArgs() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(int i2, long j4) {
        k3();
        this.f61646c.setLong(i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B3(FriendLocationPageType friendLocationPageType) {
        Objects.requireNonNull(friendLocationPageType);
        this.f61645b = friendLocationPageType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(int i2) {
        this.f61645b = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f61648e = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3(Iterable<? extends Long> iterable) {
        k3();
        AbstractMessageLite.addAll(iterable, this.f61646c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3(long j4) {
        k3();
        this.f61646c.addLong(j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3() {
        this.f61647d = l3().v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i3() {
        this.f61646c = GeneratedMessageLite.emptyLongList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j3() {
        this.f61645b = 0;
    }

    private void k3() {
        if (this.f61646c.isModifiable()) {
            return;
        }
        this.f61646c = GeneratedMessageLite.mutableCopy(this.f61646c);
    }

    public static RecommendPlayerArgs l3() {
        return f61642j;
    }

    public static b m3() {
        return f61642j.toBuilder();
    }

    public static b n3(RecommendPlayerArgs recommendPlayerArgs) {
        return f61642j.toBuilder().mergeFrom((b) recommendPlayerArgs);
    }

    public static RecommendPlayerArgs o3(InputStream inputStream) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseDelimitedFrom(f61642j, inputStream);
    }

    public static RecommendPlayerArgs p3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseDelimitedFrom(f61642j, inputStream, extensionRegistryLite);
    }

    public static Parser<RecommendPlayerArgs> parser() {
        return f61642j.getParserForType();
    }

    public static RecommendPlayerArgs q3(ByteString byteString) throws InvalidProtocolBufferException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseFrom(f61642j, byteString);
    }

    public static RecommendPlayerArgs r3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseFrom(f61642j, byteString, extensionRegistryLite);
    }

    public static RecommendPlayerArgs s3(CodedInputStream codedInputStream) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseFrom(f61642j, codedInputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f61648e = j4;
    }

    public static RecommendPlayerArgs t3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseFrom(f61642j, codedInputStream, extensionRegistryLite);
    }

    public static RecommendPlayerArgs u3(InputStream inputStream) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseFrom(f61642j, inputStream);
    }

    public static RecommendPlayerArgs v3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseFrom(f61642j, inputStream, extensionRegistryLite);
    }

    public static RecommendPlayerArgs w3(byte[] bArr) throws InvalidProtocolBufferException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseFrom(f61642j, bArr);
    }

    public static RecommendPlayerArgs x3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (RecommendPlayerArgs) GeneratedMessageLite.parseFrom(f61642j, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(String str) {
        Objects.requireNonNull(str);
        this.f61647d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61647d = byteString.toStringUtf8();
    }

    @Override // com.wufan.friend.chat.protocol.k1
    public FriendLocationPageType E0() {
        FriendLocationPageType forNumber = FriendLocationPageType.forNumber(this.f61645b);
        return forNumber == null ? FriendLocationPageType.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.k1
    public ByteString a1() {
        return ByteString.copyFromUtf8(this.f61647d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f61649a[methodToInvoke.ordinal()]) {
            case 1:
                return new RecommendPlayerArgs();
            case 2:
                return f61642j;
            case 3:
                this.f61646c.makeImmutable();
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                RecommendPlayerArgs recommendPlayerArgs = (RecommendPlayerArgs) obj2;
                int i2 = this.f61645b;
                boolean z4 = i2 != 0;
                int i4 = recommendPlayerArgs.f61645b;
                this.f61645b = visitor.visitInt(z4, i2, i4 != 0, i4);
                this.f61646c = visitor.visitLongList(this.f61646c, recommendPlayerArgs.f61646c);
                this.f61647d = visitor.visitString(!this.f61647d.isEmpty(), this.f61647d, !recommendPlayerArgs.f61647d.isEmpty(), recommendPlayerArgs.f61647d);
                long j4 = this.f61648e;
                boolean z5 = j4 != 0;
                long j5 = recommendPlayerArgs.f61648e;
                this.f61648e = visitor.visitLong(z5, j4, j5 != 0, j5);
                if (visitor == GeneratedMessageLite.MergeFromVisitor.INSTANCE) {
                    this.f61644a |= recommendPlayerArgs.f61644a;
                }
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.f61645b = codedInputStream.readEnum();
                            } else if (readTag == 16) {
                                if (!this.f61646c.isModifiable()) {
                                    this.f61646c = GeneratedMessageLite.mutableCopy(this.f61646c);
                                }
                                this.f61646c.addLong(codedInputStream.readInt64());
                            } else if (readTag == 18) {
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                if (!this.f61646c.isModifiable() && codedInputStream.getBytesUntilLimit() > 0) {
                                    this.f61646c = GeneratedMessageLite.mutableCopy(this.f61646c);
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.f61646c.addLong(codedInputStream.readInt64());
                                }
                                codedInputStream.popLimit(pushLimit);
                            } else if (readTag == 26) {
                                this.f61647d = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 32) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61648e = codedInputStream.readInt64();
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
                if (f61643k == null) {
                    synchronized (RecommendPlayerArgs.class) {
                        if (f61643k == null) {
                            f61643k = new GeneratedMessageLite.DefaultInstanceBasedParser(f61642j);
                        }
                    }
                }
                return f61643k;
            default:
                throw new UnsupportedOperationException();
        }
        return f61642j;
    }

    @Override // com.wufan.friend.chat.protocol.k1
    public long getGameId() {
        return this.f61648e;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeEnumSize = this.f61645b != FriendLocationPageType.BATTLE_HOME_PAGE.getNumber() ? CodedOutputStream.computeEnumSize(1, this.f61645b) + 0 : 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.f61646c.size(); i5++) {
            i4 += CodedOutputStream.computeInt64SizeNoTag(this.f61646c.getLong(i5));
        }
        int size = computeEnumSize + i4 + (s1().size() * 1);
        if (!this.f61647d.isEmpty()) {
            size += CodedOutputStream.computeStringSize(3, v0());
        }
        long j4 = this.f61648e;
        if (j4 != 0) {
            size += CodedOutputStream.computeInt64Size(4, j4);
        }
        this.memoizedSerializedSize = size;
        return size;
    }

    @Override // com.wufan.friend.chat.protocol.k1
    public int j0() {
        return this.f61646c.size();
    }

    @Override // com.wufan.friend.chat.protocol.k1
    public int o1() {
        return this.f61645b;
    }

    @Override // com.wufan.friend.chat.protocol.k1
    public List<Long> s1() {
        return this.f61646c;
    }

    @Override // com.wufan.friend.chat.protocol.k1
    public String v0() {
        return this.f61647d;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (this.f61645b != FriendLocationPageType.BATTLE_HOME_PAGE.getNumber()) {
            codedOutputStream.writeEnum(1, this.f61645b);
        }
        for (int i2 = 0; i2 < this.f61646c.size(); i2++) {
            codedOutputStream.writeInt64(2, this.f61646c.getLong(i2));
        }
        if (!this.f61647d.isEmpty()) {
            codedOutputStream.writeString(3, v0());
        }
        long j4 = this.f61648e;
        if (j4 != 0) {
            codedOutputStream.writeInt64(4, j4);
        }
    }

    @Override // com.wufan.friend.chat.protocol.k1
    public long z0(int i2) {
        return this.f61646c.getLong(i2);
    }
}
