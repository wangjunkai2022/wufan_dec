package com.papa91.arc.ext;

import android.content.Context;
import android.os.Handler;
import android.widget.Toast;
import com.papa91.arc.ext.Tools;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public class ToastManager {
    private static volatile Toast lastToast;
    private static volatile WeakReference<Runnable> lastUserHide;
    private static volatile WeakReference<Toast> lastUserToast;
    private static Context source;
    private static final Object lastMonitor = new Object();
    private static final Object lastUserMonitor = new Object();

    public static void cancel(final Toast toast) {
        if (toast != null) {
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.ext.ToastManager.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        toast.cancel();
                    } catch (Throwable th) {
                        Log.w("Toast cancel", th);
                    }
                }
            });
        }
    }

    public static Toast fixToast(Toast toast) {
        Field[] declaredFields;
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(toast);
            for (Field field : obj.getClass().getDeclaredFields()) {
                String name = field.getName();
                if (!name.equals("mShow") && !name.equals("mHide")) {
                    if (name.equals("mHandler")) {
                        field.setAccessible(true);
                        Object obj2 = field.get(obj);
                        if (obj2 instanceof Handler) {
                            field.set(obj, Tools.HandlerWrapper.wrap((Handler) obj2));
                        }
                    }
                }
                field.setAccessible(true);
                Object obj3 = field.get(obj);
                if (obj3 instanceof Runnable) {
                    field.set(obj, Tools.RunnableWrapper.wrap((Runnable) obj3));
                }
            }
        } catch (Throwable th) {
            Log.badImplementation(th);
        }
        return toast;
    }

    public static void init(Context context) {
        source = context.getApplicationContext();
    }

    public static void show(CharSequence charSequence) {
        show(charSequence, 1);
    }

    public static void show(CharSequence charSequence, int i2) {
        show(Toast.makeText(source, charSequence, i2));
    }

    public static void show(final Toast toast) {
        Toast toast2;
        Runnable runnable;
        Toast toast3;
        Object obj = lastUserMonitor;
        synchronized (obj) {
            WeakReference<Toast> weakReference = lastUserToast;
            toast2 = weakReference == null ? null : weakReference.get();
            lastUserToast = null;
            WeakReference<Runnable> weakReference2 = lastUserHide;
            runnable = weakReference2 != null ? weakReference2.get() : null;
            lastUserHide = null;
        }
        fixToast(toast).show();
        Runnable runnable2 = new Runnable() { // from class: com.papa91.arc.ext.ToastManager.1
            @Override // java.lang.Runnable
            public void run() {
                ToastManager.cancel(toast);
            }
        };
        synchronized (obj) {
            lastUserToast = new WeakReference<>(toast);
            lastUserHide = new WeakReference<>(runnable2);
        }
        synchronized (lastMonitor) {
            toast3 = lastToast;
            lastToast = null;
        }
        cancel(toast3);
        cancel(toast2);
        Handler handlerUiThread = ThreadManager.getHandlerUiThread();
        if (runnable != null) {
            handlerUiThread.removeCallbacks(runnable);
        }
        handlerUiThread.postDelayed(runnable2, 3000L);
    }
}
