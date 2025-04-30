package com.join.mgps.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PayOrderInfo;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.SharePostRequest;
import com.join.mgps.dto.SpValue;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.common.constants.BAction;
import java.util.List;
import org.androidannotations.api.a;
/* loaded from: classes4.dex */
public final class CommonService_ extends CommonService {

    /* renamed from: n0  reason: collision with root package name */
    private final IntentFilter f51715n0 = new IntentFilter();

    /* renamed from: o0  reason: collision with root package name */
    private final BroadcastReceiver f51717o0 = new k();

    /* renamed from: p0  reason: collision with root package name */
    private final IntentFilter f51719p0 = new IntentFilter();

    /* renamed from: q0  reason: collision with root package name */
    private final BroadcastReceiver f51721q0 = new v();

    /* renamed from: r0  reason: collision with root package name */
    private final IntentFilter f51723r0 = new IntentFilter();

    /* renamed from: s0  reason: collision with root package name */
    private final BroadcastReceiver f51725s0 = new g0();

    /* renamed from: t0  reason: collision with root package name */
    private final IntentFilter f51727t0 = new IntentFilter();

    /* renamed from: u0  reason: collision with root package name */
    private final BroadcastReceiver f51729u0 = new r0();

    /* renamed from: v0  reason: collision with root package name */
    private final IntentFilter f51731v0 = new IntentFilter();

    /* renamed from: w0  reason: collision with root package name */
    private final BroadcastReceiver f51733w0 = new c1();

    /* renamed from: x0  reason: collision with root package name */
    private final IntentFilter f51735x0 = new IntentFilter();

    /* renamed from: y0  reason: collision with root package name */
    private final BroadcastReceiver f51737y0 = new n1();

    /* renamed from: z0  reason: collision with root package name */
    private final IntentFilter f51739z0 = new IntentFilter();
    private final BroadcastReceiver A0 = new r1();
    private final IntentFilter B0 = new IntentFilter();
    private final BroadcastReceiver C0 = new s1();
    private final IntentFilter D0 = new IntentFilter();
    private final BroadcastReceiver E0 = new t1();
    private final IntentFilter F0 = new IntentFilter();
    private final BroadcastReceiver G0 = new a();
    private final IntentFilter H0 = new IntentFilter();
    private final BroadcastReceiver I0 = new b();
    private final IntentFilter J0 = new IntentFilter();
    private final BroadcastReceiver K0 = new c();
    private final IntentFilter L0 = new IntentFilter();
    private final BroadcastReceiver M0 = new d();
    private final IntentFilter N0 = new IntentFilter();
    private final BroadcastReceiver O0 = new e();
    private final IntentFilter P0 = new IntentFilter();
    private final BroadcastReceiver Q0 = new f();
    private final IntentFilter R0 = new IntentFilter();
    private final BroadcastReceiver S0 = new g();
    private final IntentFilter T0 = new IntentFilter();
    private final BroadcastReceiver U0 = new h();
    private final IntentFilter V0 = new IntentFilter();
    private final BroadcastReceiver W0 = new i();
    private final IntentFilter X0 = new IntentFilter();
    private final BroadcastReceiver Y0 = new j();
    private final IntentFilter Z0 = new IntentFilter();

    /* renamed from: a1  reason: collision with root package name */
    private final BroadcastReceiver f51702a1 = new l();

    /* renamed from: b1  reason: collision with root package name */
    private final IntentFilter f51703b1 = new IntentFilter();

    /* renamed from: c1  reason: collision with root package name */
    private final BroadcastReceiver f51704c1 = new m();

    /* renamed from: d1  reason: collision with root package name */
    private final IntentFilter f51705d1 = new IntentFilter();

    /* renamed from: e1  reason: collision with root package name */
    private final BroadcastReceiver f51706e1 = new n();

    /* renamed from: f1  reason: collision with root package name */
    private final IntentFilter f51707f1 = new IntentFilter();

    /* renamed from: g1  reason: collision with root package name */
    private final BroadcastReceiver f51708g1 = new o();

    /* renamed from: h1  reason: collision with root package name */
    private final IntentFilter f51709h1 = new IntentFilter();

