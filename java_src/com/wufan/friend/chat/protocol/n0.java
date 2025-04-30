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
/* compiled from: LeaveRoomNotification.java */
/* loaded from: classes2.dex */
public final class n0 extends GeneratedMessageLite<n0, b> implements o0 {

    /* renamed from: c  reason: collision with root package name */
    public static final int f61822c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f61823d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final n0 f61824e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<n0> f61825f;

    /* renamed from: a  reason: collision with root package name */
    private int f61826a;

    /* renamed from: b  reason: collision with root package name */
    private long f61827b;

    /* compiled from: LeaveRoomNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61828a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61828a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61828a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61828a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61828a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61828a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61828a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61828a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61828a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: LeaveRoomNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<n0, b> implements o0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b S2() {
            copyOnWrite();
            ((n0) this.instance).X2();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((n0) this.instance).Y2();
            return this;
        }

        public b U2(int i2) {
            copyOnWrite();
            ((n0) this.instance).m3(i2);
            return this;
        }

        public b V2(long j4) {
            copyOnWrite();
            ((n0) this.instance).n3(j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public int d() {
            return ((n0) this.instance).d();
        }

        @Override // com.wufan.friend.chat.protocol.o0
        public long f() {
            return ((n0) this.instance).f();
        }

        private b() {
            super(n0.f61824e);
        }
    }

    static {
        n0 n0Var = new n0();
        f61824e = n0Var;
        n0Var.makeImmutable();
    }

    private n0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X2() {
        this.f61826a = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y2() {
        this.f61827b = 0L;
    }

    public static n0 Z2() {
        return f61824e;
    }

    public static b a3() {
        return f61824e.toBuilder();
    }

    public static b b3(n0 n0Var) {
        return f61824e.toBuilder().mergeFrom((b) n0Var);
    }

    public static n0 c3(InputStream inputStream) throws IOException {
        return (n0) GeneratedMessageLite.parseDelimitedFrom(f61824e, inputStream);
    }

    public static n0 d3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n0) GeneratedMessageLite.parseDelimitedFrom(f61824e, inputStream, extensionRegistryLite);
    }

    public static n0 e3(ByteString byteString) throws InvalidProtocolBufferException {
        return (n0) GeneratedMessageLite.parseFrom(f61824e, byteString);
    }

    public static n0 f3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (n0) GeneratedMessageLite.parseFrom(f61824e, byteString, extensionRegistryLite);
    }

    public static n0 g3(CodedInputStream codedInputStream) throws IOException {
        return (n0) GeneratedMessageLite.parseFrom(f61824e, codedInputStream);
    }

    public static n0 h3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n0) GeneratedMessageLite.parseFrom(f61824e, codedInputStream, extensionRegistryLite);
    }

    public static n0 i3(InputStream inputStream) throws IOException {
        return (n0) GeneratedMessageLite.parseFrom(f61824e, inputStream);
    }

    public static n0 j3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (n0) GeneratedMessageLite.parseFrom(f61824e, inputStream, extensionRegistryLite);
    }

    public static n0 k3(byte[] bArr) throws InvalidProtocolBufferException {
        return (n0) GeneratedMessageLite.parseFrom(f61824e, bArr);
    }

    public static n0 l3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (n0) GeneratedMessageLite.parseFrom(f61824e, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3(int i2) {
        this.f61826a = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3(long j4) {
        this.f61827b = j4;
    }

    public static Parser<n0> parser() {
        return f61824e.getParserForType();
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public int d() {
        return this.f61826a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f61828a[methodToInvoke.ordinal()]) {
            case 1:
                return new n0();
            case 2:
                return f61824e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                n0 n0Var = (n0) obj2;
                int i2 = this.f61826a;
                boolean z4 = i2 != 0;
                int i4 = n0Var.f61826a;
                this.f61826a = visitor.visitInt(z4, i2, i4 != 0, i4);
                long j4 = this.f61827b;
                boolean z5 = j4 != 0;
                long j5 = n0Var.f61827b;
                this.f61827b = visitor.visitLong(z5, j4, j5 != 0, j5);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.f61826a = codedInputStream.readInt32();
                            } else if (readTag != 16) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61827b = codedInputStream.readInt64();
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
                if (f61825f == null) {
                    synchronized (n0.class) {
                        if (f61825f == null) {
                            f61825f = new GeneratedMessageLite.DefaultInstanceBasedParser(f61824e);
                        }
                    }
                }
                return f61825f;
            default:
                throw new UnsupportedOperationException();
        }
        return f61824e;
    }

    @Override // com.wufan.friend.chat.protocol.o0
    public long f() {
        return this.f61827b;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f61826a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        long j4 = this.f61827b;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(2, j4);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f61826a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        long j4 = this.f61827b;
        if (j4 != 0) {
            codedOutputStream.writeInt64(2, j4);
        }
    }
}
