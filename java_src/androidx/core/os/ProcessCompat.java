package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Process;
import android.os.UserHandle;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class ProcessCompat {

    @RequiresApi(16)
    /* loaded from: classes.dex */
    static class Api16Impl {

        /* renamed from: a  reason: collision with root package name */
        private static final Object f4505a = new Object();

        /* renamed from: b  reason: collision with root package name */
        private static Method f4506b;

        /* renamed from: c  reason: collision with root package name */
        private static boolean f4507c;

        private Api16Impl() {
        }

        @SuppressLint({"PrivateApi"})
        static boolean a(int i2) {
            try {
                synchronized (f4505a) {
                    if (!f4507c) {
                        f4507c = true;
                        f4506b = Class.forName("android.os.UserId").getDeclaredMethod("isApp", Integer.TYPE);
                    }
                }
                Method method = f4506b;
                if (method != null) {
                    Boolean bool = (Boolean) method.invoke(null, Integer.valueOf(i2));
                    if (bool != null) {
                        return bool.booleanValue();
                    }
                    throw new NullPointerException();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return true;
        }
    }

    @RequiresApi(17)
    /* loaded from: classes.dex */
    static class Api17Impl {

        /* renamed from: a  reason: collision with root package name */
        private static final Object f4508a = new Object();

        /* renamed from: b  reason: collision with root package name */
        private static Method f4509b;

        /* renamed from: c  reason: collision with root package name */
        private static boolean f4510c;

        private Api17Impl() {
        }

        @SuppressLint({"DiscouragedPrivateApi"})
        static boolean a(int i2) {
            try {
                synchronized (f4508a) {
                    if (!f4510c) {
                        f4510c = true;
                        f4509b = UserHandle.class.getDeclaredMethod("isApp", Integer.TYPE);
                    }
                }
                Method method = f4509b;
                if (method != null && ((Boolean) method.invoke(null, Integer.valueOf(i2))) == null) {
                    throw new NullPointerException();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return true;
        }
    }

    @RequiresApi(24)
    /* loaded from: classes.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        static boolean a(int i2) {
            return Process.isApplicationUid(i2);
        }
    }

    private ProcessCompat() {
    }

    public static boolean isApplicationUid(int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 24) {
            return Api24Impl.a(i2);
        }
        if (i4 >= 17) {
            return Api17Impl.a(i2);
        }
        if (i4 == 16) {
            return Api16Impl.a(i2);
        }
        return true;
    }
}
