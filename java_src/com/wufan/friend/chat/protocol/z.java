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
/* compiled from: FriendDeleteSuccessNotification.java */
/* loaded from: classes2.dex */
public final class z extends GeneratedMessageLite<z, b> implements a0 {

    /* renamed from: b  reason: collision with root package name */
    public static final int f62018b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final z f62019c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Parser<z> f62020d;

    /* renamed from: a  reason: collision with root package name */
    private int f62021a;

    /* compiled from: FriendDeleteSuccessNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62022a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62022a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62022a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62022a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62022a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62022a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62022a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62022a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62022a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: FriendDeleteSuccessNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<z, b> implements a0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.a0
        public int E() {
            return ((z) this.instance).E();
        }

        public b S2() {
            copyOnWrite();
            ((z) this.instance).V2();
            return this;
        }

        public b T2(int i2) {
            copyOnWrite();
            ((z) this.instance).j3(i2);
            return this;
        }

        private b() {
            super(z.f62019c);
        }
    }

    static {
        z zVar = new z();
        f62019c = zVar;
        zVar.makeImmutable();
    }

    private z() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V2() {
        this.f62021a = 0;
    }

    public static z W2() {
        return f62019c;
    }

    public static b X2() {
        return f62019c.toBuilder();
    }

    public static b Y2(z zVar) {
        return f62019c.toBuilder().mergeFrom((b) zVar);
    }

    public static z Z2(InputStream inputStream) throws IOException {
        return (z) GeneratedMessageLite.parseDelimitedFrom(f62019c, inputStream);
    }

    public static z a3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (z) GeneratedMessageLite.parseDelimitedFrom(f62019c, inputStream, extensionRegistryLite);
    }

    public static z b3(ByteString byteString) throws InvalidProtocolBufferException {
        return (z) GeneratedMessageLite.parseFrom(f62019c, byteString);
    }

    public static z c3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (z) GeneratedMessageLite.parseFrom(f62019c, byteString, extensionRegistryLite);
    }

    public static z d3(CodedInputStream codedInputStream) throws IOException {
        return (z) GeneratedMessageLite.parseFrom(f62019c, codedInputStream);
    }

    public static z e3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (z) GeneratedMessageLite.parseFrom(f62019c, codedInputStream, extensionRegistryLite);
    }

    public static z f3(InputStream inputStream) throws IOException {
        return (z) GeneratedMessageLite.parseFrom(f62019c, inputStream);
    }

    public static z g3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (z) GeneratedMessageLite.parseFrom(f62019c, inputStream, extensionRegistryLite);
    }

    public static z h3(byte[] bArr) throws InvalidProtocolBufferException {
        return (z) GeneratedMessageLite.parseFrom(f62019c, bArr);
    }

    public static z i3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (z) GeneratedMessageLite.parseFrom(f62019c, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j3(int i2) {
        this.f62021a = i2;
    }

    public static Parser<z> parser() {
        return f62019c.getParserForType();
    }

    @Override // com.wufan.friend.chat.protocol.a0
    public int E() {
        return this.f62021a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f62022a[methodToInvoke.ordinal()]) {
            case 1:
                return new z();
            case 2:
                return f62019c;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                z zVar = (z) obj2;
                int i2 = this.f62021a;
                boolean z3 = i2 != 0;
                int i4 = zVar.f62021a;
                this.f62021a = visitor.visitInt(z3, i2, i4 != 0, i4);
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
                                this.f62021a = codedInputStream.readInt32();
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
                if (f62020d == null) {
                    synchronized (z.class) {
                        if (f62020d == null) {
                            f62020d = new GeneratedMessageLite.DefaultInstanceBasedParser(f62019c);
                        }
                    }
                }
                return f62020d;
            default:
                throw new UnsupportedOperationException();
        }
        return f62019c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62021a;
        int computeInt32Size = i4 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i4) : 0;
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62021a;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
    }
}
