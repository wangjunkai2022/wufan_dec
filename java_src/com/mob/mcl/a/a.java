package com.mob.mcl.a;

import android.content.Context;
import android.os.Bundle;
import com.mob.MobSDK;
import com.mob.apc.b;
import com.mob.mcl.MobMCL;
import com.mob.mcl.c.h;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.network.StringPart;
import com.mob.tools.utils.DeviceHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f53167a;

    /* renamed from: b  reason: collision with root package name */
    private Set<String> f53168b;

    /* renamed from: c  reason: collision with root package name */
    private String f53169c;

    private a() {
    }

    public static a a() {
        if (f53167a == null) {
            synchronized (a.class) {
                if (f53167a == null) {
                    f53167a = new a();
                }
            }
        }
        return f53167a;
    }

    public boolean b() {
        Set<String> set = this.f53168b;
        return set != null && set.size() > 0;
    }

    public void c() {
        Bundle bundle;
        if (h.b().f53223i) {
            ArrayList<String> arrayList = new ArrayList();
            boolean isInMainProcess = DeviceHelper.getInstance(MobSDK.getContext()).isInMainProcess();
            com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
            a4.b("qy tp svc, main p: " + isInMainProcess);
            if (!isInMainProcess) {
                arrayList.add(MobSDK.getContext().getPackageName());
            }
            arrayList.addAll(com.mob.apc.b.b());
            com.mob.mcl.d.b a5 = com.mob.mcl.d.b.a();
            a5.b("qy : " + arrayList.toString());
            this.f53168b = new LinkedHashSet();
            for (String str : arrayList) {
                com.mob.apc.a aVar = new com.mob.apc.a();
                aVar.f52719a = 1;
                try {
                    com.mob.mcl.d.b a6 = com.mob.mcl.d.b.a();
                    a6.b("sd apc mg : " + aVar.toString() + " to ->" + str);
                    com.mob.apc.a a7 = com.mob.apc.b.a(1, str, this.f53169c, aVar, 5000L);
                    if (a7 != null && (bundle = a7.f52723e) != null && a7.f52719a == 1 && bundle.getBoolean("isTcpAvailable")) {
                        this.f53168b.add(str);
                    }
                } catch (Throwable th) {
                    com.mob.mcl.d.b a8 = com.mob.mcl.d.b.a();
                    a8.b("query tcp exp : " + th.getMessage());
                }
            }
            com.mob.mcl.d.b a9 = com.mob.mcl.d.b.a();
            a9.b("apc available pg : " + this.f53168b.toString());
        }
    }

    public void b(String str, com.mob.apc.a aVar) {
        if (str != null) {
            Bundle bundle = new Bundle();
            bundle.putString("data", str);
            aVar.f52723e = bundle;
        }
    }

    public void a(Context context, b.InterfaceC0237b interfaceC0237b) {
        this.f53169c = MobMCL.SDK_TAG;
        com.mob.apc.b.a(context);
        boolean isInMainProcess = DeviceHelper.getInstance(context).isInMainProcess();
        com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
        a4.b("init apc, main p: " + isInMainProcess);
        if (isInMainProcess) {
            com.mob.apc.b.a(this.f53169c, interfaceC0237b);
        }
    }

    public com.mob.apc.a a(int i2, Bundle bundle, String str, int i4) {
        try {
            com.mob.apc.a aVar = new com.mob.apc.a();
            aVar.f52719a = i2;
            aVar.f52723e = bundle;
            com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
            a4.b("apc fw mg : " + i2 + " " + aVar.toString() + " to ->" + str);
            return com.mob.apc.b.a(1, str, this.f53169c, aVar, i4);
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
            return null;
        }
    }

    public String a(String str, String str2, HashMap<String, String> hashMap, StringPart stringPart, int i2, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        com.mob.apc.a a4;
        Bundle bundle;
        if (b()) {
            ArrayList<String> arrayList = new ArrayList();
            arrayList.addAll(this.f53168b);
            for (String str3 : arrayList) {
                com.mob.apc.a aVar = new com.mob.apc.a();
                aVar.f52719a = 2;
                aVar.f52723e = b.a(str, str2, hashMap, stringPart, i2, networkTimeOut);
                try {
                    com.mob.mcl.d.b a5 = com.mob.mcl.d.b.a();
                    a5.b("apc sd mg : " + aVar.toString() + " to ->" + str3);
                    a4 = com.mob.apc.b.a(1, str3, this.f53169c, aVar, (long) networkTimeOut.readTimout);
                } catch (Throwable th) {
                    com.mob.mcl.d.b.a().a(th);
                }
                if (a4 != null && a4.f52719a == 2 && (bundle = a4.f52723e) != null) {
                    com.mob.mcl.d.b a6 = com.mob.mcl.d.b.a();
                    a6.b("apc receive rp mg : " + bundle.getString("data"));
                    str = bundle.getString("data");
                    return str;
                }
                com.mob.mcl.d.b a7 = com.mob.mcl.d.b.a();
                a7.b("apc receive rp : " + a4);
            }
            return null;
        }
        com.mob.mcl.d.b.a().a("apc list is null");
        return null;
    }

    public com.mob.apc.a a(String str, com.mob.apc.a aVar) {
        com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
        a4.a("apc received mg " + aVar + " from -> " + str);
        if (aVar != null) {
            com.mob.apc.a aVar2 = new com.mob.apc.a();
            aVar2.f52719a = aVar.f52719a;
            int i2 = aVar.f52719a;
            if (i2 == 1) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("isTcpAvailable", h.b().e());
                aVar2.f52723e = bundle;
                return aVar2;
            } else if (i2 == 2) {
                aVar2.f52722d = b.a(aVar.f52723e);
                return aVar2;
            } else if (i2 == 9004) {
                return aVar2;
            } else {
                return null;
            }
        }
        return null;
    }
}
