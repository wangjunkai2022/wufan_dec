package com.mob.commons;

import android.content.Context;
import android.text.TextUtils;
import com.mob.tools.MobLog;
import com.mob.tools.network.NetCommunicator;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static volatile String f53005a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Boolean f53006b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile String f53007c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f53008d;

    /* renamed from: e  reason: collision with root package name */
    private static HashSet<String> f53009e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private static final a f53010f = new a();

    public static String b() {
        if (a()) {
            return null;
        }
        if (TextUtils.isEmpty(f53005a)) {
            f53005a = d().a();
        }
        return f53005a;
    }

    static /* synthetic */ a c() {
        return d();
    }

    private static a d() {
        return f53010f;
    }

    public static boolean a() {
        return !b.a();
    }

    public static String a(Context context) {
        return com.mob.tools.a.c.a(context).b().aY();
    }

    public static synchronized String a(MobProduct mobProduct) {
        synchronized (e.class) {
            HashMap<String, Object> b4 = b(mobProduct);
            if (b4 != null) {
                return (String) b4.get(NetCommunicator.KEY_DUID);
            }
            return null;
        }
    }

    public static synchronized HashMap<String, Object> b(final MobProduct mobProduct) {
        boolean z3;
        HashMap<String, Object> hashMap;
        synchronized (e.class) {
            boolean z4 = true;
            if (mobProduct != null) {
                v.a(mobProduct);
                z3 = !f53009e.contains(mobProduct.getProductTag());
                if (z3) {
                    f53009e.add(mobProduct.getProductTag());
                }
            } else {
                z3 = false;
            }
            if (TextUtils.isEmpty(f53005a)) {
                f53005a = d().b();
            } else {
                z4 = z3;
            }
            MobLog.getInstance().d("aut pro: " + mobProduct + ", ndReg: " + z4 + ", hsReged: " + f53008d, new Object[0]);
            if (z4 || !f53008d) {
                u.f53114c.execute(new com.mob.tools.utils.c() { // from class: com.mob.commons.e.1
                    @Override // com.mob.tools.utils.c
                    protected void a() {
                        if (b.a(i.a("002j7fg"))) {
                            boolean unused = e.f53008d = true;
                            if (!b.d()) {
                                int i2 = 0;
                                while (i2 < 5) {
                                    i2++;
                                    try {
                                        Thread.sleep(5000L);
                                        if (b.d()) {
                                            break;
                                        }
                                    } catch (Throwable unused2) {
                                    }
                                }
                            }
                            if (b.d()) {
                                e.c().a(MobProduct.this);
                            }
                        }
                    }
                });
            }
            if (f53006b == null) {
                String b4 = w.a().b("key_curr_passed_duid", (String) null);
                f53007c = b4;
                if (!TextUtils.isEmpty(b4) && !b4.equals(f53005a)) {
                    f53006b = Boolean.TRUE;
                } else {
                    f53006b = Boolean.FALSE;
                }
            }
            w.a().a("key_curr_passed_duid", f53005a);
            hashMap = new HashMap<>();
            hashMap.put(NetCommunicator.KEY_DUID, f53005a);
            hashMap.put(NetCommunicator.KEY_IS_MODIFIED, Boolean.valueOf(f53006b.booleanValue()));
            hashMap.put(NetCommunicator.KEY_DUID_PREVIOUS, f53007c);
        }
        return hashMap;
    }
}
