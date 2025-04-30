package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.Field;
@RequiresApi(19)
/* loaded from: classes.dex */
final class ImmLeaksCleaner implements LifecycleEventObserver {

    /* renamed from: b  reason: collision with root package name */
    private static final int f38b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f39c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f40d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static int f41e;

    /* renamed from: f  reason: collision with root package name */
    private static Field f42f;

    /* renamed from: g  reason: collision with root package name */
    private static Field f43g;

    /* renamed from: h  reason: collision with root package name */
    private static Field f44h;

    /* renamed from: a  reason: collision with root package name */
    private Activity f45a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmLeaksCleaner(Activity activity) {
        this.f45a = activity;
    }

    @MainThread
    private static void a() {
        try {
            f41e = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f43g = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f44h = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f42f = declaredField3;
            declaredField3.setAccessible(true);
            f41e = 1;
        } catch (NoSuchFieldException unused) {
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        if (f41e == 0) {
            a();
        }
        if (f41e == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f45a.getSystemService("input_method");
            try {
                Object obj = f42f.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f43g.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f44h.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }
}
