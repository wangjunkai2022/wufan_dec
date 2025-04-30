package androidx.transition;

import android.animation.LayoutTransition;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
class ViewGroupUtilsApi14 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f7783a = "ViewGroupUtilsApi14";

    /* renamed from: b  reason: collision with root package name */
    private static final int f7784b = 4;

    /* renamed from: c  reason: collision with root package name */
    private static LayoutTransition f7785c;

    /* renamed from: d  reason: collision with root package name */
    private static Field f7786d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f7787e;

    /* renamed from: f  reason: collision with root package name */
    private static Method f7788f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f7789g;

    private ViewGroupUtilsApi14() {
    }

    private static void a(LayoutTransition layoutTransition) {
        if (!f7789g) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f7788f = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f7789g = true;
        }
        Method method = f7788f;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@NonNull ViewGroup viewGroup, boolean z3) {
        boolean z4 = false;
        if (f7785c == null) {
            LayoutTransition layoutTransition = new LayoutTransition() { // from class: androidx.transition.ViewGroupUtilsApi14.1
                @Override // android.animation.LayoutTransition
                public boolean isChangingLayout() {
                    return true;
                }
            };
            f7785c = layoutTransition;
            layoutTransition.setAnimator(2, null);
            f7785c.setAnimator(0, null);
            f7785c.setAnimator(1, null);
            f7785c.setAnimator(3, null);
            f7785c.setAnimator(4, null);
        }
        if (z3) {
            LayoutTransition layoutTransition2 = viewGroup.getLayoutTransition();
            if (layoutTransition2 != null) {
                if (layoutTransition2.isRunning()) {
                    a(layoutTransition2);
                }
                if (layoutTransition2 != f7785c) {
                    viewGroup.setTag(R.id.transition_layout_save, layoutTransition2);
                }
            }
            viewGroup.setLayoutTransition(f7785c);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f7787e) {
            try {
                Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f7786d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f7787e = true;
        }
        Field field = f7786d;
        if (field != null) {
            try {
                boolean z5 = field.getBoolean(viewGroup);
                if (z5) {
                    try {
                        f7786d.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused2) {
                    }
                }
                z4 = z5;
            } catch (IllegalAccessException unused3) {
            }
        }
        if (z4) {
            viewGroup.requestLayout();
        }
        int i2 = R.id.transition_layout_save;
        LayoutTransition layoutTransition3 = (LayoutTransition) viewGroup.getTag(i2);
        if (layoutTransition3 != null) {
            viewGroup.setTag(i2, null);
            viewGroup.setLayoutTransition(layoutTransition3);
        }
    }
}
