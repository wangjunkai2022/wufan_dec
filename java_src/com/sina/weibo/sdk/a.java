package com.sina.weibo.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.sina.weibo.BuildConfig;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.b.a;
import com.sina.weibo.sdk.openapi.SdkListener;
import java.util.List;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f56719a;

    /* renamed from: b  reason: collision with root package name */
    private static AuthInfo f56720b;

    public static void a(AuthInfo authInfo, SdkListener sdkListener) {
        if (f56719a) {
            return;
        }
        if (authInfo != null) {
            f56720b = authInfo;
            f56719a = true;
            if (sdkListener != null) {
                sdkListener.onInitSuccess();
                return;
            }
            return;
        }
        throw new RuntimeException("authInfo must not be null.");
    }

    public static boolean b(Context context) {
        a.C0286a e4;
        return a(context) && (e4 = com.sina.weibo.sdk.b.a.e(context)) != null && e4.ah >= 10772;
    }

    public static boolean a(Context context) {
        List<ResolveInfo> queryIntentServices;
        String[] strArr = {BuildConfig.APPLICATION_ID, "com.sina.weibog3"};
        for (int i2 = 0; i2 < 2; i2++) {
            String str = strArr[i2];
            Intent intent = new Intent("com.sina.weibo.action.sdkidentity");
            intent.setPackage(str);
            intent.addCategory("android.intent.category.DEFAULT");
            if (context != null && (queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0)) != null && !queryIntentServices.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public static AuthInfo a() {
        if (f56719a) {
            return f56720b;
        }
        throw new RuntimeException("please init sdk before use it. Wb.install()");
    }
}
