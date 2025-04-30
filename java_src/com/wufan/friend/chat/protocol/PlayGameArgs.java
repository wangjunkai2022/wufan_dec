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
public final class PlayGameArgs extends GeneratedMessageLite<PlayGameArgs, b> implements c1 {

    /* renamed from: i  reason: collision with root package name */
    public static final int f61620i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f61621j = 2;

    /* renamed from: k  reason: collision with root package name */
    public static final int f61622k = 3;

    /* renamed from: l  reason: collision with root package name */
    public static final int f61623l = 4;

    /* renamed from: m  reason: collision with root package name */
    public static final int f61624m = 5;

    /* renamed from: n  reason: collision with root package name */
    public static final int f61625n = 6;

    /* renamed from: o  reason: collision with root package name */
    public static final int f61626o = 7;

    /* renamed from: p  reason: collision with root package name */
    private static final PlayGameArgs f61627p;

    /* renamed from: q  reason: collision with root package name */
    private static volatile Parser<PlayGameArgs> f61628q;

    /* renamed from: a  reason: collision with root package name */
    private int f61629a;

    /* renamed from: b  reason: collision with root package name */
    private int f61630b;

    /* renamed from: c  reason: collision with root package name */
    private long f61631c;

    /* renamed from: d  reason: collision with root package name */
    private int f61632d;

    /* renamed from: e  reason: collision with root package name */
    private long f61633e;

    /* renamed from: f  reason: collision with root package name */
    private int f61634f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f61635g;

    /* renamed from: h  reason: collision with root package name */
    private Internal.LongList f61636h = GeneratedMessageLite.emptyLongList();

    /* loaded from: classes2.dex */
    public enum State implements Internal.EnumLite {
        START(0),
        RUNNING(1),
        OVER(2),
        UNRECOGNIZED(-1);
        
        public static final int OVER_VALUE = 2;
        public static final int RUNNING_VALUE = 1;
        public static final int START_VALUE = 0;
        private static final Internal.EnumLiteMap<State> internalValueMap = new a();
        private final int value;

        /* loaded from: classes2.dex */
        class a implements Internal.EnumLiteMap<State> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public State findValueByNumber(int i2) {
                return State.forNumber(i2);
            }
        }

        State(int i2) {
            this.value = i2;
        }

