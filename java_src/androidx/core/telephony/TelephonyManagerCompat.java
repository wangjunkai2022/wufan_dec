package androidx.core.telephony;

import android.annotation.SuppressLint;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class TelephonyManagerCompat {

    /* renamed from: a  reason: collision with root package name */
    private static Method f4595a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f4596b;

    @RequiresApi(23)
    /* loaded from: classes.dex */
    private static class Api23Impl {
        private Api23Impl() {
        }

        @SuppressLint({"MissingPermission"})
        @Nullable
        @RequiresPermission("android.permission.READ_PHONE_STATE")
        @DoNotInline
        static String a(TelephonyManager telephonyManager, int i2) {
            return telephonyManager.getDeviceId(i2);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    private static class Api26Impl {
        private Api26Impl() {
        }

        @SuppressLint({"MissingPermission"})
        @Nullable
        @RequiresPermission("android.permission.READ_PHONE_STATE")
        @DoNotInline
        static String a(TelephonyManager telephonyManager) {
            return telephonyManager.getImei();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        static int a(TelephonyManager telephonyManager) {
            return telephonyManager.getSubscriptionId();
        }
    }

    private TelephonyManagerCompat() {
    }

    @Nullable
    @RequiresPermission("android.permission.READ_PHONE_STATE")
    @SuppressLint({"MissingPermission"})
    public static String getImei(@NonNull TelephonyManager telephonyManager) {
        int subscriptionId;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            return Api26Impl.a(telephonyManager);
        }
        if (i2 >= 22 && (subscriptionId = getSubscriptionId(telephonyManager)) != Integer.MAX_VALUE && subscriptionId != -1) {
            int slotIndex = SubscriptionManagerCompat.getSlotIndex(subscriptionId);
            if (i2 >= 23) {
                return Api23Impl.a(telephonyManager, slotIndex);
            }
            try {
                if (f4595a == null) {
                    Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getDeviceId", Integer.TYPE);
                    f4595a = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                return (String) f4595a.invoke(telephonyManager, Integer.valueOf(slotIndex));
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
        return telephonyManager.getDeviceId();
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    public static int getSubscriptionId(@NonNull TelephonyManager telephonyManager) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            return Api30Impl.a(telephonyManager);
        }
        if (i2 >= 22) {
            try {
                if (f4596b == null) {
                    Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getSubId", new Class[0]);
                    f4596b = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                Integer num = (Integer) f4596b.invoke(telephonyManager, new Object[0]);
                if (num == null || num.intValue() == -1) {
                    return Integer.MAX_VALUE;
                }
                return num.intValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return Integer.MAX_VALUE;
            }
        }
        return Integer.MAX_VALUE;
    }
}
