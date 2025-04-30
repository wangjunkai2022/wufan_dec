package com.sdk.Unicorn.base.api;

import android.content.Context;
import com.sdk.Unicorn.base.framework.utils.app.AppUtils;
import com.sdk.b.a;
import com.sdk.q.b;
import com.sdk.r.d;
/* loaded from: classes4.dex */
public class ToolUtils {
    public static String Base64_Decrypt(String str) {
        return d.a(str);
    }

    public static String RsaDecrypt(String str, String str2) {
        return b.a(str, str2);
    }

    public static void clearCache(Context context) {
        com.sdk.o.b.b(a.f56583a, "cache clear", a.f56584b);
        com.sdk.j.a.a(context, "accessCode");
    }

    public static String getAppMd5(Context context) {
        return AppUtils.getAppMd5(context);
    }
}
