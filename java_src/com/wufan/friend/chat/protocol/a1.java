package com.wufan.friend.chat.protocol;

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
/* compiled from: OnlineStateArgs.java */
/* loaded from: classes2.dex */
public final class a1 extends GeneratedMessageLite<a1, b> implements b1 {

    /* renamed from: b  reason: collision with root package name */
    public static final int f61667b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final a1 f61668c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Parser<a1> f61669d;

    /* renamed from: a  reason: collision with root package name */
    private int f61670a;

    /* compiled from: OnlineStateArgs.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61671a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61671a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61671a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61671a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61671a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61671a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61671a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61671a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61671a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: OnlineStateArgs.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<a1, b> implements b1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((a1) this.instance).clearState();
            return this;
        }

        public b T2(OnlineState onlineState) {
            copyOnWrite();
            ((a1) this.instance).j3(onlineState);
            return this;
        }

        public b U2(int i2) {
            copyOnWrite();
            ((a1) this.instance).setStateValue(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.b1
        public OnlineState getState() {
            return ((a1) this.instance).getState();
        }

        @Override // com.wufan.friend.chat.protocol.b1
        public int getStateValue() {
            return ((a1) this.instance).getStateValue();
        }

        private b() {
            super(a1.f61668c);
        }
    }

    static {
        a1 a1Var = new a1();
        f61668c = a1Var;
        a1Var.makeImmutable();
    }

    private a1() {
    }

    public static a1 W2() {
        return f61668c;
    }

    public static b X2() {
        return f61668c.toBuilder();
    }

    public static b Y2(a1 a1Var) {
        return f61668c.toBuilder().mergeFrom((b) a1Var);
    }

    public static a1 Z2(InputStream inputStream) throws IOException {
        return (a1) GeneratedMessageLite.parseDelimitedFrom(f61668c, inputStream);
    }

    public static a1 a3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a1) GeneratedMessageLite.parseDelimitedFrom(f61668c, inputStream, extensionRegistryLite);
    }

    public static a1 b3(ByteString byteString) throws InvalidProtocolBufferException {
        return (a1) GeneratedMessageLite.parseFrom(f61668c, byteString);
    }

    public static a1 c3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (a1) GeneratedMessageLite.parseFrom(f61668c, byteString, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.f61670a = 0;
    }

    public static a1 d3(CodedInputStream codedInputStream) throws IOException {
        return (a1) GeneratedMessageLite.parseFrom(f61668c, codedInputStream);
    }

    public static a1 e3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a1) GeneratedMessageLite.parseFrom(f61668c, codedInputStream, extensionRegistryLite);
    }

    public static a1 f3(InputStream inputStream) throws IOException {
        return (a1) GeneratedMessageLite.parseFrom(f61668c, inputStream);
    }

    public static a1 g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (a1) GeneratedMessageLite.parseFrom(f61668c, inputStream, extensionRegistryLite);
    }

    public static a1 h3(byte[] bArr) throws InvalidProtocolBufferException {
        return (a1) GeneratedMessageLite.parseFrom(f61668c, bArr);
    }

    public static a1 i3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (a1) GeneratedMessageLite.parseFrom(f61668c, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j3(OnlineState onlineState) {
        Objects.requireNonNull(onlineState);
        this.f61670a = onlineState.getNumber();
    }

    public static Parser<a1> parser() {
        return f61668c.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateValue(int i2) {
        this.f61670a = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61671a[methodToInvoke.ordinal()]) {
            case 1:
                return new a1();
            case 2:
                return f61668c;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                a1 a1Var = (a1) obj2;
                int i2 = this.f61670a;
                boolean z3 = i2 != 0;
                int i4 = a1Var.f61670a;
                this.f61670a = visitor.visitInt(z3, i2, i4 != 0, i4);
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
                                this.f61670a = codedInputStream.readEnum();
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
                if (f61669d == null) {
                    synchronized (a1.class) {
                        if (f61669d == null) {
                            f61669d = new GeneratedMessageLite.DefaultInstanceBasedParser(f61668c);
                        }
                    }
                }
                return f61669d;
            default:
                throw new UnsupportedOperationException();
        }
        return f61668c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeEnumSize = this.f61670a != OnlineState.ONLINE.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.f61670a) : 0;
        this.memoizedSerializedSize = computeEnumSize;
        return computeEnumSize;
    }

    @Override // com.wufan.friend.chat.protocol.b1
    public OnlineState getState() {
        OnlineState forNumber = OnlineState.forNumber(this.f61670a);
        return forNumber == null ? OnlineState.UNRECOGNIZED : forNumber;
    }

    @Override // com.wufan.friend.chat.protocol.b1
    public int getStateValue() {
        return this.f61670a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61670a != OnlineState.ONLINE.getNumber()) {
            codedOutputStream.writeEnum(1, this.f61670a);
        }
    }
}
