package com.ta.utdid2.aid;

import android.content.Context;
import com.ta.utdid2.android.utils.f;
import com.ta.utdid2.android.utils.i;
import com.ta.utdid2.android.utils.k;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f59092b = null;

    /* renamed from: c  reason: collision with root package name */
    private static final String f59093c = "com.ta.utdid2.aid.a";

    /* renamed from: d  reason: collision with root package name */
    private static final int f59094d = 1;

    /* renamed from: a  reason: collision with root package name */
    private Context f59095a;

    private a(Context context) {
        this.f59095a = context;
    }

    private synchronized String a(String str, String str2, String str3) {
        Context context = this.f59095a;
        if (context == null) {
            return "";
        }
        String h4 = f.f(context) ? b.f(this.f59095a).h(str, str2, str3, c.b(this.f59095a, str, str2)) : "";
        c.d(this.f59095a, str, h4, str2);
        return h4;
    }

    public static synchronized a b(Context context) {
        a aVar;
        synchronized (a.class) {
            if (f59092b == null) {
                f59092b = new a(context);
            }
            aVar = f59092b;
        }
        return aVar;
    }

    public String c(String str, String str2, String str3) {
        if (this.f59095a != null && !i.c(str) && !i.c(str2)) {
            String b4 = c.b(this.f59095a, str, str2);
            return ((i.c(b4) || !k.a(c.a(this.f59095a, str, str2), 1)) && f.f(this.f59095a)) ? a(str, str2, str3) : b4;
        }
        StringBuilder sb = new StringBuilder("mContext:");
        sb.append(this.f59095a);
        sb.append("; has appName:");
        sb.append(!i.c(str));
        sb.append("; has token:");
        sb.append(!i.c(str2));
        return "";
    }

    public void d(String str, String str2, String str3, j2.a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f59095a != null && !i.c(str) && !i.c(str2)) {
            String b4 = c.b(this.f59095a, str, str2);
            if (!i.c(b4) && k.a(c.a(this.f59095a, str, str2), 1)) {
                aVar.a(1001, b4);
                return;
            } else if (f.f(this.f59095a)) {
                b.f(this.f59095a).i(str, str2, str3, b4, aVar);
                return;
            } else {
                aVar.a(1003, b4);
                return;
            }
        }
        StringBuilder sb = new StringBuilder("mContext:");
        sb.append(this.f59095a);
        sb.append("; callback:");
        sb.append(aVar);
        sb.append("; has appName:");
        sb.append(!i.c(str));
        sb.append("; has token:");
        sb.append(!i.c(str2));
        aVar.a(1002, "");
    }
}
