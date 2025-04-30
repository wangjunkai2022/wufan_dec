package com.mob.apc.a;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.mob.apc.APCException;
import com.mob.apc.b;
import com.mob.commons.authorize.DeviceAuthorizer;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ReflectHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static c f52737a = new c();

    /* renamed from: i  reason: collision with root package name */
    private static final String[] f52738i = {"com.mob.service.action.MOB_AC_SERVICE"};

    /* renamed from: f  reason: collision with root package name */
    private b.c f52743f;

    /* renamed from: g  reason: collision with root package name */
    private Bundle f52744g;

    /* renamed from: h  reason: collision with root package name */
    private b.a f52745h;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, b.InterfaceC0237b> f52739b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private b f52740c = new b();

    /* renamed from: e  reason: collision with root package name */
    private byte[] f52742e = new byte[0];

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, e> f52741d = new HashMap<>();

    private c() {
    }

    public static c a() {
        return f52737a;
    }

    public List<String> b() {
        ArrayList arrayList = new ArrayList();
        try {
            boolean isClear = DeviceAuthorizer.isClear();
            f a4 = f.a();
            a4.a("[EC] isClear apcsvcl: " + isClear, new Object[0]);
            if (isClear) {
                ReflectHelper.importClass("android.content.Intent");
                List<ResolveInfo> queryIntentServices = DeviceHelper.getInstance(com.mob.apc.b.a()).queryIntentServices((Intent) ReflectHelper.newInstance("Intent", f52738i[0]), 0);
                if (queryIntentServices != null) {
                    for (ResolveInfo resolveInfo : queryIntentServices) {
                        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                        String str = serviceInfo.packageName;
                        if (serviceInfo.exported && !com.mob.apc.b.a().getPackageName().equals(str)) {
                            arrayList.add(resolveInfo.serviceInfo.packageName);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            f.a().a(th);
        }
        f.a().b("[getMAPCServiceList] list: %s", arrayList);
        return arrayList;
    }

    public b.a c() {
        return this.f52745h;
    }

    public void a(String str, b.InterfaceC0237b interfaceC0237b) {
        f.a().b("[addMobIpcMsgListener] %s", str);
        this.f52739b.put(str, interfaceC0237b);
        synchronized (this.f52742e) {
            if (this.f52741d.containsKey(str)) {
                f.a().b("[addMobIpcMsgListener] %s", "buf msg found, callback right now");
                e remove = this.f52741d.remove(str);
                interfaceC0237b.a(remove.f52749c, remove.f52747a, remove.f52751e);
            }
        }
    }

    public com.mob.apc.a a(int i2, String str, String str2, com.mob.apc.a aVar, long j4) throws Throwable {
        boolean isClear = DeviceAuthorizer.isClear();
        f a4 = f.a();
        a4.a("[EC] isClear snd mg: " + isClear, new Object[0]);
        if (isClear) {
            if (TextUtils.isEmpty(str)) {
                f.a().b("[sendMessage] pkg not allowed null.", new Object[0]);
                throw new APCException("pkg not allowed null.");
            } else if (aVar == null) {
                f.a().b("[sendMessage] param not allowed null.", new Object[0]);
                throw new APCException("param not allowed null.");
            } else if (i2 == 1) {
                return this.f52740c.a(str, str2, aVar, j4);
            } else {
                f a5 = f.a();
                a5.b("type " + i2 + " not support.", new Object[0]);
                throw new APCException("type " + i2 + " not support.");
            }
        }
        throw new APCException("ec is not clear");
    }

    public e a(e eVar) {
        try {
            b.InterfaceC0237b interfaceC0237b = this.f52739b.get(eVar.f52748b);
            f.a().b("[onAIDLMessageReceive] innerMessage: %s, listener: %s", eVar, interfaceC0237b);
            if (interfaceC0237b != null) {
                com.mob.apc.a a4 = interfaceC0237b.a(eVar.f52749c, eVar.f52747a, eVar.f52751e);
                f.a().b("[onAIDLMessageReceive] listener apcMessage: %s", a4);
                return new e(a4, eVar.f52748b, eVar.f52751e);
            }
            f.a().b("[onAIDLMessageReceive] No listener detected, buffer this msg", new Object[0]);
            this.f52741d.put(eVar.f52748b, eVar);
            return null;
        } catch (Throwable th) {
            f.a().b("[onAIDLMessageReceive] exception %s", th.getMessage());
            f.a().a(th);
            return null;
        }
    }

    public void a(b.c cVar) {
        f.a().b("[addOnACServiceListener] %s", "done");
        this.f52743f = cVar;
        if (this.f52744g != null) {
            f.a().b("[addOnACServiceListener] %s", "bufBundle detected, callback");
            this.f52743f.a(new Bundle(this.f52744g));
            this.f52743f = null;
            return;
        }
        f.a().b("[addOnACServiceListener] %s", "no bufBundle, nothing to do");
    }

    public void a(b.a aVar) {
        f.a().b("[addMgsRequestListener] %s", "done");
        this.f52745h = aVar;
    }

    public void a(Bundle bundle) {
        if (this.f52743f != null) {
            f.a().b("[onACServiceAct] %s", "listener detected, callback");
            this.f52743f.a(bundle);
            return;
        }
        f.a().b("[onACServiceAct] %s", "no listener detected, cache");
        this.f52744g = new Bundle(bundle);
    }
}
