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
/* compiled from: AllOnlineFriendNotification.java */
/* loaded from: classes2.dex */
public final class g extends GeneratedMessageLite<g, b> implements h {

    /* renamed from: d  reason: collision with root package name */
    public static final int f61731d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f61732e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final g f61733f;

    /* renamed from: g  reason: collision with root package name */
    private static volatile Parser<g> f61734g;

    /* renamed from: a  reason: collision with root package name */
    private int f61735a;

    /* renamed from: b  reason: collision with root package name */
    private Internal.ProtobufList<r> f61736b = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: c  reason: collision with root package name */
    private int f61737c;

    /* compiled from: AllOnlineFriendNotification.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61738a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61738a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61738a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61738a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61738a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61738a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61738a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61738a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61738a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: AllOnlineFriendNotification.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<g, b> implements h {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.h
        public int F1() {
            return ((g) this.instance).F1();
        }

        @Override // com.wufan.friend.chat.protocol.h
        public int N() {
            return ((g) this.instance).N();
        }

        @Override // com.wufan.friend.chat.protocol.h
        public List<r> N0() {
            return Collections.unmodifiableList(((g) this.instance).N0());
        }

        @Override // com.wufan.friend.chat.protocol.h
        public r P1(int i2) {
            return ((g) this.instance).P1(i2);
        }

        public b S2(Iterable<? extends r> iterable) {
            copyOnWrite();
            ((g) this.instance).e3(iterable);
            return this;
        }

        public b T2(int i2, r.b bVar) {
            copyOnWrite();
            ((g) this.instance).f3(i2, bVar);
            return this;
        }

        public b U2(int i2, r rVar) {
            copyOnWrite();
            ((g) this.instance).g3(i2, rVar);
            return this;
        }

        public b V2(r.b bVar) {
            copyOnWrite();
            ((g) this.instance).h3(bVar);
            return this;
        }

        public b W2(r rVar) {
            copyOnWrite();
            ((g) this.instance).i3(rVar);
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((g) this.instance).j3();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((g) this.instance).k3();
            return this;
        }

        public b Z2(int i2) {
            copyOnWrite();
            ((g) this.instance).B3(i2);
            return this;
        }

        public b a3(int i2) {
            copyOnWrite();
            ((g) this.instance).C3(i2);
            return this;
        }

        public b b3(int i2, r.b bVar) {
            copyOnWrite();
            ((g) this.instance).D3(i2, bVar);
            return this;
        }

        public b c3(int i2, r rVar) {
            copyOnWrite();
            ((g) this.instance).E3(i2, rVar);
            return this;
        }

        private b() {
            super(g.f61733f);
        }
    }

    static {
        g gVar = new g();
        f61733f = gVar;
        gVar.makeImmutable();
    }

    private g() {
    }

    public static g A3(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (g) GeneratedMessageLite.parseFrom(f61733f, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B3(int i2) {
        l3();
        this.f61736b.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(int i2) {
        this.f61737c = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D3(int i2, r.b bVar) {
        l3();
        this.f61736b.set(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E3(int i2, r rVar) {
        Objects.requireNonNull(rVar);
        l3();
        this.f61736b.set(i2, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e3(Iterable<? extends r> iterable) {
        l3();
        AbstractMessageLite.addAll(iterable, this.f61736b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3(int i2, r.b bVar) {
        l3();
        this.f61736b.add(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g3(int i2, r rVar) {
        Objects.requireNonNull(rVar);
        l3();
        this.f61736b.add(i2, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h3(r.b bVar) {
        l3();
        this.f61736b.add(bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i3(r rVar) {
        Objects.requireNonNull(rVar);
        l3();
        this.f61736b.add(rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j3() {
        this.f61737c = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k3() {
        this.f61736b = GeneratedMessageLite.emptyProtobufList();
    }

    private void l3() {
        if (this.f61736b.isModifiable()) {
            return;
        }
        this.f61736b = GeneratedMessageLite.mutableCopy(this.f61736b);
    }

    public static g m3() {
        return f61733f;
    }

    public static b p3() {
        return f61733f.toBuilder();
    }

    public static Parser<g> parser() {
        return f61733f.getParserForType();
    }

    public static b q3(g gVar) {
        return f61733f.toBuilder().mergeFrom((b) gVar);
    }

    public static g r3(InputStream inputStream) throws IOException {
        return (g) GeneratedMessageLite.parseDelimitedFrom(f61733f, inputStream);
    }

    public static g s3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (g) GeneratedMessageLite.parseDelimitedFrom(f61733f, inputStream, extensionRegistryLite);
    }

    public static g t3(ByteString byteString) throws InvalidProtocolBufferException {
        return (g) GeneratedMessageLite.parseFrom(f61733f, byteString);
    }

    public static g u3(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (g) GeneratedMessageLite.parseFrom(f61733f, byteString, extensionRegistryLite);
    }

    public static g v3(CodedInputStream codedInputStream) throws IOException {
        return (g) GeneratedMessageLite.parseFrom(f61733f, codedInputStream);
    }

    public static g w3(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (g) GeneratedMessageLite.parseFrom(f61733f, codedInputStream, extensionRegistryLite);
    }

    public static g x3(InputStream inputStream) throws IOException {
        return (g) GeneratedMessageLite.parseFrom(f61733f, inputStream);
    }

    public static g y3(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (g) GeneratedMessageLite.parseFrom(f61733f, inputStream, extensionRegistryLite);
    }

    public static g z3(byte[] bArr) throws InvalidProtocolBufferException {
        return (g) GeneratedMessageLite.parseFrom(f61733f, bArr);
    }

    @Override // com.wufan.friend.chat.protocol.h
    public int F1() {
        return this.f61736b.size();
    }

    @Override // com.wufan.friend.chat.protocol.h
    public int N() {
        return this.f61737c;
    }

    @Override // com.wufan.friend.chat.protocol.h
    public List<r> N0() {
        return this.f61736b;
    }

    @Override // com.wufan.friend.chat.protocol.h
    public r P1(int i2) {
        return this.f61736b.get(i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61738a[methodToInvoke.ordinal()]) {
            case 1:
                return new g();
            case 2:
                return f61733f;
            case 3:
                this.f61736b.makeImmutable();
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                g gVar = (g) obj2;
                this.f61736b = visitor.visitList(this.f61736b, gVar.f61736b);
                int i2 = this.f61737c;
                boolean z3 = i2 != 0;
                int i4 = gVar.f61737c;
                this.f61737c = visitor.visitInt(z3, i2, i4 != 0, i4);
                if (visitor == GeneratedMessageLite.MergeFromVisitor.INSTANCE) {
                    this.f61735a |= gVar.f61735a;
                }
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!r1) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    if (!this.f61736b.isModifiable()) {
                                        this.f61736b = GeneratedMessageLite.mutableCopy(this.f61736b);
                                    }
                                    this.f61736b.add((r) codedInputStream.readMessage(r.parser(), extensionRegistryLite));
                                } else if (readTag != 16) {
                                    if (!codedInputStream.skipField(readTag)) {
                                    }
                                } else {
                                    this.f61737c = codedInputStream.readInt32();
                                }
                            }
                            r1 = true;
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
                if (f61734g == null) {
                    synchronized (g.class) {
                        if (f61734g == null) {
                            f61734g = new GeneratedMessageLite.DefaultInstanceBasedParser(f61733f);
                        }
                    }
                }
                return f61734g;
            default:
                throw new UnsupportedOperationException();
        }
        return f61733f;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f61736b.size(); i5++) {
            i4 += CodedOutputStream.computeMessageSize(1, this.f61736b.get(i5));
        }
        int i6 = this.f61737c;
        if (i6 != 0) {
            i4 += CodedOutputStream.computeInt32Size(2, i6);
        }
        this.memoizedSerializedSize = i4;
        return i4;
    }

    public b0 n3(int i2) {
        return this.f61736b.get(i2);
    }

    public List<? extends b0> o3() {
        return this.f61736b;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i2 = 0; i2 < this.f61736b.size(); i2++) {
            codedOutputStream.writeMessage(1, this.f61736b.get(i2));
        }
        int i4 = this.f61737c;
        if (i4 != 0) {
            codedOutputStream.writeInt32(2, i4);
        }
    }
}
