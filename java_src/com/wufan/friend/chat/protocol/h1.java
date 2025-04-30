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
/* compiled from: PopWindowNotification.java */
/* loaded from: classes2.dex */
public final class h1 extends GeneratedMessageLite<h1, b> implements i1 {

    /* renamed from: a  reason: collision with root package name */
    private static final h1 f61762a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Parser<h1> f61763b;

    /* compiled from: PopWindowNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61764a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61764a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61764a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61764a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61764a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61764a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61764a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61764a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61764a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: PopWindowNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<h1, b> implements i1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            super(h1.f61762a);
        }
    }

    static {
        h1 h1Var = new h1();
        f61762a = h1Var;
        h1Var.makeImmutable();
    }

    private h1() {
    }

    public static h1 T2() {
        return f61762a;
    }

    public static b U2() {
        return f61762a.toBuilder();
    }

    public static b V2(h1 h1Var) {
        return f61762a.toBuilder().mergeFrom((b) h1Var);
    }

    public static h1 W2(InputStream inputStream) throws IOException {
        return (h1) GeneratedMessageLite.parseDelimitedFrom(f61762a, inputStream);
    }

    public static h1 X2(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h1) GeneratedMessageLite.parseDelimitedFrom(f61762a, inputStream, extensionRegistryLite);
    }

    public static h1 Y2(ByteString byteString) throws InvalidProtocolBufferException {
        return (h1) GeneratedMessageLite.parseFrom(f61762a, byteString);
    }

    public static h1 Z2(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (h1) GeneratedMessageLite.parseFrom(f61762a, byteString, extensionRegistryLite);
    }

    public static h1 a3(CodedInputStream codedInputStream) throws IOException {
        return (h1) GeneratedMessageLite.parseFrom(f61762a, codedInputStream);
    }

    public static h1 b3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h1) GeneratedMessageLite.parseFrom(f61762a, codedInputStream, extensionRegistryLite);
    }

    public static h1 c3(InputStream inputStream) throws IOException {
        return (h1) GeneratedMessageLite.parseFrom(f61762a, inputStream);
    }

    public static h1 d3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (h1) GeneratedMessageLite.parseFrom(f61762a, inputStream, extensionRegistryLite);
    }

    public static h1 e3(byte[] bArr) throws InvalidProtocolBufferException {
        return (h1) GeneratedMessageLite.parseFrom(f61762a, bArr);
    }

    public static h1 f3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (h1) GeneratedMessageLite.parseFrom(f61762a, bArr, extensionRegistryLite);
    }

    public static Parser<h1> parser() {
        return f61762a.getParserForType();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61764a[methodToInvoke.ordinal()]) {
            case 1:
                return new h1();
            case 2:
                return f61762a;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                h1 h1Var = (h1) obj2;
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
                if (f61763b == null) {
                    synchronized (h1.class) {
                        if (f61763b == null) {
                            f61763b = new GeneratedMessageLite.DefaultInstanceBasedParser(f61762a);
                        }
                    }
                }
                return f61763b;
            default:
                throw new UnsupportedOperationException();
        }
        return f61762a;
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
