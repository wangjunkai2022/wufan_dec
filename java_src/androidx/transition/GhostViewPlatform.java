package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RequiresApi(21)
/* loaded from: classes2.dex */
class GhostViewPlatform implements GhostView {

    /* renamed from: b  reason: collision with root package name */
    private static final String f7646b = "GhostViewApi21";

    /* renamed from: c  reason: collision with root package name */
    private static Class<?> f7647c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f7648d;

    /* renamed from: e  reason: collision with root package name */
    private static Method f7649e;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f7650f;

    /* renamed from: g  reason: collision with root package name */
    private static Method f7651g;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f7652h;

    /* renamed from: a  reason: collision with root package name */
    private final View f7653a;

    private GhostViewPlatform(@NonNull View view) {
        this.f7653a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static GhostView a(View view, ViewGroup viewGroup, Matrix matrix) {
        b();
        Method method = f7649e;
        if (method != null) {
            try {
                return new GhostViewPlatform((View) method.invoke(null, view, viewGroup, matrix));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(e4.getCause());
            }
        }
        return null;
    }

    private static void b() {
        if (f7650f) {
            return;
        }
        try {
            c();
            Method declaredMethod = f7647c.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
            f7649e = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f7650f = true;
    }

    private static void c() {
        if (f7648d) {
            return;
        }
        try {
            f7647c = Class.forName("android.view.GhostView");
        } catch (ClassNotFoundException unused) {
        }
        f7648d = true;
    }

    private static void d() {
        if (f7652h) {
            return;
        }
        try {
            c();
            Method declaredMethod = f7647c.getDeclaredMethod("removeGhost", View.class);
            f7651g = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f7652h = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(View view) {
        d();
        Method method = f7651g;
        if (method != null) {
            try {
                method.invoke(null, view);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(e4.getCause());
            }
        }
    }

    @Override // androidx.transition.GhostView
    public void reserveEndViewTransition(ViewGroup viewGroup, View view) {
    }

    @Override // androidx.transition.GhostView
    public void setVisibility(int i2) {
        this.f7653a.setVisibility(i2);
    }
}
