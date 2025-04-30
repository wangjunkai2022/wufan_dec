package notchtools.geek.com.notchtools.phone;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.view.Window;
import androidx.annotation.RequiresApi;
import com.uc.crashsdk.export.LogType;
import java.lang.reflect.Method;
/* compiled from: MiuiNotchScreen.java */
/* loaded from: classes5.dex */
public class c extends notchtools.geek.com.notchtools.core.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f73117a = "c";

    private int j(Context context) {
        int identifier = context.getResources().getIdentifier("notch_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private boolean k(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "force_black", 0) == 1;
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.a(activity, dVar);
        if (Build.VERSION.SDK_INT < 26 || !c(activity.getWindow())) {
            return;
        }
        try {
            Method method = Window.class.getMethod("addExtraFlags", Integer.TYPE);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(activity.getWindow(), 1792);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public boolean c(Window window) {
        return "1".equals(notchtools.geek.com.notchtools.helper.c.c().a("ro.miui.notch"));
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public int d(Window window) {
        if (c(window) && window != null) {
            Context context = window.getContext();
            if (k(window.getContext())) {
                return notchtools.geek.com.notchtools.helper.b.b(context);
            }
            return j(context);
        }
        return 0;
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void g(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.g(activity, dVar);
        if (Build.VERSION.SDK_INT < 26 || !c(activity.getWindow())) {
            return;
        }
        try {
            Method method = Window.class.getMethod("addExtraFlags", Integer.TYPE);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(activity.getWindow(), Integer.valueOf((int) LogType.UNEXP_ANR));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
