package cn.sharesdk.framework.a.b;
/* compiled from: DemoEvent.java */
/* loaded from: classes2.dex */
public class d extends c {

    /* renamed from: d  reason: collision with root package name */
    private static int f8758d;

    /* renamed from: m  reason: collision with root package name */
    private static long f8759m;

    /* renamed from: a  reason: collision with root package name */
    public String f8760a;

    /* renamed from: b  reason: collision with root package name */
    public int f8761b;

    /* renamed from: c  reason: collision with root package name */
    public String f8762c = "";

    @Override // cn.sharesdk.framework.a.b.c
    protected String a() {
        return "[EVT]";
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void a(long j4) {
        f8759m = j4;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int c() {
        return 30;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long d() {
        return f8758d;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long e() {
        return f8759m;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void f() {
        f8758d++;
    }

    @Override // cn.sharesdk.framework.a.b.c
    public String toString() {
        return super.toString() + '|' + this.f8760a + '|' + this.f8761b + '|' + this.f8762c;
    }
}
