package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class BundleCompat {

    /* loaded from: classes.dex */
    static class BundleCompatBaseImpl {

        /* renamed from: a  reason: collision with root package name */
        private static final String f3747a = "BundleCompatBaseImpl";

        /* renamed from: b  reason: collision with root package name */
        private static Method f3748b;

        /* renamed from: c  reason: collision with root package name */
        private static boolean f3749c;

        /* renamed from: d  reason: collision with root package name */
        private static Method f3750d;

        /* renamed from: e  reason: collision with root package name */
        private static boolean f3751e;

        private BundleCompatBaseImpl() {
        }

        public static IBinder getBinder(Bundle bundle, String str) {
            if (!f3749c) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f3748b = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f3749c = true;
            }
            Method method2 = f3748b;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f3748b = null;
                }
            }
            return null;
        }

        public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
            if (!f3751e) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f3750d = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f3751e = true;
            }
            Method method2 = f3750d;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f3750d = null;
                }
            }
        }
    }

    private BundleCompat() {
    }

    @Nullable
    public static IBinder getBinder(@NonNull Bundle bundle, @Nullable String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        return BundleCompatBaseImpl.getBinder(bundle, str);
    }

    public static void putBinder(@NonNull Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            BundleCompatBaseImpl.putBinder(bundle, str, iBinder);
        }
    }
}
