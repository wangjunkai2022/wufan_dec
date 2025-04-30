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
public final class HeartArgs extends GeneratedMessageLite<HeartArgs, b> implements k0 {

    /* renamed from: b  reason: collision with root package name */
    public static final int f61615b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final HeartArgs f61616c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Parser<HeartArgs> f61617d;

    /* renamed from: a  reason: collision with root package name */
    private int f61618a;

    /* loaded from: classes2.dex */
    public enum State implements Internal.EnumLite {
        UNKNOWN_HST(0),
        APP(1),
        SIMULATOR(2),
        UNRECOGNIZED(-1);
        
        public static final int APP_VALUE = 1;
        public static final int SIMULATOR_VALUE = 2;
        public static final int UNKNOWN_HST_VALUE = 0;
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
                    return SIMULATOR;
                }
                return APP;
            }
            return UNKNOWN_HST;
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
        static final /* synthetic */ int[] f61619a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61619a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61619a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61619a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61619a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61619a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61619a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61619a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61619a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<HeartArgs, b> implements k0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((HeartArgs) this.instance).clearState();
            return this;
        }

        public b T2(State state) {
            copyOnWrite();
            ((HeartArgs) this.instance).j3(state);
            return this;
        }

        public b U2(int i2) {
            copyOnWrite();
            ((HeartArgs) this.instance).setStateValue(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.k0
        public State getState() {
            return ((HeartArgs) this.instance).getState();
        }

        @Override // com.wufan.friend.chat.protocol.k0
        public int getStateValue() {
            return ((HeartArgs) this.instance).getStateValue();
        }

        private b() {
            super(HeartArgs.f61616c);
        }
    }

    static {
        HeartArgs heartArgs = new HeartArgs();
        f61616c = heartArgs;
        heartArgs.makeImmutable();
    }

    private HeartArgs() {
    }

    public static HeartArgs W2() {
        return f61616c;
    }

    public static b X2() {
        return f61616c.toBuilder();
    }

    public static b Y2(HeartArgs heartArgs) {
        return f61616c.toBuilder().mergeFrom((b) heartArgs);
    }

    public static HeartArgs Z2(InputStream inputStream) throws IOException {
        return (HeartArgs) GeneratedMessageLite.parseDelimitedFrom(f61616c, inputStream);
    }

    public static HeartArgs a3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (HeartArgs) GeneratedMessageLite.parseDelimitedFrom(f61616c, inputStream, extensionRegistryLite);
    }

    public static HeartArgs b3(ByteString byteString) throws InvalidProtocolBufferException {
        return (HeartArgs) GeneratedMessageLite.parseFrom(f61616c, byteString);
    }

    public static HeartArgs c3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (HeartArgs) GeneratedMessageLite.parseFrom(f61616c, byteString, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.f61618a = 0;
    }

    public static HeartArgs d3(CodedInputStream codedInputStream) throws IOException {
        return (HeartArgs) GeneratedMessageLite.parseFrom(f61616c, codedInputStream);
    }

    public static HeartArgs e3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (HeartArgs) GeneratedMessageLite.parseFrom(f61616c, codedInputStream, extensionRegistryLite);
    }

    public static HeartArgs f3(InputStream inputStream) throws IOException {
        return (HeartArgs) GeneratedMessageLite.parseFrom(f61616c, inputStream);
    }

    public static HeartArgs g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (HeartArgs) GeneratedMessageLite.parseFrom(f61616c, inputStream, extensionRegistryLite);
    }

    public static HeartArgs h3(byte[] bArr) throws InvalidProtocolBufferException {
        return (HeartArgs) GeneratedMessageLite.parseFrom(f61616c, bArr);
    }

    public static HeartArgs i3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (HeartArgs) GeneratedMessageLite.parseFrom(f61616c, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j3(State state) {
        Objects.requireNonNull(state);
        this.f61618a = state.getNumber();
    }

    public static Parser<HeartArgs> parser() {
        return f61616c.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateValue(int i2) {
        this.f61618a = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61619a[methodToInvoke.ordinal()]) {
            case 1:
                return new HeartArgs();
            case 2:
                return f61616c;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                HeartArgs heartArgs = (HeartArgs) obj2;
                int i2 = this.f61618a;
                boolean z3 = i2 != 0;
                int i4 = heartArgs.f61618a;
                this.f61618a = visitor.visitInt(z3, i2, i4 != 0, i4);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag != 8) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61618a = codedInputStream.readEnum();
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
                if (f61617d == null) {
                    synchronized (HeartArgs.class) {
                        if (f61617d == null) {
                            f61617d = new GeneratedMessageLite.DefaultInstanceBasedParser(f61616c);
                        }
                    }
                }
                return f61617d;
            default:
                throw new UnsupportedOperationException();
        }
        return f61616c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeEnumSize = this.f61618a != State.UNKNOWN_HST.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.f61618a) : 0;
        this.memoizedSerializedSize = computeEnumSize;
        return computeEnumSize;
    }

    @Override // com.wufan.friend.chat.protocol.k0
    public State getState() {
        State forNumber = State.forNumber(this.f61618a);
        return forNumber == null ? State.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.k0
    public int getStateValue() {
        return this.f61618a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61618a != State.UNKNOWN_HST.getNumber()) {
            codedOutputStream.writeEnum(1, this.f61618a);
        }
    }
}
