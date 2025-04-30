package notchtools.geek.com.notchtools.phone;

import android.app.Activity;
import android.view.Window;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;
/* compiled from: VivoNotchScreen.java */
/* loaded from: classes5.dex */
public class f extends notchtools.geek.com.notchtools.core.a {

    /* renamed from: c  reason: collision with root package name */
    private static final String f73119c = "f";

    /* renamed from: a  reason: collision with root package name */
    private Class f73120a;

    /* renamed from: b  reason: collision with root package name */
    private Method f73121b;

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.a(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void b(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        g(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public boolean c(Window window) {
        if (window == null) {
            return false;
        }
        try {
            Class<?> loadClass = window.getContext().getClassLoader().loadClass("android.util.FtFeature");
            this.f73120a = loadClass;
            Method method = loadClass.getMethod("isFeatureSupport", Integer.TYPE);
            this.f73121b = method;
            return ((Boolean) method.invoke(this.f73120a, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public int d(Window window) {
        if (c(window)) {
            return notchtools.geek.com.notchtools.helper.b.b(window.getContext());
        }
        return 0;
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void f(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.f(activity, dVar);
        if (c(activity.getWindow())) {
            notchtools.geek.com.notchtools.helper.b.c(activity.getWindow());
        }
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void g(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.g(activity, dVar);
        if (c(activity.getWindow())) {
            notchtools.geek.com.notchtools.helper.b.d(activity.getWindow());
        }
    }
}
