package com.xinzhu.overmind.client.hook.fixer;

import android.content.Context;
import android.content.ContextWrapper;
import com.xinzhu.haunted.android.app.k;
import com.xinzhu.haunted.android.content.a;
import com.xinzhu.haunted.android.content.h;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.d;
import com.xinzhu.overmind.client.hook.proxies.am.b;
import com.xinzhu.overmind.utils.e;
/* loaded from: classes.dex */
public class ContextFixer {
    public static final String TAG = "ContextFixer";

    public static void fix(Context context) {
        int i2 = 0;
        do {
            try {
                if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                    i2++;
                } else {
                    k kVar = new k(context);
                    kVar.t(null);
                    context.getPackageManager();
                    kVar.q(Overmind.getHostPkg());
                    kVar.r(Overmind.getHostPkg());
                    new h(context.getContentResolver()).l0(Overmind.getHostPkg());
                    if (e.h() && kVar.e()) {
                        fixAttributionSource(kVar.i());
                    }
                    d.c().b(b.class);
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        } while (i2 < 10);
    }

    public static void fixAttributionSource(Object input) {
        while (input != null) {
            try {
                a aVar = new a(input);
                Object d4 = aVar.d();
                if (d4 != null) {
                    com.xinzhu.haunted.android.content.b bVar = new com.xinzhu.haunted.android.content.b(d4);
                    bVar.e(Overmind.getHostPkg());
                    if (Overmind.getHostUid() > 0) {
                        bVar.f(Integer.valueOf(Overmind.getHostUid()));
                    }
                }
                input = aVar.c();
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
    }
}
