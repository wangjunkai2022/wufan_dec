package notchtools.geek.com.notchtools.core;

import android.app.Activity;
import android.view.Window;
/* compiled from: AbsNotchScreenSupport.java */
/* loaded from: classes5.dex */
public abstract class a implements b {
    @Override // notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, d dVar) {
        notchtools.geek.com.notchtools.helper.b.e(activity.getWindow(), false);
        h(activity, d(activity.getWindow()), dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void b(Activity activity, d dVar) {
        g(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public int e(Window window) {
        return notchtools.geek.com.notchtools.helper.b.b(window.getContext());
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void f(Activity activity, d dVar) {
        g(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void g(Activity activity, d dVar) {
        notchtools.geek.com.notchtools.helper.b.e(activity.getWindow(), false);
        i(activity, dVar);
    }

    protected void h(Activity activity, int i2, d dVar) {
        if (dVar != null) {
            c cVar = new c();
            cVar.f(d(activity.getWindow()));
            cVar.e(c(activity.getWindow()));
            cVar.d(i2);
            dVar.a(cVar);
        }
    }

    protected void i(Activity activity, d dVar) {
        if (dVar != null) {
            c cVar = new c();
            cVar.f(d(activity.getWindow()));
            cVar.e(c(activity.getWindow()));
            dVar.a(cVar);
        }
    }
}
