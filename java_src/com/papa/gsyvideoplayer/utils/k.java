package com.papa.gsyvideoplayer.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.core.net.ConnectivityManagerCompat;
/* compiled from: NetInfoModule.java */
/* loaded from: classes4.dex */
public class k {

    /* renamed from: g  reason: collision with root package name */
    private static final String f55244g = "NONE";

    /* renamed from: h  reason: collision with root package name */
    private static final String f55245h = "UNKNOWN";

    /* renamed from: i  reason: collision with root package name */
    private static final String f55246i = "To use NetInfo on Android, add the following to your AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />";

    /* renamed from: j  reason: collision with root package name */
    private static final String f55247j = "E_MISSING_PERMISSION";

    /* renamed from: a  reason: collision with root package name */
    private final ConnectivityManager f55248a;

    /* renamed from: c  reason: collision with root package name */
    private c f55250c;

    /* renamed from: e  reason: collision with root package name */
    private Context f55252e;

    /* renamed from: d  reason: collision with root package name */
    private String f55251d = "";

    /* renamed from: f  reason: collision with root package name */
    private boolean f55253f = false;

    /* renamed from: b  reason: collision with root package name */
    private final b f55249b = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NetInfoModule.java */
    /* loaded from: classes4.dex */
    public class b extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private boolean f55254a;

        private b() {
            this.f55254a = false;
        }

        public boolean a() {
            return this.f55254a;
        }

        public void b(boolean z3) {
            this.f55254a = z3;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                k.this.i();
            }
        }
    }

    /* compiled from: NetInfoModule.java */
    /* loaded from: classes4.dex */
    public interface c {
        void a(String str);
    }

    public k(Context context, c cVar) {
        this.f55252e = context;
        this.f55248a = (ConnectivityManager) context.getSystemService("connectivity");
        this.f55250c = cVar;
    }

    private void h() {
        c cVar = this.f55250c;
        if (cVar != null) {
            cVar.a(this.f55251d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        String b4 = b();
        if (b4.equalsIgnoreCase(this.f55251d)) {
            return;
        }
        this.f55251d = b4;
        h();
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.f55252e.registerReceiver(this.f55249b, intentFilter);
        this.f55249b.b(true);
    }

    private void unregisterReceiver() {
        if (this.f55249b.a()) {
            this.f55252e.unregisterReceiver(this.f55249b);
            this.f55249b.b(false);
        }
    }

    public String b() {
        String str = f55245h;
        try {
            NetworkInfo activeNetworkInfo = this.f55248a.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (ConnectivityManager.isNetworkTypeValid(activeNetworkInfo.getType())) {
                    str = activeNetworkInfo.getTypeName().toUpperCase();
                    return str;
                }
                return f55245h;
            }
            return f55244g;
        } catch (SecurityException unused) {
            this.f55253f = true;
            return str;
        }
    }

    public String c() {
        return this.f55253f ? f55247j : this.f55251d;
    }

    public boolean d() {
        if (this.f55253f) {
            return false;
        }
        return ConnectivityManagerCompat.isActiveNetworkMetered(this.f55248a);
    }

    public void e() {
    }

    public void f() {
        unregisterReceiver();
    }

    public void g() {
        registerReceiver();
    }
}
