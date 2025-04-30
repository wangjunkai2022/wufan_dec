package com.umeng.commonsdk;

import android.content.Context;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
/* compiled from: UMInnerManager.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Class<?> f60993a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f60994b;

    static {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.UMInnerImpl");
            f60993a = cls;
            Method declaredMethod = cls.getDeclaredMethod("initAndSendInternal", Context.class);
            if (declaredMethod != null) {
                f60994b = declaredMethod;
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context) {
        Method method;
        if (context == null || !UMUtils.isMainProgress(context)) {
            return;
        }
        if (SdkVersion.SDK_TYPE != 1) {
            Class<?> cls = f60993a;
            if (cls == null || (method = f60994b) == null) {
                return;
            }
            try {
                method.invoke(cls, context);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        UMConfigureInternation.sendInternal(context);
    }
}
