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
/* compiled from: DialogNotification.java */
/* loaded from: classes2.dex */
public final class p extends GeneratedMessageLite<p, b> implements q {

    /* renamed from: a  reason: collision with root package name */
    private static final p f61838a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Parser<p> f61839b;

    /* compiled from: DialogNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61840a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61840a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61840a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61840a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61840a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61840a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61840a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61840a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61840a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: DialogNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<p, b> implements q {
        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            super(p.f61838a);
        }
    }

    static {
        p pVar = new p();
        f61838a = pVar;
        pVar.makeImmutable();
    }

    private p() {
    }

    public static p T2() {
        return f61838a;
    }

    public static b U2() {
        return f61838a.toBuilder();
    }

    public static b V2(p pVar) {
        return f61838a.toBuilder().mergeFrom((b) pVar);
    }

    public static p W2(InputStream inputStream) throws IOException {
        return (p) GeneratedMessageLite.parseDelimitedFrom(f61838a, inputStream);
    }

    public static p X2(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (p) GeneratedMessageLite.parseDelimitedFrom(f61838a, inputStream, extensionRegistryLite);
    }

    public static p Y2(ByteString byteString) throws InvalidProtocolBufferException {
        return (p) GeneratedMessageLite.parseFrom(f61838a, byteString);
    }

    public static p Z2(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (p) GeneratedMessageLite.parseFrom(f61838a, byteString, extensionRegistryLite);
    }

    public static p a3(CodedInputStream codedInputStream) throws IOException {
        return (p) GeneratedMessageLite.parseFrom(f61838a, codedInputStream);
    }

    public static p b3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (p) GeneratedMessageLite.parseFrom(f61838a, codedInputStream, extensionRegistryLite);
    }

    public static p c3(InputStream inputStream) throws IOException {
        return (p) GeneratedMessageLite.parseFrom(f61838a, inputStream);
    }

    public static p d3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (p) GeneratedMessageLite.parseFrom(f61838a, inputStream, extensionRegistryLite);
    }

    public static p e3(byte[] bArr) throws InvalidProtocolBufferException {
        return (p) GeneratedMessageLite.parseFrom(f61838a, bArr);
    }

    public static p f3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (p) GeneratedMessageLite.parseFrom(f61838a, bArr, extensionRegistryLite);
    }

    public static Parser<p> parser() {
        return f61838a.getParserForType();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61840a[methodToInvoke.ordinal()]) {
            case 1:
                return new p();
            case 2:
                return f61838a;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                p pVar = (p) obj2;
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z3 = false;
                while (!z3) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag == 0 || !codedInputStream.skipField(readTag)) {
                                z3 = true;
                            }
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
                if (f61839b == null) {
                    synchronized (p.class) {
                        if (f61839b == null) {
                            f61839b = new GeneratedMessageLite.DefaultInstanceBasedParser(f61838a);
                        }
                    }
                }
                return f61839b;
            default:
                throw new UnsupportedOperationException();
        }
        return f61838a;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        this.memoizedSerializedSize = 0;
        return 0;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
    }
}
