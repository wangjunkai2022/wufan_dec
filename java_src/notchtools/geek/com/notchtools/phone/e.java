package notchtools.geek.com.notchtools.phone;

import android.app.Activity;
import android.view.DisplayCutout;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
/* compiled from: PVersionNotchScreen.java */
/* loaded from: classes5.dex */
public class e extends notchtools.geek.com.notchtools.core.a {
    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 28)
    public void a(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.a(activity, dVar);
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        activity.getWindow().setAttributes(attributes);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 28)
    public boolean c(Window window) {
        DisplayCutout displayCutout;
        WindowInsets rootWindowInsets = window.getDecorView().getRootWindowInsets();
        return (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects() == null) ? false : true;
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 28)
    public int d(Window window) {
        DisplayCutout displayCutout;
        WindowInsets rootWindowInsets = window.getDecorView().getRootWindowInsets();
        if (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects() == null) {
            return 0;
        }
        return displayCutout.getSafeInsetTop();
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 28)
    public void g(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.g(activity, dVar);
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        activity.getWindow().setAttributes(attributes);
        notchtools.geek.com.notchtools.helper.b.d(activity.getWindow());
    }
}
