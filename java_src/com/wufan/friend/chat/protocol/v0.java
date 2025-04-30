package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessageLite;
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
/* compiled from: LoginData.java */
/* loaded from: classes2.dex */
public final class v0 extends GeneratedMessageLite<v0, b> implements w0 {

    /* renamed from: c  reason: collision with root package name */
    public static final int f61934c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f61935d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final v0 f61936e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Parser<v0> f61937f;

    /* renamed from: a  reason: collision with root package name */
    private boolean f61938a;

    /* renamed from: b  reason: collision with root package name */
    private String f61939b = "";

    /* compiled from: LoginData.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61940a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61940a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61940a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61940a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61940a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61940a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61940a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61940a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61940a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: LoginData.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<v0, b> implements w0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.w0
        public boolean C0() {
            return ((v0) this.instance).C0();
        }

        public b S2() {
            copyOnWrite();
            ((v0) this.instance).clearMessage();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((v0) this.instance).Y2();
            return this;
        }

        public b U2(String str) {
            copyOnWrite();
            ((v0) this.instance).setMessage(str);
            return this;
        }

        public b V2(ByteString byteString) {
            copyOnWrite();
            ((v0) this.instance).setMessageBytes(byteString);
            return this;
        }

        public b W2(boolean z3) {
            copyOnWrite();
            ((v0) this.instance).m3(z3);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.w0
        public String getMessage() {
            return ((v0) this.instance).getMessage();
        }

        @Override // com.wufan.friend.chat.protocol.w0
        public ByteString getMessageBytes() {
            return ((v0) this.instance).getMessageBytes();
        }

        private b() {
            super(v0.f61936e);
        }
    }

    static {
        v0 v0Var = new v0();
        f61936e = v0Var;
        v0Var.makeImmutable();
    }

    private v0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y2() {
        this.f61938a = false;
    }

    public static v0 Z2() {
        return f61936e;
    }

    public static b a3() {
        return f61936e.toBuilder();
    }

    public static b b3(v0 v0Var) {
        return f61936e.toBuilder().mergeFrom((b) v0Var);
    }

    public static v0 c3(InputStream inputStream) throws IOException {
        return (v0) GeneratedMessageLite.parseDelimitedFrom(f61936e, inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessage() {
        this.f61939b = Z2().getMessage();
    }

    public static v0 d3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (v0) GeneratedMessageLite.parseDelimitedFrom(f61936e, inputStream, extensionRegistryLite);
    }

    public static v0 e3(ByteString byteString) throws InvalidProtocolBufferException {
        return (v0) GeneratedMessageLite.parseFrom(f61936e, byteString);
    }

    public static v0 f3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (v0) GeneratedMessageLite.parseFrom(f61936e, byteString, extensionRegistryLite);
    }

    public static v0 g3(CodedInputStream codedInputStream) throws IOException {
        return (v0) GeneratedMessageLite.parseFrom(f61936e, codedInputStream);
    }

    public static v0 h3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (v0) GeneratedMessageLite.parseFrom(f61936e, codedInputStream, extensionRegistryLite);
    }

    public static v0 i3(InputStream inputStream) throws IOException {
        return (v0) GeneratedMessageLite.parseFrom(f61936e, inputStream);
    }

    public static v0 j3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (v0) GeneratedMessageLite.parseFrom(f61936e, inputStream, extensionRegistryLite);
    }

    public static v0 k3(byte[] bArr) throws InvalidProtocolBufferException {
        return (v0) GeneratedMessageLite.parseFrom(f61936e, bArr);
    }

    public static v0 l3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (v0) GeneratedMessageLite.parseFrom(f61936e, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m3(boolean z3) {
        this.f61938a = z3;
    }

    public static Parser<v0> parser() {
        return f61936e.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessage(String str) {
        Objects.requireNonNull(str);
        this.f61939b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessageBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f61939b = byteString.toStringUtf8();
    }

    @Override // com.wufan.friend.chat.protocol.w0
    public boolean C0() {
        return this.f61938a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61940a[methodToInvoke.ordinal()]) {
            case 1:
                return new v0();
            case 2:
                return f61936e;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                v0 v0Var = (v0) obj2;
                boolean z3 = this.f61938a;
                boolean z4 = v0Var.f61938a;
                this.f61938a = visitor.visitBoolean(z3, z3, z4, z4);
                this.f61939b = visitor.visitString(!this.f61939b.isEmpty(), this.f61939b, true ^ v0Var.f61939b.isEmpty(), v0Var.f61939b);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z5 = false;
                while (!z5) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.f61938a = codedInputStream.readBool();
                            } else if (readTag != 18) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61939b = codedInputStream.readStringRequireUtf8();
                            }
                        }
                        z5 = true;
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
                if (f61937f == null) {
                    synchronized (v0.class) {
                        if (f61937f == null) {
                            f61937f = new GeneratedMessageLite.DefaultInstanceBasedParser(f61936e);
                        }
                    }
                }
                return f61937f;
            default:
                throw new UnsupportedOperationException();
        }
        return f61936e;
    }

    @Override // com.wufan.friend.chat.protocol.w0
    public String getMessage() {
        return this.f61939b;
    }

    @Override // com.wufan.friend.chat.protocol.w0
    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.f61939b);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        boolean z3 = this.f61938a;
        int computeBoolSize = z3 ? 0 + CodedOutputStream.computeBoolSize(1, z3) : 0;
        if (!this.f61939b.isEmpty()) {
            computeBoolSize += CodedOutputStream.computeStringSize(2, getMessage());
        }
        this.memoizedSerializedSize = computeBoolSize;
        return computeBoolSize;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z3 = this.f61938a;
        if (z3) {
            codedOutputStream.writeBool(1, z3);
        }
        if (this.f61939b.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(2, getMessage());
    }
}
