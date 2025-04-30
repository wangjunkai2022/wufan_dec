package com.xinzhu.overmind.server;

import android.app.Service;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.os.IBinder;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubServiceRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ClientServiceManager.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    public static final String f64449b = "ClientServiceManager";

    /* renamed from: c  reason: collision with root package name */
    private static b f64450c = new b();

    /* renamed from: a  reason: collision with root package name */
    private Map<Intent.FilterComparison, com.xinzhu.overmind.client.service.a> f64451a = new HashMap();

    private com.xinzhu.overmind.client.service.a a(Intent intent) {
        return this.f64451a.get(new Intent.FilterComparison(intent));
    }

    public static b b() {
        return f64450c;
    }

    private Service c(Intent intent, ServiceInfo serviceInfo) {
        com.xinzhu.overmind.client.service.a a4 = a(intent);
        if (a4 != null && a4.g() != null) {
            return a4.g();
        }
        Service createService = com.xinzhu.overmind.client.e.getClient().createService(serviceInfo);
        com.xinzhu.overmind.client.service.a aVar = new com.xinzhu.overmind.client.service.a();
        aVar.m(createService);
        this.f64451a.put(new Intent.FilterComparison(intent), aVar);
        return createService;
    }

    public IBinder d(Intent proxyIntent) {
        StubServiceRecord create = StubServiceRecord.create(proxyIntent);
        Intent intent = create.mServiceIntent;
        ServiceInfo serviceInfo = create.mServiceInfo;
        if (intent != null && serviceInfo != null) {
            Service c4 = c(intent, serviceInfo);
            intent.setExtrasClassLoader(c4.getClassLoader());
            com.xinzhu.overmind.client.service.a a4 = a(intent);
            a4.j(intent);
            if (a4.i(intent)) {
                if (a4.k()) {
                    c4.onRebind(intent);
                    a4.l(false);
                }
                return a4.e(intent);
            }
            try {
                IBinder onBind = c4.onBind(intent);
                a4.b(intent, onBind);
                return onBind;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public void e(Configuration newConfig) {
        if (this.f64451a.size() > 0) {
            for (com.xinzhu.overmind.client.service.a aVar : this.f64451a.values()) {
                try {
                    aVar.g().onConfigurationChanged(newConfig);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void f() {
        if (this.f64451a.size() > 0) {
            for (com.xinzhu.overmind.client.service.a aVar : this.f64451a.values()) {
                try {
                    aVar.g().onDestroy();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        this.f64451a.clear();
    }

    public void g() {
        if (this.f64451a.size() > 0) {
            for (com.xinzhu.overmind.client.service.a aVar : this.f64451a.values()) {
                try {
                    aVar.g().onLowMemory();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public int h(Intent proxyIntent, int flags, int startId) {
        ServiceInfo serviceInfo;
        StubServiceRecord create = StubServiceRecord.create(proxyIntent);
        Intent intent = create.mServiceIntent;
        if (intent != null && (serviceInfo = create.mServiceInfo) != null) {
            Service c4 = c(intent, serviceInfo);
            create.mServiceIntent.setExtrasClassLoader(c4.getClassLoader());
            a(create.mServiceIntent).n(create.mStartId);
            try {
                int onStartCommand = c4.onStartCommand(create.mServiceIntent, flags, create.mStartId);
                Overmind.getMindActivityManager().s(proxyIntent, create.mUserId);
                return onStartCommand;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return 2;
    }

    public void i(int level) {
        if (this.f64451a.size() > 0) {
            for (com.xinzhu.overmind.client.service.a aVar : this.f64451a.values()) {
                try {
                    aVar.g().onTrimMemory(level);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public boolean j(Intent proxyIntent) {
        StubServiceRecord create = StubServiceRecord.create(proxyIntent);
        Intent intent = create.mServiceIntent;
        if (intent != null && create.mServiceInfo != null) {
            try {
                UnbindRecord r3 = Overmind.getMindActivityManager().r(proxyIntent, com.xinzhu.overmind.client.e.getUserId());
                if (r3 == null) {
                    return false;
                }
                Service c4 = c(create.mServiceIntent, create.mServiceInfo);
                create.mServiceIntent.setExtrasClassLoader(c4.getClassLoader());
                com.xinzhu.overmind.client.service.a a4 = a(intent);
                boolean z3 = r3.d() == 0;
                if (z3 || a4.c(intent)) {
                    c4.onUnbind(intent);
                    if (z3) {
                        c4.onDestroy();
                        Overmind.getMindActivityManager().q(proxyIntent, com.xinzhu.overmind.client.e.getUserId());
                        this.f64451a.remove(new Intent.FilterComparison(intent));
                    }
                    a4.l(true);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public IBinder k(Intent intent) {
        com.xinzhu.overmind.client.service.a a4 = a(intent);
        if (a4 == null) {
            return null;
        }
        return a4.e(intent);
    }

    public void stopService(Intent intent) {
        if (intent == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("stopService：");
        sb.append(intent.toString());
        com.xinzhu.overmind.client.service.a a4 = a(intent);
        if (a4 == null || a4.g() == null || a4.d(intent) > 0) {
            return;
        }
        if (a4.h() > 0) {
            try {
                a4.g().onDestroy();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
