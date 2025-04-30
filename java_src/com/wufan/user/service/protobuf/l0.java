package com.wufan.user.service.protobuf;

import com.android.dx.io.Opcodes;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.wufan.user.service.protobuf.d;
import com.wufan.user.service.protobuf.h;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* compiled from: UserInfo.java */
/* loaded from: classes2.dex */
public final class l0 extends GeneratedMessageLite<l0, b> implements m0 {
    public static final int A0 = 19;
    public static final int B0 = 20;
    public static final int C0 = 21;
    public static final int D0 = 22;
    public static final int E0 = 23;
    public static final int F = 1;
    public static final int F0 = 24;
    public static final int G = 2;
    public static final int G0 = 25;
    public static final int H = 29;
    public static final int H0 = 26;
    public static final int I = 3;
    public static final int I0 = 27;
    public static final int J = 4;
    public static final int J0 = 28;
    public static final int K = 5;
    public static final int K0 = 30;
    private static final l0 L0;
    private static volatile Parser<l0> M0 = null;

    /* renamed from: n0  reason: collision with root package name */
    public static final int f62148n0 = 6;

    /* renamed from: o0  reason: collision with root package name */
    public static final int f62149o0 = 7;

    /* renamed from: p0  reason: collision with root package name */
    public static final int f62150p0 = 8;

    /* renamed from: q0  reason: collision with root package name */
    public static final int f62151q0 = 9;

    /* renamed from: r0  reason: collision with root package name */
    public static final int f62152r0 = 10;

    /* renamed from: s0  reason: collision with root package name */
    public static final int f62153s0 = 11;

    /* renamed from: t0  reason: collision with root package name */
    public static final int f62154t0 = 12;

    /* renamed from: u0  reason: collision with root package name */
    public static final int f62155u0 = 13;

    /* renamed from: v0  reason: collision with root package name */
    public static final int f62156v0 = 14;

    /* renamed from: w0  reason: collision with root package name */
    public static final int f62157w0 = 15;

    /* renamed from: x0  reason: collision with root package name */
    public static final int f62158x0 = 16;

    /* renamed from: y0  reason: collision with root package name */
    public static final int f62159y0 = 17;

    /* renamed from: z0  reason: collision with root package name */
    public static final int f62160z0 = 18;
    private int A;
    private long E;

    /* renamed from: a  reason: collision with root package name */
    private int f62161a;

    /* renamed from: b  reason: collision with root package name */
    private int f62162b;

    /* renamed from: e  reason: collision with root package name */
    private int f62165e;

    /* renamed from: f  reason: collision with root package name */
    private long f62166f;

    /* renamed from: g  reason: collision with root package name */
    private long f62167g;

    /* renamed from: i  reason: collision with root package name */
    private int f62169i;

    /* renamed from: j  reason: collision with root package name */
    private int f62170j;

    /* renamed from: k  reason: collision with root package name */
    private int f62171k;

    /* renamed from: m  reason: collision with root package name */
    private int f62173m;

    /* renamed from: o  reason: collision with root package name */
    private int f62175o;

    /* renamed from: p  reason: collision with root package name */
    private int f62176p;

    /* renamed from: q  reason: collision with root package name */
    private int f62177q;

    /* renamed from: r  reason: collision with root package name */
    private long f62178r;

    /* renamed from: s  reason: collision with root package name */
    private int f62179s;

    /* renamed from: t  reason: collision with root package name */
    private int f62180t;

    /* renamed from: u  reason: collision with root package name */
    private h f62181u;

    /* renamed from: v  reason: collision with root package name */
    private int f62182v;

    /* renamed from: x  reason: collision with root package name */
    private int f62184x;

    /* renamed from: y  reason: collision with root package name */
    private int f62185y;

    /* renamed from: z  reason: collision with root package name */
    private int f62186z;

    /* renamed from: c  reason: collision with root package name */
    private String f62163c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f62164d = "";

    /* renamed from: h  reason: collision with root package name */
    private String f62168h = "";

    /* renamed from: l  reason: collision with root package name */
    private String f62172l = "";

    /* renamed from: n  reason: collision with root package name */
    private String f62174n = "";

    /* renamed from: w  reason: collision with root package name */
    private String f62183w = "";
    private String B = "";
    private String C = "";
    private Internal.ProtobufList<d> D = GeneratedMessageLite.emptyProtobufList();

    /* compiled from: UserInfo.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62187a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f62187a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62187a[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62187a[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62187a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62187a[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62187a[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62187a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62187a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: UserInfo.java */
    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageLite.Builder<l0, b> implements m0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        public b A3() {
            copyOnWrite();
            ((l0) this.instance).W4();
            return this;
        }

