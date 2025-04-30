package com.join.android.app.common.servcie;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.pref.PrefDef_;
import org.androidannotations.api.a;
/* loaded from: classes.dex */
public final class DownloadService_ extends DownloadService {

    /* renamed from: n  reason: collision with root package name */
    private final IntentFilter f17144n = new IntentFilter();

    /* renamed from: o  reason: collision with root package name */
    private final BroadcastReceiver f17145o = new c();

    /* renamed from: p  reason: collision with root package name */
    private final IntentFilter f17146p = new IntentFilter();

    /* renamed from: q  reason: collision with root package name */
    private final BroadcastReceiver f17147q = new d();

    /* renamed from: r  reason: collision with root package name */
    private final IntentFilter f17148r = new IntentFilter();

    /* renamed from: s  reason: collision with root package name */
    private final BroadcastReceiver f17149s = new e();

    /* renamed from: t  reason: collision with root package name */
    private final IntentFilter f17150t = new IntentFilter();

    /* renamed from: u  reason: collision with root package name */
    private final BroadcastReceiver f17151u = new f();

    /* loaded from: classes.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17152a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f17152a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadService_.super.g(this.f17152a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17154a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f17155b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, int i2, String str3) {
            super(str, j4, str2);
            this.f17154a = i2;
            this.f17155b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadService_.super.h(this.f17154a, this.f17155b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes.dex */
    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadService_.this.e(intent);
        }
    }

    /* loaded from: classes.dex */
    class d extends BroadcastReceiver {
        d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadService_.this.f(intent);
        }
    }

    /* loaded from: classes.dex */
    class e extends BroadcastReceiver {
        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadService_.this.k(intent);
        }
    }

    /* loaded from: classes.dex */
    class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadService_.this.o(intent);
        }
    }

    /* loaded from: classes.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f17161a;

        g(DetailResultBean detailResultBean) {
            this.f17161a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadService_.super.C(this.f17161a);
        }
    }

    /* loaded from: classes.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17163a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f17164b;

        h(int i2, int i4) {
            this.f17163a = i2;
            this.f17164b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadService_.super.B(this.f17163a, this.f17164b);
        }
    }

    /* loaded from: classes.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadService_.super.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f17167a;

        j(Intent intent) {
            this.f17167a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadService_.super.o(this.f17167a);
        }
    }

    /* loaded from: classes.dex */
    class k extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17169a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f17169a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadService_.super.l(this.f17169a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class l extends org.androidannotations.api.builder.g<l> {
        public l(Context context) {
            super(context, DownloadService_.class);
        }
    }

    private void L() {
        this.f17136b = new PrefDef_(this);
        this.f17144n.addAction(f1.a.f65490n);
        this.f17146p.addAction(f1.a.f65492o);
        this.f17148r.addAction(f1.a.f65494p);
        this.f17150t.addAction("android.net.wifi.STATE_CHANGE");
        this.f17150t.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.f17150t.addAction("android.net.wifi.SCAN_RESULTS");
        this.f17150t.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    public static l M(Context context) {
        return new l(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void B(int i2, int i4) {
        org.androidannotations.api.b.e("", new h(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void C(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new g(detailResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void g(String str) {
        org.androidannotations.api.a.l(new a("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void h(int i2, String str) {
        org.androidannotations.api.a.l(new b("", 0L, "", i2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void l(String str) {
        org.androidannotations.api.a.l(new k("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void o(Intent intent) {
        org.androidannotations.api.b.e("", new j(intent), 0L);
    }

    @Override // com.join.android.app.common.servcie.DownloadService, android.app.Service
    public void onCreate() {
        L();
        super.onCreate();
        registerReceiver(this.f17145o, this.f17144n);
        registerReceiver(this.f17147q, this.f17146p);
        registerReceiver(this.f17149s, this.f17148r);
        registerReceiver(this.f17151u, this.f17150t);
    }

    @Override // com.join.android.app.common.servcie.DownloadService, android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f17145o);
        unregisterReceiver(this.f17147q);
        unregisterReceiver(this.f17149s);
        unregisterReceiver(this.f17151u);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.common.servcie.DownloadService
    public void w() {
        org.androidannotations.api.b.e("", new i(), 3000L);
    }
}
