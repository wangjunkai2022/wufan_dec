package com.mob.commons.b;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.mob.commons.b.g;
/* loaded from: classes4.dex */
public class j extends g {
    public j(Context context) {
        super(context);
    }

    private String a(String str, String str2) {
        Bundle b4 = b(str, str2);
        if (a(b4)) {
            return b4.getString(com.mob.commons.o.a("002!de<h"));
        }
        if (b4 != null) {
            return b4.getString(com.mob.commons.o.a("007liVfgfgdfff+i"));
        }
        return null;
    }

    private Bundle b(String str, String str2) {
        Bundle bundle = null;
        try {
            Uri parse = Uri.parse(com.mob.commons.o.a("036UdgecdkNdiSdkSdfgg]dgdkeldkdcfcdedfelde=hiDdk;dVdePdZdi$gZde8hi4dk*d+de]dQdi"));
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                ContentProviderClient acquireUnstableContentProviderClient = this.f52869a.getContentResolver().acquireUnstableContentProviderClient(parse);
                bundle = acquireUnstableContentProviderClient.call(str, str2, null);
                if (i2 >= 24) {
                    acquireUnstableContentProviderClient.close();
                } else {
                    acquireUnstableContentProviderClient.release();
                }
            } else if (i2 >= 11) {
                bundle = this.f52869a.getContentResolver().call(parse, str, str2, (Bundle) null);
            }
        } catch (Throwable th) {
            c.a().a(th);
        }
        return bundle;
    }

    private boolean j() {
        Bundle b4 = b(com.mob.commons.o.a("009%defgehdcZeeYecdh d"), null);
        if (a(b4)) {
            return b4.getBoolean(com.mob.commons.o.a("009Ddefgfgdc]ee<ecdhJd"), true);
        }
        return false;
    }

    @Override // com.mob.commons.b.g
    protected g.c c() {
        g.c cVar = new g.c();
        cVar.f52882a = j();
        cVar.f52884c = a(com.mob.commons.o.a("007]ffHid3ejejegfi"), this.f52870b);
        cVar.f52883b = a(com.mob.commons.o.a("007UffVid_flejegfi"), (String) null);
        cVar.f52886e = a(com.mob.commons.o.a("007CffAidEgfejegfi"), this.f52870b);
        return cVar;
    }

    private boolean a(Bundle bundle) {
        if (bundle != null) {
            try {
                return bundle.getInt(com.mob.commons.o.a("0040dgec!hi"), -1) == 0;
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }
}
