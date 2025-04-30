package com.mob.commons;

import android.content.Context;
import android.os.Bundle;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f53082a = null;

    /* renamed from: b  reason: collision with root package name */
    public static volatile String f53083b = null;

    /* renamed from: c  reason: collision with root package name */
    public static volatile InternationalDomain f53084c = null;

    /* renamed from: d  reason: collision with root package name */
    public static volatile boolean f53085d = false;

    /* renamed from: e  reason: collision with root package name */
    public static volatile boolean f53086e = true;

    /* renamed from: f  reason: collision with root package name */
    public static volatile boolean f53087f = false;

    /* renamed from: g  reason: collision with root package name */
    public static volatile boolean f53088g = true;

    /* renamed from: h  reason: collision with root package name */
    public static volatile boolean f53089h;

    /* renamed from: i  reason: collision with root package name */
    public static volatile String f53090i;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicBoolean f53091j = new AtomicBoolean(false);

    public static void a(Context context) {
        Bundle bundle;
        try {
            if (!f53091j.compareAndSet(false, true) || (bundle = DeviceHelper.getInstance(context).getPInfo(context.getPackageName(), 128).applicationInfo.metaData) == null) {
                return;
            }
            try {
                if (f53082a == null) {
                    f53082a = bundle.getString("Mob-AppKey");
                }
                if (f53083b == null) {
                    f53083b = bundle.getString("Mob-AppSecret");
                }
                if (f53083b == null) {
                    f53083b = bundle.getString("Mob-AppSeret");
                }
            } catch (Throwable unused) {
            }
            String string = bundle.getString(a("0063ehdbPkAcecdcj"));
            if (string != null) {
                f53084c = InternationalDomain.domainOf(string);
            }
            try {
                Object obj = bundle.get("Mob-OdVivoAppId");
                if (obj != null) {
                    f53090i = String.valueOf(obj).trim();
                }
            } catch (Throwable unused2) {
            }
            f53085d = a(bundle, a("0093fhdbebghgc_ccd=ef"), false);
            f53086e = a(bundle, a("015,fhdbebghfg]d^de>h%cfEh'efefcecgch"), f53086e);
            f53087f = a(bundle, a("006Xfhdbebghfehd"), false);
            f53088g = a(bundle, "Mob-elog", true);
            f53089h = a(bundle, "Mob-GPP", false);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    public static boolean a(Bundle bundle, String str, boolean z3) {
        try {
            Object obj = bundle.get(str);
            if (obj == null) {
                return z3;
            }
            if (obj instanceof String) {
                return a("003BchKhJef").equalsIgnoreCase(String.valueOf(obj));
            }
            return Boolean.parseBoolean(String.valueOf(obj));
        } catch (Throwable unused) {
            return z3;
        }
    }

    public static String a(String str) {
        return r.a(str, 98);
    }
}
