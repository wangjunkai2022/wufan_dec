package notchtools.geek.com.notchtools.helper;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
/* compiled from: NotchStatusBarUtils.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static int f73097a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f73098b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NotchStatusBarUtils.java */
    /* loaded from: classes5.dex */
    public static class a implements View.OnSystemUiVisibilityChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Window f73099a;

        a(Window window) {
            this.f73099a = window;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i2) {
            if (i2 == 0) {
                b.e(this.f73099a, false);
            }
        }
    }

    public static ViewGroup a(Window window) {
        View decorView = window.getDecorView();
        if (decorView == null) {
            return null;
        }
        return (ViewGroup) decorView.findViewWithTag(notchtools.geek.com.notchtools.b.f73084e);
    }

    public static int b(Context context) {
        int identifier;
        int i2 = f73097a;
        if (i2 != -1) {
            return i2;
        }
        if (i2 <= 0 && (identifier = context.getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a)) > 0) {
            f73097a = context.getResources().getDimensionPixelSize(identifier);
        }
        return f73097a;
    }

    public static ViewGroup c(Window window) {
        ViewGroup a4 = a(window);
        if (a4 == null) {
            return null;
        }
        if (a4.getChildCount() > 0) {
            a4.removeAllViews();
        }
        return a4;
    }

    public static void d(Window window) {
        ViewGroup c4 = c(window);
        if (c4 == null) {
            return;
        }
        View view = new View(window.getContext());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, notchtools.geek.com.notchtools.b.o().d(window)));
        view.setBackgroundColor(-16777216);
        c4.addView(view);
    }

    public static void e(Window window, boolean z3) {
        int i2;
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.flags |= 1024;
        window.setAttributes(attributes);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 16) {
            i2 = 1028;
            if (!f73098b) {
                i2 = 1542;
            }
        } else {
            i2 = 0;
        }
        if (i4 >= 19) {
            i2 |= 4096;
        }
        window.getDecorView().setSystemUiVisibility(i2);
        if (z3) {
            window.getDecorView().setOnSystemUiVisibilityChangeListener(new a(window));
        }
    }
}
