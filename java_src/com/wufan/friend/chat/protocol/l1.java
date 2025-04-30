package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.j1;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* compiled from: RecommendPlayerData.java */
/* loaded from: classes2.dex */
public final class l1 extends GeneratedMessageLite<l1, b> implements m1 {

    /* renamed from: b  reason: collision with root package name */
    public static final int f61808b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final l1 f61809c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Parser<l1> f61810d;

    /* renamed from: a  reason: collision with root package name */
    private Internal.ProtobufList<j1> f61811a = GeneratedMessageLite.emptyProtobufList();

    /* compiled from: RecommendPlayerData.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61812a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61812a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61812a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61812a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61812a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61812a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61812a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61812a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61812a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: RecommendPlayerData.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<l1, b> implements m1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.m1
        public List<j1> H1() {
            return Collections.unmodifiableList(((l1) this.instance).H1());
        }

        public b S2(Iterable<? extends j1> iterable) {
            copyOnWrite();
            ((l1) this.instance).c3(iterable);
            return this;
        }

        public b T2(int i2, j1.b bVar) {
            copyOnWrite();
            ((l1) this.instance).d3(i2, bVar);
            return this;
        }

        public b U2(int i2, j1 j1Var) {
            copyOnWrite();
            ((l1) this.instance).e3(i2, j1Var);
            return this;
        }

        public b V2(j1.b bVar) {
            copyOnWrite();
            ((l1) this.instance).f3(bVar);
            return this;
        }

        public b W2(j1 j1Var) {
            copyOnWrite();
            ((l1) this.instance).g3(j1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.m1
        public j1 X0(int i2) {
            return ((l1) this.instance).X0(i2);
        }

        public b X2() {
            copyOnWrite();
            ((l1) this.instance).h3();
            return this;
        }

        public b Y2(int i2) {
            copyOnWrite();
            ((l1) this.instance).y3(i2);
            return this;
        }

        public b Z2(int i2, j1.b bVar) {
            copyOnWrite();
            ((l1) this.instance).z3(i2, bVar);
            return this;
        }

        public b a3(int i2, j1 j1Var) {
            copyOnWrite();
            ((l1) this.instance).A3(i2, j1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.m1
        public int z2() {
            return ((l1) this.instance).z2();
        }

        private b() {
            super(l1.f61809c);
        }
    }

    static {
        l1 l1Var = new l1();
        f61809c = l1Var;
        l1Var.makeImmutable();
    }

    private l1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(int i2, j1 j1Var) {
        Objects.requireNonNull(j1Var);
        i3();
        this.f61811a.set(i2, j1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3(Iterable<? extends j1> iterable) {
        i3();
        AbstractMessageLite.addAll(iterable, this.f61811a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3(int i2, j1.b bVar) {
        i3();
        this.f61811a.add(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3(int i2, j1 j1Var) {
        Objects.requireNonNull(j1Var);
        i3();
        this.f61811a.add(i2, j1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3(j1.b bVar) {
        i3();
        this.f61811a.add(bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3(j1 j1Var) {
        Objects.requireNonNull(j1Var);
        i3();
        this.f61811a.add(j1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3() {
        this.f61811a = GeneratedMessageLite.emptyProtobufList();
    }

    private void i3() {
        if (this.f61811a.isModifiable()) {
            return;
        }
        this.f61811a = GeneratedMessageLite.mutableCopy(this.f61811a);
    }

    public static l1 j3() {
        return f61809c;
    }

    public static b m3() {
        return f61809c.toBuilder();
    }

    public static b n3(l1 l1Var) {
        return f61809c.toBuilder().mergeFrom((b) l1Var);
    }

    public static l1 o3(InputStream inputStream) throws IOException {
        return (l1) GeneratedMessageLite.parseDelimitedFrom(f61809c, inputStream);
    }

    public static l1 p3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l1) GeneratedMessageLite.parseDelimitedFrom(f61809c, inputStream, extensionRegistryLite);
    }

    public static Parser<l1> parser() {
        return f61809c.getParserForType();
    }

    public static l1 q3(ByteString byteString) throws InvalidProtocolBufferException {
        return (l1) GeneratedMessageLite.parseFrom(f61809c, byteString);
    }

    public static l1 r3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (l1) GeneratedMessageLite.parseFrom(f61809c, byteString, extensionRegistryLite);
    }

    public static l1 s3(CodedInputStream codedInputStream) throws IOException {
        return (l1) GeneratedMessageLite.parseFrom(f61809c, codedInputStream);
    }

    public static l1 t3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l1) GeneratedMessageLite.parseFrom(f61809c, codedInputStream, extensionRegistryLite);
    }

    public static l1 u3(InputStream inputStream) throws IOException {
        return (l1) GeneratedMessageLite.parseFrom(f61809c, inputStream);
    }

    public static l1 v3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l1) GeneratedMessageLite.parseFrom(f61809c, inputStream, extensionRegistryLite);
    }

    public static l1 w3(byte[] bArr) throws InvalidProtocolBufferException {
        return (l1) GeneratedMessageLite.parseFrom(f61809c, bArr);
    }

    public static l1 x3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (l1) GeneratedMessageLite.parseFrom(f61809c, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(int i2) {
        i3();
        this.f61811a.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(int i2, j1.b bVar) {
        i3();
        this.f61811a.set(i2, bVar.build());
    }

    @Override // com.wufan.friend.chat.protocol.m1
    public List<j1> H1() {
        return this.f61811a;
    }

    @Override // com.wufan.friend.chat.protocol.m1
    public j1 X0(int i2) {
        return this.f61811a.get(i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61812a[methodToInvoke.ordinal()]) {
            case 1:
                return new l1();
            case 2:
                return f61809c;
            case 3:
                this.f61811a.makeImmutable();
                return null;
            case 4:
                return new b(null);
            case 5:
                this.f61811a = ((GeneratedMessageLite.Visitor) obj).visitList(this.f61811a, ((l1) obj2).f61811a);
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
                            if (readTag != 0) {
                                if (readTag != 10) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    if (!this.f61811a.isModifiable()) {
                                        this.f61811a = GeneratedMessageLite.mutableCopy(this.f61811a);
                                    }
                                    this.f61811a.add((j1) codedInputStream.readMessage(j1.parser(), extensionRegistryLite));
                                }
                            }
                            z3 = true;
                        } catch (InvalidProtocolBufferException e4) {
                            throw new RuntimeException(e4.setUnfinishedMessage(this));
                        }
                    } catch (IOException e5) {
                        throw new RuntimeException(new InvalidProtocolBufferException(e5.getMessage()).setUnfinishedMessage(this));
                    }
                }
                break;
            case 7:
                break;
            case 8:
                if (f61810d == null) {
                    synchronized (l1.class) {
                        if (f61810d == null) {
                            f61810d = new GeneratedMessageLite.DefaultInstanceBasedParser(f61809c);
                        }
                    }
                }
                return f61810d;
            default:
                throw new UnsupportedOperationException();
        }
        return f61809c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f61811a.size(); i5++) {
            i4 += CodedOutputStream.computeMessageSize(1, this.f61811a.get(i5));
        }
        this.memoizedSerializedSize = i4;
        return i4;
    }

    public n1 k3(int i2) {
        return this.f61811a.get(i2);
    }

    public List<? extends n1> l3() {
        return this.f61811a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i2 = 0; i2 < this.f61811a.size(); i2++) {
            codedOutputStream.writeMessage(1, this.f61811a.get(i2));
        }
    }

    @Override // com.wufan.friend.chat.protocol.m1
    public int z2() {
        return this.f61811a.size();
    }
}
