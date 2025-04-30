package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.friend.chat.protocol.FriendAddReqNotification;
import com.wufan.friend.chat.protocol.a;
import com.wufan.friend.chat.protocol.e;
import com.wufan.friend.chat.protocol.f1;
import com.wufan.friend.chat.protocol.g;
import com.wufan.friend.chat.protocol.g0;
import com.wufan.friend.chat.protocol.h1;
import com.wufan.friend.chat.protocol.l0;
import com.wufan.friend.chat.protocol.m;
import com.wufan.friend.chat.protocol.n0;
import com.wufan.friend.chat.protocol.o1;
import com.wufan.friend.chat.protocol.p;
import com.wufan.friend.chat.protocol.q1;
import com.wufan.friend.chat.protocol.t;
import com.wufan.friend.chat.protocol.v;
import com.wufan.friend.chat.protocol.x;
import com.wufan.friend.chat.protocol.z;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: NotificationData.java */
/* loaded from: classes2.dex */
public final class y0 extends GeneratedMessageLite<y0, b> implements z0 {
    public static final int A = 7;
    public static final int B = 8;
    public static final int C = 9;
    public static final int D = 10;
    public static final int E = 11;
    public static final int F = 12;
    public static final int G = 13;
    public static final int H = 14;
    public static final int I = 15;
    public static final int J = 16;
    public static final int K = 17;

    /* renamed from: n0  reason: collision with root package name */
    public static final int f61986n0 = 18;

    /* renamed from: o0  reason: collision with root package name */
    public static final int f61987o0 = 19;

    /* renamed from: p0  reason: collision with root package name */
    public static final int f61988p0 = 20;

    /* renamed from: q0  reason: collision with root package name */
    private static final y0 f61989q0;

    /* renamed from: r0  reason: collision with root package name */
    private static volatile Parser<y0> f61990r0 = null;

    /* renamed from: u  reason: collision with root package name */
    public static final int f61991u = 1;

    /* renamed from: v  reason: collision with root package name */
    public static final int f61992v = 2;

    /* renamed from: w  reason: collision with root package name */
    public static final int f61993w = 3;

    /* renamed from: x  reason: collision with root package name */
    public static final int f61994x = 4;

    /* renamed from: y  reason: collision with root package name */
    public static final int f61995y = 5;

    /* renamed from: z  reason: collision with root package name */
    public static final int f61996z = 6;

    /* renamed from: a  reason: collision with root package name */
    private long f61997a;

    /* renamed from: b  reason: collision with root package name */
    private long f61998b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f61999c;

    /* renamed from: d  reason: collision with root package name */
    private com.wufan.friend.chat.protocol.a f62000d;

    /* renamed from: e  reason: collision with root package name */
    private p f62001e;

    /* renamed from: f  reason: collision with root package name */
    private h1 f62002f;

    /* renamed from: g  reason: collision with root package name */
    private g0 f62003g;

    /* renamed from: h  reason: collision with root package name */
    private x f62004h;

    /* renamed from: i  reason: collision with root package name */
    private v f62005i;

    /* renamed from: j  reason: collision with root package name */
    private l0 f62006j;

    /* renamed from: k  reason: collision with root package name */
    private g f62007k;

    /* renamed from: l  reason: collision with root package name */
    private m f62008l;

    /* renamed from: m  reason: collision with root package name */
    private FriendAddReqNotification f62009m;

    /* renamed from: n  reason: collision with root package name */
    private n0 f62010n;

    /* renamed from: o  reason: collision with root package name */
    private t f62011o;

    /* renamed from: p  reason: collision with root package name */
    private q1 f62012p;

    /* renamed from: q  reason: collision with root package name */
    private e f62013q;

    /* renamed from: r  reason: collision with root package name */
    private o1 f62014r;

    /* renamed from: s  reason: collision with root package name */
    private z f62015s;

    /* renamed from: t  reason: collision with root package name */
    private f1 f62016t;

