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
import com.wufan.friend.chat.protocol.r;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* compiled from: AllFriendNotification.java */
/* loaded from: classes2.dex */
public final class e extends GeneratedMessageLite<e, b> implements f {

    /* renamed from: e  reason: collision with root package name */
    public static final int f61701e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f61702f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f61703g = 3;

    /* renamed from: h  reason: collision with root package name */
    private static final e f61704h;

    /* renamed from: i  reason: collision with root package name */
    private static volatile Parser<e> f61705i;

    /* renamed from: a  reason: collision with root package name */
    private int f61706a;

    /* renamed from: b  reason: collision with root package name */
    private Internal.ProtobufList<r> f61707b = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: c  reason: collision with root package name */
    private Internal.ProtobufList<r> f61708c = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: d  reason: collision with root package name */
    private int f61709d;

    /* compiled from: AllFriendNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61710a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61710a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61710a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61710a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61710a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61710a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61710a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61710a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61710a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: AllFriendNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<e, b> implements f {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.f
        public List<r> C1() {
            return Collections.unmodifiableList(((e) this.instance).C1());
        }

        @Override // com.wufan.friend.chat.protocol.f
        public int N() {
            return ((e) this.instance).N();
        }

        @Override // com.wufan.friend.chat.protocol.f
        public r Q0(int i2) {
            return ((e) this.instance).Q0(i2);
        }

        @Override // com.wufan.friend.chat.protocol.f
        public List<r> S0() {
            return Collections.unmodifiableList(((e) this.instance).S0());
        }

        public b S2(Iterable<? extends r> iterable) {
            copyOnWrite();
            ((e) this.instance).n3(iterable);
            return this;
        }

        public b T2(Iterable<? extends r> iterable) {
            copyOnWrite();
            ((e) this.instance).o3(iterable);
            return this;
        }

        public b U2(int i2, r.b bVar) {
            copyOnWrite();
            ((e) this.instance).p3(i2, bVar);
            return this;
        }

        public b V2(int i2, r rVar) {
            copyOnWrite();
            ((e) this.instance).q3(i2, rVar);
            return this;
        }

        public b W2(r.b bVar) {
            copyOnWrite();
            ((e) this.instance).r3(bVar);
            return this;
        }

        public b X2(r rVar) {
            copyOnWrite();
            ((e) this.instance).s3(rVar);
            return this;
        }

        public b Y2(int i2, r.b bVar) {
            copyOnWrite();
            ((e) this.instance).t3(i2, bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.f
        public r Z1(int i2) {
            return ((e) this.instance).Z1(i2);
        }

        public b Z2(int i2, r rVar) {
            copyOnWrite();
            ((e) this.instance).u3(i2, rVar);
            return this;
        }

        public b a3(r.b bVar) {
            copyOnWrite();
            ((e) this.instance).v3(bVar);
            return this;
        }

        public b b3(r rVar) {
            copyOnWrite();
            ((e) this.instance).w3(rVar);
            return this;
        }

        public b c3() {
            copyOnWrite();
            ((e) this.instance).x3();
            return this;
        }

        public b d3() {
            copyOnWrite();
            ((e) this.instance).y3();
            return this;
        }

        public b e3() {
            copyOnWrite();
            ((e) this.instance).z3();
            return this;
        }

        public b f3(int i2) {
            copyOnWrite();
            ((e) this.instance).T3(i2);
            return this;
        }

        public b g3(int i2) {
            copyOnWrite();
            ((e) this.instance).U3(i2);
            return this;
        }

        public b h3(int i2) {
            copyOnWrite();
            ((e) this.instance).V3(i2);
            return this;
        }

        public b i3(int i2, r.b bVar) {
            copyOnWrite();
            ((e) this.instance).W3(i2, bVar);
            return this;
        }

        public b j3(int i2, r rVar) {
            copyOnWrite();
            ((e) this.instance).X3(i2, rVar);
            return this;
        }

        public b k3(int i2, r.b bVar) {
            copyOnWrite();
            ((e) this.instance).Y3(i2, bVar);
            return this;
        }

        public b l3(int i2, r rVar) {
            copyOnWrite();
            ((e) this.instance).Z3(i2, rVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.f
        public int u0() {
            return ((e) this.instance).u0();
        }

        @Override // com.wufan.friend.chat.protocol.f
        public int u2() {
            return ((e) this.instance).u2();
        }

        private b() {
            super(e.f61704h);
        }
    }

    static {
        e eVar = new e();
        f61704h = eVar;
        eVar.makeImmutable();
    }

    private e() {
    }

    private void A3() {
        if (this.f61708c.isModifiable()) {
            return;
        }
        this.f61708c = GeneratedMessageLite.mutableCopy(this.f61708c);
    }

    private void B3() {
        if (this.f61707b.isModifiable()) {
            return;
        }
        this.f61707b = GeneratedMessageLite.mutableCopy(this.f61707b);
    }

    public static e C3() {
        return f61704h;
    }

    public static b H3() {
        return f61704h.toBuilder();
    }

    public static b I3(e eVar) {
        return f61704h.toBuilder().mergeFrom((b) eVar);
    }

    public static e J3(InputStream inputStream) throws IOException {
        return (e) GeneratedMessageLite.parseDelimitedFrom(f61704h, inputStream);
    }

    public static e K3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (e) GeneratedMessageLite.parseDelimitedFrom(f61704h, inputStream, extensionRegistryLite);
    }

    public static e L3(ByteString byteString) throws InvalidProtocolBufferException {
        return (e) GeneratedMessageLite.parseFrom(f61704h, byteString);
    }

    public static e M3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (e) GeneratedMessageLite.parseFrom(f61704h, byteString, extensionRegistryLite);
    }

    public static e N3(CodedInputStream codedInputStream) throws IOException {
        return (e) GeneratedMessageLite.parseFrom(f61704h, codedInputStream);
    }

    public static e O3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (e) GeneratedMessageLite.parseFrom(f61704h, codedInputStream, extensionRegistryLite);
    }

    public static e P3(InputStream inputStream) throws IOException {
        return (e) GeneratedMessageLite.parseFrom(f61704h, inputStream);
    }

    public static e Q3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (e) GeneratedMessageLite.parseFrom(f61704h, inputStream, extensionRegistryLite);
    }

    public static e R3(byte[] bArr) throws InvalidProtocolBufferException {
        return (e) GeneratedMessageLite.parseFrom(f61704h, bArr);
    }

    public static e S3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (e) GeneratedMessageLite.parseFrom(f61704h, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T3(int i2) {
        A3();
        this.f61708c.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U3(int i2) {
        B3();
        this.f61707b.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V3(int i2) {
        this.f61709d = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W3(int i2, r.b bVar) {
        A3();
        this.f61708c.set(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X3(int i2, r rVar) {
        Objects.requireNonNull(rVar);
        A3();
        this.f61708c.set(i2, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y3(int i2, r.b bVar) {
        B3();
        this.f61707b.set(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z3(int i2, r rVar) {
        Objects.requireNonNull(rVar);
        B3();
        this.f61707b.set(i2, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n3(Iterable<? extends r> iterable) {
        A3();
        AbstractMessageLite.addAll(iterable, this.f61708c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3(Iterable<? extends r> iterable) {
        B3();
        AbstractMessageLite.addAll(iterable, this.f61707b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(int i2, r.b bVar) {
        A3();
        this.f61708c.add(i2, bVar.build());
    }

    public static Parser<e> parser() {
        return f61704h.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q3(int i2, r rVar) {
        Objects.requireNonNull(rVar);
        A3();
        this.f61708c.add(i2, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r3(r.b bVar) {
        A3();
        this.f61708c.add(bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s3(r rVar) {
        Objects.requireNonNull(rVar);
        A3();
        this.f61708c.add(rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t3(int i2, r.b bVar) {
        B3();
        this.f61707b.add(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u3(int i2, r rVar) {
        Objects.requireNonNull(rVar);
        B3();
        this.f61707b.add(i2, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v3(r.b bVar) {
        B3();
        this.f61707b.add(bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w3(r rVar) {
        Objects.requireNonNull(rVar);
        B3();
        this.f61707b.add(rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x3() {
        this.f61709d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y3() {
        this.f61708c = GeneratedMessageLite.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z3() {
        this.f61707b = GeneratedMessageLite.emptyProtobufList();
    }

    @Override // com.wufan.friend.chat.protocol.f
    public List<r> C1() {
        return this.f61707b;
    }

    public b0 D3(int i2) {
        return this.f61708c.get(i2);
    }

    public List<? extends b0> E3() {
        return this.f61708c;
    }

    public b0 F3(int i2) {
        return this.f61707b.get(i2);
    }

    public List<? extends b0> G3() {
        return this.f61707b;
    }

    @Override // com.wufan.friend.chat.protocol.f
    public int N() {
        return this.f61709d;
    }

    @Override // com.wufan.friend.chat.protocol.f
    public r Q0(int i2) {
        return this.f61707b.get(i2);
    }

    @Override // com.wufan.friend.chat.protocol.f
    public List<r> S0() {
        return this.f61708c;
    }

    @Override // com.wufan.friend.chat.protocol.f
    public r Z1(int i2) {
        return this.f61708c.get(i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61710a[methodToInvoke.ordinal()]) {
            case 1:
                return new e();
            case 2:
                return f61704h;
            case 3:
                this.f61707b.makeImmutable();
                this.f61708c.makeImmutable();
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                e eVar = (e) obj2;
                this.f61707b = visitor.visitList(this.f61707b, eVar.f61707b);
                this.f61708c = visitor.visitList(this.f61708c, eVar.f61708c);
                int i2 = this.f61709d;
                boolean z3 = i2 != 0;
                int i4 = eVar.f61709d;
                this.f61709d = visitor.visitInt(z3, i2, i4 != 0, i4);
                if (visitor == GeneratedMessageLite.MergeFromVisitor.INSTANCE) {
                    this.f61706a |= eVar.f61706a;
                }
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                if (!this.f61707b.isModifiable()) {
                                    this.f61707b = GeneratedMessageLite.mutableCopy(this.f61707b);
                                }
                                this.f61707b.add((r) codedInputStream.readMessage(r.parser(), extensionRegistryLite));
                            } else if (readTag == 18) {
                                if (!this.f61708c.isModifiable()) {
                                    this.f61708c = GeneratedMessageLite.mutableCopy(this.f61708c);
                                }
                                this.f61708c.add((r) codedInputStream.readMessage(r.parser(), extensionRegistryLite));
                            } else if (readTag != 24) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.f61709d = codedInputStream.readInt32();
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
                if (f61705i == null) {
                    synchronized (e.class) {
                        if (f61705i == null) {
                            f61705i = new GeneratedMessageLite.DefaultInstanceBasedParser(f61704h);
                        }
                    }
                }
                return f61705i;
            default:
                throw new UnsupportedOperationException();
        }
        return f61704h;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f61707b.size(); i5++) {
            i4 += CodedOutputStream.computeMessageSize(1, this.f61707b.get(i5));
        }
        for (int i6 = 0; i6 < this.f61708c.size(); i6++) {
            i4 += CodedOutputStream.computeMessageSize(2, this.f61708c.get(i6));
        }
        int i7 = this.f61709d;
        if (i7 != 0) {
            i4 += CodedOutputStream.computeInt32Size(3, i7);
        }
        this.memoizedSerializedSize = i4;
        return i4;
    }

    @Override // com.wufan.friend.chat.protocol.f
    public int u0() {
        return this.f61707b.size();
    }

    @Override // com.wufan.friend.chat.protocol.f
    public int u2() {
        return this.f61708c.size();
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i2 = 0; i2 < this.f61707b.size(); i2++) {
            codedOutputStream.writeMessage(1, this.f61707b.get(i2));
        }
        for (int i4 = 0; i4 < this.f61708c.size(); i4++) {
            codedOutputStream.writeMessage(2, this.f61708c.get(i4));
        }
        int i5 = this.f61709d;
        if (i5 != 0) {
            codedOutputStream.writeInt32(3, i5);
        }
    }
}
