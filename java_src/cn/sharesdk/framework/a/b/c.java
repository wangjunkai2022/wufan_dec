package cn.sharesdk.framework.a.b;

import com.mob.MobSDK;
/* compiled from: BaseEvent.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: e  reason: collision with root package name */
    public long f8750e;

    /* renamed from: f  reason: collision with root package name */
    public String f8751f;

    /* renamed from: g  reason: collision with root package name */
    public String f8752g;

    /* renamed from: h  reason: collision with root package name */
    public int f8753h;

    /* renamed from: i  reason: collision with root package name */
    public String f8754i;

    /* renamed from: j  reason: collision with root package name */
    public int f8755j;

    /* renamed from: k  reason: collision with root package name */
    public String f8756k;

    /* renamed from: l  reason: collision with root package name */
    public String f8757l;

    protected abstract String a();

    protected abstract void a(long j4);

    protected abstract int b();

    protected abstract int c();

    protected abstract long d();

    protected abstract long e();

    protected abstract void f();

    public boolean g() {
        int b4 = b();
        int c4 = c();
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - e() < b4) {
            return d() < ((long) c4);
        }
        a(currentTimeMillis);
        return true;
    }

    public void h() {
        f();
    }

    public String toString() {
        return a() + ':' + this.f8750e + '|' + this.f8751f + '|' + MobSDK.getAppkey() + '|' + this.f8752g + '|' + this.f8753h + '|' + this.f8754i + '|' + this.f8755j + '|' + this.f8756k;
    }
}
