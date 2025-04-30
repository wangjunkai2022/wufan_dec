package androidx.core.view;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class KeyEventDispatcher {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f4790a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f4791b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f4792c;

    /* renamed from: d  reason: collision with root package name */
    private static Field f4793d;

    /* loaded from: classes.dex */
    public interface Component {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    private KeyEventDispatcher() {
    }

    private static boolean a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f4790a) {
            try {
                f4791b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException unused) {
            }
            f4790a = true;
        }
        Method method = f4791b;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return false;
    }

    private static boolean b(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (ViewCompat.g(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    private static boolean c(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener d4 = d(dialog);
        if (d4 == null || !d4.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            Window window = dialog.getWindow();
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (ViewCompat.g(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
        }
        return true;
    }

    private static DialogInterface.OnKeyListener d(Dialog dialog) {
        if (!f4792c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f4793d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f4792c = true;
        }
        Field field = f4793d;
        if (field != null) {
            try {
                return (DialogInterface.OnKeyListener) field.get(dialog);
            } catch (IllegalAccessException unused2) {
                return null;
            }
        }
        return null;
    }

    public static boolean dispatchBeforeHierarchy(@NonNull View view, @NonNull KeyEvent keyEvent) {
        return ViewCompat.h(view, keyEvent);
    }

    public static boolean dispatchKeyEvent(@NonNull Component component, @Nullable View view, @Nullable Window.Callback callback, @NonNull KeyEvent keyEvent) {
        if (component == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return component.superDispatchKeyEvent(keyEvent);
        }
        if (callback instanceof Activity) {
            return b((Activity) callback, keyEvent);
        }
        if (callback instanceof Dialog) {
            return c((Dialog) callback, keyEvent);
        }
        return (view != null && ViewCompat.g(view, keyEvent)) || component.superDispatchKeyEvent(keyEvent);
    }
}
