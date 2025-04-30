package cn.sharesdk.framework.a.b;

import android.text.TextUtils;
/* compiled from: ExitEvent.java */
/* loaded from: classes2.dex */
public class e extends c {

    /* renamed from: b  reason: collision with root package name */
    private static int f8763b;

    /* renamed from: c  reason: collision with root package name */
    private static long f8764c;

    /* renamed from: a  reason: collision with root package name */
    public long f8765a;

    @Override // cn.sharesdk.framework.a.b.c
    protected String a() {
        return "[EXT]";
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void a(long j4) {
        f8764c = j4;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int c() {
        return 5;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long d() {
        return f8763b;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long e() {
        return f8764c;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void f() {
        f8763b++;
    }

    @Override // cn.sharesdk.framework.a.b.c
    public boolean g() {
        cn.sharesdk.framework.a.a.e a4 = cn.sharesdk.framework.a.a.e.a();
        f8763b = a4.j("insertExitEventCount");
        f8764c = a4.i("lastInsertExitEventTime");
        return super.g();
    }

    @Override // cn.sharesdk.framework.a.b.c
    public void h() {
        super.h();
        cn.sharesdk.framework.a.a.e a4 = cn.sharesdk.framework.a.a.e.a();
        a4.a("lastInsertExitEventTime", Long.valueOf(f8764c));
        a4.a("insertExitEventCount", f8763b);
    }

    @Override // cn.sharesdk.framework.a.b.c
    public String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        sb.append('|');
        if (!TextUtils.isEmpty(this.f8757l)) {
            sb.append(this.f8757l);
        }
        sb.append('|');
        sb.append(Math.round(((float) this.f8765a) / 1000.0f));
        return sb.toString();
    }
}
