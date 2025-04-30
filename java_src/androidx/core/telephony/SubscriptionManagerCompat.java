package androidx.core.telephony;

import android.os.Build;
import android.telephony.SubscriptionManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RequiresApi(22)
/* loaded from: classes.dex */
public class SubscriptionManagerCompat {

    /* renamed from: a  reason: collision with root package name */
    private static Method f4594a;

    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static int a(int i2) {
            return SubscriptionManager.getSlotIndex(i2);
        }
    }

    private SubscriptionManagerCompat() {
    }

    public static int getSlotIndex(int i2) {
        if (i2 == -1) {
            return -1;
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            return Api29Impl.a(i2);
        }
        try {
            if (f4594a == null) {
                if (i4 >= 26) {
                    f4594a = SubscriptionManager.class.getDeclaredMethod("getSlotIndex", Integer.TYPE);
                } else {
                    f4594a = SubscriptionManager.class.getDeclaredMethod("getSlotId", Integer.TYPE);
                }
                f4594a.setAccessible(true);
            }
            Integer num = (Integer) f4594a.invoke(null, Integer.valueOf(i2));
            if (num != null) {
                return num.intValue();
            }
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        return -1;
    }
}
