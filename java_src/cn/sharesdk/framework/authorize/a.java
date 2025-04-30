package cn.sharesdk.framework.authorize;

import android.app.Activity;
/* compiled from: AuthorizeParams.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f8814a;

    /* renamed from: b  reason: collision with root package name */
    private Activity f8815b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8816c;

    public static a c() {
        synchronized (a.class) {
            if (f8814a == null) {
                synchronized (a.class) {
                    if (f8814a == null) {
                        f8814a = new a();
                    }
                }
            }
        }
        return f8814a;
    }

    public boolean a() {
        return this.f8816c;
    }

    public Activity b() {
        return this.f8815b;
    }

    public void a(boolean z3) {
        this.f8816c = z3;
    }

    public void a(Activity activity) {
        this.f8815b = activity;
    }
}
