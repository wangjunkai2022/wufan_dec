package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.ChatRoomArgs;
import com.wufan.friend.chat.protocol.HeartArgs;
import com.wufan.friend.chat.protocol.PlayGameArgs;
import com.wufan.friend.chat.protocol.RecommendPlayerArgs;
import com.wufan.friend.chat.protocol.a1;
import com.wufan.friend.chat.protocol.c;
import com.wufan.friend.chat.protocol.e0;
import com.wufan.friend.chat.protocol.i;
import com.wufan.friend.chat.protocol.i0;
import com.wufan.friend.chat.protocol.t0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: RequestArgs.java */
/* loaded from: classes2.dex */
public final class t1 extends GeneratedMessageLite<t1, b> implements u1 {

    /* renamed from: k  reason: collision with root package name */
    public static final int f61904k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f61905l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final int f61906m = 3;

    /* renamed from: n  reason: collision with root package name */
    public static final int f61907n = 4;

    /* renamed from: o  reason: collision with root package name */
    public static final int f61908o = 5;

    /* renamed from: p  reason: collision with root package name */
    public static final int f61909p = 6;

    /* renamed from: q  reason: collision with root package name */
    public static final int f61910q = 7;

    /* renamed from: r  reason: collision with root package name */
    public static final int f61911r = 8;

    /* renamed from: s  reason: collision with root package name */
    public static final int f61912s = 9;

    /* renamed from: t  reason: collision with root package name */
    public static final int f61913t = 10;

    /* renamed from: u  reason: collision with root package name */
    private static final t1 f61914u;

    /* renamed from: v  reason: collision with root package name */
    private static volatile Parser<t1> f61915v;

    /* renamed from: a  reason: collision with root package name */
    private t0 f61916a;

    /* renamed from: b  reason: collision with root package name */
    private c f61917b;

    /* renamed from: c  reason: collision with root package name */
    private HeartArgs f61918c;

    /* renamed from: d  reason: collision with root package name */
    private e0 f61919d;

    /* renamed from: e  reason: collision with root package name */
    private a1 f61920e;

    /* renamed from: f  reason: collision with root package name */
    private PlayGameArgs f61921f;

    /* renamed from: g  reason: collision with root package name */
    private ChatRoomArgs f61922g;

    /* renamed from: h  reason: collision with root package name */
    private i f61923h;

    /* renamed from: i  reason: collision with root package name */
    private RecommendPlayerArgs f61924i;

    /* renamed from: j  reason: collision with root package name */
    private i0 f61925j;

