package e3;

import java.util.TimeZone;
/* compiled from: ZipParameters.java */
/* loaded from: classes5.dex */
public class p implements Cloneable {

    /* renamed from: b  reason: collision with root package name */
    private int f65285b;

    /* renamed from: f  reason: collision with root package name */
    private char[] f65289f;

    /* renamed from: i  reason: collision with root package name */
    private String f65292i;

    /* renamed from: k  reason: collision with root package name */
    private int f65294k;

    /* renamed from: l  reason: collision with root package name */
    private String f65295l;

    /* renamed from: m  reason: collision with root package name */
    private String f65296m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f65297n;

    /* renamed from: a  reason: collision with root package name */
    private int f65284a = 8;

    /* renamed from: c  reason: collision with root package name */
    private boolean f65286c = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f65288e = true;

    /* renamed from: d  reason: collision with root package name */
    private int f65287d = -1;

    /* renamed from: g  reason: collision with root package name */
    private int f65290g = -1;

    /* renamed from: h  reason: collision with root package name */
    private boolean f65291h = true;

    /* renamed from: j  reason: collision with root package name */
    private TimeZone f65293j = TimeZone.getDefault();

    public void A(boolean z3) {
        this.f65297n = z3;
    }

    public void B(int i2) {
        this.f65294k = i2;
    }

    public void C(TimeZone timeZone) {
        this.f65293j = timeZone;
    }

    public int a() {
        return this.f65290g;
    }

    public int b() {
        return this.f65285b;
    }

    public int c() {
        return this.f65284a;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public String d() {
        return this.f65295l;
    }

    public int e() {
        return this.f65287d;
    }

    public String f() {
        return this.f65296m;
    }

    public char[] g() {
        return this.f65289f;
    }

    public String h() {
        return this.f65292i;
    }

    public int i() {
        return this.f65294k;
    }

    public TimeZone j() {
        return this.f65293j;
    }

    public boolean k() {
        return this.f65286c;
    }

    public boolean l() {
        return this.f65291h;
    }

    public boolean m() {
        return this.f65288e;
    }

    public boolean n() {
        return this.f65297n;
    }

    public void o(int i2) {
        this.f65290g = i2;
    }

    public void p(int i2) {
        this.f65285b = i2;
    }

    public void q(int i2) {
        this.f65284a = i2;
    }

    public void r(String str) {
        this.f65295l = str;
    }

    public void s(boolean z3) {
        this.f65286c = z3;
    }

    public void t(int i2) {
        this.f65287d = i2;
    }

    public void u(String str) {
        this.f65296m = str;
    }

    public void v(boolean z3) {
        this.f65291h = z3;
    }

    public void w(String str) {
        if (str == null) {
            return;
        }
        x(str.toCharArray());
    }

    public void x(char[] cArr) {
        this.f65289f = cArr;
    }

    public void y(boolean z3) {
        this.f65288e = z3;
    }

    public void z(String str) {
        if (net.lingala.zip4j.util.h.A(str)) {
            if (!str.endsWith("\\") && !str.endsWith(net.lingala.zip4j.util.e.F0)) {
                StringBuffer stringBuffer = new StringBuffer(str);
                stringBuffer.append(net.lingala.zip4j.util.e.E0);
                str = stringBuffer.toString();
            }
            str = str.replaceAll("\\\\", net.lingala.zip4j.util.e.F0);
        }
        this.f65292i = str;
    }
}
