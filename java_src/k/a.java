package k;

import android.content.Context;
import com.alipay.apmobilesecuritysdk.e.f;
import com.alipay.sdk.cons.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a {
    public static synchronized String a(Context context, Map<String, String> map) {
        synchronized (a.class) {
            HashMap hashMap = new HashMap();
            hashMap.put(b.f9722g, com.alipay.security.mobile.module.commonutils.a.a(map, b.f9722g, ""));
            hashMap.put(b.f9718c, com.alipay.security.mobile.module.commonutils.a.a(map, b.f9718c, ""));
            hashMap.put("userId", com.alipay.security.mobile.module.commonutils.a.a(map, "userId", ""));
            com.alipay.apmobilesecuritysdk.face.a.a(context).d(hashMap);
            String a4 = f.a();
            if (com.alipay.security.mobile.module.commonutils.a.b(a4)) {
                com.alipay.apmobilesecuritysdk.e.b b4 = com.alipay.apmobilesecuritysdk.e.a.b(context);
                if (b4 != null && !com.alipay.security.mobile.module.commonutils.a.b(b4.f9536a)) {
                    return b4.f9536a;
                }
                String b5 = j.a.b(context);
                if (com.alipay.security.mobile.module.commonutils.a.b(b5)) {
                    return com.alipay.apmobilesecuritysdk.f.b.a(context);
                }
                return b5;
            }
            return a4;
        }
    }
}