    /* compiled from: RequestArgs.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f61926a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f61926a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f61926a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f61926a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f61926a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f61926a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f61926a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f61926a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f61926a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: RequestArgs.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<t1, b> implements u1 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public HeartArgs A2() {
            return ((t1) this.instance).A2();
        }

        public b A3(PlayGameArgs.b bVar) {
            copyOnWrite();
            ((t1) this.instance).C4(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public ChatRoomArgs B1() {
            return ((t1) this.instance).B1();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean B2() {
            return ((t1) this.instance).B2();
        }

        public b B3(PlayGameArgs playGameArgs) {
            copyOnWrite();
            ((t1) this.instance).D4(playGameArgs);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean C2() {
            return ((t1) this.instance).C2();
        }

        public b C3(RecommendPlayerArgs.b bVar) {
            copyOnWrite();
            ((t1) this.instance).E4(bVar);
            return this;
        }

        public b D3(RecommendPlayerArgs recommendPlayerArgs) {
            copyOnWrite();
            ((t1) this.instance).F4(recommendPlayerArgs);
            return this;
        }

        public b E3(a1.b bVar) {
            copyOnWrite();
            ((t1) this.instance).G4(bVar);
            return this;
        }

        public b F3(a1 a1Var) {
            copyOnWrite();
            ((t1) this.instance).H4(a1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public PlayGameArgs G0() {
            return ((t1) this.instance).G0();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public RecommendPlayerArgs G2() {
            return ((t1) this.instance).G2();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean H0() {
            return ((t1) this.instance).H0();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public i0 H2() {
            return ((t1) this.instance).H2();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public e0 I0() {
            return ((t1) this.instance).I0();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public i K2() {
            return ((t1) this.instance).K2();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public t0 L0() {
            return ((t1) this.instance).L0();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public a1 M0() {
            return ((t1) this.instance).M0();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public c M2() {
            return ((t1) this.instance).M2();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean Q2() {
            return ((t1) this.instance).Q2();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean R1() {
            return ((t1) this.instance).R1();
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean S1() {
            return ((t1) this.instance).S1();
        }

        public b S2() {
            copyOnWrite();
            ((t1) this.instance).H3();
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((t1) this.instance).I3();
            return this;
        }

        public b U2() {
            copyOnWrite();
            ((t1) this.instance).J3();
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((t1) this.instance).K3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean W1() {
            return ((t1) this.instance).W1();
        }

        public b W2() {
            copyOnWrite();
            ((t1) this.instance).L3();
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((t1) this.instance).M3();
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((t1) this.instance).N3();
            return this;
        }

        public b Z2() {
            copyOnWrite();
            ((t1) this.instance).O3();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean a0() {
            return ((t1) this.instance).a0();
        }

        public b a3() {
            copyOnWrite();
            ((t1) this.instance).P3();
            return this;
        }

        public b b3() {
            copyOnWrite();
            ((t1) this.instance).Q3();
            return this;
        }

        public b c3(c cVar) {
            copyOnWrite();
            ((t1) this.instance).S3(cVar);
            return this;
        }

        public b d3(i iVar) {
            copyOnWrite();
            ((t1) this.instance).T3(iVar);
            return this;
        }

        public b e3(ChatRoomArgs chatRoomArgs) {
            copyOnWrite();
            ((t1) this.instance).U3(chatRoomArgs);
            return this;
        }

        public b f3(e0 e0Var) {
            copyOnWrite();
            ((t1) this.instance).V3(e0Var);
            return this;
        }

        public b g3(HeartArgs heartArgs) {
            copyOnWrite();
            ((t1) this.instance).W3(heartArgs);
            return this;
        }

        public b h3(i0 i0Var) {
            copyOnWrite();
            ((t1) this.instance).X3(i0Var);
            return this;
        }

        public b i3(t0 t0Var) {
            copyOnWrite();
            ((t1) this.instance).Y3(t0Var);
            return this;
        }

        public b j3(PlayGameArgs playGameArgs) {
            copyOnWrite();
            ((t1) this.instance).Z3(playGameArgs);
            return this;
        }

        public b k3(RecommendPlayerArgs recommendPlayerArgs) {
            copyOnWrite();
            ((t1) this.instance).a4(recommendPlayerArgs);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean l0() {
            return ((t1) this.instance).l0();
        }

        public b l3(a1 a1Var) {
            copyOnWrite();
            ((t1) this.instance).b4(a1Var);
            return this;
        }

        public b m3(c.b bVar) {
            copyOnWrite();
            ((t1) this.instance).o4(bVar);
            return this;
        }

        public b n3(c cVar) {
            copyOnWrite();
            ((t1) this.instance).p4(cVar);
            return this;
        }

        public b o3(i.b bVar) {
            copyOnWrite();
            ((t1) this.instance).q4(bVar);
            return this;
        }

        public b p3(i iVar) {
            copyOnWrite();
            ((t1) this.instance).r4(iVar);
            return this;
        }

        public b q3(ChatRoomArgs.b bVar) {
            copyOnWrite();
            ((t1) this.instance).s4(bVar);
            return this;
        }

        public b r3(ChatRoomArgs chatRoomArgs) {
            copyOnWrite();
            ((t1) this.instance).t4(chatRoomArgs);
            return this;
        }

        public b s3(e0.b bVar) {
            copyOnWrite();
            ((t1) this.instance).u4(bVar);
            return this;
        }

        public b t3(e0 e0Var) {
            copyOnWrite();
            ((t1) this.instance).v4(e0Var);
            return this;
        }

        public b u3(HeartArgs.b bVar) {
            copyOnWrite();
            ((t1) this.instance).w4(bVar);
            return this;
        }

        public b v3(HeartArgs heartArgs) {
            copyOnWrite();
            ((t1) this.instance).x4(heartArgs);
            return this;
        }

        public b w3(i0.b bVar) {
            copyOnWrite();
            ((t1) this.instance).y4(bVar);
            return this;
        }

        public b x3(i0 i0Var) {
            copyOnWrite();
            ((t1) this.instance).z4(i0Var);
            return this;
        }

        public b y3(t0.b bVar) {
            copyOnWrite();
            ((t1) this.instance).A4(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.u1
        public boolean z1() {
            return ((t1) this.instance).z1();
        }

        public b z3(t0 t0Var) {
            copyOnWrite();
            ((t1) this.instance).B4(t0Var);
            return this;
        }

        private b() {
            super(t1.f61914u);
        }
    }

    static {
        t1 t1Var = new t1();
        f61914u = t1Var;
        t1Var.makeImmutable();
    }

    private t1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A4(t0.b bVar) {
        this.f61916a = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B4(t0 t0Var) {
        Objects.requireNonNull(t0Var);
        this.f61916a = t0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C4(PlayGameArgs.b bVar) {
        this.f61921f = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D4(PlayGameArgs playGameArgs) {
        Objects.requireNonNull(playGameArgs);
        this.f61921f = playGameArgs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E4(RecommendPlayerArgs.b bVar) {
        this.f61924i = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F4(RecommendPlayerArgs recommendPlayerArgs) {
        Objects.requireNonNull(recommendPlayerArgs);
        this.f61924i = recommendPlayerArgs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G4(a1.b bVar) {
        this.f61920e = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H3() {
        this.f61917b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H4(a1 a1Var) {
        Objects.requireNonNull(a1Var);
        this.f61920e = a1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I3() {
        this.f61923h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J3() {
        this.f61922g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K3() {
        this.f61919d = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L3() {
        this.f61918c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M3() {
        this.f61925j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N3() {
        this.f61916a = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O3() {
        this.f61921f = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P3() {
        this.f61924i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q3() {
        this.f61920e = null;
    }

    public static t1 R3() {
        return f61914u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S3(c cVar) {
        c cVar2 = this.f61917b;
        if (cVar2 != null && cVar2 != c.d3()) {
            this.f61917b = c.f3(this.f61917b).mergeFrom((c.b) cVar).buildPartial();
        } else {
            this.f61917b = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T3(i iVar) {
        i iVar2 = this.f61923h;
        if (iVar2 != null && iVar2 != i.W2()) {
            this.f61923h = i.Y2(this.f61923h).mergeFrom((i.b) iVar).buildPartial();
        } else {
            this.f61923h = iVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U3(ChatRoomArgs chatRoomArgs) {
        ChatRoomArgs chatRoomArgs2 = this.f61922g;
        if (chatRoomArgs2 != null && chatRoomArgs2 != ChatRoomArgs.c3()) {
            this.f61922g = ChatRoomArgs.e3(this.f61922g).mergeFrom((ChatRoomArgs.b) chatRoomArgs).buildPartial();
        } else {
            this.f61922g = chatRoomArgs;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V3(e0 e0Var) {
        e0 e0Var2 = this.f61919d;
        if (e0Var2 != null && e0Var2 != e0.l3()) {
            this.f61919d = e0.n3(this.f61919d).mergeFrom((e0.b) e0Var).buildPartial();
        } else {
            this.f61919d = e0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W3(HeartArgs heartArgs) {
        HeartArgs heartArgs2 = this.f61918c;
        if (heartArgs2 != null && heartArgs2 != HeartArgs.W2()) {
            this.f61918c = HeartArgs.Y2(this.f61918c).mergeFrom((HeartArgs.b) heartArgs).buildPartial();
        } else {
            this.f61918c = heartArgs;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X3(i0 i0Var) {
        i0 i0Var2 = this.f61925j;
        if (i0Var2 != null && i0Var2 != i0.Y2()) {
            this.f61925j = i0.a3(this.f61925j).mergeFrom((i0.b) i0Var).buildPartial();
        } else {
            this.f61925j = i0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y3(t0 t0Var) {
        t0 t0Var2 = this.f61916a;
        if (t0Var2 != null && t0Var2 != t0.c3()) {
            this.f61916a = t0.e3(this.f61916a).mergeFrom((t0.b) t0Var).buildPartial();
        } else {
            this.f61916a = t0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z3(PlayGameArgs playGameArgs) {
        PlayGameArgs playGameArgs2 = this.f61921f;
        if (playGameArgs2 != null && playGameArgs2 != PlayGameArgs.s3()) {
            this.f61921f = PlayGameArgs.u3(this.f61921f).mergeFrom((PlayGameArgs.b) playGameArgs).buildPartial();
        } else {
            this.f61921f = playGameArgs;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a4(RecommendPlayerArgs recommendPlayerArgs) {
        RecommendPlayerArgs recommendPlayerArgs2 = this.f61924i;
        if (recommendPlayerArgs2 != null && recommendPlayerArgs2 != RecommendPlayerArgs.l3()) {
            this.f61924i = RecommendPlayerArgs.n3(this.f61924i).mergeFrom((RecommendPlayerArgs.b) recommendPlayerArgs).buildPartial();
        } else {
            this.f61924i = recommendPlayerArgs;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b4(a1 a1Var) {
        a1 a1Var2 = this.f61920e;
        if (a1Var2 != null && a1Var2 != a1.W2()) {
            this.f61920e = a1.Y2(this.f61920e).mergeFrom((a1.b) a1Var).buildPartial();
        } else {
            this.f61920e = a1Var;
        }
    }

    public static b c4() {
        return f61914u.toBuilder();
    }

    public static b d4(t1 t1Var) {
        return f61914u.toBuilder().mergeFrom((b) t1Var);
    }

    public static t1 e4(InputStream inputStream) throws IOException {
        return (t1) GeneratedMessageLite.parseDelimitedFrom(f61914u, inputStream);
    }

    public static t1 f4(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t1) GeneratedMessageLite.parseDelimitedFrom(f61914u, inputStream, extensionRegistryLite);
    }

    public static t1 g4(ByteString byteString) throws InvalidProtocolBufferException {
        return (t1) GeneratedMessageLite.parseFrom(f61914u, byteString);
    }

    public static t1 h4(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (t1) GeneratedMessageLite.parseFrom(f61914u, byteString, extensionRegistryLite);
    }

    public static t1 i4(CodedInputStream codedInputStream) throws IOException {
        return (t1) GeneratedMessageLite.parseFrom(f61914u, codedInputStream);
    }

    public static t1 j4(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t1) GeneratedMessageLite.parseFrom(f61914u, codedInputStream, extensionRegistryLite);
    }

    public static t1 k4(InputStream inputStream) throws IOException {
        return (t1) GeneratedMessageLite.parseFrom(f61914u, inputStream);
    }

    public static t1 l4(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (t1) GeneratedMessageLite.parseFrom(f61914u, inputStream, extensionRegistryLite);
    }

    public static t1 m4(byte[] bArr) throws InvalidProtocolBufferException {
        return (t1) GeneratedMessageLite.parseFrom(f61914u, bArr);
    }

    public static t1 n4(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (t1) GeneratedMessageLite.parseFrom(f61914u, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o4(c.b bVar) {
        this.f61917b = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p4(c cVar) {
        Objects.requireNonNull(cVar);
        this.f61917b = cVar;
    }

    public static Parser<t1> parser() {
        return f61914u.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q4(i.b bVar) {
        this.f61923h = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r4(i iVar) {
        Objects.requireNonNull(iVar);
        this.f61923h = iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s4(ChatRoomArgs.b bVar) {
        this.f61922g = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t4(ChatRoomArgs chatRoomArgs) {
        Objects.requireNonNull(chatRoomArgs);
        this.f61922g = chatRoomArgs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u4(e0.b bVar) {
        this.f61919d = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v4(e0 e0Var) {
        Objects.requireNonNull(e0Var);
        this.f61919d = e0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w4(HeartArgs.b bVar) {
        this.f61918c = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x4(HeartArgs heartArgs) {
        Objects.requireNonNull(heartArgs);
        this.f61918c = heartArgs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y4(i0.b bVar) {
        this.f61925j = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z4(i0 i0Var) {
        Objects.requireNonNull(i0Var);
        this.f61925j = i0Var;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public HeartArgs A2() {
        HeartArgs heartArgs = this.f61918c;
        return heartArgs == null ? HeartArgs.W2() : heartArgs;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public ChatRoomArgs B1() {
        ChatRoomArgs chatRoomArgs = this.f61922g;
        return chatRoomArgs == null ? ChatRoomArgs.c3() : chatRoomArgs;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean B2() {
        return this.f61916a != null;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean C2() {
        return this.f61924i != null;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public PlayGameArgs G0() {
        PlayGameArgs playGameArgs = this.f61921f;
        return playGameArgs == null ? PlayGameArgs.s3() : playGameArgs;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public RecommendPlayerArgs G2() {
        RecommendPlayerArgs recommendPlayerArgs = this.f61924i;
        return recommendPlayerArgs == null ? RecommendPlayerArgs.l3() : recommendPlayerArgs;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean H0() {
        return this.f61922g != null;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public i0 H2() {
        i0 i0Var = this.f61925j;
        return i0Var == null ? i0.Y2() : i0Var;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public e0 I0() {
        e0 e0Var = this.f61919d;
        return e0Var == null ? e0.l3() : e0Var;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public i K2() {
        i iVar = this.f61923h;
        return iVar == null ? i.W2() : iVar;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public t0 L0() {
        t0 t0Var = this.f61916a;
        return t0Var == null ? t0.c3() : t0Var;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public a1 M0() {
        a1 a1Var = this.f61920e;
        return a1Var == null ? a1.W2() : a1Var;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public c M2() {
        c cVar = this.f61917b;
        return cVar == null ? c.d3() : cVar;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean Q2() {
        return this.f61925j != null;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean R1() {
        return this.f61921f != null;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean S1() {
        return this.f61918c != null;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean W1() {
        return this.f61920e != null;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean a0() {
        return this.f61919d != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (a.f61926a[methodToInvoke.ordinal()]) {
            case 1:
                return new t1();
            case 2:
                return f61914u;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                t1 t1Var = (t1) obj2;
                this.f61916a = (t0) visitor.visitMessage(this.f61916a, t1Var.f61916a);
                this.f61917b = (c) visitor.visitMessage(this.f61917b, t1Var.f61917b);
                this.f61918c = (HeartArgs) visitor.visitMessage(this.f61918c, t1Var.f61918c);
                this.f61919d = (e0) visitor.visitMessage(this.f61919d, t1Var.f61919d);
                this.f61920e = (a1) visitor.visitMessage(this.f61920e, t1Var.f61920e);
                this.f61921f = (PlayGameArgs) visitor.visitMessage(this.f61921f, t1Var.f61921f);
                this.f61922g = (ChatRoomArgs) visitor.visitMessage(this.f61922g, t1Var.f61922g);
                this.f61923h = (i) visitor.visitMessage(this.f61923h, t1Var.f61923h);
                this.f61924i = (RecommendPlayerArgs) visitor.visitMessage(this.f61924i, t1Var.f61924i);
                this.f61925j = (i0) visitor.visitMessage(this.f61925j, t1Var.f61925j);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z3 = false;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 10:
                                t0 t0Var = this.f61916a;
                                t0.b builder = t0Var != null ? t0Var.toBuilder() : null;
                                t0 t0Var2 = (t0) codedInputStream.readMessage(t0.parser(), extensionRegistryLite);
                                this.f61916a = t0Var2;
                                if (builder != null) {
                                    builder.mergeFrom((t0.b) t0Var2);
                                    this.f61916a = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 18:
                                c cVar = this.f61917b;
                                c.b builder2 = cVar != null ? cVar.toBuilder() : null;
                                c cVar2 = (c) codedInputStream.readMessage(c.parser(), extensionRegistryLite);
                                this.f61917b = cVar2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((c.b) cVar2);
                                    this.f61917b = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                            case 26:
                                HeartArgs heartArgs = this.f61918c;
                                HeartArgs.b builder3 = heartArgs != null ? heartArgs.toBuilder() : null;
                                HeartArgs heartArgs2 = (HeartArgs) codedInputStream.readMessage(HeartArgs.parser(), extensionRegistryLite);
                                this.f61918c = heartArgs2;
                                if (builder3 != null) {
                                    builder3.mergeFrom((HeartArgs.b) heartArgs2);
                                    this.f61918c = builder3.buildPartial();
                                } else {
                                    continue;
                                }
                            case 34:
                                e0 e0Var = this.f61919d;
                                e0.b builder4 = e0Var != null ? e0Var.toBuilder() : null;
                                e0 e0Var2 = (e0) codedInputStream.readMessage(e0.parser(), extensionRegistryLite);
                                this.f61919d = e0Var2;
                                if (builder4 != null) {
                                    builder4.mergeFrom((e0.b) e0Var2);
                                    this.f61919d = builder4.buildPartial();
                                } else {
                                    continue;
                                }
                            case 42:
                                a1 a1Var = this.f61920e;
                                a1.b builder5 = a1Var != null ? a1Var.toBuilder() : null;
                                a1 a1Var2 = (a1) codedInputStream.readMessage(a1.parser(), extensionRegistryLite);
                                this.f61920e = a1Var2;
                                if (builder5 != null) {
                                    builder5.mergeFrom((a1.b) a1Var2);
                                    this.f61920e = builder5.buildPartial();
                                } else {
                                    continue;
                                }
                            case 50:
                                PlayGameArgs playGameArgs = this.f61921f;
                                PlayGameArgs.b builder6 = playGameArgs != null ? playGameArgs.toBuilder() : null;
                                PlayGameArgs playGameArgs2 = (PlayGameArgs) codedInputStream.readMessage(PlayGameArgs.parser(), extensionRegistryLite);
                                this.f61921f = playGameArgs2;
                                if (builder6 != null) {
                                    builder6.mergeFrom((PlayGameArgs.b) playGameArgs2);
                                    this.f61921f = builder6.buildPartial();
                                } else {
                                    continue;
                                }
                            case 58:
                                ChatRoomArgs chatRoomArgs = this.f61922g;
                                ChatRoomArgs.b builder7 = chatRoomArgs != null ? chatRoomArgs.toBuilder() : null;
                                ChatRoomArgs chatRoomArgs2 = (ChatRoomArgs) codedInputStream.readMessage(ChatRoomArgs.parser(), extensionRegistryLite);
                                this.f61922g = chatRoomArgs2;
                                if (builder7 != null) {
                                    builder7.mergeFrom((ChatRoomArgs.b) chatRoomArgs2);
                                    this.f61922g = builder7.buildPartial();
                                } else {
                                    continue;
                                }
                            case 66:
                                i iVar = this.f61923h;
                                i.b builder8 = iVar != null ? iVar.toBuilder() : null;
                                i iVar2 = (i) codedInputStream.readMessage(i.parser(), extensionRegistryLite);
                                this.f61923h = iVar2;
                                if (builder8 != null) {
                                    builder8.mergeFrom((i.b) iVar2);
                                    this.f61923h = builder8.buildPartial();
                                } else {
                                    continue;
                                }
                            case 74:
                                RecommendPlayerArgs recommendPlayerArgs = this.f61924i;
                                RecommendPlayerArgs.b builder9 = recommendPlayerArgs != null ? recommendPlayerArgs.toBuilder() : null;
                                RecommendPlayerArgs recommendPlayerArgs2 = (RecommendPlayerArgs) codedInputStream.readMessage(RecommendPlayerArgs.parser(), extensionRegistryLite);
                                this.f61924i = recommendPlayerArgs2;
                                if (builder9 != null) {
                                    builder9.mergeFrom((RecommendPlayerArgs.b) recommendPlayerArgs2);
                                    this.f61924i = builder9.buildPartial();
                                } else {
                                    continue;
                                }
                            case 82:
                                i0 i0Var = this.f61925j;
                                i0.b builder10 = i0Var != null ? i0Var.toBuilder() : null;
                                i0 i0Var2 = (i0) codedInputStream.readMessage(i0.parser(), extensionRegistryLite);
                                this.f61925j = i0Var2;
                                if (builder10 != null) {
                                    builder10.mergeFrom((i0.b) i0Var2);
                                    this.f61925j = builder10.buildPartial();
                                } else {
                                    continue;
                                }
                            default:
                                if (!codedInputStream.skipField(readTag)) {
                                    break;
                                } else {
                                    continue;
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
                if (f61915v == null) {
                    synchronized (t1.class) {
                        if (f61915v == null) {
                            f61915v = new GeneratedMessageLite.DefaultInstanceBasedParser(f61914u);
                        }
                    }
                }
                return f61915v;
            default:
                throw new UnsupportedOperationException();
        }
        return f61914u;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeMessageSize = this.f61916a != null ? 0 + CodedOutputStream.computeMessageSize(1, L0()) : 0;
        if (this.f61917b != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(2, M2());
        }
        if (this.f61918c != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(3, A2());
        }
        if (this.f61919d != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(4, I0());
        }
        if (this.f61920e != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(5, M0());
        }
        if (this.f61921f != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(6, G0());
        }
        if (this.f61922g != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(7, B1());
        }
        if (this.f61923h != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(8, K2());
        }
        if (this.f61924i != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(9, G2());
        }
        if (this.f61925j != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(10, H2());
        }
        this.memoizedSerializedSize = computeMessageSize;
        return computeMessageSize;
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean l0() {
        return this.f61917b != null;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f61916a != null) {
            codedOutputStream.writeMessage(1, L0());
        }
        if (this.f61917b != null) {
            codedOutputStream.writeMessage(2, M2());
        }
        if (this.f61918c != null) {
            codedOutputStream.writeMessage(3, A2());
        }
        if (this.f61919d != null) {
            codedOutputStream.writeMessage(4, I0());
        }
        if (this.f61920e != null) {
            codedOutputStream.writeMessage(5, M0());
        }
        if (this.f61921f != null) {
            codedOutputStream.writeMessage(6, G0());
        }
        if (this.f61922g != null) {
            codedOutputStream.writeMessage(7, B1());
        }
        if (this.f61923h != null) {
            codedOutputStream.writeMessage(8, K2());
        }
        if (this.f61924i != null) {
            codedOutputStream.writeMessage(9, G2());
        }
        if (this.f61925j != null) {
            codedOutputStream.writeMessage(10, H2());
        }
    }

    @Override // com.wufan.friend.chat.protocol.u1
    public boolean z1() {
        return this.f61923h != null;
    }
}
