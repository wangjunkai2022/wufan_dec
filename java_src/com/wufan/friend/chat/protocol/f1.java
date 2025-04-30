package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.a;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: PlayerBannedNotification.java */
/* loaded from: classes2.dex */
public final class f1 extends GeneratedMessageLite<f1, b> implements g1 {

    /* renamed from: b  reason: collision with root package name */
    public static final int f61726b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final f1 f61727c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Parser<f1> f61728d;

    /* renamed from: a  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f61729a;

    /* compiled from: PlayerBannedNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61730a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61730a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61730a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61730a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61730a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61730a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61730a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61730a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61730a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: PlayerBannedNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<f1, b> implements g1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.g1
        public com.wufan.friend.chat.protocol.a P2() {
            return ((f1) this.instance).P2();
        }

        public b S2() {
            copyOnWrite();
            ((f1) this.instance).X2();
            return this;
        }

        public b T2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((f1) this.instance).Z2(aVar);
            return this;
        }

        public b U2(a.b bVar) {
            copyOnWrite();
            ((f1) this.instance).m3(bVar);
            return this;
        }

        public b V2(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((f1) this.instance).n3(aVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.g1
        public boolean W() {
            return ((f1) this.instance).W();
        }

        private b() {
            super(f1.f61727c);
        }
    }

    static {
        f1 f1Var = new f1();
        f61727c = f1Var;
        f1Var.makeImmutable();
    }

    private f1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X2() {
        this.f61729a = null;
    }

    public static f1 Y2() {
        return f61727c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z2(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f61729a;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f61729a = com.wufan.friend.chat.protocol.a.p3(this.f61729a).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f61729a = aVar;
        }
    }

    public static b a3() {
        return f61727c.toBuilder();
    }

    public static b b3(f1 f1Var) {
        return f61727c.toBuilder().mergeFrom((b) f1Var);
    }

    public static f1 c3(InputStream inputStream) throws IOException {
        return (f1) GeneratedMessageLite.parseDelimitedFrom(f61727c, inputStream);
    }

    public static f1 d3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f1) GeneratedMessageLite.parseDelimitedFrom(f61727c, inputStream, extensionRegistryLite);
    }

    public static f1 e3(ByteString byteString) throws InvalidProtocolBufferException {
        return (f1) GeneratedMessageLite.parseFrom(f61727c, byteString);
    }

    public static f1 f3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (f1) GeneratedMessageLite.parseFrom(f61727c, byteString, extensionRegistryLite);
    }

    public static f1 g3(CodedInputStream codedInputStream) throws IOException {
        return (f1) GeneratedMessageLite.parseFrom(f61727c, codedInputStream);
    }

    public static f1 h3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f1) GeneratedMessageLite.parseFrom(f61727c, codedInputStream, extensionRegistryLite);
    }

    public static f1 i3(InputStream inputStream) throws IOException {
        return (f1) GeneratedMessageLite.parseFrom(f61727c, inputStream);
    }

    public static f1 j3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (f1) GeneratedMessageLite.parseFrom(f61727c, inputStream, extensionRegistryLite);
    }

    public static f1 k3(byte[] bArr) throws InvalidProtocolBufferException {
        return (f1) GeneratedMessageLite.parseFrom(f61727c, bArr);
    }

    public static f1 l3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (f1) GeneratedMessageLite.parseFrom(f61727c, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3(a.b bVar) {
        this.f61729a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f61729a = aVar;
    }

    public static Parser<f1> parser() {
        return f61727c.getParserForType();
    }

    @Override // com.wufan.friend.chat.protocol.g1
    public com.wufan.friend.chat.protocol.a P2() {
        com.wufan.friend.chat.protocol.a aVar = this.f61729a;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.wufan.friend.chat.protocol.g1
    public boolean W() {
        return this.f61729a != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61730a[methodToInvoke.ordinal()]) {
            case 1:
                return new f1();
            case 2:
                return f61727c;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                this.f61729a = (com.wufan.friend.chat.protocol.a) ((GeneratedMessageLite.Visitor) obj).visitMessage(this.f61729a, ((f1) obj2).f61729a);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z3 = false;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag != 10) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                com.wufan.friend.chat.protocol.a aVar = this.f61729a;
                                a.b builder = aVar != null ? aVar.toBuilder() : null;
                                com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                this.f61729a = aVar2;
                                if (builder != null) {
                                    builder.mergeFrom((a.b) aVar2);
                                    this.f61729a = builder.buildPartial();
                                }
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
                if (f61728d == null) {
                    synchronized (f1.class) {
                        if (f61728d == null) {
                            f61728d = new GeneratedMessageLite.DefaultInstanceBasedParser(f61727c);
                        }
                    }
                }
                return f61728d;
            default:
                throw new UnsupportedOperationException();
        }
        return f61727c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61729a != null ? 0 + CodedOutputStream.computeMessageSize(1, P2()) : 0;
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61729a != null) {
            codedOutputStream.writeMessage(1, P2());
        }
    }
}