        public static State forNumber(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        return null;
                    }
                    return OVER;
                }
                return RUNNING;
            }
            return START;
        }

        public static Internal.EnumLiteMap<State> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static State valueOf(int i2) {
            return forNumber(i2);
        }
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61637a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61637a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61637a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61637a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61637a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61637a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61637a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61637a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61637a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<PlayGameArgs, b> implements c1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public boolean B() {
            return ((PlayGameArgs) this.instance).B();
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public int O1() {
            return ((PlayGameArgs) this.instance).O1();
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public List<Long> O2() {
            return Collections.unmodifiableList(((PlayGameArgs) this.instance).O2());
        }

        public b S2(Iterable<? extends Long> iterable) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).l3(iterable);
            return this;
        }

        public b T2(long j4) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).m3(j4);
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((PlayGameArgs) this.instance).n3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((PlayGameArgs) this.instance).clearGameId();
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((PlayGameArgs) this.instance).o3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((PlayGameArgs) this.instance).p3();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((PlayGameArgs) this.instance).clearState();
            return this;
        }

        public b Z2() {
            copyOnWrite();
            ((PlayGameArgs) this.instance).clearType();
            return this;
        }

        public b a3() {
            copyOnWrite();
            ((PlayGameArgs) this.instance).q3();
            return this;
        }

        public b b3(int i2) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).F3(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public long c2(int i2) {
            return ((PlayGameArgs) this.instance).c2(i2);
        }

        public b c3(long j4) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).setGameId(j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public int d() {
            return ((PlayGameArgs) this.instance).d();
        }

        public b d3(long j4) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).G3(j4);
            return this;
        }

        public b e3(int i2, long j4) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).H3(i2, j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public long f() {
            return ((PlayGameArgs) this.instance).f();
        }

        public b f3(State state) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).I3(state);
            return this;
        }

        public b g3(int i2) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).setStateValue(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public long getGameId() {
            return ((PlayGameArgs) this.instance).getGameId();
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public State getState() {
            return ((PlayGameArgs) this.instance).getState();
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public int getStateValue() {
            return ((PlayGameArgs) this.instance).getStateValue();
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public PlayType getType() {
            return ((PlayGameArgs) this.instance).getType();
        }

        @Override // com.wufan.friend.chat.protocol.c1
        public int getTypeValue() {
            return ((PlayGameArgs) this.instance).getTypeValue();
        }

        public b h3(PlayType playType) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).J3(playType);
            return this;
        }

        public b i3(int i2) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).setTypeValue(i2);
            return this;
        }

        public b j3(boolean z3) {
            copyOnWrite();
            ((PlayGameArgs) this.instance).K3(z3);
            return this;
        }

        private b() {
            super(PlayGameArgs.f61627p);
        }
    }

    static {
        PlayGameArgs playGameArgs = new PlayGameArgs();
        f61627p = playGameArgs;
        playGameArgs.makeImmutable();
    }

    private PlayGameArgs() {
    }

    public static PlayGameArgs A3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (PlayGameArgs) GeneratedMessageLite.parseFrom(f61627p, codedInputStream, extensionRegistryLite);
    }

    public static PlayGameArgs B3(InputStream inputStream) throws IOException {
        return (PlayGameArgs) GeneratedMessageLite.parseFrom(f61627p, inputStream);
    }

    public static PlayGameArgs C3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (PlayGameArgs) GeneratedMessageLite.parseFrom(f61627p, inputStream, extensionRegistryLite);
    }

    public static PlayGameArgs D3(byte[] bArr) throws InvalidProtocolBufferException {
        return (PlayGameArgs) GeneratedMessageLite.parseFrom(f61627p, bArr);
    }

    public static PlayGameArgs E3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (PlayGameArgs) GeneratedMessageLite.parseFrom(f61627p, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F3(int i2) {
        this.f61634f = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G3(long j4) {
        this.f61633e = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H3(int i2, long j4) {
        r3();
        this.f61636h.setLong(i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I3(State state) {
        Objects.requireNonNull(state);
        this.f61630b = state.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J3(PlayType playType) {
        Objects.requireNonNull(playType);
        this.f61632d = playType.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K3(boolean z3) {
        this.f61635g = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGameId() {
        this.f61631c = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.f61630b = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearType() {
        this.f61632d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l3(Iterable<? extends Long> iterable) {
        r3();
        AbstractMessageLite.addAll(iterable, this.f61636h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3(long j4) {
        r3();
        this.f61636h.addLong(j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3() {
        this.f61634f = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3() {
        this.f61633e = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3() {
        this.f61636h = GeneratedMessageLite.emptyLongList();
    }

    public static Parser<PlayGameArgs> parser() {
        return f61627p.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3() {
        this.f61635g = false;
    }

    private void r3() {
        if (this.f61636h.isModifiable()) {
            return;
        }
        this.f61636h = GeneratedMessageLite.mutableCopy(this.f61636h);
    }

    public static PlayGameArgs s3() {
        return f61627p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGameId(long j4) {
        this.f61631c = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateValue(int i2) {
        this.f61630b = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTypeValue(int i2) {
        this.f61632d = i2;
    }

    public static b t3() {
        return f61627p.toBuilder();
    }

    public static b u3(PlayGameArgs playGameArgs) {
        return f61627p.toBuilder().mergeFrom((b) playGameArgs);
    }

    public static PlayGameArgs v3(InputStream inputStream) throws IOException {
        return (PlayGameArgs) GeneratedMessageLite.parseDelimitedFrom(f61627p, inputStream);
    }

    public static PlayGameArgs w3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (PlayGameArgs) GeneratedMessageLite.parseDelimitedFrom(f61627p, inputStream, extensionRegistryLite);
    }

    public static PlayGameArgs x3(ByteString byteString) throws InvalidProtocolBufferException {
        return (PlayGameArgs) GeneratedMessageLite.parseFrom(f61627p, byteString);
    }

    public static PlayGameArgs y3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (PlayGameArgs) GeneratedMessageLite.parseFrom(f61627p, byteString, extensionRegistryLite);
    }

    public static PlayGameArgs z3(CodedInputStream codedInputStream) throws IOException {
        return (PlayGameArgs) GeneratedMessageLite.parseFrom(f61627p, codedInputStream);
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public boolean B() {
        return this.f61635g;
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public int O1() {
        return this.f61636h.size();
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public List<Long> O2() {
        return this.f61636h;
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public long c2(int i2) {
        return this.f61636h.getLong(i2);
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public int d() {
        return this.f61634f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61637a[methodToInvoke.ordinal()]) {
            case 1:
                return new PlayGameArgs();
            case 2:
                return f61627p;
            case 3:
                this.f61636h.makeImmutable();
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                PlayGameArgs playGameArgs = (PlayGameArgs) obj2;
                int i2 = this.f61630b;
                boolean z3 = i2 != 0;
                int i4 = playGameArgs.f61630b;
                this.f61630b = visitor.visitInt(z3, i2, i4 != 0, i4);
                long j4 = this.f61631c;
                boolean z4 = j4 != 0;
                long j5 = playGameArgs.f61631c;
                this.f61631c = visitor.visitLong(z4, j4, j5 != 0, j5);
                int i5 = this.f61632d;
                boolean z5 = i5 != 0;
                int i6 = playGameArgs.f61632d;
                this.f61632d = visitor.visitInt(z5, i5, i6 != 0, i6);
                long j6 = this.f61633e;
                boolean z6 = j6 != 0;
                long j7 = playGameArgs.f61633e;
                this.f61633e = visitor.visitLong(z6, j6, j7 != 0, j7);
                int i7 = this.f61634f;
                boolean z7 = i7 != 0;
                int i8 = playGameArgs.f61634f;
                this.f61634f = visitor.visitInt(z7, i7, i8 != 0, i8);
                boolean z8 = this.f61635g;
                boolean z9 = playGameArgs.f61635g;
                this.f61635g = visitor.visitBoolean(z8, z8, z9, z9);
                this.f61636h = visitor.visitLongList(this.f61636h, playGameArgs.f61636h);
                if (visitor == GeneratedMessageLite.MergeFromVisitor.INSTANCE) {
                    this.f61629a |= playGameArgs.f61629a;
                }
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    this.f61630b = codedInputStream.readEnum();
                                } else if (readTag == 16) {
                                    this.f61631c = codedInputStream.readInt64();
                                } else if (readTag == 24) {
                                    this.f61632d = codedInputStream.readEnum();
                                } else if (readTag == 32) {
                                    this.f61633e = codedInputStream.readInt64();
                                } else if (readTag == 40) {
                                    this.f61634f = codedInputStream.readInt32();
                                } else if (readTag == 48) {
                                    this.f61635g = codedInputStream.readBool();
                                } else if (readTag == 56) {
                                    if (!this.f61636h.isModifiable()) {
                                        this.f61636h = GeneratedMessageLite.mutableCopy(this.f61636h);
                                    }
                                    this.f61636h.addLong(codedInputStream.readInt64());
                                } else if (readTag != 58) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    if (!this.f61636h.isModifiable() && codedInputStream.getBytesUntilLimit() > 0) {
                                        this.f61636h = GeneratedMessageLite.mutableCopy(this.f61636h);
                                    }
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.f61636h.addLong(codedInputStream.readInt64());
                                    }
                                    codedInputStream.popLimit(pushLimit);
                                }
                            }
                            r1 = true;
                        } catch (IOException e4) {
                            throw new RuntimeException(new InvalidProtocolBufferException(e4.getMessage()).setUnfinishedMessage(this));
                        }
                    } catch (InvalidProtocolBufferException e5) {
                        throw new RuntimeException(e5.setUnfinishedMessage(this));
                    }
                }
                break;
            case 7:
                break;
            case 8:
                if (f61628q == null) {
                    synchronized (PlayGameArgs.class) {
                        if (f61628q == null) {
                            f61628q = new GeneratedMessageLite.DefaultInstanceBasedParser(f61627p);
                        }
                    }
                }
                return f61628q;
            default:
                throw new UnsupportedOperationException();
        }
        return f61627p;
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public long f() {
        return this.f61633e;
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public long getGameId() {
        return this.f61631c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeEnumSize = this.f61630b != State.START.getNumber() ? CodedOutputStream.computeEnumSize(1, this.f61630b) + 0 : 0;
        long j4 = this.f61631c;
        if (j4 != 0) {
            computeEnumSize += CodedOutputStream.computeInt64Size(2, j4);
        }
        if (this.f61632d != PlayType.STAND.getNumber()) {
            computeEnumSize += CodedOutputStream.computeEnumSize(3, this.f61632d);
        }
        long j5 = this.f61633e;
        if (j5 != 0) {
            computeEnumSize += CodedOutputStream.computeInt64Size(4, j5);
        }
        int i4 = this.f61634f;
        if (i4 != 0) {
            computeEnumSize += CodedOutputStream.computeInt32Size(5, i4);
        }
        boolean z3 = this.f61635g;
        if (z3) {
            computeEnumSize += CodedOutputStream.computeBoolSize(6, z3);
        }
        int i5 = 0;
        for (int i6 = 0; i6 < this.f61636h.size(); i6++) {
            i5 += CodedOutputStream.computeInt64SizeNoTag(this.f61636h.getLong(i6));
        }
        int size = computeEnumSize + i5 + (O2().size() * 1);
        this.memoizedSerializedSize = size;
        return size;
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public State getState() {
        State forNumber = State.forNumber(this.f61630b);
        return forNumber == null ? State.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public int getStateValue() {
        return this.f61630b;
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public PlayType getType() {
        PlayType forNumber = PlayType.forNumber(this.f61632d);
        return forNumber == null ? PlayType.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.c1
    public int getTypeValue() {
        return this.f61632d;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (this.f61630b != State.START.getNumber()) {
            codedOutputStream.writeEnum(1, this.f61630b);
        }
        long j4 = this.f61631c;
        if (j4 != 0) {
            codedOutputStream.writeInt64(2, j4);
        }
        if (this.f61632d != PlayType.STAND.getNumber()) {
            codedOutputStream.writeEnum(3, this.f61632d);
        }
        long j5 = this.f61633e;
        if (j5 != 0) {
            codedOutputStream.writeInt64(4, j5);
        }
        int i2 = this.f61634f;
        if (i2 != 0) {
            codedOutputStream.writeInt32(5, i2);
        }
        boolean z3 = this.f61635g;
        if (z3) {
            codedOutputStream.writeBool(6, z3);
        }
        for (int i4 = 0; i4 < this.f61636h.size(); i4++) {
            codedOutputStream.writeInt64(7, this.f61636h.getLong(i4));
        }
    }
}
