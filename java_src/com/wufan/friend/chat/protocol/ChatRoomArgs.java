package com.wufan.friend.chat.protocol;

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
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ChatRoomArgs extends GeneratedMessageLite<ChatRoomArgs, b> implements o {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61597d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61598e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61599f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final ChatRoomArgs f61600g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<ChatRoomArgs> f61601h;

    /* renamed from: a  reason: collision with root package name */
    private int f61602a;

    /* renamed from: b  reason: collision with root package name */
    private long f61603b;

    /* renamed from: c  reason: collision with root package name */
    private int f61604c;

    /* loaded from: classes2.dex */
    public enum State implements Internal.EnumLite {
        JOIN(0),
        LEAVE(1),
        UNRECOGNIZED(-1);
        
        public static final int JOIN_VALUE = 0;
        public static final int LEAVE_VALUE = 1;
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
                    return null;
                }
                return LEAVE;
            }
            return JOIN;
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
        static final /* synthetic */ int[] f61605a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61605a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61605a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61605a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61605a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61605a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61605a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61605a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61605a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<ChatRoomArgs, b> implements o {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((ChatRoomArgs) this.instance).a3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((ChatRoomArgs) this.instance).b3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((ChatRoomArgs) this.instance).clearState();
            return this;
        }

        public b V2(int i2) {
            copyOnWrite();
            ((ChatRoomArgs) this.instance).p3(i2);
            return this;
        }

        public b W2(long j4) {
            copyOnWrite();
            ((ChatRoomArgs) this.instance).q3(j4);
            return this;
        }

        public b X2(State state) {
            copyOnWrite();
            ((ChatRoomArgs) this.instance).r3(state);
            return this;
        }

        public b Y2(int i2) {
            copyOnWrite();
            ((ChatRoomArgs) this.instance).setStateValue(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.o
        public int d() {
            return ((ChatRoomArgs) this.instance).d();
        }

        @Override // com.wufan.friend.chat.protocol.o
        public long f() {
            return ((ChatRoomArgs) this.instance).f();
        }

        @Override // com.wufan.friend.chat.protocol.o
        public State getState() {
            return ((ChatRoomArgs) this.instance).getState();
        }

        @Override // com.wufan.friend.chat.protocol.o
        public int getStateValue() {
            return ((ChatRoomArgs) this.instance).getStateValue();
        }

        private b() {
            super(ChatRoomArgs.f61600g);
        }
    }

    static {
        ChatRoomArgs chatRoomArgs = new ChatRoomArgs();
        f61600g = chatRoomArgs;
        chatRoomArgs.makeImmutable();
    }

    private ChatRoomArgs() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a3() {
        this.f61604c = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3() {
        this.f61603b = 0L;
    }

    public static ChatRoomArgs c3() {
        return f61600g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.f61602a = 0;
    }

    public static b d3() {
        return f61600g.toBuilder();
    }

    public static b e3(ChatRoomArgs chatRoomArgs) {
        return f61600g.toBuilder().mergeFrom((b) chatRoomArgs);
    }

    public static ChatRoomArgs f3(InputStream inputStream) throws IOException {
        return (ChatRoomArgs) GeneratedMessageLite.parseDelimitedFrom(f61600g, inputStream);
    }

    public static ChatRoomArgs g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (ChatRoomArgs) GeneratedMessageLite.parseDelimitedFrom(f61600g, inputStream, extensionRegistryLite);
    }

    public static ChatRoomArgs h3(ByteString byteString) throws InvalidProtocolBufferException {
        return (ChatRoomArgs) GeneratedMessageLite.parseFrom(f61600g, byteString);
    }

    public static ChatRoomArgs i3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (ChatRoomArgs) GeneratedMessageLite.parseFrom(f61600g, byteString, extensionRegistryLite);
    }

    public static ChatRoomArgs j3(CodedInputStream codedInputStream) throws IOException {
        return (ChatRoomArgs) GeneratedMessageLite.parseFrom(f61600g, codedInputStream);
    }

    public static ChatRoomArgs k3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (ChatRoomArgs) GeneratedMessageLite.parseFrom(f61600g, codedInputStream, extensionRegistryLite);
    }

    public static ChatRoomArgs l3(InputStream inputStream) throws IOException {
        return (ChatRoomArgs) GeneratedMessageLite.parseFrom(f61600g, inputStream);
    }

    public static ChatRoomArgs m3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (ChatRoomArgs) GeneratedMessageLite.parseFrom(f61600g, inputStream, extensionRegistryLite);
    }

    public static ChatRoomArgs n3(byte[] bArr) throws InvalidProtocolBufferException {
        return (ChatRoomArgs) GeneratedMessageLite.parseFrom(f61600g, bArr);
    }

    public static ChatRoomArgs o3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (ChatRoomArgs) GeneratedMessageLite.parseFrom(f61600g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(int i2) {
        this.f61604c = i2;
    }

    public static Parser<ChatRoomArgs> parser() {
        return f61600g.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3(long j4) {
        this.f61603b = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3(State state) {
        Objects.requireNonNull(state);
        this.f61602a = state.getNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateValue(int i2) {
        this.f61602a = i2;
    }

    @Override // com.wufan.friend.chat.protocol.o
    public int d() {
        return this.f61604c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61605a[methodToInvoke.ordinal()]) {
            case 1:
                return new ChatRoomArgs();
            case 2:
                return f61600g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                ChatRoomArgs chatRoomArgs = (ChatRoomArgs) obj2;
                int i2 = this.f61602a;
                boolean z3 = i2 != 0;
                int i4 = chatRoomArgs.f61602a;
                this.f61602a = visitor.visitInt(z3, i2, i4 != 0, i4);
                long j4 = this.f61603b;
                boolean z4 = j4 != 0;
                long j5 = chatRoomArgs.f61603b;
                this.f61603b = visitor.visitLong(z4, j4, j5 != 0, j5);
                int i5 = this.f61604c;
                boolean z5 = i5 != 0;
                int i6 = chatRoomArgs.f61604c;
                this.f61604c = visitor.visitInt(z5, i5, i6 != 0, i6);
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
                                this.f61602a = codedInputStream.readEnum();
                            } else if (readTag == 16) {
                                this.f61603b = codedInputStream.readInt64();
                            } else if (readTag != 24) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61604c = codedInputStream.readInt32();
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
                if (f61601h == null) {
                    synchronized (ChatRoomArgs.class) {
                        if (f61601h == null) {
                            f61601h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61600g);
                        }
                    }
                }
                return f61601h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61600g;
    }

    @Override // com.wufan.friend.chat.protocol.o
    public long f() {
        return this.f61603b;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeEnumSize = this.f61602a != State.JOIN.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.f61602a) : 0;
        long j4 = this.f61603b;
        if (j4 != 0) {
            computeEnumSize += CodedOutputStream.computeInt64Size(2, j4);
        }
        int i4 = this.f61604c;
        if (i4 != 0) {
            computeEnumSize += CodedOutputStream.computeInt32Size(3, i4);
        }
        this.memoizedSerializedSize = computeEnumSize;
        return computeEnumSize;
    }

    @Override // com.wufan.friend.chat.protocol.o
    public State getState() {
        State forNumber = State.forNumber(this.f61602a);
        return forNumber == null ? State.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.o
    public int getStateValue() {
        return this.f61602a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61602a != State.JOIN.getNumber()) {
            codedOutputStream.writeEnum(1, this.f61602a);
        }
        long j4 = this.f61603b;
        if (j4 != 0) {
            codedOutputStream.writeInt64(2, j4);
        }
        int i2 = this.f61604c;
        if (i2 != 0) {
            codedOutputStream.writeInt32(3, i2);
        }
    }
}
