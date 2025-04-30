package cn.sharesdk.framework.a.b;
/* compiled from: ApiEvent.java */
/* loaded from: classes2.dex */
public class a extends c {

    /* renamed from: c  reason: collision with root package name */
    private static int f8740c;

    /* renamed from: d  reason: collision with root package name */
    private static long f8741d;

    /* renamed from: a  reason: collision with root package name */
    public int f8742a;

    /* renamed from: b  reason: collision with root package name */
    public String f8743b;

    @Override // cn.sharesdk.framework.a.b.c
    protected String a() {
        return "[API]";
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void a(long j4) {
        f8741d = j4;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int c() {
        return 50;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long d() {
        return f8740c;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long e() {
        return f8741d;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void f() {
        f8740c++;
    }

    @Override // cn.sharesdk.framework.a.b.c
    public String toString() {
        return super.toString() + '|' + this.f8742a + '|' + this.f8743b;
    }
}
