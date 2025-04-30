package notchtools.geek.com.notchtools.phone;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
/* compiled from: HuaWeiNotchScreen.java */
/* loaded from: classes5.dex */
public class b extends notchtools.geek.com.notchtools.core.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f73114a = "b";

    /* renamed from: b  reason: collision with root package name */
    private static final String f73115b = "display_notch_status";

    /* renamed from: c  reason: collision with root package name */
    public static final int f73116c = 65536;

    private boolean j(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), f73115b, 0) == 1;
    }

    @TargetApi(19)
    public static void k(Window window) {
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("addHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 65536);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException | Exception unused) {
        }
    }

    @RequiresApi(api = 19)
    public static void l(Window window) {
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("clearHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 65536);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException | Exception unused) {
        }
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void a(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.a(activity, dVar);
        if (c(activity.getWindow())) {
            k(activity.getWindow());
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public boolean c(Window window) {
        try {
            Class<?> loadClass = window.getContext().getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public int d(Window window) {
        if (c(window)) {
            int[] iArr = {0, 0};
            try {
                Class<?> loadClass = window.getContext().getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
                return ((int[]) loadClass.getMethod("getNotchSize", new Class[0]).invoke(loadClass, new Object[0]))[1];
            } catch (ClassNotFoundException unused) {
                return iArr[1];
            } catch (NoSuchMethodException unused2) {
                return iArr[1];
            } catch (Exception unused3) {
                return iArr[1];
            } catch (Throwable unused4) {
                return iArr[1];
            }
        }
        return 0;
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void g(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.g(activity, dVar);
        if (c(activity.getWindow())) {
            l(activity.getWindow());
        }
    }
}
