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
import com.wufan.friend.chat.protocol.r0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* compiled from: LocalBattleGameData.java */
/* loaded from: classes2.dex */
public final class p0 extends GeneratedMessageLite<p0, b> implements q0 {

    /* renamed from: b  reason: collision with root package name */
    public static final int f61841b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final p0 f61842c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Parser<p0> f61843d;

    /* renamed from: a  reason: collision with root package name */
    private Internal.ProtobufList<r0> f61844a = GeneratedMessageLite.emptyProtobufList();

    /* compiled from: LocalBattleGameData.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61845a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61845a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61845a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61845a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61845a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61845a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61845a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61845a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61845a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: LocalBattleGameData.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<p0, b> implements q0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.q0
        public r0 J2(int i2) {
            return ((p0) this.instance).J2(i2);
        }

        public b S2(Iterable<? extends r0> iterable) {
            copyOnWrite();
            ((p0) this.instance).c3(iterable);
            return this;
        }

        public b T2(int i2, r0.b bVar) {
            copyOnWrite();
            ((p0) this.instance).d3(i2, bVar);
            return this;
        }

        public b U2(int i2, r0 r0Var) {
            copyOnWrite();
            ((p0) this.instance).e3(i2, r0Var);
            return this;
        }

        public b V2(r0.b bVar) {
            copyOnWrite();
            ((p0) this.instance).f3(bVar);
            return this;
        }

        public b W2(r0 r0Var) {
            copyOnWrite();
            ((p0) this.instance).g3(r0Var);
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((p0) this.instance).h3();
            return this;
        }

        public b Y2(int i2) {
            copyOnWrite();
            ((p0) this.instance).y3(i2);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.q0
        public List<r0> Z0() {
            return Collections.unmodifiableList(((p0) this.instance).Z0());
        }

        public b Z2(int i2, r0.b bVar) {
            copyOnWrite();
            ((p0) this.instance).z3(i2, bVar);
            return this;
        }

        public b a3(int i2, r0 r0Var) {
            copyOnWrite();
            ((p0) this.instance).A3(i2, r0Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.q0
        public int d1() {
            return ((p0) this.instance).d1();
        }

        private b() {
            super(p0.f61842c);
        }
    }

    static {
        p0 p0Var = new p0();
        f61842c = p0Var;
        p0Var.makeImmutable();
    }

    private p0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(int i2, r0 r0Var) {
        Objects.requireNonNull(r0Var);
        i3();
        this.f61844a.set(i2, r0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c3(Iterable<? extends r0> iterable) {
        i3();
        AbstractMessageLite.addAll(iterable, this.f61844a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3(int i2, r0.b bVar) {
        i3();
        this.f61844a.add(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3(int i2, r0 r0Var) {
        Objects.requireNonNull(r0Var);
        i3();
        this.f61844a.add(i2, r0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3(r0.b bVar) {
        i3();
        this.f61844a.add(bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3(r0 r0Var) {
        Objects.requireNonNull(r0Var);
        i3();
        this.f61844a.add(r0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3() {
        this.f61844a = GeneratedMessageLite.emptyProtobufList();
    }

    private void i3() {
        if (this.f61844a.isModifiable()) {
            return;
        }
        this.f61844a = GeneratedMessageLite.mutableCopy(this.f61844a);
    }

    public static p0 j3() {
        return f61842c;
    }

    public static b m3() {
        return f61842c.toBuilder();
    }

    public static b n3(p0 p0Var) {
        return f61842c.toBuilder().mergeFrom((b) p0Var);
    }

    public static p0 o3(InputStream inputStream) throws IOException {
        return (p0) GeneratedMessageLite.parseDelimitedFrom(f61842c, inputStream);
    }

    public static p0 p3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (p0) GeneratedMessageLite.parseDelimitedFrom(f61842c, inputStream, extensionRegistryLite);
    }

    public static Parser<p0> parser() {
        return f61842c.getParserForType();
    }

    public static p0 q3(ByteString byteString) throws InvalidProtocolBufferException {
        return (p0) GeneratedMessageLite.parseFrom(f61842c, byteString);
    }

    public static p0 r3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (p0) GeneratedMessageLite.parseFrom(f61842c, byteString, extensionRegistryLite);
    }

    public static p0 s3(CodedInputStream codedInputStream) throws IOException {
        return (p0) GeneratedMessageLite.parseFrom(f61842c, codedInputStream);
    }

    public static p0 t3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (p0) GeneratedMessageLite.parseFrom(f61842c, codedInputStream, extensionRegistryLite);
    }

    public static p0 u3(InputStream inputStream) throws IOException {
        return (p0) GeneratedMessageLite.parseFrom(f61842c, inputStream);
    }

    public static p0 v3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (p0) GeneratedMessageLite.parseFrom(f61842c, inputStream, extensionRegistryLite);
    }

    public static p0 w3(byte[] bArr) throws InvalidProtocolBufferException {
        return (p0) GeneratedMessageLite.parseFrom(f61842c, bArr);
    }

    public static p0 x3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (p0) GeneratedMessageLite.parseFrom(f61842c, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3(int i2) {
        i3();
        this.f61844a.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3(int i2, r0.b bVar) {
        i3();
        this.f61844a.set(i2, bVar.build());
    }

    @Override // com.wufan.friend.chat.protocol.q0
    public r0 J2(int i2) {
        return this.f61844a.get(i2);
    }

    @Override // com.wufan.friend.chat.protocol.q0
    public List<r0> Z0() {
        return this.f61844a;
    }

    @Override // com.wufan.friend.chat.protocol.q0
    public int d1() {
        return this.f61844a.size();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61845a[methodToInvoke.ordinal()]) {
            case 1:
                return new p0();
            case 2:
                return f61842c;
            case 3:
                this.f61844a.makeImmutable();
                return null;
            case 4:
                return new b(null);
            case 5:
                this.f61844a = ((GeneratedMessageLite.Visitor) obj).visitList(this.f61844a, ((p0) obj2).f61844a);
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
                                    if (!this.f61844a.isModifiable()) {
                                        this.f61844a = GeneratedMessageLite.mutableCopy(this.f61844a);
                                    }
                                    this.f61844a.add((r0) codedInputStream.readMessage(r0.parser(), extensionRegistryLite));
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
                if (f61843d == null) {
                    synchronized (p0.class) {
                        if (f61843d == null) {
                            f61843d = new GeneratedMessageLite.DefaultInstanceBasedParser(f61842c);
                        }
                    }
                }
                return f61843d;
            default:
                throw new UnsupportedOperationException();
        }
        return f61842c;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f61844a.size(); i5++) {
            i4 += CodedOutputStream.computeMessageSize(1, this.f61844a.get(i5));
        }
        this.memoizedSerializedSize = i4;
        return i4;
    }

    public s0 k3(int i2) {
        return this.f61844a.get(i2);
    }

    public List<? extends s0> l3() {
        return this.f61844a;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i2 = 0; i2 < this.f61844a.size(); i2++) {
            codedOutputStream.writeMessage(1, this.f61844a.get(i2));
        }
    }
}