        public b B3(h hVar) {
            copyOnWrite();
            ((l0) this.instance).b5(hVar);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public String C() {
            return ((l0) this.instance).C();
        }

        public b C3(int i2) {
            copyOnWrite();
            ((l0) this.instance).o5(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int D0() {
            return ((l0) this.instance).D0();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int D1() {
            return ((l0) this.instance).D1();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public h D2() {
            return ((l0) this.instance).D2();
        }

        public b D3(String str) {
            copyOnWrite();
            ((l0) this.instance).p5(str);
            return this;
        }

        public b E3(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).q5(byteString);
            return this;
        }

        public b F3(int i2) {
            copyOnWrite();
            ((l0) this.instance).r5(i2);
            return this;
        }

        public b G3(String str) {
            copyOnWrite();
            ((l0) this.instance).s5(str);
            return this;
        }

        public b H3(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).t5(byteString);
            return this;
        }

        public b I3(String str) {
            copyOnWrite();
            ((l0) this.instance).u5(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int J() {
            return ((l0) this.instance).J();
        }

        public b J3(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).v5(byteString);
            return this;
        }

        public b K3(int i2) {
            copyOnWrite();
            ((l0) this.instance).w5(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int L2() {
            return ((l0) this.instance).L2();
        }

        public b L3(int i2, d.b bVar) {
            copyOnWrite();
            ((l0) this.instance).x5(i2, bVar);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public long M1() {
            return ((l0) this.instance).M1();
        }

        public b M3(int i2, d dVar) {
            copyOnWrite();
            ((l0) this.instance).y5(i2, dVar);
            return this;
        }

        public b N3(int i2) {
            copyOnWrite();
            ((l0) this.instance).z5(i2);
            return this;
        }

        public b O3(int i2) {
            copyOnWrite();
            ((l0) this.instance).A5(i2);
            return this;
        }

        public b P3(int i2) {
            copyOnWrite();
            ((l0) this.instance).B5(i2);
            return this;
        }

        public b Q3(int i2) {
            copyOnWrite();
            ((l0) this.instance).C5(i2);
            return this;
        }

        public b R3(int i2) {
            copyOnWrite();
            ((l0) this.instance).D5(i2);
            return this;
        }

        public b S2(Iterable<? extends d> iterable) {
            copyOnWrite();
            ((l0) this.instance).s4(iterable);
            return this;
        }

        public b S3(int i2) {
            copyOnWrite();
            ((l0) this.instance).E5(i2);
            return this;
        }

        public b T2(int i2, d.b bVar) {
            copyOnWrite();
            ((l0) this.instance).t4(i2, bVar);
            return this;
        }

        public b T3(int i2) {
            copyOnWrite();
            ((l0) this.instance).F5(i2);
            return this;
        }

        public b U2(int i2, d dVar) {
            copyOnWrite();
            ((l0) this.instance).u4(i2, dVar);
            return this;
        }

        public b U3(int i2) {
            copyOnWrite();
            ((l0) this.instance).G5(i2);
            return this;
        }

        public b V2(d.b bVar) {
            copyOnWrite();
            ((l0) this.instance).v4(bVar);
            return this;
        }

        public b V3(long j4) {
            copyOnWrite();
            ((l0) this.instance).H5(j4);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int W0() {
            return ((l0) this.instance).W0();
        }

        public b W2(d dVar) {
            copyOnWrite();
            ((l0) this.instance).w4(dVar);
            return this;
        }

        public b W3(h.b bVar) {
            copyOnWrite();
            ((l0) this.instance).I5(bVar);
            return this;
        }

        public b X2() {
            copyOnWrite();
            ((l0) this.instance).clearAccount();
            return this;
        }

        public b X3(h hVar) {
            copyOnWrite();
            ((l0) this.instance).J5(hVar);
            return this;
        }

        public b Y2() {
            copyOnWrite();
            ((l0) this.instance).x4();
            return this;
        }

        public b Y3(String str) {
            copyOnWrite();
            ((l0) this.instance).K5(str);
            return this;
        }

        public b Z2() {
            copyOnWrite();
            ((l0) this.instance).y4();
            return this;
        }

        public b Z3(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).L5(byteString);
            return this;
        }

        public b a3() {
            copyOnWrite();
            ((l0) this.instance).z4();
            return this;
        }

        public b a4(String str) {
            copyOnWrite();
            ((l0) this.instance).setNickname(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int b0() {
            return ((l0) this.instance).b0();
        }

        public b b3() {
            copyOnWrite();
            ((l0) this.instance).A4();
            return this;
        }

        public b b4(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).setNicknameBytes(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public String c0() {
            return ((l0) this.instance).c0();
        }

        public b c3() {
            copyOnWrite();
            ((l0) this.instance).B4();
            return this;
        }

        public b c4(long j4) {
            copyOnWrite();
            ((l0) this.instance).M5(j4);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public ByteString d0() {
            return ((l0) this.instance).d0();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public ByteString d2() {
            return ((l0) this.instance).d2();
        }

        public b d3() {
            copyOnWrite();
            ((l0) this.instance).C4();
            return this;
        }

        public b d4(String str) {
            copyOnWrite();
            ((l0) this.instance).N5(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public List<d> e0() {
            return Collections.unmodifiableList(((l0) this.instance).e0());
        }

        public b e3() {
            copyOnWrite();
            ((l0) this.instance).D4();
            return this;
        }

        public b e4(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).O5(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int f0() {
            return ((l0) this.instance).f0();
        }

        public b f3() {
            copyOnWrite();
            ((l0) this.instance).E4();
            return this;
        }

        public b f4(int i2) {
            copyOnWrite();
            ((l0) this.instance).P5(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public long g0() {
            return ((l0) this.instance).g0();
        }

        public b g3() {
            copyOnWrite();
            ((l0) this.instance).F4();
            return this;
        }

        public b g4(long j4) {
            copyOnWrite();
            ((l0) this.instance).Q5(j4);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public String getAccount() {
            return ((l0) this.instance).getAccount();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public String getNickname() {
            return ((l0) this.instance).getNickname();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public ByteString getNicknameBytes() {
            return ((l0) this.instance).getNicknameBytes();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public String getToken() {
            return ((l0) this.instance).getToken();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public ByteString getTokenBytes() {
            return ((l0) this.instance).getTokenBytes();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int getUid() {
            return ((l0) this.instance).getUid();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int h() {
            return ((l0) this.instance).h();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int h1() {
            return ((l0) this.instance).h1();
        }

        public b h3() {
            copyOnWrite();
            ((l0) this.instance).G4();
            return this;
        }

        public b h4(int i2) {
            copyOnWrite();
            ((l0) this.instance).R5(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public String i1() {
            return ((l0) this.instance).i1();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int i2() {
            return ((l0) this.instance).i2();
        }

        public b i3() {
            copyOnWrite();
            ((l0) this.instance).H4();
            return this;
        }

        public b i4(String str) {
            copyOnWrite();
            ((l0) this.instance).S5(str);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int j2() {
            return ((l0) this.instance).j2();
        }

        public b j3() {
            copyOnWrite();
            ((l0) this.instance).I4();
            return this;
        }

        public b j4(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).T5(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public ByteString k() {
            return ((l0) this.instance).k();
        }

        public b k3() {
            copyOnWrite();
            ((l0) this.instance).J4();
            return this;
        }

        public b k4(int i2) {
            copyOnWrite();
            ((l0) this.instance).U5(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int l2() {
            return ((l0) this.instance).l2();
        }

        public b l3() {
            copyOnWrite();
            ((l0) this.instance).K4();
            return this;
        }

        public b l4(String str) {
            copyOnWrite();
            ((l0) this.instance).setToken(str);
            return this;
        }

        public b m3() {
            copyOnWrite();
            ((l0) this.instance).L4();
            return this;
        }

        public b m4(ByteString byteString) {
            copyOnWrite();
            ((l0) this.instance).setTokenBytes(byteString);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public d n0(int i2) {
            return ((l0) this.instance).n0(i2);
        }

        public b n3() {
            copyOnWrite();
            ((l0) this.instance).M4();
            return this;
        }

        public b n4(int i2) {
            copyOnWrite();
            ((l0) this.instance).setUid(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public long o2() {
            return ((l0) this.instance).o2();
        }

        public b o3() {
            copyOnWrite();
            ((l0) this.instance).clearNickname();
            return this;
        }

        public b o4(long j4) {
            copyOnWrite();
            ((l0) this.instance).V5(j4);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public boolean p2() {
            return ((l0) this.instance).p2();
        }

        public b p3() {
            copyOnWrite();
            ((l0) this.instance).N4();
            return this;
        }

        public b p4(int i2) {
            copyOnWrite();
            ((l0) this.instance).W5(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public ByteString q() {
            return ((l0) this.instance).q();
        }

        public b q3() {
            copyOnWrite();
            ((l0) this.instance).O4();
            return this;
        }

        public b q4(int i2) {
            copyOnWrite();
            ((l0) this.instance).X5(i2);
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public long r() {
            return ((l0) this.instance).r();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int r2() {
            return ((l0) this.instance).r2();
        }

        public b r3() {
            copyOnWrite();
            ((l0) this.instance).P4();
            return this;
        }

        public b s3() {
            copyOnWrite();
            ((l0) this.instance).Q4();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public String t() {
            return ((l0) this.instance).t();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int t1() {
            return ((l0) this.instance).t1();
        }

        public b t3() {
            copyOnWrite();
            ((l0) this.instance).R4();
            return this;
        }

        public b u3() {
            copyOnWrite();
            ((l0) this.instance).S4();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int v2() {
            return ((l0) this.instance).v2();
        }

        public b v3() {
            copyOnWrite();
            ((l0) this.instance).T4();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public ByteString w() {
            return ((l0) this.instance).w();
        }

        public b w3() {
            copyOnWrite();
            ((l0) this.instance).clearToken();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public String x0() {
            return ((l0) this.instance).x0();
        }

        public b x3() {
            copyOnWrite();
            ((l0) this.instance).clearUid();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.m0
        public int y0() {
            return ((l0) this.instance).y0();
        }

        @Override // com.wufan.user.service.protobuf.m0
        public ByteString y1() {
            return ((l0) this.instance).y1();
        }

        public b y3() {
            copyOnWrite();
            ((l0) this.instance).U4();
            return this;
        }

        public b z3() {
            copyOnWrite();
            ((l0) this.instance).V4();
            return this;
        }

        private b() {
            super(l0.L0);
        }
    }

    static {
        l0 l0Var = new l0();
        L0 = l0Var;
        l0Var.makeImmutable();
    }

    private l0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A4() {
        this.f62171k = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A5(int i2) {
        this.f62180t = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B4() {
        this.D = GeneratedMessageLite.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B5(int i2) {
        this.f62186z = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C4() {
        this.f62169i = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C5(int i2) {
        this.f62184x = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D4() {
        this.f62180t = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D5(int i2) {
        this.f62185y = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E4() {
        this.f62186z = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E5(int i2) {
        this.f62182v = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F4() {
        this.f62184x = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F5(int i2) {
        this.f62170j = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G4() {
        this.f62185y = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G5(int i2) {
        this.f62179s = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H4() {
        this.f62182v = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H5(long j4) {
        this.E = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I4() {
        this.f62170j = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I5(h.b bVar) {
        this.f62181u = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J4() {
        this.f62179s = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J5(h hVar) {
        Objects.requireNonNull(hVar);
        this.f62181u = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K4() {
        this.E = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K5(String str) {
        Objects.requireNonNull(str);
        this.f62172l = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L4() {
        this.f62181u = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L5(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62172l = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M4() {
        this.f62172l = Y4().t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M5(long j4) {
        this.f62166f = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N4() {
        this.f62166f = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N5(String str) {
        Objects.requireNonNull(str);
        this.f62183w = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O4() {
        this.f62183w = Y4().x0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O5(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62183w = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P4() {
        this.f62165e = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P5(int i2) {
        this.f62165e = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q4() {
        this.f62167g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q5(long j4) {
        this.f62167g = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R4() {
        this.f62177q = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R5(int i2) {
        this.f62177q = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S4() {
        this.C = Y4().C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S5(String str) {
        Objects.requireNonNull(str);
        this.C = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T4() {
        this.f62173m = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T5(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.C = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U4() {
        this.f62178r = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U5(int i2) {
        this.f62173m = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V4() {
        this.A = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V5(long j4) {
        this.f62178r = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W4() {
        this.f62176p = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W5(int i2) {
        this.A = i2;
    }

    private void X4() {
        if (this.D.isModifiable()) {
            return;
        }
        this.D = GeneratedMessageLite.mutableCopy(this.D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X5(int i2) {
        this.f62176p = i2;
    }

    public static l0 Y4() {
        return L0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b5(h hVar) {
        h hVar2 = this.f62181u;
        if (hVar2 != null && hVar2 != h.c3()) {
            this.f62181u = h.e3(this.f62181u).mergeFrom((h.b) hVar).buildPartial();
        } else {
            this.f62181u = hVar;
        }
    }

    public static b c5() {
        return L0.toBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAccount() {
        this.f62163c = Y4().getAccount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNickname() {
        this.f62164d = Y4().getNickname();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearToken() {
        this.B = Y4().getToken();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUid() {
        this.f62162b = 0;
    }

    public static b d5(l0 l0Var) {
        return L0.toBuilder().mergeFrom((b) l0Var);
    }

    public static l0 e5(InputStream inputStream) throws IOException {
        return (l0) GeneratedMessageLite.parseDelimitedFrom(L0, inputStream);
    }

    public static l0 f5(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l0) GeneratedMessageLite.parseDelimitedFrom(L0, inputStream, extensionRegistryLite);
    }

    public static l0 g5(ByteString byteString) throws InvalidProtocolBufferException {
        return (l0) GeneratedMessageLite.parseFrom(L0, byteString);
    }

    public static l0 h5(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (l0) GeneratedMessageLite.parseFrom(L0, byteString, extensionRegistryLite);
    }

    public static l0 i5(CodedInputStream codedInputStream) throws IOException {
        return (l0) GeneratedMessageLite.parseFrom(L0, codedInputStream);
    }

    public static l0 j5(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l0) GeneratedMessageLite.parseFrom(L0, codedInputStream, extensionRegistryLite);
    }

    public static l0 k5(InputStream inputStream) throws IOException {
        return (l0) GeneratedMessageLite.parseFrom(L0, inputStream);
    }

    public static l0 l5(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (l0) GeneratedMessageLite.parseFrom(L0, inputStream, extensionRegistryLite);
    }

    public static l0 m5(byte[] bArr) throws InvalidProtocolBufferException {
        return (l0) GeneratedMessageLite.parseFrom(L0, bArr);
    }

    public static l0 n5(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (l0) GeneratedMessageLite.parseFrom(L0, bArr, extensionRegistryLite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o5(int i2) {
        X4();
        this.D.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p5(String str) {
        Objects.requireNonNull(str);
        this.f62163c = str;
    }

    public static Parser<l0> parser() {
        return L0.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q5(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62163c = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r5(int i2) {
        this.f62175o = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s4(Iterable<? extends d> iterable) {
        X4();
        AbstractMessageLite.addAll(iterable, this.D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s5(String str) {
        Objects.requireNonNull(str);
        this.f62174n = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNickname(String str) {
        Objects.requireNonNull(str);
        this.f62164d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNicknameBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62164d = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setToken(String str) {
        Objects.requireNonNull(str);
        this.B = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTokenBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.B = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUid(int i2) {
        this.f62162b = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t4(int i2, d.b bVar) {
        X4();
        this.D.add(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t5(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62174n = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u4(int i2, d dVar) {
        Objects.requireNonNull(dVar);
        X4();
        this.D.add(i2, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u5(String str) {
        Objects.requireNonNull(str);
        this.f62168h = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v4(d.b bVar) {
        X4();
        this.D.add(bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v5(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.f62168h = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w4(d dVar) {
        Objects.requireNonNull(dVar);
        X4();
        this.D.add(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w5(int i2) {
        this.f62171k = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x4() {
        this.f62175o = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x5(int i2, d.b bVar) {
        X4();
        this.D.set(i2, bVar.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y4() {
        this.f62174n = Y4().i1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y5(int i2, d dVar) {
        Objects.requireNonNull(dVar);
        X4();
        this.D.set(i2, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z4() {
        this.f62168h = Y4().c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z5(int i2) {
        this.f62169i = i2;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public String C() {
        return this.C;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int D0() {
        return this.f62182v;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int D1() {
        return this.f62185y;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public h D2() {
        h hVar = this.f62181u;
        return hVar == null ? h.c3() : hVar;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int J() {
        return this.f62176p;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int L2() {
        return this.f62180t;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public long M1() {
        return this.f62166f;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int W0() {
        return this.f62171k;
    }

    public e Z4(int i2) {
        return this.D.get(i2);
    }

    public List<? extends e> a5() {
        return this.D;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int b0() {
        return this.D.size();
    }

    @Override // com.wufan.user.service.protobuf.m0
    public String c0() {
        return this.f62168h;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public ByteString d0() {
        return ByteString.copyFromUtf8(this.f62183w);
    }

    @Override // com.wufan.user.service.protobuf.m0
    public ByteString d2() {
        return ByteString.copyFromUtf8(this.f62174n);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        boolean z3 = false;
        switch (a.f62187a[methodToInvoke.ordinal()]) {
            case 1:
                return new l0();
            case 2:
                return L0;
            case 3:
                this.D.makeImmutable();
                return null;
            case 4:
                return new b(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                l0 l0Var = (l0) obj2;
                int i2 = this.f62162b;
                boolean z4 = i2 != 0;
                int i4 = l0Var.f62162b;
                this.f62162b = visitor.visitInt(z4, i2, i4 != 0, i4);
                this.f62163c = visitor.visitString(!this.f62163c.isEmpty(), this.f62163c, !l0Var.f62163c.isEmpty(), l0Var.f62163c);
                this.f62164d = visitor.visitString(!this.f62164d.isEmpty(), this.f62164d, !l0Var.f62164d.isEmpty(), l0Var.f62164d);
                int i5 = this.f62165e;
                boolean z5 = i5 != 0;
                int i6 = l0Var.f62165e;
                this.f62165e = visitor.visitInt(z5, i5, i6 != 0, i6);
                long j4 = this.f62166f;
                boolean z6 = j4 != 0;
                long j5 = l0Var.f62166f;
                this.f62166f = visitor.visitLong(z6, j4, j5 != 0, j5);
                long j6 = this.f62167g;
                boolean z7 = j6 != 0;
                long j7 = l0Var.f62167g;
                this.f62167g = visitor.visitLong(z7, j6, j7 != 0, j7);
                this.f62168h = visitor.visitString(!this.f62168h.isEmpty(), this.f62168h, !l0Var.f62168h.isEmpty(), l0Var.f62168h);
                int i7 = this.f62169i;
                boolean z8 = i7 != 0;
                int i8 = l0Var.f62169i;
                this.f62169i = visitor.visitInt(z8, i7, i8 != 0, i8);
                int i9 = this.f62170j;
                boolean z9 = i9 != 0;
                int i10 = l0Var.f62170j;
                this.f62170j = visitor.visitInt(z9, i9, i10 != 0, i10);
                int i11 = this.f62171k;
                boolean z10 = i11 != 0;
                int i12 = l0Var.f62171k;
                this.f62171k = visitor.visitInt(z10, i11, i12 != 0, i12);
                this.f62172l = visitor.visitString(!this.f62172l.isEmpty(), this.f62172l, !l0Var.f62172l.isEmpty(), l0Var.f62172l);
                int i13 = this.f62173m;
                boolean z11 = i13 != 0;
                int i14 = l0Var.f62173m;
                this.f62173m = visitor.visitInt(z11, i13, i14 != 0, i14);
                this.f62174n = visitor.visitString(!this.f62174n.isEmpty(), this.f62174n, !l0Var.f62174n.isEmpty(), l0Var.f62174n);
                int i15 = this.f62175o;
                boolean z12 = i15 != 0;
                int i16 = l0Var.f62175o;
                this.f62175o = visitor.visitInt(z12, i15, i16 != 0, i16);
                int i17 = this.f62176p;
                boolean z13 = i17 != 0;
                int i18 = l0Var.f62176p;
                this.f62176p = visitor.visitInt(z13, i17, i18 != 0, i18);
                int i19 = this.f62177q;
                boolean z14 = i19 != 0;
                int i20 = l0Var.f62177q;
                this.f62177q = visitor.visitInt(z14, i19, i20 != 0, i20);
                long j8 = this.f62178r;
                boolean z15 = j8 != 0;
                long j9 = l0Var.f62178r;
                this.f62178r = visitor.visitLong(z15, j8, j9 != 0, j9);
                int i21 = this.f62179s;
                boolean z16 = i21 != 0;
                int i22 = l0Var.f62179s;
                this.f62179s = visitor.visitInt(z16, i21, i22 != 0, i22);
                int i23 = this.f62180t;
                boolean z17 = i23 != 0;
                int i24 = l0Var.f62180t;
                this.f62180t = visitor.visitInt(z17, i23, i24 != 0, i24);
                this.f62181u = (h) visitor.visitMessage(this.f62181u, l0Var.f62181u);
                int i25 = this.f62182v;
                boolean z18 = i25 != 0;
                int i26 = l0Var.f62182v;
                this.f62182v = visitor.visitInt(z18, i25, i26 != 0, i26);
                this.f62183w = visitor.visitString(!this.f62183w.isEmpty(), this.f62183w, !l0Var.f62183w.isEmpty(), l0Var.f62183w);
                int i27 = this.f62184x;
                boolean z19 = i27 != 0;
                int i28 = l0Var.f62184x;
                this.f62184x = visitor.visitInt(z19, i27, i28 != 0, i28);
                int i29 = this.f62185y;
                boolean z20 = i29 != 0;
                int i30 = l0Var.f62185y;
                this.f62185y = visitor.visitInt(z20, i29, i30 != 0, i30);
                int i31 = this.f62186z;
                boolean z21 = i31 != 0;
                int i32 = l0Var.f62186z;
                this.f62186z = visitor.visitInt(z21, i31, i32 != 0, i32);
                int i33 = this.A;
                boolean z22 = i33 != 0;
                int i34 = l0Var.A;
                this.A = visitor.visitInt(z22, i33, i34 != 0, i34);
                this.B = visitor.visitString(!this.B.isEmpty(), this.B, !l0Var.B.isEmpty(), l0Var.B);
                this.C = visitor.visitString(!this.C.isEmpty(), this.C, !l0Var.C.isEmpty(), l0Var.C);
                this.D = visitor.visitList(this.D, l0Var.D);
                long j10 = this.E;
                boolean z23 = j10 != 0;
                long j11 = l0Var.E;
                this.E = visitor.visitLong(z23, j10, j11 != 0, j11);
                if (visitor == GeneratedMessageLite.MergeFromVisitor.INSTANCE) {
                    this.f62161a |= l0Var.f62161a;
                }
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
                                this.f62162b = codedInputStream.readInt32();
                                continue;
                            case 18:
                                this.f62163c = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 24:
                                this.f62165e = codedInputStream.readInt32();
                                continue;
                            case 32:
                                this.f62166f = codedInputStream.readInt64();
                                continue;
                            case 40:
                                this.f62167g = codedInputStream.readInt64();
                                continue;
                            case 50:
                                this.f62168h = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 56:
                                this.f62169i = codedInputStream.readInt32();
                                continue;
                            case 64:
                                this.f62170j = codedInputStream.readInt32();
                                continue;
                            case 72:
                                this.f62171k = codedInputStream.readInt32();
                                continue;
                            case 82:
                                this.f62172l = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 88:
                                this.f62173m = codedInputStream.readInt32();
                                continue;
                            case 98:
                                this.f62174n = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 104:
                                this.f62175o = codedInputStream.readInt32();
                                continue;
                            case 112:
                                this.f62176p = codedInputStream.readInt32();
                                continue;
                            case 120:
                                this.f62177q = codedInputStream.readInt32();
                                continue;
                            case 128:
                                this.f62178r = codedInputStream.readInt64();
                                continue;
                            case 136:
                                this.f62179s = codedInputStream.readInt32();
                                continue;
                            case 144:
                                this.f62180t = codedInputStream.readInt32();
                                continue;
                            case 154:
                                h hVar = this.f62181u;
                                h.b builder = hVar != null ? hVar.toBuilder() : null;
                                h hVar2 = (h) codedInputStream.readMessage(h.parser(), extensionRegistryLite);
                                this.f62181u = hVar2;
                                if (builder != null) {
                                    builder.mergeFrom((h.b) hVar2);
                                    this.f62181u = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 160:
                                this.f62182v = codedInputStream.readInt32();
                                continue;
                            case 170:
                                this.f62183w = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 176:
                                this.f62184x = codedInputStream.readInt32();
                                continue;
                            case 184:
                                this.f62185y = codedInputStream.readInt32();
                                continue;
                            case 192:
                                this.f62186z = codedInputStream.readInt32();
                                continue;
                            case 200:
                                this.A = codedInputStream.readInt32();
                                continue;
                            case 210:
                                this.B = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 218:
                                this.C = codedInputStream.readStringRequireUtf8();
                                continue;
                            case Opcodes.USHR_INT_LIT8 /* 226 */:
                                if (!this.D.isModifiable()) {
                                    this.D = GeneratedMessageLite.mutableCopy(this.D);
                                }
                                this.D.add((d) codedInputStream.readMessage(d.parser(), extensionRegistryLite));
                                continue;
                            case 234:
                                this.f62164d = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 240:
                                this.E = codedInputStream.readInt64();
                                continue;
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
                if (M0 == null) {
                    synchronized (l0.class) {
                        if (M0 == null) {
                            M0 = new GeneratedMessageLite.DefaultInstanceBasedParser(L0);
                        }
                    }
                }
                return M0;
            default:
                throw new UnsupportedOperationException();
        }
        return L0;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public List<d> e0() {
        return this.D;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int f0() {
        return this.A;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public long g0() {
        return this.E;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public String getAccount() {
        return this.f62163c;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public String getNickname() {
        return this.f62164d;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public ByteString getNicknameBytes() {
        return ByteString.copyFromUtf8(this.f62164d);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f62162b;
        int computeInt32Size = i4 != 0 ? CodedOutputStream.computeInt32Size(1, i4) + 0 : 0;
        if (!this.f62163c.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(2, getAccount());
        }
        int i5 = this.f62165e;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(3, i5);
        }
        long j4 = this.f62166f;
        if (j4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(4, j4);
        }
        long j5 = this.f62167g;
        if (j5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(5, j5);
        }
        if (!this.f62168h.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(6, c0());
        }
        int i6 = this.f62169i;
        if (i6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(7, i6);
        }
        int i7 = this.f62170j;
        if (i7 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(8, i7);
        }
        int i8 = this.f62171k;
        if (i8 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(9, i8);
        }
        if (!this.f62172l.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(10, t());
        }
        int i9 = this.f62173m;
        if (i9 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(11, i9);
        }
        if (!this.f62174n.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(12, i1());
        }
        int i10 = this.f62175o;
        if (i10 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(13, i10);
        }
        int i11 = this.f62176p;
        if (i11 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(14, i11);
        }
        int i12 = this.f62177q;
        if (i12 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(15, i12);
        }
        long j6 = this.f62178r;
        if (j6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(16, j6);
        }
        int i13 = this.f62179s;
        if (i13 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(17, i13);
        }
        int i14 = this.f62180t;
        if (i14 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(18, i14);
        }
        if (this.f62181u != null) {
            computeInt32Size += CodedOutputStream.computeMessageSize(19, D2());
        }
        int i15 = this.f62182v;
        if (i15 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(20, i15);
        }
        if (!this.f62183w.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(21, x0());
        }
        int i16 = this.f62184x;
        if (i16 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(22, i16);
        }
        int i17 = this.f62185y;
        if (i17 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(23, i17);
        }
        int i18 = this.f62186z;
        if (i18 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(24, i18);
        }
        int i19 = this.A;
        if (i19 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(25, i19);
        }
        if (!this.B.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(26, getToken());
        }
        if (!this.C.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(27, C());
        }
        for (int i20 = 0; i20 < this.D.size(); i20++) {
            computeInt32Size += CodedOutputStream.computeMessageSize(28, this.D.get(i20));
        }
        if (!this.f62164d.isEmpty()) {
            computeInt32Size += CodedOutputStream.computeStringSize(29, getNickname());
        }
        long j7 = this.E;
        if (j7 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(30, j7);
        }
        this.memoizedSerializedSize = computeInt32Size;
        return computeInt32Size;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public String getToken() {
        return this.B;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public ByteString getTokenBytes() {
        return ByteString.copyFromUtf8(this.B);
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int getUid() {
        return this.f62162b;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int h() {
        return this.f62170j;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int h1() {
        return this.f62177q;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public String i1() {
        return this.f62174n;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int i2() {
        return this.f62173m;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int j2() {
        return this.f62186z;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public ByteString k() {
        return ByteString.copyFromUtf8(this.f62163c);
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int l2() {
        return this.f62175o;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public d n0(int i2) {
        return this.D.get(i2);
    }

    @Override // com.wufan.user.service.protobuf.m0
    public long o2() {
        return this.f62167g;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public boolean p2() {
        return this.f62181u != null;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public ByteString q() {
        return ByteString.copyFromUtf8(this.f62172l);
    }

    @Override // com.wufan.user.service.protobuf.m0
    public long r() {
        return this.f62178r;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int r2() {
        return this.f62184x;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public String t() {
        return this.f62172l;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int t1() {
        return this.f62169i;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int v2() {
        return this.f62179s;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public ByteString w() {
        return ByteString.copyFromUtf8(this.C);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i2 = this.f62162b;
        if (i2 != 0) {
            codedOutputStream.writeInt32(1, i2);
        }
        if (!this.f62163c.isEmpty()) {
            codedOutputStream.writeString(2, getAccount());
        }
        int i4 = this.f62165e;
        if (i4 != 0) {
            codedOutputStream.writeInt32(3, i4);
        }
        long j4 = this.f62166f;
        if (j4 != 0) {
            codedOutputStream.writeInt64(4, j4);
        }
        long j5 = this.f62167g;
        if (j5 != 0) {
            codedOutputStream.writeInt64(5, j5);
        }
        if (!this.f62168h.isEmpty()) {
            codedOutputStream.writeString(6, c0());
        }
        int i5 = this.f62169i;
        if (i5 != 0) {
            codedOutputStream.writeInt32(7, i5);
        }
        int i6 = this.f62170j;
        if (i6 != 0) {
            codedOutputStream.writeInt32(8, i6);
        }
        int i7 = this.f62171k;
        if (i7 != 0) {
            codedOutputStream.writeInt32(9, i7);
        }
        if (!this.f62172l.isEmpty()) {
            codedOutputStream.writeString(10, t());
        }
        int i8 = this.f62173m;
        if (i8 != 0) {
            codedOutputStream.writeInt32(11, i8);
        }
        if (!this.f62174n.isEmpty()) {
            codedOutputStream.writeString(12, i1());
        }
        int i9 = this.f62175o;
        if (i9 != 0) {
            codedOutputStream.writeInt32(13, i9);
        }
        int i10 = this.f62176p;
        if (i10 != 0) {
            codedOutputStream.writeInt32(14, i10);
        }
        int i11 = this.f62177q;
        if (i11 != 0) {
            codedOutputStream.writeInt32(15, i11);
        }
        long j6 = this.f62178r;
        if (j6 != 0) {
            codedOutputStream.writeInt64(16, j6);
        }
        int i12 = this.f62179s;
        if (i12 != 0) {
            codedOutputStream.writeInt32(17, i12);
        }
        int i13 = this.f62180t;
        if (i13 != 0) {
            codedOutputStream.writeInt32(18, i13);
        }
        if (this.f62181u != null) {
            codedOutputStream.writeMessage(19, D2());
        }
        int i14 = this.f62182v;
        if (i14 != 0) {
            codedOutputStream.writeInt32(20, i14);
        }
        if (!this.f62183w.isEmpty()) {
            codedOutputStream.writeString(21, x0());
        }
        int i15 = this.f62184x;
        if (i15 != 0) {
            codedOutputStream.writeInt32(22, i15);
        }
        int i16 = this.f62185y;
        if (i16 != 0) {
            codedOutputStream.writeInt32(23, i16);
        }
        int i17 = this.f62186z;
        if (i17 != 0) {
            codedOutputStream.writeInt32(24, i17);
        }
        int i18 = this.A;
        if (i18 != 0) {
            codedOutputStream.writeInt32(25, i18);
        }
        if (!this.B.isEmpty()) {
            codedOutputStream.writeString(26, getToken());
        }
        if (!this.C.isEmpty()) {
            codedOutputStream.writeString(27, C());
        }
        for (int i19 = 0; i19 < this.D.size(); i19++) {
            codedOutputStream.writeMessage(28, this.D.get(i19));
        }
        if (!this.f62164d.isEmpty()) {
            codedOutputStream.writeString(29, getNickname());
        }
        long j7 = this.E;
        if (j7 != 0) {
            codedOutputStream.writeInt64(30, j7);
        }
    }

    @Override // com.wufan.user.service.protobuf.m0
    public String x0() {
        return this.f62183w;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public int y0() {
        return this.f62165e;
    }

    @Override // com.wufan.user.service.protobuf.m0
    public ByteString y1() {
        return ByteString.copyFromUtf8(this.f62168h);
    }
}
