package com.mob.tools.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.text.TextUtils;
import com.mob.commons.i;
import com.mob.tools.MobLog;
import com.mob.tools.a.l;
import com.mob.tools.proguard.PublicMemberKeeper;
/* loaded from: classes4.dex */
public class NtFetcher implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static NtFetcher f53937a;

    /* renamed from: b  reason: collision with root package name */
    private Context f53938b;

    /* renamed from: c  reason: collision with root package name */
    private DeviceHelper f53939c;

    /* renamed from: d  reason: collision with root package name */
    private BroadcastReceiver f53940d;

    /* renamed from: e  reason: collision with root package name */
    private String f53941e;

    /* renamed from: f  reason: collision with root package name */
    private Integer f53942f;

    private NtFetcher(Context context) {
        this.f53938b = context;
        DeviceHelper deviceHelper = DeviceHelper.getInstance(context);
        this.f53939c = deviceHelper;
        if (deviceHelper.isSensitiveDevice()) {
            a();
        }
    }

    @TargetApi(21)
    private ConnectivityManager.NetworkCallback b() {
        return new ConnectivityManager.NetworkCallback() { // from class: com.mob.tools.utils.NtFetcher.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                super.onAvailable(network);
                NtFetcher.this.c();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                super.onCapabilitiesChanged(network, networkCapabilities);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
                super.onLinkPropertiesChanged(network, linkProperties);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLosing(Network network, int i2) {
                super.onLosing(network, i2);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                super.onLost(network);
                NtFetcher.this.c();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onUnavailable() {
                super.onUnavailable();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f53941e = g();
        this.f53942f = Integer.valueOf(d());
    }

    private int d() {
        int d4;
        if (this.f53939c.getSystemServiceSafe("phone") == null) {
            return -1;
        }
        try {
            if (Build.VERSION.SDK_INT >= 24 && this.f53939c.checkPermission(i.a("035OfhfmUjJfjgefgVj1gn,gkMfj6n?fghihifggefmgnigifglhkffijjfhnghifffgjgkglgkif"))) {
                d4 = l.a(this.f53938b).a().e();
            } else {
                d4 = l.a(this.f53938b).a().d();
            }
            return d4;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return -1;
        }
    }

    private void e() {
        this.f53940d = new BroadcastReceiver() { // from class: com.mob.tools.utils.NtFetcher.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    if (intent.getAction().equalsIgnoreCase("android.net.conn.CONNECTIVITY_CHANGE")) {
                        NtFetcher.this.c();
                    }
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            if (Build.VERSION.SDK_INT < 33) {
                ReflectHelper.invokeInstanceMethod(this.f53938b, i.a("016Cfj_k-hhfghiKfk;fjig8kEfi;k2fgClkLfj"), new Object[]{this.f53940d, intentFilter}, new Class[]{BroadcastReceiver.class, IntentFilter.class});
            } else {
                ReflectHelper.invokeInstanceMethod(this.f53938b, i.a("016Kfj'kFhhfghiGfk fjigFkFfi7kTfg:lkIfj"), new Object[]{this.f53940d, intentFilter, 4}, new Class[]{BroadcastReceiver.class, IntentFilter.class, Integer.TYPE});
            }
        } catch (Throwable unused) {
        }
    }

    private void f() {
        if (this.f53940d != null) {
            try {
                ReflectHelper.invokeInstanceMethod(this.f53938b, i.a("018Bfefmfj<kIhhfghi4fk!fjigRkYfi'kUfg_lk?fj"), new Object[]{this.f53940d}, new Class[]{BroadcastReceiver.class});
            } catch (Throwable unused) {
            }
            this.f53940d = null;
        }
    }

    private String g() {
        Object systemServiceSafe;
        NetworkInfo activeNetworkInfo;
        try {
            if (this.f53939c.checkPermission(i.a("039]fhfmSjBfjgefg+j=gnVgkMfj4n:fghihifggefmgngliiiiifgjgjffghifgkjehnigjlffgjgkglgkif")) && (systemServiceSafe = this.f53939c.getSystemServiceSafe("connectivity")) != null && (activeNetworkInfo = ((ConnectivityManager) systemServiceSafe).getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type == 0) {
                    if (h()) {
                        return i.a("002Qjgjm");
                    }
                    if (l()) {
                        return i.a("002Tlkjm");
                    }
                    return i.a(m() ? "0026lejm" : "002Vimjm");
                } else if (type != 1) {
                    switch (type) {
                        case 6:
                            return i.a("0050hffg,nBfhfn");
                        case 7:
                            return i.a("009>hegffe6kf?gege8fe");
                        case 8:
                            return i.a("005jVfe_nn$fk");
                        case 9:
                            return i.a("008kfekVfjfm^kf");
                        default:
                            return String.valueOf(type);
                    }
                } else {
                    return i.a("004<hffghjfg");
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        return i.a("004?fmgefm%k");
    }

    public static NtFetcher getInstance(Context context) {
        if (f53937a == null) {
            synchronized (NtFetcher.class) {
                if (f53937a == null) {
                    f53937a = new NtFetcher(context);
                }
            }
        }
        return f53937a;
    }

    private boolean h() {
        if (i() || j()) {
            return true;
        }
        return k();
    }

    private boolean i() {
        try {
            Object systemServiceSafe = this.f53939c.getSystemServiceSafe("phone");
            if (systemServiceSafe != null && this.f53939c.checkPermission(i.a("035 fhfm6j.fjgefg?j2gn4gkRfj8nPfghihifggefmgnigifglhkffijjfhnghifffgjgkglgkif"))) {
                String manufacturer = this.f53939c.getManufacturer();
                if (!TextUtils.isEmpty(manufacturer) && ((manufacturer.contains(i.a("006e2fefhhf2k8fg")) || manufacturer.contains(i.a("006Zjffefhhf$kMfg")) || manufacturer.contains(i.a("0060jfgggljeifgi"))) && Build.VERSION.SDK_INT >= 29)) {
                    if (((Integer) ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeInstanceMethod(systemServiceSafe, i.a("015*hh;kf.gjZk;fj5lOfgfiMk2gj.f:fhTfk"), new Object[0]), i.a("016]hh_kf:jfhfgh.kf[hfgefjflgkfkSgk"), new Object[0])).intValue() == 20) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        return false;
    }

    private boolean j() {
        try {
            Object systemServiceSafe = this.f53939c.getSystemServiceSafe("phone");
            if (systemServiceSafe != null && this.f53939c.checkPermission(i.a("035]fhfm9j?fjgefgUjRgn>gk<fjKn*fghihifggefmgnigifglhkffijjfhnghifffgjgkglgkif")) && Build.VERSION.SDK_INT >= 26) {
                return ((Integer) ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeInstanceMethod(systemServiceSafe, i.a("015.hhRkf,gj1kOfj3lDfgfi4kPgj6f1fhOfk"), new Object[0]), i.a("010[hhIkfTghfjgjZfHfh4fk"), new Object[0])).intValue() == 3;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean k() {
        try {
            return l.a(this.f53938b).a().d() == 20;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return false;
        }
    }

    private boolean l() {
        return l.a(this.f53938b).a().d() == 13;
    }

    private boolean m() {
        if (this.f53939c.getSystemServiceSafe("phone") == null) {
            return false;
        }
        try {
            switch (l.a(this.f53938b).a().d()) {
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 13:
                case 14:
                case 15:
                    return true;
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        return false;
    }

    @Deprecated
    public synchronized int getDtNtType() {
        if (!this.f53939c.isSensitiveDevice() || this.f53942f == null) {
            this.f53942f = Integer.valueOf(d());
        }
        return this.f53942f.intValue();
    }

    public synchronized String getNtType() {
        if (!this.f53939c.isSensitiveDevice() || TextUtils.isEmpty(this.f53941e)) {
            this.f53941e = g();
        }
        return this.f53941e;
    }

    public void recycle() {
        f();
    }

    @SuppressLint({"MissingPermission"})
    private void a() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f53939c.getSystemServiceSafe("connectivity");
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 26 && this.f53939c.checkPermission(i.a("0391fhfm=jNfjgefgEjRgn!gk$fj2n4fghihifggefmgngliiiiifgjgjffghifgkjehnigjlffgjgkglgkif"))) {
                connectivityManager.registerDefaultNetworkCallback(b());
            } else if (i2 >= 21 && this.f53939c.checkPermission(i.a("039Jfhfm1jZfjgefgBjHgn]gk,fj6nVfghihifggefmgngliiiiifgjgjffghifgkjehnigjlffgjgkglgkif"))) {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), b());
            } else {
                e();
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }
}