    /* compiled from: NotificationData.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62017a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62017a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62017a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62017a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62017a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62017a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62017a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62017a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62017a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: NotificationData.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<y0, b> implements z0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean A0() {
            return ((y0) this.instance).A0();
        }

        public b A3(h1 h1Var) {
            copyOnWrite();
            ((y0) this.instance).Y4(h1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean B0() {
            return ((y0) this.instance).B0();
        }

        public b B3(o1 o1Var) {
            copyOnWrite();
            ((y0) this.instance).Z4(o1Var);
            return this;
        }

        public b C3(q1 q1Var) {
            copyOnWrite();
            ((y0) this.instance).a5(q1Var);
            return this;
        }

        public b D3(boolean z3) {
            copyOnWrite();
            ((y0) this.instance).n5(z3);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean E2() {
            return ((y0) this.instance).E2();
        }

        public b E3(e.b bVar) {
            copyOnWrite();
            ((y0) this.instance).o5(bVar);
            return this;
        }

        public b F3(e eVar) {
            copyOnWrite();
            ((y0) this.instance).p5(eVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean G1() {
            return ((y0) this.instance).G1();
        }

        public b G3(g.b bVar) {
            copyOnWrite();
            ((y0) this.instance).q5(bVar);
            return this;
        }

        public b H3(g gVar) {
            copyOnWrite();
            ((y0) this.instance).r5(gVar);
            return this;
        }

        public b I3(m.b bVar) {
            copyOnWrite();
            ((y0) this.instance).s5(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean J1() {
            return ((y0) this.instance).J1();
        }

        public b J3(m mVar) {
            copyOnWrite();
            ((y0) this.instance).t5(mVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public v K0() {
            return ((y0) this.instance).K0();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public q1 K1() {
            return ((y0) this.instance).K1();
        }

        public b K3(p.b bVar) {
            copyOnWrite();
            ((y0) this.instance).u5(bVar);
            return this;
        }

        public b L3(p pVar) {
            copyOnWrite();
            ((y0) this.instance).v5(pVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public long M() {
            return ((y0) this.instance).M();
        }

        public b M3(FriendAddReqNotification.b bVar) {
            copyOnWrite();
            ((y0) this.instance).w5(bVar);
            return this;
        }

        public b N3(FriendAddReqNotification friendAddReqNotification) {
            copyOnWrite();
            ((y0) this.instance).x5(friendAddReqNotification);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public long O() {
            return ((y0) this.instance).O();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public f1 O0() {
            return ((y0) this.instance).O0();
        }

        public b O3(t.b bVar) {
            copyOnWrite();
            ((y0) this.instance).y5(bVar);
            return this;
        }

        public b P3(t tVar) {
            copyOnWrite();
            ((y0) this.instance).z5(tVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean Q1() {
            return ((y0) this.instance).Q1();
        }

        public b Q3(x.b bVar) {
            copyOnWrite();
            ((y0) this.instance).A5(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public p R() {
            return ((y0) this.instance).R();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean R2() {
            return ((y0) this.instance).R2();
        }

        public b R3(x xVar) {
            copyOnWrite();
            ((y0) this.instance).B5(xVar);
            return this;
        }

        public b S2() {
            copyOnWrite();
            ((y0) this.instance).p4();
            return this;
        }

        public b S3(z.b bVar) {
            copyOnWrite();
            ((y0) this.instance).C5(bVar);
            return this;
        }

        public b T2() {
            copyOnWrite();
            ((y0) this.instance).q4();
            return this;
        }

        public b T3(z zVar) {
            copyOnWrite();
            ((y0) this.instance).D5(zVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public com.wufan.friend.chat.protocol.a U() {
            return ((y0) this.instance).U();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean U1() {
            return ((y0) this.instance).U1();
        }

        public b U2() {
            copyOnWrite();
            ((y0) this.instance).r4();
            return this;
        }

        public b U3(v.b bVar) {
            copyOnWrite();
            ((y0) this.instance).E5(bVar);
            return this;
        }

        public b V2() {
            copyOnWrite();
            ((y0) this.instance).s4();
            return this;
        }

        public b V3(v vVar) {
            copyOnWrite();
            ((y0) this.instance).F5(vVar);
            return this;
        }

        public b W2() {
            copyOnWrite();
            ((y0) this.instance).t4();
            return this;
        }

        public b W3(a.b bVar) {
            copyOnWrite();
            ((y0) this.instance).G5(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public e X1() {
            return ((y0) this.instance).X1();
        }

        public b X2() {
            copyOnWrite();
            ((y0) this.instance).u4();
            return this;
        }

        public b X3(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((y0) this.instance).H5(aVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean Y() {
            return ((y0) this.instance).Y();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean Y0() {
            return ((y0) this.instance).Y0();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public l0 Y1() {
            return ((y0) this.instance).Y1();
        }

        public b Y2() {
            copyOnWrite();
            ((y0) this.instance).v4();
            return this;
        }

        public b Y3(g0.b bVar) {
            copyOnWrite();
            ((y0) this.instance).I5(bVar);
            return this;
        }

        public b Z2() {
            copyOnWrite();
            ((y0) this.instance).w4();
            return this;
        }

        public b Z3(g0 g0Var) {
            copyOnWrite();
            ((y0) this.instance).J5(g0Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public n0 a2() {
            return ((y0) this.instance).a2();
        }

        public b a3() {
            copyOnWrite();
            ((y0) this.instance).x4();
            return this;
        }

        public b a4(l0.b bVar) {
            copyOnWrite();
            ((y0) this.instance).K5(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public t b1() {
            return ((y0) this.instance).b1();
        }

        public b b3() {
            copyOnWrite();
            ((y0) this.instance).y4();
            return this;
        }

        public b b4(l0 l0Var) {
            copyOnWrite();
            ((y0) this.instance).L5(l0Var);
            return this;
        }

        public b c3() {
            copyOnWrite();
            ((y0) this.instance).z4();
            return this;
        }

        public b c4(n0.b bVar) {
            copyOnWrite();
            ((y0) this.instance).M5(bVar);
            return this;
        }

        public b d3() {
            copyOnWrite();
            ((y0) this.instance).A4();
            return this;
        }

        public b d4(n0 n0Var) {
            copyOnWrite();
            ((y0) this.instance).N5(n0Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public z e2() {
            return ((y0) this.instance).e2();
        }

        public b e3() {
            copyOnWrite();
            ((y0) this.instance).B4();
            return this;
        }

        public b e4(long j4) {
            copyOnWrite();
            ((y0) this.instance).O5(j4);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean f2() {
            return ((y0) this.instance).f2();
        }

        public b f3() {
            copyOnWrite();
            ((y0) this.instance).C4();
            return this;
        }

        public b f4(f1.b bVar) {
            copyOnWrite();
            ((y0) this.instance).P5(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public g0 g1() {
            return ((y0) this.instance).g1();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean g2() {
            return ((y0) this.instance).g2();
        }

        public b g3() {
            copyOnWrite();
            ((y0) this.instance).D4();
            return this;
        }

        public b g4(f1 f1Var) {
            copyOnWrite();
            ((y0) this.instance).Q5(f1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public h1 h2() {
            return ((y0) this.instance).h2();
        }

        public b h3() {
            copyOnWrite();
            ((y0) this.instance).E4();
            return this;
        }

        public b h4(h1.b bVar) {
            copyOnWrite();
            ((y0) this.instance).R5(bVar);
            return this;
        }

        public b i3() {
            copyOnWrite();
            ((y0) this.instance).F4();
            return this;
        }

        public b i4(h1 h1Var) {
            copyOnWrite();
            ((y0) this.instance).S5(h1Var);
            return this;
        }

        public b j3() {
            copyOnWrite();
            ((y0) this.instance).G4();
            return this;
        }

        public b j4(o1.b bVar) {
            copyOnWrite();
            ((y0) this.instance).T5(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public x k2() {
            return ((y0) this.instance).k2();
        }

        public b k3() {
            copyOnWrite();
            ((y0) this.instance).H4();
            return this;
        }

        public b k4(o1 o1Var) {
            copyOnWrite();
            ((y0) this.instance).U5(o1Var);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean l1() {
            return ((y0) this.instance).l1();
        }

        public b l3() {
            copyOnWrite();
            ((y0) this.instance).I4();
            return this;
        }

        public b l4(q1.b bVar) {
            copyOnWrite();
            ((y0) this.instance).V5(bVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean m2() {
            return ((y0) this.instance).m2();
        }

        public b m3(e eVar) {
            copyOnWrite();
            ((y0) this.instance).K4(eVar);
            return this;
        }

        public b m4(q1 q1Var) {
            copyOnWrite();
            ((y0) this.instance).W5(q1Var);
            return this;
        }

        public b n3(g gVar) {
            copyOnWrite();
            ((y0) this.instance).L4(gVar);
            return this;
        }

        public b n4(long j4) {
            copyOnWrite();
            ((y0) this.instance).X5(j4);
            return this;
        }

        public b o3(m mVar) {
            copyOnWrite();
            ((y0) this.instance).M4(mVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public o1 p1() {
            return ((y0) this.instance).p1();
        }

        public b p3(p pVar) {
            copyOnWrite();
            ((y0) this.instance).N4(pVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean q1() {
            return ((y0) this.instance).q1();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean q2() {
            return ((y0) this.instance).q2();
        }

        public b q3(FriendAddReqNotification friendAddReqNotification) {
            copyOnWrite();
            ((y0) this.instance).O4(friendAddReqNotification);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public m r0() {
            return ((y0) this.instance).r0();
        }

        public b r3(t tVar) {
            copyOnWrite();
            ((y0) this.instance).P4(tVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean s2() {
            return ((y0) this.instance).s2();
        }

        public b s3(x xVar) {
            copyOnWrite();
            ((y0) this.instance).Q4(xVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public g t0() {
            return ((y0) this.instance).t0();
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public boolean t2() {
            return ((y0) this.instance).t2();
        }

        public b t3(z zVar) {
            copyOnWrite();
            ((y0) this.instance).R4(zVar);
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.z0
        public FriendAddReqNotification u1() {
            return ((y0) this.instance).u1();
        }

        public b u3(v vVar) {
            copyOnWrite();
            ((y0) this.instance).S4(vVar);
            return this;
        }

        public b v3(com.wufan.friend.chat.protocol.a aVar) {
            copyOnWrite();
            ((y0) this.instance).T4(aVar);
            return this;
        }

        public b w3(g0 g0Var) {
            copyOnWrite();
            ((y0) this.instance).U4(g0Var);
            return this;
        }

        public b x3(l0 l0Var) {
            copyOnWrite();
            ((y0) this.instance).V4(l0Var);
            return this;
        }

        public b y3(n0 n0Var) {
            copyOnWrite();
            ((y0) this.instance).W4(n0Var);
            return this;
        }

        public b z3(f1 f1Var) {
            copyOnWrite();
            ((y0) this.instance).X4(f1Var);
            return this;
        }

        private b() {
            super(y0.f61989q0);
        }
    }

    static {
        y0 y0Var = new y0();
        f61989q0 = y0Var;
        y0Var.makeImmutable();
    }

    private y0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A4() {
        this.f62003g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A5(x.b bVar) {
        this.f62004h = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B4() {
        this.f62006j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B5(x xVar) {
        Objects.requireNonNull(xVar);
        this.f62004h = xVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C4() {
        this.f62010n = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C5(z.b bVar) {
        this.f62015s = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D4() {
        this.f61997a = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D5(z zVar) {
        Objects.requireNonNull(zVar);
        this.f62015s = zVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E4() {
        this.f62016t = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E5(v.b bVar) {
        this.f62005i = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F4() {
        this.f62002f = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F5(v vVar) {
        Objects.requireNonNull(vVar);
        this.f62005i = vVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G4() {
        this.f62014r = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G5(a.b bVar) {
        this.f62000d = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H4() {
        this.f62012p = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H5(com.wufan.friend.chat.protocol.a aVar) {
        Objects.requireNonNull(aVar);
        this.f62000d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I4() {
        this.f61998b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I5(g0.b bVar) {
        this.f62003g = bVar.build();
    }

    public static y0 J4() {
        return f61989q0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J5(g0 g0Var) {
        Objects.requireNonNull(g0Var);
        this.f62003g = g0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K4(e eVar) {
        e eVar2 = this.f62013q;
        if (eVar2 != null && eVar2 != e.C3()) {
            this.f62013q = e.I3(this.f62013q).mergeFrom((e.b) eVar).buildPartial();
        } else {
            this.f62013q = eVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K5(l0.b bVar) {
        this.f62006j = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L4(g gVar) {
        g gVar2 = this.f62007k;
        if (gVar2 != null && gVar2 != g.m3()) {
            this.f62007k = g.q3(this.f62007k).mergeFrom((g.b) gVar).buildPartial();
        } else {
            this.f62007k = gVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L5(l0 l0Var) {
        Objects.requireNonNull(l0Var);
        this.f62006j = l0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M4(m mVar) {
        m mVar2 = this.f62008l;
        if (mVar2 != null && mVar2 != m.d3()) {
            this.f62008l = m.g3(this.f62008l).mergeFrom((m.b) mVar).buildPartial();
        } else {
            this.f62008l = mVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M5(n0.b bVar) {
        this.f62010n = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N4(p pVar) {
        p pVar2 = this.f62001e;
        if (pVar2 != null && pVar2 != p.T2()) {
            this.f62001e = p.V2(this.f62001e).mergeFrom((p.b) pVar).buildPartial();
        } else {
            this.f62001e = pVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N5(n0 n0Var) {
        Objects.requireNonNull(n0Var);
        this.f62010n = n0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O4(FriendAddReqNotification friendAddReqNotification) {
        FriendAddReqNotification friendAddReqNotification2 = this.f62009m;
        if (friendAddReqNotification2 != null && friendAddReqNotification2 != FriendAddReqNotification.b3()) {
            this.f62009m = FriendAddReqNotification.d3(this.f62009m).mergeFrom((FriendAddReqNotification.b) friendAddReqNotification).buildPartial();
        } else {
            this.f62009m = friendAddReqNotification;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O5(long j4) {
        this.f61997a = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P4(t tVar) {
        t tVar2 = this.f62011o;
        if (tVar2 != null && tVar2 != t.h3()) {
            this.f62011o = t.l3(this.f62011o).mergeFrom((t.b) tVar).buildPartial();
        } else {
            this.f62011o = tVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P5(f1.b bVar) {
        this.f62016t = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q4(x xVar) {
        x xVar2 = this.f62004h;
        if (xVar2 != null && xVar2 != x.g3()) {
            this.f62004h = x.k3(this.f62004h).mergeFrom((x.b) xVar).buildPartial();
        } else {
            this.f62004h = xVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q5(f1 f1Var) {
        Objects.requireNonNull(f1Var);
        this.f62016t = f1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R4(z zVar) {
        z zVar2 = this.f62015s;
        if (zVar2 != null && zVar2 != z.W2()) {
            this.f62015s = z.Y2(this.f62015s).mergeFrom((z.b) zVar).buildPartial();
        } else {
            this.f62015s = zVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R5(h1.b bVar) {
        this.f62002f = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S4(v vVar) {
        v vVar2 = this.f62005i;
        if (vVar2 != null && vVar2 != v.c3()) {
            this.f62005i = v.g3(this.f62005i).mergeFrom((v.b) vVar).buildPartial();
        } else {
            this.f62005i = vVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S5(h1 h1Var) {
        Objects.requireNonNull(h1Var);
        this.f62002f = h1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T4(com.wufan.friend.chat.protocol.a aVar) {
        com.wufan.friend.chat.protocol.a aVar2 = this.f62000d;
        if (aVar2 != null && aVar2 != com.wufan.friend.chat.protocol.a.n3()) {
            this.f62000d = com.wufan.friend.chat.protocol.a.p3(this.f62000d).mergeFrom((a.b) aVar).buildPartial();
        } else {
            this.f62000d = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T5(o1.b bVar) {
        this.f62014r = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U4(g0 g0Var) {
        g0 g0Var2 = this.f62003g;
        if (g0Var2 != null && g0Var2 != g0.y3()) {
            this.f62003g = g0.A3(this.f62003g).mergeFrom((g0.b) g0Var).buildPartial();
        } else {
            this.f62003g = g0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U5(o1 o1Var) {
        Objects.requireNonNull(o1Var);
        this.f62014r = o1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V4(l0 l0Var) {
        l0 l0Var2 = this.f62006j;
        if (l0Var2 != null && l0Var2 != l0.X2()) {
            this.f62006j = l0.Z2(this.f62006j).mergeFrom((l0.b) l0Var).buildPartial();
        } else {
            this.f62006j = l0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V5(q1.b bVar) {
        this.f62012p = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W4(n0 n0Var) {
        n0 n0Var2 = this.f62010n;
        if (n0Var2 != null && n0Var2 != n0.Z2()) {
            this.f62010n = n0.b3(this.f62010n).mergeFrom((n0.b) n0Var).buildPartial();
        } else {
            this.f62010n = n0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W5(q1 q1Var) {
        Objects.requireNonNull(q1Var);
        this.f62012p = q1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X4(f1 f1Var) {
        f1 f1Var2 = this.f62016t;
        if (f1Var2 != null && f1Var2 != f1.Y2()) {
            this.f62016t = f1.b3(this.f62016t).mergeFrom((f1.b) f1Var).buildPartial();
        } else {
            this.f62016t = f1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X5(long j4) {
        this.f61998b = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y4(h1 h1Var) {
        h1 h1Var2 = this.f62002f;
        if (h1Var2 != null && h1Var2 != h1.T2()) {
            this.f62002f = h1.V2(this.f62002f).mergeFrom((h1.b) h1Var).buildPartial();
        } else {
            this.f62002f = h1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z4(o1 o1Var) {
        o1 o1Var2 = this.f62014r;
        if (o1Var2 != null && o1Var2 != o1.g3()) {
            this.f62014r = o1.k3(this.f62014r).mergeFrom((o1.b) o1Var).buildPartial();
        } else {
            this.f62014r = o1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a5(q1 q1Var) {
        q1 q1Var2 = this.f62012p;
        if (q1Var2 != null && q1Var2 != q1.b3()) {
            this.f62012p = q1.e3(this.f62012p).mergeFrom((q1.b) q1Var).buildPartial();
        } else {
            this.f62012p = q1Var;
        }
    }

    public static b b5() {
        return f61989q0.toBuilder();
    }

    public static b c5(y0 y0Var) {
        return f61989q0.toBuilder().mergeFrom((b) y0Var);
    }

    public static y0 d5(InputStream inputStream) throws IOException {
        return (y0) GeneratedMessageLite.parseDelimitedFrom(f61989q0, inputStream);
    }

    public static y0 e5(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (y0) GeneratedMessageLite.parseDelimitedFrom(f61989q0, inputStream, extensionRegistryLite);
    }

    public static y0 f5(ByteString byteString) throws InvalidProtocolBufferException {
        return (y0) GeneratedMessageLite.parseFrom(f61989q0, byteString);
    }

    public static y0 g5(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (y0) GeneratedMessageLite.parseFrom(f61989q0, byteString, extensionRegistryLite);
    }

    public static y0 h5(CodedInputStream codedInputStream) throws IOException {
        return (y0) GeneratedMessageLite.parseFrom(f61989q0, codedInputStream);
    }

    public static y0 i5(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (y0) GeneratedMessageLite.parseFrom(f61989q0, codedInputStream, extensionRegistryLite);
    }

    public static y0 j5(InputStream inputStream) throws IOException {
        return (y0) GeneratedMessageLite.parseFrom(f61989q0, inputStream);
    }

    public static y0 k5(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (y0) GeneratedMessageLite.parseFrom(f61989q0, inputStream, extensionRegistryLite);
    }

    public static y0 l5(byte[] bArr) throws InvalidProtocolBufferException {
        return (y0) GeneratedMessageLite.parseFrom(f61989q0, bArr);
    }

    public static y0 m5(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (y0) GeneratedMessageLite.parseFrom(f61989q0, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n5(boolean z3) {
        this.f61999c = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o5(e.b bVar) {
        this.f62013q = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p4() {
        this.f61999c = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p5(e eVar) {
        Objects.requireNonNull(eVar);
        this.f62013q = eVar;
    }

    public static Parser<y0> parser() {
        return f61989q0.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q4() {
        this.f62013q = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q5(g.b bVar) {
        this.f62007k = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r4() {
        this.f62007k = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r5(g gVar) {
        Objects.requireNonNull(gVar);
        this.f62007k = gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s4() {
        this.f62008l = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s5(m.b bVar) {
        this.f62008l = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t4() {
        this.f62001e = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t5(m mVar) {
        Objects.requireNonNull(mVar);
        this.f62008l = mVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u4() {
        this.f62009m = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u5(p.b bVar) {
        this.f62001e = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v4() {
        this.f62011o = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v5(p pVar) {
        Objects.requireNonNull(pVar);
        this.f62001e = pVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w4() {
        this.f62004h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w5(FriendAddReqNotification.b bVar) {
        this.f62009m = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x4() {
        this.f62015s = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x5(FriendAddReqNotification friendAddReqNotification) {
        Objects.requireNonNull(friendAddReqNotification);
        this.f62009m = friendAddReqNotification;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y4() {
        this.f62005i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y5(t.b bVar) {
        this.f62011o = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z4() {
        this.f62000d = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z5(t tVar) {
        Objects.requireNonNull(tVar);
        this.f62011o = tVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean A0() {
        return this.f62007k != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean B0() {
        return this.f62001e != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean E2() {
        return this.f62014r != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean G1() {
        return this.f62008l != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean J1() {
        return this.f62012p != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public v K0() {
        v vVar = this.f62005i;
        return vVar == null ? v.c3() : vVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public q1 K1() {
        q1 q1Var = this.f62012p;
        return q1Var == null ? q1.b3() : q1Var;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public long M() {
        return this.f61998b;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public long O() {
        return this.f61997a;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public f1 O0() {
        f1 f1Var = this.f62016t;
        return f1Var == null ? f1.Y2() : f1Var;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean Q1() {
        return this.f62013q != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public p R() {
        p pVar = this.f62001e;
        return pVar == null ? p.T2() : pVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean R2() {
        return this.f62009m != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public com.wufan.friend.chat.protocol.a U() {
        com.wufan.friend.chat.protocol.a aVar = this.f62000d;
        return aVar == null ? com.wufan.friend.chat.protocol.a.n3() : aVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean U1() {
        return this.f62016t != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public e X1() {
        e eVar = this.f62013q;
        return eVar == null ? e.C3() : eVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean Y() {
        return this.f62006j != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean Y0() {
        return this.f62002f != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public l0 Y1() {
        l0 l0Var = this.f62006j;
        return l0Var == null ? l0.X2() : l0Var;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public n0 a2() {
        n0 n0Var = this.f62010n;
        return n0Var == null ? n0.Z2() : n0Var;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public t b1() {
        t tVar = this.f62011o;
        return tVar == null ? t.h3() : tVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f62017a[methodToInvoke.ordinal()]) {
            case 1:
                return new y0();
            case 2:
                return f61989q0;
            case 3:
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                y0 y0Var = (y0) obj2;
                long j4 = this.f61997a;
                boolean z4 = j4 != 0;
                long j5 = y0Var.f61997a;
                this.f61997a = visitor.visitLong(z4, j4, j5 != 0, j5);
                long j6 = this.f61998b;
                boolean z5 = j6 != 0;
                long j7 = y0Var.f61998b;
                this.f61998b = visitor.visitLong(z5, j6, j7 != 0, j7);
                boolean z6 = this.f61999c;
                boolean z7 = y0Var.f61999c;
                this.f61999c = visitor.visitBoolean(z6, z6, z7, z7);
                this.f62000d = (com.wufan.friend.chat.protocol.a) visitor.visitMessage(this.f62000d, y0Var.f62000d);
                this.f62001e = (p) visitor.visitMessage(this.f62001e, y0Var.f62001e);
                this.f62002f = (h1) visitor.visitMessage(this.f62002f, y0Var.f62002f);
                this.f62003g = (g0) visitor.visitMessage(this.f62003g, y0Var.f62003g);
                this.f62004h = (x) visitor.visitMessage(this.f62004h, y0Var.f62004h);
                this.f62005i = (v) visitor.visitMessage(this.f62005i, y0Var.f62005i);
                this.f62006j = (l0) visitor.visitMessage(this.f62006j, y0Var.f62006j);
                this.f62007k = (g) visitor.visitMessage(this.f62007k, y0Var.f62007k);
                this.f62008l = (m) visitor.visitMessage(this.f62008l, y0Var.f62008l);
                this.f62009m = (FriendAddReqNotification) visitor.visitMessage(this.f62009m, y0Var.f62009m);
                this.f62010n = (n0) visitor.visitMessage(this.f62010n, y0Var.f62010n);
                this.f62011o = (t) visitor.visitMessage(this.f62011o, y0Var.f62011o);
                this.f62012p = (q1) visitor.visitMessage(this.f62012p, y0Var.f62012p);
                this.f62013q = (e) visitor.visitMessage(this.f62013q, y0Var.f62013q);
                this.f62014r = (o1) visitor.visitMessage(this.f62014r, y0Var.f62014r);
                this.f62015s = (z) visitor.visitMessage(this.f62015s, y0Var.f62015s);
                this.f62016t = (f1) visitor.visitMessage(this.f62016t, y0Var.f62016t);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 8:
                                this.f61997a = codedInputStream.readInt64();
                                continue;
                            case 16:
                                this.f61998b = codedInputStream.readInt64();
                                continue;
                            case 24:
                                this.f61999c = codedInputStream.readBool();
                                continue;
                            case 34:
                                com.wufan.friend.chat.protocol.a aVar = this.f62000d;
                                a.b builder = aVar != null ? aVar.toBuilder() : null;
                                com.wufan.friend.chat.protocol.a aVar2 = (com.wufan.friend.chat.protocol.a) codedInputStream.readMessage(com.wufan.friend.chat.protocol.a.parser(), extensionRegistryLite);
                                this.f62000d = aVar2;
                                if (builder != null) {
                                    builder.mergeFrom((a.b) aVar2);
                                    this.f62000d = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 42:
                                p pVar = this.f62001e;
                                p.b builder2 = pVar != null ? pVar.toBuilder() : null;
                                p pVar2 = (p) codedInputStream.readMessage(p.parser(), extensionRegistryLite);
                                this.f62001e = pVar2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((p.b) pVar2);
                                    this.f62001e = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                            case 50:
                                h1 h1Var = this.f62002f;
                                h1.b builder3 = h1Var != null ? h1Var.toBuilder() : null;
                                h1 h1Var2 = (h1) codedInputStream.readMessage(h1.parser(), extensionRegistryLite);
                                this.f62002f = h1Var2;
                                if (builder3 != null) {
                                    builder3.mergeFrom((h1.b) h1Var2);
                                    this.f62002f = builder3.buildPartial();
                                } else {
                                    continue;
                                }
                            case 58:
                                g0 g0Var = this.f62003g;
                                g0.b builder4 = g0Var != null ? g0Var.toBuilder() : null;
                                g0 g0Var2 = (g0) codedInputStream.readMessage(g0.parser(), extensionRegistryLite);
                                this.f62003g = g0Var2;
                                if (builder4 != null) {
                                    builder4.mergeFrom((g0.b) g0Var2);
                                    this.f62003g = builder4.buildPartial();
                                } else {
                                    continue;
                                }
                            case 66:
                                x xVar = this.f62004h;
                                x.b builder5 = xVar != null ? xVar.toBuilder() : null;
                                x xVar2 = (x) codedInputStream.readMessage(x.parser(), extensionRegistryLite);
                                this.f62004h = xVar2;
                                if (builder5 != null) {
                                    builder5.mergeFrom((x.b) xVar2);
                                    this.f62004h = builder5.buildPartial();
                                } else {
                                    continue;
                                }
                            case 74:
                                v vVar = this.f62005i;
                                v.b builder6 = vVar != null ? vVar.toBuilder() : null;
                                v vVar2 = (v) codedInputStream.readMessage(v.parser(), extensionRegistryLite);
                                this.f62005i = vVar2;
                                if (builder6 != null) {
                                    builder6.mergeFrom((v.b) vVar2);
                                    this.f62005i = builder6.buildPartial();
                                } else {
                                    continue;
                                }
                            case 82:
                                l0 l0Var = this.f62006j;
                                l0.b builder7 = l0Var != null ? l0Var.toBuilder() : null;
                                l0 l0Var2 = (l0) codedInputStream.readMessage(l0.parser(), extensionRegistryLite);
                                this.f62006j = l0Var2;
                                if (builder7 != null) {
                                    builder7.mergeFrom((l0.b) l0Var2);
                                    this.f62006j = builder7.buildPartial();
                                } else {
                                    continue;
                                }
                            case 90:
                                g gVar = this.f62007k;
                                g.b builder8 = gVar != null ? gVar.toBuilder() : null;
                                g gVar2 = (g) codedInputStream.readMessage(g.parser(), extensionRegistryLite);
                                this.f62007k = gVar2;
                                if (builder8 != null) {
                                    builder8.mergeFrom((g.b) gVar2);
                                    this.f62007k = builder8.buildPartial();
                                } else {
                                    continue;
                                }
                            case 98:
                                m mVar = this.f62008l;
                                m.b builder9 = mVar != null ? mVar.toBuilder() : null;
                                m mVar2 = (m) codedInputStream.readMessage(m.parser(), extensionRegistryLite);
                                this.f62008l = mVar2;
                                if (builder9 != null) {
                                    builder9.mergeFrom((m.b) mVar2);
                                    this.f62008l = builder9.buildPartial();
                                } else {
                                    continue;
                                }
                            case 106:
                                FriendAddReqNotification friendAddReqNotification = this.f62009m;
                                FriendAddReqNotification.b builder10 = friendAddReqNotification != null ? friendAddReqNotification.toBuilder() : null;
                                FriendAddReqNotification friendAddReqNotification2 = (FriendAddReqNotification) codedInputStream.readMessage(FriendAddReqNotification.parser(), extensionRegistryLite);
                                this.f62009m = friendAddReqNotification2;
                                if (builder10 != null) {
                                    builder10.mergeFrom((FriendAddReqNotification.b) friendAddReqNotification2);
                                    this.f62009m = builder10.buildPartial();
                                } else {
                                    continue;
                                }
                            case 114:
                                n0 n0Var = this.f62010n;
                                n0.b builder11 = n0Var != null ? n0Var.toBuilder() : null;
                                n0 n0Var2 = (n0) codedInputStream.readMessage(n0.parser(), extensionRegistryLite);
                                this.f62010n = n0Var2;
                                if (builder11 != null) {
                                    builder11.mergeFrom((n0.b) n0Var2);
                                    this.f62010n = builder11.buildPartial();
                                } else {
                                    continue;
                                }
                            case 122:
                                t tVar = this.f62011o;
                                t.b builder12 = tVar != null ? tVar.toBuilder() : null;
                                t tVar2 = (t) codedInputStream.readMessage(t.parser(), extensionRegistryLite);
                                this.f62011o = tVar2;
                                if (builder12 != null) {
                                    builder12.mergeFrom((t.b) tVar2);
                                    this.f62011o = builder12.buildPartial();
                                } else {
                                    continue;
                                }
                            case 130:
                                q1 q1Var = this.f62012p;
                                q1.b builder13 = q1Var != null ? q1Var.toBuilder() : null;
                                q1 q1Var2 = (q1) codedInputStream.readMessage(q1.parser(), extensionRegistryLite);
                                this.f62012p = q1Var2;
                                if (builder13 != null) {
                                    builder13.mergeFrom((q1.b) q1Var2);
                                    this.f62012p = builder13.buildPartial();
                                } else {
                                    continue;
                                }
                            case 138:
                                e eVar = this.f62013q;
                                e.b builder14 = eVar != null ? eVar.toBuilder() : null;
                                e eVar2 = (e) codedInputStream.readMessage(e.parser(), extensionRegistryLite);
                                this.f62013q = eVar2;
                                if (builder14 != null) {
                                    builder14.mergeFrom((e.b) eVar2);
                                    this.f62013q = builder14.buildPartial();
                                } else {
                                    continue;
                                }
                            case 146:
                                o1 o1Var = this.f62014r;
                                o1.b builder15 = o1Var != null ? o1Var.toBuilder() : null;
                                o1 o1Var2 = (o1) codedInputStream.readMessage(o1.parser(), extensionRegistryLite);
                                this.f62014r = o1Var2;
                                if (builder15 != null) {
                                    builder15.mergeFrom((o1.b) o1Var2);
                                    this.f62014r = builder15.buildPartial();
                                } else {
                                    continue;
                                }
                            case 154:
                                z zVar = this.f62015s;
                                z.b builder16 = zVar != null ? zVar.toBuilder() : null;
                                z zVar2 = (z) codedInputStream.readMessage(z.parser(), extensionRegistryLite);
                                this.f62015s = zVar2;
                                if (builder16 != null) {
                                    builder16.mergeFrom((z.b) zVar2);
                                    this.f62015s = builder16.buildPartial();
                                } else {
                                    continue;
                                }
                            case 162:
                                f1 f1Var = this.f62016t;
                                f1.b builder17 = f1Var != null ? f1Var.toBuilder() : null;
                                f1 f1Var2 = (f1) codedInputStream.readMessage(f1.parser(), extensionRegistryLite);
                                this.f62016t = f1Var2;
                                if (builder17 != null) {
                                    builder17.mergeFrom((f1.b) f1Var2);
                                    this.f62016t = builder17.buildPartial();
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
                if (f61990r0 == null) {
                    synchronized (y0.class) {
                        if (f61990r0 == null) {
                            f61990r0 = new GeneratedMessageLite.DefaultInstanceBasedParser(f61989q0);
                        }
                    }
                }
                return f61990r0;
            default:
                throw new UnsupportedOperationException();
        }
        return f61989q0;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public z e2() {
        z zVar = this.f62015s;
        return zVar == null ? z.W2() : zVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean f2() {
        return this.f62005i != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public g0 g1() {
        g0 g0Var = this.f62003g;
        return g0Var == null ? g0.y3() : g0Var;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean g2() {
        return this.f62003g != null;
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        long j4 = this.f61997a;
        int computeInt64Size = j4 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j4) : 0;
        long j5 = this.f61998b;
        if (j5 != 0) {
            computeInt64Size += CodedOutputStream.computeInt64Size(2, j5);
        }
        boolean z3 = this.f61999c;
        if (z3) {
            computeInt64Size += CodedOutputStream.computeBoolSize(3, z3);
        }
        if (this.f62000d != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(4, U());
        }
        if (this.f62001e != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(5, R());
        }
        if (this.f62002f != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(6, h2());
        }
        if (this.f62003g != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(7, g1());
        }
        if (this.f62004h != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(8, k2());
        }
        if (this.f62005i != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(9, K0());
        }
        if (this.f62006j != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(10, Y1());
        }
        if (this.f62007k != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(11, t0());
        }
        if (this.f62008l != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(12, r0());
        }
        if (this.f62009m != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(13, u1());
        }
        if (this.f62010n != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(14, a2());
        }
        if (this.f62011o != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(15, b1());
        }
        if (this.f62012p != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(16, K1());
        }
        if (this.f62013q != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(17, X1());
        }
        if (this.f62014r != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(18, p1());
        }
        if (this.f62015s != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(19, e2());
        }
        if (this.f62016t != null) {
            computeInt64Size += CodedOutputStream.computeMessageSize(20, O0());
        }
        this.memoizedSerializedSize = computeInt64Size;
        return computeInt64Size;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public h1 h2() {
        h1 h1Var = this.f62002f;
        return h1Var == null ? h1.T2() : h1Var;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public x k2() {
        x xVar = this.f62004h;
        return xVar == null ? x.g3() : xVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean l1() {
        return this.f61999c;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean m2() {
        return this.f62000d != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public o1 p1() {
        o1 o1Var = this.f62014r;
        return o1Var == null ? o1.g3() : o1Var;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean q1() {
        return this.f62011o != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean q2() {
        return this.f62004h != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public m r0() {
        m mVar = this.f62008l;
        return mVar == null ? m.d3() : mVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean s2() {
        return this.f62015s != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public g t0() {
        g gVar = this.f62007k;
        return gVar == null ? g.m3() : gVar;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public boolean t2() {
        return this.f62010n != null;
    }

    @Override // com.wufan.friend.chat.protocol.z0
    public FriendAddReqNotification u1() {
        FriendAddReqNotification friendAddReqNotification = this.f62009m;
        return friendAddReqNotification == null ? FriendAddReqNotification.b3() : friendAddReqNotification;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j4 = this.f61997a;
        if (j4 != 0) {
            codedOutputStream.writeInt64(1, j4);
        }
        long j5 = this.f61998b;
        if (j5 != 0) {
            codedOutputStream.writeInt64(2, j5);
        }
        boolean z3 = this.f61999c;
        if (z3) {
            codedOutputStream.writeBool(3, z3);
        }
        if (this.f62000d != null) {
            codedOutputStream.writeMessage(4, U());
        }
        if (this.f62001e != null) {
            codedOutputStream.writeMessage(5, R());
        }
        if (this.f62002f != null) {
            codedOutputStream.writeMessage(6, h2());
        }
        if (this.f62003g != null) {
            codedOutputStream.writeMessage(7, g1());
        }
        if (this.f62004h != null) {
            codedOutputStream.writeMessage(8, k2());
        }
        if (this.f62005i != null) {
            codedOutputStream.writeMessage(9, K0());
        }
        if (this.f62006j != null) {
            codedOutputStream.writeMessage(10, Y1());
        }
        if (this.f62007k != null) {
            codedOutputStream.writeMessage(11, t0());
        }
        if (this.f62008l != null) {
            codedOutputStream.writeMessage(12, r0());
        }
        if (this.f62009m != null) {
            codedOutputStream.writeMessage(13, u1());
        }
        if (this.f62010n != null) {
            codedOutputStream.writeMessage(14, a2());
        }
        if (this.f62011o != null) {
            codedOutputStream.writeMessage(15, b1());
        }
        if (this.f62012p != null) {
            codedOutputStream.writeMessage(16, K1());
        }
        if (this.f62013q != null) {
            codedOutputStream.writeMessage(17, X1());
        }
        if (this.f62014r != null) {
            codedOutputStream.writeMessage(18, p1());
        }
        if (this.f62015s != null) {
            codedOutputStream.writeMessage(19, e2());
        }
        if (this.f62016t != null) {
            codedOutputStream.writeMessage(20, O0());
        }
    }
}