    /* renamed from: i1  reason: collision with root package name */
    private final BroadcastReceiver f51710i1 = new p();

    /* renamed from: j1  reason: collision with root package name */
    private final IntentFilter f51711j1 = new IntentFilter();

    /* renamed from: k1  reason: collision with root package name */
    private final BroadcastReceiver f51712k1 = new q();

    /* renamed from: l1  reason: collision with root package name */
    private final IntentFilter f51713l1 = new IntentFilter();

    /* renamed from: m1  reason: collision with root package name */
    private final BroadcastReceiver f51714m1 = new r();

    /* renamed from: n1  reason: collision with root package name */
    private final IntentFilter f51716n1 = new IntentFilter();

    /* renamed from: o1  reason: collision with root package name */
    private final BroadcastReceiver f51718o1 = new s();

    /* renamed from: p1  reason: collision with root package name */
    private final IntentFilter f51720p1 = new IntentFilter();

    /* renamed from: q1  reason: collision with root package name */
    private final BroadcastReceiver f51722q1 = new t();

    /* renamed from: r1  reason: collision with root package name */
    private final IntentFilter f51724r1 = new IntentFilter();

    /* renamed from: s1  reason: collision with root package name */
    private final BroadcastReceiver f51726s1 = new u();

    /* renamed from: t1  reason: collision with root package name */
    private final IntentFilter f51728t1 = new IntentFilter();

    /* renamed from: u1  reason: collision with root package name */
    private final BroadcastReceiver f51730u1 = new w();

    /* renamed from: v1  reason: collision with root package name */
    private final IntentFilter f51732v1 = new IntentFilter();

    /* renamed from: w1  reason: collision with root package name */
    private final BroadcastReceiver f51734w1 = new x();

    /* renamed from: x1  reason: collision with root package name */
    private final IntentFilter f51736x1 = new IntentFilter();

    /* renamed from: y1  reason: collision with root package name */
    private final BroadcastReceiver f51738y1 = new y();

    /* renamed from: z1  reason: collision with root package name */
    private final IntentFilter f51740z1 = new IntentFilter();
    private final BroadcastReceiver A1 = new z();
    private final IntentFilter B1 = new IntentFilter();
    private final BroadcastReceiver C1 = new a0();
    private final IntentFilter D1 = new IntentFilter();
    private final BroadcastReceiver E1 = new b0();
    private final IntentFilter F1 = new IntentFilter();
    private final BroadcastReceiver G1 = new c0();
    private final IntentFilter H1 = new IntentFilter();
    private final BroadcastReceiver I1 = new d0();
    private final IntentFilter J1 = new IntentFilter();
    private final BroadcastReceiver K1 = new e0();
    private final IntentFilter L1 = new IntentFilter();
    private final BroadcastReceiver M1 = new f0();
    private final IntentFilter N1 = new IntentFilter();
    private final BroadcastReceiver O1 = new h0();

