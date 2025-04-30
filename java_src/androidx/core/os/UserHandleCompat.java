package androidx.core.os;

import android.os.Build;
import android.os.UserHandle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RequiresApi(17)
/* loaded from: classes.dex */
public class UserHandleCompat {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static Method f4517a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Constructor<UserHandle> f4518b;

    @RequiresApi(24)
    /* loaded from: classes.dex */
    private static class Api24Impl {
        private Api24Impl() {
        }

        @NonNull
        static UserHandle a(int i2) {
            return UserHandle.getUserHandleForUid(i2);
        }
    }

    private UserHandleCompat() {
    }

    private static Method a() throws NoSuchMethodException {
        if (f4517a == null) {
            Method declaredMethod = UserHandle.class.getDeclaredMethod("getUserId", Integer.TYPE);
            f4517a = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return f4517a;
    }

    private static Constructor<UserHandle> b() throws NoSuchMethodException {
        if (f4518b == null) {
            Constructor<UserHandle> declaredConstructor = UserHandle.class.getDeclaredConstructor(Integer.TYPE);
            f4518b = declaredConstructor;
            declaredConstructor.setAccessible(true);
        }
        return f4518b;
    }

    @NonNull
    public static UserHandle getUserHandleForUid(int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.a(i2);
        }
        try {
            return b().newInstance((Integer) a().invoke(null, Integer.valueOf(i2)));
        } catch (IllegalAccessException e4) {
            IllegalAccessError illegalAccessError = new IllegalAccessError();
            illegalAccessError.initCause(e4);
            throw illegalAccessError;
        } catch (InstantiationException e5) {
            InstantiationError instantiationError = new InstantiationError();
            instantiationError.initCause(e5);
            throw instantiationError;
        } catch (NoSuchMethodException e6) {
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
            noSuchMethodError.initCause(e6);
            throw noSuchMethodError;
        } catch (InvocationTargetException e7) {
            throw new RuntimeException(e7);
        }
    }
}
