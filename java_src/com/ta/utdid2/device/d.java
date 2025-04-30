package com.ta.utdid2.device;

import android.content.Context;
import android.provider.Settings;
import com.ta.utdid2.android.utils.g;
import com.ta.utdid2.android.utils.i;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Random;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: i  reason: collision with root package name */
    private static final String f59221i = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";

    /* renamed from: k  reason: collision with root package name */
    private static d f59223k = null;

    /* renamed from: l  reason: collision with root package name */
    static final String f59224l = "dxCRMxhQkdGePGnp";

    /* renamed from: m  reason: collision with root package name */
    static final String f59225m = "mqBRboGZkQPcAkyk";

    /* renamed from: n  reason: collision with root package name */
    private static final String f59226n = ".DataStorage";

    /* renamed from: o  reason: collision with root package name */
    private static final String f59227o = "ContextData";

    /* renamed from: q  reason: collision with root package name */
    private static final String f59229q = "Alvin2";

    /* renamed from: a  reason: collision with root package name */
    private Context f59230a;

    /* renamed from: c  reason: collision with root package name */
    private f f59232c;

    /* renamed from: d  reason: collision with root package name */
    private String f59233d;

    /* renamed from: e  reason: collision with root package name */
    private String f59234e;

    /* renamed from: f  reason: collision with root package name */
    private com.ta.utdid2.core.persistent.c f59235f;

    /* renamed from: g  reason: collision with root package name */
    private com.ta.utdid2.core.persistent.c f59236g;

    /* renamed from: j  reason: collision with root package name */
    private static final Object f59222j = new Object();

    /* renamed from: p  reason: collision with root package name */
    private static final String f59228p = ".UTSystemConfig" + File.separator + "Global";

    /* renamed from: b  reason: collision with root package name */
    private String f59231b = null;

    /* renamed from: h  reason: collision with root package name */
    private Pattern f59237h = Pattern.compile("[^0-9a-zA-Z=/+]+");

    public d(Context context) {
        this.f59230a = null;
        this.f59232c = null;
        this.f59233d = "xx_utdid_key";
        this.f59234e = "xx_utdid_domain";
        this.f59235f = null;
        this.f59236g = null;
        this.f59230a = context;
        this.f59236g = new com.ta.utdid2.core.persistent.c(context, f59228p, f59229q, false, true);
        this.f59235f = new com.ta.utdid2.core.persistent.c(context, f59226n, f59227o, false, true);
        this.f59232c = new f();
        this.f59233d = String.format("K_%d", Integer.valueOf(i.b(this.f59233d)));
        this.f59234e = String.format("D_%d", Integer.valueOf(i.b(this.f59234e)));
    }

    private static String a(byte[] bArr) throws Exception {
        Mac mac = Mac.getInstance(com.alipay.security.mobile.module.commonutils.crypto.c.f9885a);
        mac.init(new SecretKeySpec(f59221i.getBytes(), mac.getAlgorithm()));
        return com.ta.utdid2.android.utils.b.f(mac.doFinal(bArr), 2);
    }

    private final byte[] b() throws Exception {
        String sb;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int nextInt = new Random().nextInt();
        byte[] a4 = com.ta.utdid2.android.utils.e.a(currentTimeMillis);
        byte[] a5 = com.ta.utdid2.android.utils.e.a(nextInt);
        byteArrayOutputStream.write(a4, 0, 4);
        byteArrayOutputStream.write(a5, 0, 4);
        byteArrayOutputStream.write(3);
        byteArrayOutputStream.write(0);
        try {
            sb = g.a(this.f59230a);
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(new Random().nextInt());
            sb = sb2.toString();
        }
        byteArrayOutputStream.write(com.ta.utdid2.android.utils.e.a(i.b(sb)), 0, 4);
        byteArrayOutputStream.write(com.ta.utdid2.android.utils.e.a(i.b(a(byteArrayOutputStream.toByteArray()))));
        return byteArrayOutputStream.toByteArray();
    }

    private void c() {
        com.ta.utdid2.core.persistent.c cVar = this.f59236g;
        if (cVar != null) {
            if (i.c(cVar.l("UTDID2"))) {
                String l4 = this.f59236g.l("UTDID");
                if (!i.c(l4)) {
                    k(l4);
                }
            }
            boolean z3 = false;
            boolean z4 = true;
            if (!i.c(this.f59236g.l("DID"))) {
                this.f59236g.u("DID");
                z3 = true;
            }
            if (!i.c(this.f59236g.l("EI"))) {
                this.f59236g.u("EI");
                z3 = true;
            }
            if (i.c(this.f59236g.l("SI"))) {
                z4 = z3;
            } else {
                this.f59236g.u("SI");
            }
            if (z4) {
                this.f59236g.c();
            }
        }
    }

    private String d() {
        com.ta.utdid2.core.persistent.c cVar = this.f59236g;
        if (cVar != null) {
            String l4 = cVar.l("UTDID2");
            if (i.c(l4) || this.f59232c.d(l4) == null) {
                return null;
            }
            return l4;
        }
        return null;
    }

    public static d f(Context context) {
        if (context != null && f59223k == null) {
            synchronized (f59222j) {
                if (f59223k == null) {
                    d dVar = new d(context);
                    f59223k = dVar;
                    dVar.c();
                }
            }
        }
        return f59223k;
    }

    private boolean g(String str) {
        if (str != null) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (24 == str.length() && !this.f59237h.matcher(str).find()) {
                return true;
            }
        }
        return false;
    }

    private void h(String str) {
        com.ta.utdid2.core.persistent.c cVar;
        if (str == null || (cVar = this.f59235f) == null || str.equals(cVar.l(this.f59233d))) {
            return;
        }
        this.f59235f.s(this.f59233d, str);
        this.f59235f.c();
    }

    private void i(String str) {
        if (this.f59230a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0 && g(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (24 == str.length()) {
                String str2 = null;
                try {
                    str2 = Settings.System.getString(this.f59230a.getContentResolver(), f59225m);
                } catch (Exception unused) {
                }
                if (g(str2)) {
                    return;
                }
                try {
                    Settings.System.putString(this.f59230a.getContentResolver(), f59225m, str);
                } catch (Exception unused2) {
                }
            }
        }
    }

    private void j(String str) {
        if (this.f59230a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") != 0 || str == null) {
            return;
        }
        l(str);
    }

    private void k(String str) {
        com.ta.utdid2.core.persistent.c cVar;
        if (g(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (str.length() != 24 || (cVar = this.f59236g) == null) {
                return;
            }
            cVar.s("UTDID2", str);
            this.f59236g.c();
        }
    }

    private void l(String str) {
        String str2;
        try {
            str2 = Settings.System.getString(this.f59230a.getContentResolver(), f59224l);
        } catch (Exception unused) {
            str2 = null;
        }
        if (str.equals(str2)) {
            return;
        }
        try {
            Settings.System.putString(this.f59230a.getContentResolver(), f59224l, str);
        } catch (Exception unused2) {
        }
    }

    public synchronized String e() {
        String str;
        String string;
        String str2 = this.f59231b;
        if (str2 != null) {
            return str2;
        }
        try {
            string = Settings.System.getString(this.f59230a.getContentResolver(), f59225m);
        } catch (Exception unused) {
        }
        if (g(string)) {
            return string;
        }
        e eVar = new e();
        boolean z3 = false;
        try {
            str = Settings.System.getString(this.f59230a.getContentResolver(), f59224l);
        } catch (Exception unused2) {
            str = null;
        }
        if (i.c(str)) {
            z3 = true;
        } else {
            String b4 = eVar.b(str);
            if (g(b4)) {
                i(b4);
                return b4;
            }
            String a4 = eVar.a(str);
            if (g(a4)) {
                String d4 = this.f59232c.d(a4);
                if (!i.c(d4)) {
                    j(d4);
                    try {
                        str = Settings.System.getString(this.f59230a.getContentResolver(), f59224l);
                    } catch (Exception unused3) {
                    }
                }
            }
            String a5 = this.f59232c.a(str);
            if (g(a5)) {
                this.f59231b = a5;
                k(a5);
                h(str);
                i(this.f59231b);
                return this.f59231b;
            }
        }
        String d5 = d();
        if (g(d5)) {
            String d6 = this.f59232c.d(d5);
            if (z3) {
                j(d6);
            }
            i(d5);
            h(d6);
            this.f59231b = d5;
            return d5;
        }
        String l4 = this.f59235f.l(this.f59233d);
        if (!i.c(l4)) {
            String a6 = eVar.a(l4);
            if (!g(a6)) {
                a6 = this.f59232c.a(l4);
            }
            if (g(a6)) {
                String d7 = this.f59232c.d(a6);
                if (!i.c(a6)) {
                    this.f59231b = a6;
                    if (z3) {
                        j(d7);
                    }
                    k(this.f59231b);
                    return this.f59231b;
                }
            }
        }
        try {
            byte[] b5 = b();
            if (b5 != null) {
                String f4 = com.ta.utdid2.android.utils.b.f(b5, 2);
                this.f59231b = f4;
                k(f4);
                String c4 = this.f59232c.c(b5);
                if (c4 != null) {
                    if (z3) {
                        j(c4);
                    }
                    h(c4);
                }
                return this.f59231b;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return null;
    }
}
