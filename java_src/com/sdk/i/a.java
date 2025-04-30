package com.sdk.i;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.sdk.f.g;
import com.sdk.o.b;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class a {
    public static final String TAG = "a";
    public static final boolean isDebug = g.f56647b;

    public static Object invokeOnSubscriptionManager(Context context, String str, Boolean bool, Class<?>[] clsArr, Object[] objArr) {
        try {
            Class<?> cls = Class.forName("android.telephony.SubscriptionManager");
            Class<?>[] clsArr2 = new Class[1];
            clsArr2[0] = Class.forName("android.content.Context");
            Object newInstance = cls.getConstructor(clsArr2).newInstance(context);
            Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            return bool.booleanValue() ? declaredMethod.invoke(null, objArr) : declaredMethod.invoke(newInstance, objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Object invokeOnTelephonyManager(Context context, String str, Boolean bool, Class<?>[] clsArr, Object[] objArr) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Method declaredMethod = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            return bool.booleanValue() ? declaredMethod.invoke(null, objArr) : declaredMethod.invoke(telephonyManager, objArr);
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return null;
        }
    }

    public static void logError(String str, String str2, Object obj, boolean z3) {
        if (z3) {
            StringBuilder sb = new StringBuilder();
            sb.append("==>");
            sb.append(str2);
            sb.append("\n==>");
            sb.append(obj);
        }
    }

    public static void logInfo(String str, String str2, Object obj, boolean z3) {
        if (z3) {
            StringBuilder sb = new StringBuilder();
            sb.append("==>");
            sb.append(str2);
            sb.append("\n==>");
            sb.append(obj);
        }
    }
}
