package com.sdk.k;

import android.content.Context;
import com.sdk.Unicorn.base.framework.bean.KInfo;
import com.sdk.Unicorn.base.framework.utils.app.AppUtils;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class a extends com.sdk.i.a {
    public static String a(Context context) {
        String str = null;
        if (AppUtils.getAndroidSDKVersion(context) > 21) {
            Iterator it2 = com.sdk.f.a.a().iterator();
            while (it2.hasNext()) {
                KInfo kInfo = (KInfo) it2.next();
                if (kInfo.isIdfd()) {
                    str = kInfo.getIc();
                }
            }
            return str;
        }
        return (String) com.sdk.i.a.invokeOnTelephonyManager(context, "getSimSerialNumber", Boolean.FALSE, null, null);
    }
}
