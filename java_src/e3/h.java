package e3;

import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: FileHeader.java */
/* loaded from: classes5.dex */
public class h {
    private ArrayList A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private int f65187a;

    /* renamed from: b  reason: collision with root package name */
    private int f65188b;

    /* renamed from: c  reason: collision with root package name */
    private int f65189c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f65190d;

    /* renamed from: e  reason: collision with root package name */
    private int f65191e;

    /* renamed from: f  reason: collision with root package name */
    private int f65192f;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f65194h;

    /* renamed from: i  reason: collision with root package name */
    private long f65195i;

    /* renamed from: k  reason: collision with root package name */
    private int f65197k;

    /* renamed from: l  reason: collision with root package name */
    private int f65198l;

    /* renamed from: m  reason: collision with root package name */
    private int f65199m;

    /* renamed from: n  reason: collision with root package name */
    private int f65200n;

    /* renamed from: o  reason: collision with root package name */
    private byte[] f65201o;

    /* renamed from: p  reason: collision with root package name */
    private byte[] f65202p;

    /* renamed from: q  reason: collision with root package name */
    private long f65203q;

    /* renamed from: r  reason: collision with root package name */
    private String f65204r;

    /* renamed from: s  reason: collision with root package name */
    private String f65205s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f65206t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f65207u;

    /* renamed from: w  reason: collision with root package name */
    private char[] f65209w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f65210x;

    /* renamed from: y  reason: collision with root package name */
    private n f65211y;

    /* renamed from: z  reason: collision with root package name */
    private a f65212z;

    /* renamed from: v  reason: collision with root package name */
    private int f65208v = -1;

    /* renamed from: g  reason: collision with root package name */
    private long f65193g = 0;

    /* renamed from: j  reason: collision with root package name */
    private long f65196j = 0;

    public n A() {
        return this.f65211y;
    }

    public boolean B() {
        return this.f65210x;
    }

    public boolean C() {
        return this.f65206t;
    }

    public boolean D() {
        return this.f65207u;
    }

    public boolean E() {
        return this.B;
    }

    public void F(a aVar) {
        this.f65212z = aVar;
    }

    public void G(long j4) {
        this.f65195i = j4;
    }

    public void H(int i2) {
        this.f65191e = i2;
    }

    public void I(long j4) {
        this.f65193g = j4;
    }

    public void J(byte[] bArr) {
        this.f65194h = bArr;
    }

    public void K(boolean z3) {
        this.f65210x = z3;
    }

    public void L(boolean z3) {
        this.f65206t = z3;
    }

    public void M(int i2) {
        this.f65200n = i2;
    }

    public void N(boolean z3) {
        this.f65207u = z3;
    }

    public void O(int i2) {
        this.f65208v = i2;
    }

    public void P(byte[] bArr) {
        this.f65202p = bArr;
    }

    public void Q(ArrayList arrayList) {
        this.A = arrayList;
    }

    public void R(int i2) {
        this.f65198l = i2;
    }

    public void S(String str) {
        this.f65205s = str;
    }

    public void T(int i2) {
        this.f65199m = i2;
    }

    public void U(String str) {
        this.f65204r = str;
    }

    public void V(int i2) {
        this.f65197k = i2;
    }

    public void W(boolean z3) {
        this.B = z3;
    }

    public void X(byte[] bArr) {
        this.f65190d = bArr;
    }

    public void Y(byte[] bArr) {
        this.f65201o = bArr;
    }

    public void Z(int i2) {
        this.f65192f = i2;
    }

    public void a(o oVar, String str, k kVar, f3.a aVar, boolean z3) throws ZipException {
        b(oVar, str, kVar, null, aVar, z3);
    }

    public void a0(long j4) {
        this.f65203q = j4;
    }

    public void b(o oVar, String str, k kVar, String str2, f3.a aVar, boolean z3) throws ZipException {
        if (oVar != null) {
            if (net.lingala.zip4j.util.h.f(str)) {
                new net.lingala.zip4j.unzip.c(oVar).f(this, str, kVar, str2, aVar, z3);
                return;
            }
            throw new ZipException("Invalid output path");
        }
        throw new ZipException("input zipModel is null");
    }

    public void b0(char[] cArr) {
        this.f65209w = cArr;
    }

    public void c(o oVar, String str, f3.a aVar, boolean z3) throws ZipException {
        a(oVar, str, null, aVar, z3);
    }

    public void c0(int i2) {
        this.f65187a = i2;
    }

    public a d() {
        return this.f65212z;
    }

    public void d0(long j4) {
        this.f65196j = j4;
    }

    public long e() {
        return this.f65195i;
    }

    public void e0(int i2) {
        this.f65188b = i2;
    }

    public int f() {
        return this.f65191e;
    }

    public void f0(int i2) {
        this.f65189c = i2;
    }

    public long g() {
        return this.f65193g & 4294967295L;
    }

    public void g0(n nVar) {
        this.f65211y = nVar;
    }

    public byte[] h() {
        return this.f65194h;
    }

    public int i() {
        return this.f65200n;
    }

    public int j() {
        return this.f65208v;
    }

    public byte[] k() {
        return this.f65202p;
    }

    public ArrayList l() {
        return this.A;
    }

    public int m() {
        return this.f65198l;
    }

    public String n() {
        return this.f65205s;
    }

    public int o() {
        return this.f65199m;
    }

    public String p() {
        return this.f65204r;
    }

    public int q() {
        return this.f65197k;
    }

    public byte[] r() {
        return this.f65190d;
    }

    public byte[] s() {
        return this.f65201o;
    }

    public int t() {
        return this.f65192f;
    }

    public long u() {
        return this.f65203q;
    }

    public char[] v() {
        return this.f65209w;
    }

    public int w() {
        return this.f65187a;
    }

    public long x() {
        return this.f65196j;
    }

    public int y() {
        return this.f65188b;
    }

    public int z() {
        return this.f65189c;
    }
}
