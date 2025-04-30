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
public final class FriendAddReqNotification extends GeneratedMessageLite<FriendAddReqNotification, b> implements s {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61606d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61607e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61608f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final FriendAddReqNotification f61609g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Parser<FriendAddReqNotification> f61610h;

    /* renamed from: a  reason: collision with root package name */
    private boolean f61611a;

    /* renamed from: b  reason: collision with root package name */
    private int f61612b;

    /* renamed from: c  reason: collision with root package name */
    private int f61613c;

    /* loaded from: classes2.dex */
    public enum State implements Internal.EnumLite {
        CHANGE_FRIEND_REQUEST(0),
        GIVE_LIKE(1),
        UNRECOGNIZED(-1);
        
        public static final int CHANGE_FRIEND_REQUEST_VALUE = 0;
        public static final int GIVE_LIKE_VALUE = 1;
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
                return GIVE_LIKE;
            }
            return CHANGE_FRIEND_REQUEST;
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
        static final /* synthetic */ int[] f61614a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61614a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61614a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61614a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61614a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61614a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61614a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61614a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61614a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<FriendAddReqNotification, b> implements s {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((FriendAddReqNotification) this.instance).clearCount();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((FriendAddReqNotification) this.instance).a3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((FriendAddReqNotification) this.instance).clearType();
            return this;
        }

        public b V2(int i2) {
            copyOnWrite();
            ((FriendAddReqNotification) this.instance).setCount(i2);
            return this;
        }

        public b W2(boolean z3) {
            copyOnWrite();
            ((FriendAddReqNotification) this.instance).o3(z3);
            return this;
        }

        public b X2(State state) {
            copyOnWrite();
            ((FriendAddReqNotification) this.instance).p3(state);
            return this;
        }

        public b Y2(int i2) {
            copyOnWrite();
            ((FriendAddReqNotification) this.instance).setTypeValue(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.s
        public int getCount() {
            return ((FriendAddReqNotification) this.instance).getCount();
        }

        @Override // com.wufan.friend.chat.protocol.s
        public boolean getStatus() {
            return ((FriendAddReqNotification) this.instance).getStatus();
        }

        @Override // com.wufan.friend.chat.protocol.s
        public State getType() {
            return ((FriendAddReqNotification) this.instance).getType();
        }

        @Override // com.wufan.friend.chat.protocol.s
        public int getTypeValue() {
            return ((FriendAddReqNotification) this.instance).getTypeValue();
        }

        private b() {
            super(FriendAddReqNotification.f61609g);
        }
    }

    static {
        FriendAddReqNotification friendAddReqNotification = new FriendAddReqNotification();
        f61609g = friendAddReqNotification;
        friendAddReqNotification.makeImmutable();
    }

    private FriendAddReqNotification() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a3() {
        this.f61611a = false;
    }

    public static FriendAddReqNotification b3() {
        return f61609g;
    }

    public static b c3() {
        return f61609g.toBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCount() {
        this.f61613c = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearType() {
        this.f61612b = 0;
    }

    public static b d3(FriendAddReqNotification friendAddReqNotification) {
        return f61609g.toBuilder().mergeFrom((b) friendAddReqNotification);
    }

    public static FriendAddReqNotification e3(InputStream inputStream) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseDelimitedFrom(f61609g, inputStream);
    }

    public static FriendAddReqNotification f3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseDelimitedFrom(f61609g, inputStream, extensionRegistryLite);
    }

    public static FriendAddReqNotification g3(ByteString byteString) throws InvalidProtocolBufferException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseFrom(f61609g, byteString);
    }

    public static FriendAddReqNotification h3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseFrom(f61609g, byteString, extensionRegistryLite);
    }

    public static FriendAddReqNotification i3(CodedInputStream codedInputStream) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseFrom(f61609g, codedInputStream);
    }

    public static FriendAddReqNotification j3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseFrom(f61609g, codedInputStream, extensionRegistryLite);
    }

    public static FriendAddReqNotification k3(InputStream inputStream) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseFrom(f61609g, inputStream);
    }

    public static FriendAddReqNotification l3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseFrom(f61609g, inputStream, extensionRegistryLite);
    }

    public static FriendAddReqNotification m3(byte[] bArr) throws InvalidProtocolBufferException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseFrom(f61609g, bArr);
    }

    public static FriendAddReqNotification n3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (FriendAddReqNotification) GeneratedMessageLite.parseFrom(f61609g, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3(boolean z3) {
        this.f61611a = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(State state) {
        Objects.requireNonNull(state);
        this.f61612b = state.getNumber();
    }

    public static Parser<FriendAddReqNotification> parser() {
        return f61609g.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCount(int i2) {
        this.f61613c = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTypeValue(int i2) {
        this.f61612b = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61614a[methodToInvoke.ordinal()]) {
            case 1:
                return new FriendAddReqNotification();
            case 2:
                return f61609g;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                FriendAddReqNotification friendAddReqNotification = (FriendAddReqNotification) obj2;
                boolean z3 = this.f61611a;
                boolean z4 = friendAddReqNotification.f61611a;
                this.f61611a = visitor.visitBoolean(z3, z3, z4, z4);
                int i2 = this.f61612b;
                boolean z5 = i2 != 0;
                int i4 = friendAddReqNotification.f61612b;
                this.f61612b = visitor.visitInt(z5, i2, i4 != 0, i4);
                int i5 = this.f61613c;
                boolean z6 = i5 != 0;
                int i6 = friendAddReqNotification.f61613c;
                this.f61613c = visitor.visitInt(z6, i5, i6 != 0, i6);
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
                                this.f61611a = codedInputStream.readBool();
                            } else if (readTag == 16) {
                                this.f61612b = codedInputStream.readEnum();
                            } else if (readTag != 24) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61613c = codedInputStream.readInt32();
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
                if (f61610h == null) {
                    synchronized (FriendAddReqNotification.class) {
                        if (f61610h == null) {
                            f61610h = new GeneratedMessageLite.DefaultInstanceBasedParser(f61609g);
                        }
                    }
                }
                return f61610h;
            default:
                throw new UnsupportedOperationException();
        }
        return f61609g;
    }

    @Override // com.wufan.friend.chat.protocol.s
    public int getCount() {
        return this.f61613c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        boolean z3 = this.f61611a;
        int computeBoolSize = z3 ? 0 + CodedOutputStream.computeBoolSize(1, z3) : 0;
        if (this.f61612b != State.CHANGE_FRIEND_REQUEST.getNumber()) {
            computeBoolSize += CodedOutputStream.computeEnumSize(2, this.f61612b);
        }
        int i4 = this.f61613c;
        if (i4 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(3, i4);
        }
        this.memoizedSerializedSize = computeBoolSize;
        return computeBoolSize;
    }

    @Override // com.wufan.friend.chat.protocol.s
    public boolean getStatus() {
        return this.f61611a;
    }

    @Override // com.wufan.friend.chat.protocol.s
    public State getType() {
        State forNumber = State.forNumber(this.f61612b);
        return forNumber == null ? State.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.s
    public int getTypeValue() {
        return this.f61612b;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z3 = this.f61611a;
        if (z3) {
            codedOutputStream.writeBool(1, z3);
        }
        if (this.f61612b != State.CHANGE_FRIEND_REQUEST.getNumber()) {
            codedOutputStream.writeEnum(2, this.f61612b);
        }
        int i2 = this.f61613c;
        if (i2 != 0) {
            codedOutputStream.writeInt32(3, i2);
        }
    }
}