    /* loaded from: classes4.dex */
    class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51741b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51742c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51743d = "sec";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51744e = "uid";

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.B(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class a0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51746b = "eventName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51747c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51748d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51749e = "uid";

        a0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.y(extras.getString(f51746b), extras.getString("gameId"), extras.getString("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class a1 extends a.c {
        a1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.M();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class b extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51752b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51753c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51754d = "uid";

        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.D(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class b0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51756b = "imagePath";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51757c = "from";

        b0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.K0(extras.getString(f51756b), (Integer) extras.getSerializable("from"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b1 extends a.c {
        b1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.t1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51760b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51761c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51762d = "uid";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51763e = "startMode";

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.E(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"), extras.getInt("startMode"));
        }
    }

    /* loaded from: classes4.dex */
    class c0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51765b = "md5Str";

        c0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.Q0((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString(f51765b));
        }
    }

    /* loaded from: classes4.dex */
    class c1 extends BroadcastReceiver {
        c1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.h0(intent);
        }
    }

    /* loaded from: classes4.dex */
    class d extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51768b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51769c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51770d = "uid";

        d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.F(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class d0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51772b = "gameId";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51773c = "liveTime";

        d0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.u1(extras.getString("gameId"), (Long) extras.getSerializable(f51773c));
        }
    }

    /* loaded from: classes4.dex */
    class d1 extends a.c {
        d1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.Q();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class e extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51776b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51777c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51778d = "uid";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51779e = "p2Uid";

        /* renamed from: f  reason: collision with root package name */
        public static final String f51780f = "time";

        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.G(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"), extras.getString("p2Uid"), extras.getLong("time"));
        }
    }

    /* loaded from: classes4.dex */
    class e0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51782b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51783c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51784d = "sec";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51785e = "uid";

        e0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.C(extras.getString("packageName"), extras.getString("gameId"), extras.getLong("sec"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class e1 extends a.c {
        e1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.H();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class f extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51788b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51789c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51790d = "uid";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51791e = "p2Uid";

        /* renamed from: f  reason: collision with root package name */
        public static final String f51792f = "time";

        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.A(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"), extras.getString("p2Uid"), extras.getLong("time"));
        }
    }

    /* loaded from: classes4.dex */
    class f0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51794b = "key_name";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51795c = "show";

        f0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.m0(extras.getString(f51794b), extras.getBoolean(f51795c));
        }
    }

    /* loaded from: classes4.dex */
    class f1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f51797a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f1(String str, long j4, String str2, List list) {
            super(str, j4, str2);
            this.f51797a = list;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.p(this.f51797a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class g extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51799b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51800c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51801d = "jsonData";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51802e = "uid";

        g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.e0(extras.getString("packageName"), extras.getString("gameId"), extras.getString("jsonData"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class g0 extends BroadcastReceiver {
        g0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.d0();
        }
    }

    /* loaded from: classes4.dex */
    class g1 extends a.c {
        g1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.c();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class h extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51806b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51807c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51808d = "uid";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51809e = "sec";

        h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.o0(extras.getString("packageName"), extras.getString("gameId"), extras.getString("uid"), extras.getLong("sec"));
        }
    }

    /* loaded from: classes4.dex */
    class h0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51811b = "sp_key";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51812c = "sp_value";

        h0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.k0(extras.getString(f51811b), (SpValue) extras.getSerializable(f51812c));
        }
    }

    /* loaded from: classes4.dex */
    class h1 extends a.c {
        h1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.O0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class i extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51815b = "gameId";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51816c = "uid";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51817d = "packageName";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51818e = "version";

        /* renamed from: f  reason: collision with root package name */
        public static final String f51819f = "errorInfo";

        i() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.z(extras.getString("gameId"), extras.getString("uid"), extras.getString("packageName"), extras.getString("version"), extras.getString(f51819f));
        }
    }

    /* loaded from: classes4.dex */
    class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PayOrderInfo f51822b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AccountBean f51823c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f51824d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f51825e;

        i0(String str, PayOrderInfo payOrderInfo, AccountBean accountBean, boolean z3, String str2) {
            this.f51821a = str;
            this.f51822b = payOrderInfo;
            this.f51823c = accountBean;
            this.f51824d = z3;
            this.f51825e = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.k1(this.f51821a, this.f51822b, this.f51823c, this.f51824d, this.f51825e);
        }
    }

    /* loaded from: classes4.dex */
    class i1 extends a.c {
        i1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class j extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51828b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51829c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51830d = "sec";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51831e = "uid";

        j() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.q0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class j0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51833a;

        j0(String str) {
            this.f51833a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.f1(this.f51833a);
        }
    }

    /* loaded from: classes4.dex */
    class j1 extends a.c {
        j1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.O();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.I0();
        }
    }

    /* loaded from: classes4.dex */
    class k0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f51837a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f51838b;

