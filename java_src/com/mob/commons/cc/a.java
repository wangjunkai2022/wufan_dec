package com.mob.commons.cc;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.PackageManager;
import com.mob.commons.cc.p;
import com.mob.commons.cc.w;
import com.mob.tools.MobHandlerThread;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.network.NetworkHelper;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final q f52910a = new q();

    /* renamed from: b  reason: collision with root package name */
    private static volatile p f52911b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile p f52912c;

    static {
        try {
            f52911b = new p(new p.a() { // from class: com.mob.commons.cc.a.1
                @Override // com.mob.commons.cc.p.a
                public Object a(String str, ArrayList<Object> arrayList) {
                    try {
                        if (a.f52912c != null) {
                            return a.f52912c.a(str, arrayList);
                        }
                        return null;
                    } catch (Throwable unused) {
                        return null;
                    }
                }
            });
            f52912c = new p(new p.a() { // from class: com.mob.commons.cc.a.2
                @Override // com.mob.commons.cc.p.a
                public Object a(String str, ArrayList<Object> arrayList) {
                    return str + "" + arrayList;
                }
            });
            f52911b.a("tt", null);
        } catch (Throwable unused) {
        }
    }

    public static int a() {
        return w.a();
    }

    public static void a(Context context, byte[] bArr, String str, Method method) throws Throwable {
        a(w.a(bArr), context, str, method);
    }

    public static void a(Context context, String str, String str2, Method method) throws Throwable {
        a(w.a(str), context, str2, method);
    }

    public static void a(Context context, String str, String str2, HashMap<String, Object> hashMap, HashMap<String, Object> hashMap2) throws Throwable {
        w.c a4 = w.a(str);
        a4.a("ss_dhMap", hashMap).a("ss_dataMaps", hashMap2);
        a(a4, context, str2, (Method) null);
    }

    public static LinkedList<Object> a(Object obj, Object... objArr) throws Throwable {
        return ((y) obj).b(objArr);
    }

    private static void a(w.c cVar, Context context, String str, Method method) throws Throwable {
        cVar.a(com.mob.commons.n.a("012PekPdh'cgce)c4cddbcjdg^hc"), o.class).a("MNT", e.class).a("MSPH", h.class).a("MBH", c.class).a(com.mob.commons.n.a("016!fhdbebgccecjZg+dc7h4cgdhKb<cgXh0ce)g"), MobHandlerThread.class).a(com.mob.commons.n.a("0209fhdbebeicgdbce2gScfceefTc-fd;h%cf3hIcd>ihYcg"), i.class).a(com.mob.commons.n.a("018Gfhdbebffdbcj chNcjEcXfd<h9efdbdc]ih cg"), l.class).a(com.mob.commons.n.a("020_fhdbebdg,hFcg,iHcdcfZh0ffdbcjcj9hScfTc6cddbcj"), m.class).a(com.mob.commons.n.a("018<fhdbebffdbcjMchXcjYcEekebef0h8cgIih2cg"), k.class).a(com.mob.commons.n.a("0096dgeigccecj)gLdcAh cg"), p.class).a("MNC", NetCommunicator.class).a(com.mob.commons.n.a("004Nfhdedhek"), NetworkHelper.NetworkTimeOut.class).a(i.class, i.class).a(k.class, k.class).a(m.class, n.class).a(q.class, q.class).a(o.class, o.class).a(e.class, e.class).a(h.class, j.class).a(c.class, c.class).a(Context.class, d.class).a(PackageManager.class, g.class).a(NotificationManager.class, f.class).a(ActivityManager.class, b.class).a("ss_suls", f52910a).a(com.mob.commons.n.a("015Qefefcccfdbcj1ch7ckFc3fgcecgceKk"), context).a(com.mob.commons.n.a("014Sefefccef0cHcecgIcLfgcecgceOk>ef"), str).a(com.mob.commons.n.a("012'efefccefSc<cecg9cHdhcd:kh"), Long.valueOf(System.currentTimeMillis())).a(com.mob.commons.n.a("0067efefccGkgd"), method).a(com.mob.commons.n.a("0169cfdb1kk*dbcjceLdJdkef4g?cidkcf1gNcf"));
        cVar.a();
    }
}
