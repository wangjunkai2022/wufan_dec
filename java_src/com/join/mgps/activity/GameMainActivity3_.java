package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameMainActivity3_ extends GameMainActivity3 implements g3.a, i3.a, i3.b {

    /* renamed from: x1  reason: collision with root package name */
    public static final String f31683x1 = "gameId";

    /* renamed from: y1  reason: collision with root package name */
    public static final String f31684y1 = "from";

    /* renamed from: p1  reason: collision with root package name */
    private final i3.c f31685p1 = new i3.c();

    /* renamed from: q1  reason: collision with root package name */
    private final Map<Class<?>, Object> f31686q1 = new HashMap();

    /* renamed from: r1  reason: collision with root package name */
    private final IntentFilter f31687r1 = new IntentFilter();

    /* renamed from: s1  reason: collision with root package name */
    private final BroadcastReceiver f31688s1 = new k();

    /* renamed from: t1  reason: collision with root package name */
    private final IntentFilter f31689t1 = new IntentFilter();

    /* renamed from: u1  reason: collision with root package name */
    private final BroadcastReceiver f31690u1 = new v();

    /* renamed from: v1  reason: collision with root package name */
    private final IntentFilter f31691v1 = new IntentFilter();

    /* renamed from: w1  reason: collision with root package name */
    private final BroadcastReceiver f31692w1 = new b0();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f31693a;

        a(boolean z3) {
            this.f31693a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.t2(this.f31693a);
        }
    }

    /* loaded from: classes3.dex */
    class a0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31695a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31696b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f31697c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a0(String str, long j4, String str2, String str3, String str4, String str5) {
            super(str, j4, str2);
            this.f31695a = str3;
            this.f31696b = str4;
            this.f31697c = str5;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.P1(this.f31695a, this.f31696b, this.f31697c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.r2();
        }
    }

    /* loaded from: classes3.dex */
    class b0 extends BroadcastReceiver {
        b0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameMainActivity3_.this.q2(intent);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.s2();
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity3_.this.H1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameMainV4DataBean f31703a;

        d(GameMainV4DataBean gameMainV4DataBean) {
            this.f31703a = gameMainV4DataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.w2(this.f31703a);
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity3_.this.back();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.U1();
        }
    }

    /* loaded from: classes3.dex */
    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity3_.this.G1();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.i2();
        }
    }

    /* loaded from: classes3.dex */
    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity3_.this.A2();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.y2();
        }
    }

    /* loaded from: classes3.dex */
    class g0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameMainV4DataBean f31711a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f31712b;

        g0(GameMainV4DataBean gameMainV4DataBean, boolean z3) {
            this.f31711a = gameMainV4DataBean;
            this.f31712b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.I2(this.f31711a, this.f31712b);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.L1();
        }
    }

    /* loaded from: classes3.dex */
    class h0 implements Runnable {
        h0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.D2();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f31716a;

        i(ArenaResponse arenaResponse) {
            this.f31716a = arenaResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.handleFailure(this.f31716a);
        }
    }

    /* loaded from: classes3.dex */
    public static class i0 extends org.androidannotations.api.builder.a<i0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31718a;

        public i0(Context context) {
            super(context, GameMainActivity3_.class);
        }

        public i0 a(String str) {
            return (i0) super.extra("from", str);
        }

        public i0 b(String str) {
            return (i0) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31718a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public i0(Fragment fragment) {
            super(fragment.getActivity(), GameMainActivity3_.class);
            this.f31718a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31719a;

        j(int i2) {
            this.f31719a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.F2(this.f31719a);
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameMainActivity3_.this.p2(intent);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ OnlineCouponConfigBean f31722a;

        l(OnlineCouponConfigBean onlineCouponConfigBean) {
            this.f31722a = onlineCouponConfigBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.x2(this.f31722a);
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f31724a;

        m(CloudListDataBean cloudListDataBean) {
            this.f31724a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.H2(this.f31724a);
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {
        n(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.g2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {
        o(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.Y1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {
        p(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q extends a.c {
        q(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.X1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31730a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f31730a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.c2(this.f31730a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s extends a.c {
        s(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.Z1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class t extends a.c {
        t(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.b2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class u extends a.c {
        u(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.T1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class v extends BroadcastReceiver {
        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameMainActivity3_.this.v2();
        }
    }

    /* loaded from: classes3.dex */
    class w extends a.c {
        w(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.f2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class x extends a.c {
        x(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.e2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class y extends a.c {
        y(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.d2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class z extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f31739a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z(String str, long j4, String str2, CloudListDataBean cloudListDataBean) {
            super(str, j4, str2);
            this.f31739a = cloudListDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.O1(this.f31739a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private void init_(Bundle bundle) {
        this.f31647d1 = new PrefDef_(this);
        i3.c.b(this);
        getWindow().setFlags(1024, 1024);
        injectExtras_();
        requestWindowFeature(1);
        this.f31687r1.addAction(f1.a.f65479h0);
        this.f31689t1.addAction("com.wufun.cloud.game.main.showDownDialog");
        this.f31691v1.addAction("com.cloud.downCloud.all");
        registerReceiver(this.f31688s1, this.f31687r1);
        registerReceiver(this.f31690u1, this.f31689t1);
        registerReceiver(this.f31692w1, this.f31691v1);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.f31658o0 = extras.getString("gameId");
            }
            if (extras.containsKey("from")) {
                this.f31660p0 = extras.getString("from");
            }
        }
    }

    public static i0 k3(Context context) {
        return new i0(context);
    }

    public static i0 l3(Fragment fragment) {
        return new i0(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void D2() {
        org.androidannotations.api.b.e("", new h0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void F2(int i2) {
        org.androidannotations.api.b.e("", new j(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void H2(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new m(cloudListDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void I2(GameMainV4DataBean gameMainV4DataBean, boolean z3) {
        org.androidannotations.api.b.e("", new g0(gameMainV4DataBean, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void L1() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void O1(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.a.l(new z("", 0L, "", cloudListDataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void P1(String str, String str2, String str3) {
        org.androidannotations.api.a.l(new a0("", 0L, "", str, str2, str3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void T1() {
        org.androidannotations.api.a.l(new u("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void U1() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void X1() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void Y1() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void Z1() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void b2() {
        org.androidannotations.api.a.l(new t("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void c2(String str) {
        org.androidannotations.api.a.l(new r("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void d2() {
        org.androidannotations.api.a.l(new y("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void e2() {
        org.androidannotations.api.a.l(new x("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void f2() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void g2() {
        org.androidannotations.api.a.l(new n("", 1500L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f31686q1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getData() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void handleFailure(ArenaResponse arenaResponse) {
        org.androidannotations.api.b.e("", new i(arenaResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void i2() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.activity.GameMainActivity3, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f31685p1);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_main_3);
    }

    @Override // com.join.mgps.activity.GameMainActivity3, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f31688s1);
        unregisterReceiver(this.f31690u1);
        unregisterReceiver(this.f31692w1);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31661q0 = aVar.internalFindViewById(R.id.ll_loading);
        this.f31662r0 = (TextView) aVar.internalFindViewById(R.id.gameName);
        this.f31663s0 = (TextView) aVar.internalFindViewById(R.id.roomCount);
        this.f31664t0 = aVar.internalFindViewById(R.id.battleHall);
        this.f31666v0 = (GridView) aVar.internalFindViewById(R.id.gameMainNewLeftGv);
        this.f31667w0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.gameImg);
        this.f31668x0 = aVar.internalFindViewById(R.id.leftContainer);
        this.f31669y0 = (RecyclerView) aVar.internalFindViewById(R.id.gameMainNewRv);
        View internalFindViewById = aVar.internalFindViewById(R.id.buyVip);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.back);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.startGame);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d0());
        }
        View view = this.f31664t0;
        if (view != null) {
            view.setOnClickListener(new e0());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new f0());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f31686q1.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void r2() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void s2() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f31685p1.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void t2(boolean z3) {
        org.androidannotations.api.b.e("", new a(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void w2(GameMainV4DataBean gameMainV4DataBean) {
        org.androidannotations.api.b.e("", new d(gameMainV4DataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void x2(OnlineCouponConfigBean onlineCouponConfigBean) {
        org.androidannotations.api.b.e("", new l(onlineCouponConfigBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void y2() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f31685p1.a(this);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f31685p1.a(this);
    }
}