        k0(CollectionBeanSub collectionBeanSub, boolean z3) {
            this.f51837a = collectionBeanSub;
            this.f51838b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.g1(this.f51837a, this.f51838b);
        }
    }

    /* loaded from: classes4.dex */
    class k1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f51840a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k1(String str, long j4, String str2, List list) {
            super(str, j4, str2);
            this.f51840a = list;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.U0(this.f51840a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class l extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51842b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51843c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51844d = "sec";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51845e = "uid";

        l() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.u0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class l0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f51847a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f51848b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f51849c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f51850d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f51851e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ boolean f51852f;

        l0(CollectionBeanSub collectionBeanSub, boolean z3, boolean z4, String str, boolean z5, boolean z6) {
            this.f51847a = collectionBeanSub;
            this.f51848b = z3;
            this.f51849c = z4;
            this.f51850d = str;
            this.f51851e = z5;
            this.f51852f = z6;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.h1(this.f51847a, this.f51848b, this.f51849c, this.f51850d, this.f51851e, this.f51852f);
        }
    }

    /* loaded from: classes4.dex */
    class l1 extends a.c {
        l1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.s();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class m extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51855b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51856c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51857d = "sec";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51858e = "uid";

        m() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.t0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class m0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f51860a;

        m0(Intent intent) {
            this.f51860a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.h0(this.f51860a);
        }
    }

    /* loaded from: classes4.dex */
    class m1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51862a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m1(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f51862a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.t(this.f51862a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class n extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51864b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51865c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51866d = "sec";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51867e = "uid";

        n() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.s0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class n0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51869a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f51870b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f51871c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ DownloadTask f51872d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f51873e;

        n0(String str, String str2, QueryDownloadInfoResponseData queryDownloadInfoResponseData, DownloadTask downloadTask, boolean z3) {
            this.f51869a = str;
            this.f51870b = str2;
            this.f51871c = queryDownloadInfoResponseData;
            this.f51872d = downloadTask;
            this.f51873e = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.d1(this.f51869a, this.f51870b, this.f51871c, this.f51872d, this.f51873e);
        }
    }

    /* loaded from: classes4.dex */
    class n1 extends BroadcastReceiver {
        n1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.t1();
        }
    }

    /* loaded from: classes4.dex */
    class o extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51876b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51877c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51878d = "sec";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51879e = "uid";

        o() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.v0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("sec"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class o0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51881a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f51882b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f51883c;

        o0(String str, String str2, boolean z3) {
            this.f51881a = str;
            this.f51882b = str2;
            this.f51883c = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.L(this.f51881a, this.f51882b, this.f51883c);
        }
    }

    /* loaded from: classes4.dex */
    class o1 extends a.c {
        o1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.d();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class p extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51886b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51887c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51888d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51889e = "uid";

        p() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.D0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class p0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51891a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f51892b;

        p0(String str, int i2) {
            this.f51891a = str;
            this.f51892b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService_.super.i1(this.f51891a, this.f51892b);
        }
    }

    /* loaded from: classes4.dex */
    class p1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51894a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f51895b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ DownloadTask f51896c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f51897d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p1(String str, long j4, String str2, String str3, String str4, DownloadTask downloadTask, boolean z3) {
            super(str, j4, str2);
            this.f51894a = str3;
            this.f51895b = str4;
            this.f51896c = downloadTask;
            this.f51897d = z3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.x(this.f51894a, this.f51895b, this.f51896c, this.f51897d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class q extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51899b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51900c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51901d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51902e = "uid";

        q() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.y0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class q0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharePostRequest f51904a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q0(String str, long j4, String str2, SharePostRequest sharePostRequest) {
            super(str, j4, str2);
            this.f51904a = sharePostRequest;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.Z0(this.f51904a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class q1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51906a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q1(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f51906a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.P(this.f51906a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class r extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51908b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51909c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51910d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51911e = "uid";

        r() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.E0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class r0 extends BroadcastReceiver {
        r0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.W();
        }
    }

    /* loaded from: classes4.dex */
    class r1 extends BroadcastReceiver {
        r1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.n0(intent);
        }
    }

    /* loaded from: classes4.dex */
    class s extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51915b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51916c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51917d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51918e = "uid";

        s() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.x0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class s0 extends a.c {
        s0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.m1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class s1 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51921b = "gameData";

        s1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.l0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes4.dex */
    class t extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51923b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51924c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51925d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51926e = "uid";

        t() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.C0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class t0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f51928a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t0(String str, long j4, String str2, DownloadTask downloadTask) {
            super(str, j4, str2);
            this.f51928a = downloadTask;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.q(this.f51928a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class t1 extends BroadcastReceiver {
        t1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.L0();
        }
    }

    /* loaded from: classes4.dex */
    class u extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51931b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51932c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51933d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51934e = "uid";

        u() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.z0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class u0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51936a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f51937b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f51938c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f51939d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f51940e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ boolean f51941f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f51942g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ int f51943h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ boolean f51944i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u0(String str, long j4, String str2, String str3, String str4, boolean z3, long j5, QueryDownloadInfoResponseData queryDownloadInfoResponseData, boolean z4, int i2, int i4, boolean z5) {
            super(str, j4, str2);
            this.f51936a = str3;
            this.f51937b = str4;
            this.f51938c = z3;
            this.f51939d = j5;
            this.f51940e = queryDownloadInfoResponseData;
            this.f51941f = z4;
            this.f51942g = i2;
            this.f51943h = i4;
            this.f51944i = z5;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.K(this.f51936a, this.f51937b, this.f51938c, this.f51939d, this.f51940e, this.f51941f, this.f51942g, this.f51943h, this.f51944i);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class u1 extends org.androidannotations.api.builder.g<u1> {
        public u1(Context context) {
            super(context, CommonService_.class);
        }
    }

    /* loaded from: classes4.dex */
    class v extends BroadcastReceiver {
        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonService_.this.J0();
        }
    }

    /* loaded from: classes4.dex */
    class v0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f51947a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f51947a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.p0(this.f51947a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class w extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51949b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51950c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51951d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51952e = "uid";

        w() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.A0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class w0 extends a.c {
        w0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.T();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class x extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51955b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51956c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51957d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51958e = "uid";

        x() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.B0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class x0 extends a.c {
        x0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.U();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class y extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51961b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51962c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51963d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51964e = "uid";

        y() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.w0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class y0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f51966a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f51966a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.V(this.f51966a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class z extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f51968b = "packageName";

        /* renamed from: c  reason: collision with root package name */
        public static final String f51969c = "gameId";

        /* renamed from: d  reason: collision with root package name */
        public static final String f51970d = "position";

        /* renamed from: e  reason: collision with root package name */
        public static final String f51971e = "uid";

        z() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            CommonService_.this.r0(extras.getString("packageName"), extras.getString("gameId"), extras.getInt("position"), extras.getString("uid"));
        }
    }

    /* loaded from: classes4.dex */
    class z0 extends a.c {
        z0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommonService_.super.S();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private void c2() {
        this.f51617b = new PrefDef_(this);
        this.f51618c = AccountUtil_.getInstance_(this);
        this.f51715n0.addAction(f1.a.f65514z);
        this.f51719p0.addAction(f1.a.f65500s);
        this.f51723r0.addAction(f1.a.f65488m);
        this.f51727t0.addAction(f1.a.f65496q);
        this.f51731v0.addAction("android.net.wifi.STATE_CHANGE");
        this.f51731v0.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.f51731v0.addAction("android.net.wifi.SCAN_RESULTS");
        this.f51731v0.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.f51735x0.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        this.f51735x0.addAction(f1.a.f65504u);
        this.f51739z0.addAction(f1.a.f65510x);
        this.B0.addAction(f1.a.F);
        this.D0.addAction(f1.a.B);
        this.D0.addAction(f1.a.G);
        this.F0.addAction(f1.a.U);
        this.H0.addAction(f1.a.O);
        this.J0.addAction(f1.a.S);
        this.L0.addAction(f1.a.P);
        this.N0.addAction(f1.a.Q);
        this.P0.addAction(f1.a.R);
        this.R0.addAction(f1.a.T);
        this.T0.addAction(f1.a.N);
        this.V0.addAction(f1.a.V);
        this.X0.addAction(f1.a.W);
        this.Z0.addAction(f1.a.X);
        this.f51703b1.addAction(f1.a.Y);
        this.f51705d1.addAction(f1.a.Z);
        this.f51707f1.addAction(f1.a.f65465a0);
        this.f51709h1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.showvippopup");
        this.f51711j1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.onclickVippopup");
        this.f51713l1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.uesVippopup");
        this.f51716n1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.onclickFunction");
        this.f51720p1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.shareScreenshot");
        this.f51724r1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.openGoldfinger");
        this.f51728t1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.openKeyskill");
        this.f51732v1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.selectLevel");
        this.f51736x1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.NotpromptVippopup");
        this.f51740z1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.exitVippopup");
        this.B1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        this.D1.addAction(f1.a.f65487l0);
        this.F1.addAction("com.join.android.app.mgsim.wufun.broadcast.emu.adInfo");
        this.H1.addAction(BAction.ACTION_EMU_GAME_PLAY_TIMES);
        this.J1.addAction(f1.a.G0);
        this.L1.addAction(f1.a.H0);
        this.N1.addAction(f1.a.I0);
    }

    public static u1 d2(Context context) {
        return new u1(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void H() {
        org.androidannotations.api.a.l(new e1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void K(String str, String str2, boolean z3, long j4, QueryDownloadInfoResponseData queryDownloadInfoResponseData, boolean z4, int i2, int i4, boolean z5) {
        org.androidannotations.api.a.l(new u0("", 0L, "", str, str2, z3, j4, queryDownloadInfoResponseData, z4, i2, i4, z5));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void L(String str, String str2, boolean z3) {
        org.androidannotations.api.b.e("", new o0(str, str2, z3), 200L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void M() {
        org.androidannotations.api.a.l(new a1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void O() {
        org.androidannotations.api.a.l(new j1("", 500L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void O0() {
        org.androidannotations.api.a.l(new h1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void P(String str) {
        org.androidannotations.api.a.l(new q1("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void Q() {
        org.androidannotations.api.a.l(new d1("", 5000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void R() {
        org.androidannotations.api.a.l(new i1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void S() {
        org.androidannotations.api.a.l(new z0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void T() {
        org.androidannotations.api.a.l(new w0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void U() {
        org.androidannotations.api.a.l(new x0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void U0(List<AppBean> list) {
        org.androidannotations.api.a.l(new k1("", 0L, "", list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void V(int i2) {
        org.androidannotations.api.a.l(new y0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void Z0(SharePostRequest sharePostRequest) {
        org.androidannotations.api.a.l(new q0("", 0L, "", sharePostRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void c() {
        org.androidannotations.api.a.l(new g1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void d() {
        org.androidannotations.api.a.l(new o1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void d1(String str, String str2, QueryDownloadInfoResponseData queryDownloadInfoResponseData, DownloadTask downloadTask, boolean z3) {
        org.androidannotations.api.b.e("", new n0(str, str2, queryDownloadInfoResponseData, downloadTask, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void f1(String str) {
        org.androidannotations.api.b.e("", new j0(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void g1(CollectionBeanSub collectionBeanSub, boolean z3) {
        org.androidannotations.api.b.e("", new k0(collectionBeanSub, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void h0(Intent intent) {
        org.androidannotations.api.b.e("", new m0(intent), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void h1(CollectionBeanSub collectionBeanSub, boolean z3, boolean z4, String str, boolean z5, boolean z6) {
        org.androidannotations.api.b.e("", new l0(collectionBeanSub, z3, z4, str, z5, z6), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void i1(String str, int i2) {
        org.androidannotations.api.b.e("", new p0(str, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void k1(String str, PayOrderInfo payOrderInfo, AccountBean accountBean, boolean z3, String str2) {
        org.androidannotations.api.b.e("", new i0(str, payOrderInfo, accountBean, z3, str2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void m1() {
        org.androidannotations.api.a.l(new s0("", 0L, ""));
    }

    @Override // com.join.mgps.service.CommonService, android.app.Service
    public void onCreate() {
        c2();
        super.onCreate();
        registerReceiver(this.f51717o0, this.f51715n0);
        registerReceiver(this.f51721q0, this.f51719p0);
        registerReceiver(this.f51725s0, this.f51723r0);
        registerReceiver(this.f51729u0, this.f51727t0);
        registerReceiver(this.f51733w0, this.f51731v0);
        registerReceiver(this.f51737y0, this.f51735x0);
        registerReceiver(this.A0, this.f51739z0);
        registerReceiver(this.C0, this.B0);
        registerReceiver(this.E0, this.D0);
        registerReceiver(this.G0, this.F0);
        registerReceiver(this.I0, this.H0);
        registerReceiver(this.K0, this.J0);
        registerReceiver(this.M0, this.L0);
        registerReceiver(this.O0, this.N0);
        registerReceiver(this.Q0, this.P0);
        registerReceiver(this.S0, this.R0);
        registerReceiver(this.U0, this.T0);
        registerReceiver(this.W0, this.V0);
        registerReceiver(this.Y0, this.X0);
        registerReceiver(this.f51702a1, this.Z0);
        registerReceiver(this.f51704c1, this.f51703b1);
        registerReceiver(this.f51706e1, this.f51705d1);
        registerReceiver(this.f51708g1, this.f51707f1);
        registerReceiver(this.f51710i1, this.f51709h1);
        registerReceiver(this.f51712k1, this.f51711j1);
        registerReceiver(this.f51714m1, this.f51713l1);
        registerReceiver(this.f51718o1, this.f51716n1);
        registerReceiver(this.f51722q1, this.f51720p1);
        registerReceiver(this.f51726s1, this.f51724r1);
        registerReceiver(this.f51730u1, this.f51728t1);
        registerReceiver(this.f51734w1, this.f51732v1);
        registerReceiver(this.f51738y1, this.f51736x1);
        registerReceiver(this.A1, this.f51740z1);
        registerReceiver(this.C1, this.B1);
        registerReceiver(this.E1, this.D1);
        registerReceiver(this.G1, this.F1);
        registerReceiver(this.I1, this.H1);
        registerReceiver(this.K1, this.J1);
        registerReceiver(this.M1, this.L1);
        registerReceiver(this.O1, this.N1);
    }

    @Override // com.join.mgps.service.CommonService, android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f51717o0);
        unregisterReceiver(this.f51721q0);
        unregisterReceiver(this.f51725s0);
        unregisterReceiver(this.f51729u0);
        unregisterReceiver(this.f51733w0);
        unregisterReceiver(this.f51737y0);
        unregisterReceiver(this.A0);
        unregisterReceiver(this.C0);
        unregisterReceiver(this.E0);
        unregisterReceiver(this.G0);
        unregisterReceiver(this.I0);
        unregisterReceiver(this.K0);
        unregisterReceiver(this.M0);
        unregisterReceiver(this.O0);
        unregisterReceiver(this.Q0);
        unregisterReceiver(this.S0);
        unregisterReceiver(this.U0);
        unregisterReceiver(this.W0);
        unregisterReceiver(this.Y0);
        unregisterReceiver(this.f51702a1);
        unregisterReceiver(this.f51704c1);
        unregisterReceiver(this.f51706e1);
        unregisterReceiver(this.f51708g1);
        unregisterReceiver(this.f51710i1);
        unregisterReceiver(this.f51712k1);
        unregisterReceiver(this.f51714m1);
        unregisterReceiver(this.f51718o1);
        unregisterReceiver(this.f51722q1);
        unregisterReceiver(this.f51726s1);
        unregisterReceiver(this.f51730u1);
        unregisterReceiver(this.f51734w1);
        unregisterReceiver(this.f51738y1);
        unregisterReceiver(this.A1);
        unregisterReceiver(this.C1);
        unregisterReceiver(this.E1);
        unregisterReceiver(this.G1);
        unregisterReceiver(this.I1);
        unregisterReceiver(this.K1);
        unregisterReceiver(this.M1);
        unregisterReceiver(this.O1);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void p(List<String> list) {
        org.androidannotations.api.a.l(new f1("", 0L, "", list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void p0(int i2) {
        org.androidannotations.api.a.l(new v0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void q(DownloadTask downloadTask) {
        org.androidannotations.api.a.l(new t0("", 0L, "", downloadTask));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void s() {
        org.androidannotations.api.a.l(new l1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void t(String str) {
        org.androidannotations.api.a.l(new m1("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void t1() {
        org.androidannotations.api.a.l(new b1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.service.CommonService
    public void x(String str, String str2, DownloadTask downloadTask, boolean z3) {
        org.androidannotations.api.a.l(new p1("", 0L, "", str, str2, downloadTask, z3));
    }
}
