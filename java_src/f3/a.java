package f3;

import net.lingala.zip4j.exception.ZipException;
/* compiled from: ProgressMonitor.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: k  reason: collision with root package name */
    public static final int f65516k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f65517l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f65518m = 0;

    /* renamed from: n  reason: collision with root package name */
    public static final int f65519n = 1;

    /* renamed from: o  reason: collision with root package name */
    public static final int f65520o = 2;

    /* renamed from: p  reason: collision with root package name */
    public static final int f65521p = 3;

    /* renamed from: q  reason: collision with root package name */
    public static final int f65522q = -1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f65523r = 0;

    /* renamed from: s  reason: collision with root package name */
    public static final int f65524s = 1;

    /* renamed from: t  reason: collision with root package name */
    public static final int f65525t = 2;

    /* renamed from: u  reason: collision with root package name */
    public static final int f65526u = 3;

    /* renamed from: v  reason: collision with root package name */
    public static final int f65527v = 4;

    /* renamed from: a  reason: collision with root package name */
    private int f65528a;

    /* renamed from: b  reason: collision with root package name */
    private long f65529b;

    /* renamed from: c  reason: collision with root package name */
    private long f65530c;

    /* renamed from: d  reason: collision with root package name */
    private int f65531d;

    /* renamed from: e  reason: collision with root package name */
    private int f65532e;

    /* renamed from: f  reason: collision with root package name */
    private String f65533f;

    /* renamed from: g  reason: collision with root package name */
    private int f65534g;

    /* renamed from: h  reason: collision with root package name */
    private Throwable f65535h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f65536i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f65537j;

    public a() {
        o();
        this.f65531d = 0;
    }

    public void a() {
        this.f65536i = true;
    }

    public void b(Throwable th) throws ZipException {
        o();
        this.f65534g = 2;
        this.f65535h = th;
    }

    public void c() throws ZipException {
        o();
        this.f65534g = 0;
    }

    public void d() {
        o();
        this.f65535h = null;
        this.f65534g = 0;
    }

    public int e() {
        return this.f65532e;
    }

    public Throwable f() {
        return this.f65535h;
    }

    public String g() {
        return this.f65533f;
    }

    public int h() {
        return this.f65531d;
    }

    public int i() {
        return this.f65534g;
    }

    public int j() {
        return this.f65528a;
    }

    public long k() {
        return this.f65529b;
    }

    public long l() {
        return this.f65530c;
    }

    public boolean m() {
        return this.f65536i;
    }

    public boolean n() {
        return this.f65537j;
    }

    public void o() {
        this.f65532e = -1;
        this.f65528a = 0;
        this.f65533f = null;
        this.f65529b = 0L;
        this.f65530c = 0L;
        this.f65531d = 0;
    }

    public void p(int i2) {
        this.f65532e = i2;
    }

    public void q(Throwable th) {
        this.f65535h = th;
    }

    public void r(String str) {
        this.f65533f = str;
    }

    public void s(boolean z3) {
        this.f65537j = z3;
    }

    public void setResult(int i2) {
        this.f65534g = i2;
    }

    public void t(int i2) {
        this.f65531d = i2;
    }

    public void u(int i2) {
        this.f65528a = i2;
    }

    public void v(long j4) {
        this.f65529b = j4;
    }

    public void w(long j4) {
        long j5 = this.f65530c + j4;
        this.f65530c = j5;
        long j6 = this.f65529b;
        if (j6 > 0) {
            int i2 = (int) ((j5 * 100) / j6);
            this.f65531d = i2;
            if (i2 > 100) {
                this.f65531d = 100;
            }
        }
        while (this.f65537j) {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException unused) {
            }
        }
    }
}
