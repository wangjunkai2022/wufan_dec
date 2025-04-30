package com.ss.android.downloadlib.a.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.ss.android.downloadlib.a.b.c;
import com.ss.android.downloadlib.addownload.j;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: AidlClient.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private static String f57032d = "";

    /* renamed from: e  reason: collision with root package name */
    private static String f57033e = "";

    /* renamed from: f  reason: collision with root package name */
    private static String f57034f = "";

    /* renamed from: g  reason: collision with root package name */
    private static volatile a f57035g;

    /* renamed from: a  reason: collision with root package name */
    public c f57036a;

    /* renamed from: k  reason: collision with root package name */
    private Context f57042k;

    /* renamed from: h  reason: collision with root package name */
    private boolean f57039h = true;

    /* renamed from: i  reason: collision with root package name */
    private boolean f57040i = false;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f57041j = false;

    /* renamed from: l  reason: collision with root package name */
    private final List<Pair<b, d>> f57043l = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final List<InterfaceC0292a> f57037b = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    private final ServiceConnection f57044m = new ServiceConnection() { // from class: com.ss.android.downloadlib.a.b.a.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (a.this.f57038c) {
                a.this.a(false);
                a.this.f57036a = c.a.a(iBinder);
                a.this.c();
                for (InterfaceC0292a interfaceC0292a : a.this.f57037b) {
                    interfaceC0292a.a();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (a.this.f57038c) {
                a.this.a(false);
                a aVar = a.this;
                aVar.f57036a = null;
                for (InterfaceC0292a interfaceC0292a : aVar.f57037b) {
                    interfaceC0292a.b();
                }
            }
        }
    };

    /* renamed from: n  reason: collision with root package name */
    private String f57045n = "";

    /* renamed from: c  reason: collision with root package name */
    public final Object f57038c = new Object();

    /* compiled from: AidlClient.java */
    /* renamed from: com.ss.android.downloadlib.a.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0292a {
        void a();

        void b();
    }

    private a() {
    }

    public static a a() {
        if (f57035g == null) {
            synchronized (a.class) {
                if (f57035g == null) {
                    f57035g = new a();
                }
            }
        }
        return f57035g;
    }

    public void b() {
        if (this.f57036a != null) {
            this.f57042k.unbindService(this.f57044m);
            this.f57036a = null;
        }
        this.f57037b.clear();
        this.f57043l.clear();
    }

    public void c() {
        for (Pair<b, d> pair : this.f57043l) {
            try {
                this.f57036a.a((b) pair.first, (d) pair.second);
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }
        this.f57043l.clear();
    }

    public boolean d() {
        return this.f57041j;
    }

    public boolean a(Context context, boolean z3) {
        if (TextUtils.isEmpty(f57032d)) {
            JSONObject i2 = j.i();
            String optString = i2.optString(ai.az);
            f57032d = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("q"), optString);
            f57033e = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString(ai.aE), optString);
            f57034f = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("w"), optString);
        }
        this.f57040i = z3;
        if (context != null) {
            this.f57042k = context.getApplicationContext();
            if (TextUtils.isEmpty(f57034f)) {
                f57034f = this.f57042k.getPackageName();
            }
            if (this.f57036a != null || d()) {
                return true;
            }
            return this.f57042k.bindService(a(context), this.f57044m, 33);
        }
        return true;
    }

    public Intent a(Context context) {
        Intent intent = new Intent();
        intent.setAction(f57032d);
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.size() != 1) {
            return null;
        }
        for (ResolveInfo resolveInfo : queryIntentServices) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            String str = serviceInfo.packageName;
            String str2 = serviceInfo.name;
            if (f57033e.equals(str)) {
                ComponentName componentName = new ComponentName(str, str2);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                return intent2;
            }
        }
        return null;
    }

    public void a(b bVar, d dVar) {
        synchronized (this.f57038c) {
            bVar.f57051e = f57034f;
            if (TextUtils.isEmpty(bVar.f57052f)) {
                bVar.f57052f = this.f57045n;
            }
            c cVar = this.f57036a;
            if (cVar != null) {
                try {
                    cVar.a(bVar, dVar);
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
            } else if (d() || a(this.f57042k, this.f57040i)) {
                this.f57043l.add(Pair.create(bVar, dVar));
            }
        }
    }

    public void a(boolean z3) {
        this.f57041j = z3;
    }
}
