package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyTouchFrameLayout;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ModGameIndexActivity_ extends ModGameIndexActivity implements g3.a, i3.a, i3.b {

    /* renamed from: d1  reason: collision with root package name */
    public static final String f33819d1 = "gameId";

    /* renamed from: e1  reason: collision with root package name */
    public static final String f33820e1 = "standGameId";

    /* renamed from: f1  reason: collision with root package name */
    public static final String f33821f1 = "from";
    private final i3.c Z0 = new i3.c();

    /* renamed from: a1  reason: collision with root package name */
    private final Map<Class<?>, Object> f33822a1 = new HashMap();

    /* renamed from: b1  reason: collision with root package name */
    private final IntentFilter f33823b1 = new IntentFilter();

    /* renamed from: c1  reason: collision with root package name */
    private final BroadcastReceiver f33824c1 = new k();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.M1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    public static class b0 extends org.androidannotations.api.builder.a<b0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33828a;

        public b0(Context context) {
            super(context, ModGameIndexActivity_.class);
        }

        public b0 a(String str) {
            return (b0) super.extra("from", str);
        }

        public b0 b(String str) {
            return (b0) super.extra("gameId", str);
        }

        public b0 c(String str) {
            return (b0) super.extra(ModGameIndexActivity_.f33820e1, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33828a;
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

        public b0(Fragment fragment) {
            super(fragment.getActivity(), ModGameIndexActivity_.class);
            this.f33828a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33829a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33830b;

        c(boolean z3, DownloadTask downloadTask) {
            this.f33829a = z3;
            this.f33830b = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.t1(this.f33829a, this.f33830b);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.P1();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.c2();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.A1();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ModGameDetailBean f33836a;

        h(ModGameDetailBean modGameDetailBean) {
            this.f33836a = modGameDetailBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.q2(this.f33836a);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33839a;

        j(DownloadTask downloadTask) {
            this.f33839a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.b2(this.f33839a);
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f33841b = "from";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ModGameIndexActivity_.this.i2((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("from"));
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33843a;

        l(DownloadTask downloadTask) {
            this.f33843a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.a2(this.f33843a);
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33845a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f33846b;

        m(DownloadTask downloadTask, GamedetialModleFourBean gamedetialModleFourBean) {
            this.f33845a = downloadTask;
            this.f33846b = gamedetialModleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.l2(this.f33845a, this.f33846b);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33848a;

        n(boolean z3) {
            this.f33848a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.o2(this.f33848a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.u1();
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33851a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, DownloadTask downloadTask) {
            super(str, j4, str2);
            this.f33851a = downloadTask;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.r1(this.f33851a);
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
                ModGameIndexActivity_.super.getDetialData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r extends a.c {
        r(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.x1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33855a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s(String str, long j4, String str2, DownloadTask downloadTask) {
            super(str, j4, str2);
            this.f33855a = downloadTask;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.s1(this.f33855a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.J1();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.g2();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.h2();
        }
    }

    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.J0();
        }
    }

    public static b0 H2(Context context) {
        return new b0(context);
    }

    public static b0 I2(Fragment fragment) {
        return new b0(fragment);
    }

    private void init_(Bundle bundle) {
        this.f33771w0 = new PrefDef_(this);
        i3.c.b(this);
        getWindow().setFlags(1024, 1024);
        injectExtras_();
        supportRequestWindowFeature(1);
        this.f33823b1.addAction(f1.a.f65499r0);
        registerReceiver(this.f33824c1, this.f33823b1);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.H = extras.getString("gameId");
            }
            if (extras.containsKey(f33820e1)) {
                this.I = extras.getString(f33820e1);
            }
            if (extras.containsKey("from")) {
                this.J = extras.getString("from");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void A1() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void P1() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void a2(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new l(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void b2(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new j(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void c2() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33822a1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void getDetialData() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void l2(DownloadTask downloadTask, GamedetialModleFourBean gamedetialModleFourBean) {
        org.androidannotations.api.b.e("", new m(downloadTask, gamedetialModleFourBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void o2(boolean z3) {
        org.androidannotations.api.b.e("", new n(z3), 1000L);
    }

    @Override // com.join.mgps.activity.ModGameIndexActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.Z0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_mod_game_index);
    }

    @Override // com.join.mgps.activity.ModGameIndexActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f33824c1);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33739a = (ImageView) aVar.internalFindViewById(R.id.iv_back);
        this.f33740b = (TextView) aVar.internalFindViewById(R.id.tv_game_name);
        this.f33741c = (SimpleDraweeView) aVar.internalFindViewById(R.id.sdv_image);
        this.f33742d = (LinearLayout) aVar.internalFindViewById(R.id.ll_mod_start);
        this.f33743e = (LinearLayout) aVar.internalFindViewById(R.id.ll_stand_start);
        this.f33744f = (ImageView) aVar.internalFindViewById(R.id.iv_mod_play);
        this.f33745g = (TextView) aVar.internalFindViewById(R.id.tv_mod_type);
        this.f33746h = (TextView) aVar.internalFindViewById(R.id.tv_new_version);
        this.f33747i = (TextView) aVar.internalFindViewById(R.id.tv_stand_type);
        this.f33748j = (TextView) aVar.internalFindViewById(R.id.tv_stand_new_version);
        this.f33749k = (SimpleDraweeView) aVar.internalFindViewById(R.id.tv_open_vip);
        this.f33750l = (ImageView) aVar.internalFindViewById(R.id.iv_stand_font);
        this.f33751m = (ImageView) aVar.internalFindViewById(R.id.iv_mod_font);
        this.f33752n = (TextView) aVar.internalFindViewById(R.id.tv_stand_status);
        this.f33754o = (TextView) aVar.internalFindViewById(R.id.tv_mod_status);
        this.f33756p = (ConstraintLayout) aVar.internalFindViewById(R.id.cl_mod);
        this.f33758q = (TextView) aVar.internalFindViewById(R.id.tv_mod_install_status);
        this.f33760r = (SimpleDraweeView) aVar.internalFindViewById(R.id.sdv_mod_dot);
        this.f33762s = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f33764t = (TabLayout) aVar.internalFindViewById(R.id.tabLayout);
        this.f33766u = aVar.internalFindViewById(R.id.rightLayout);
        this.f33768v = aVar.internalFindViewById(R.id.loding_layout);
        this.f33770w = aVar.internalFindViewById(R.id.loding_faile);
        this.f33772x = aVar.internalFindViewById(R.id.archiveLayout);
        this.f33774y = (RecyclerView) aVar.internalFindViewById(R.id.rvModGameRecommendShrink);
        this.f33776z = (RecyclerView) aVar.internalFindViewById(R.id.rvModGameRecommendExpand);
        this.A = (ImageView) aVar.internalFindViewById(R.id.btnRecommendToggleShrink);
        this.B = (ImageView) aVar.internalFindViewById(R.id.btnRecommendToggleExpand);
        this.C = (MyTouchFrameLayout) aVar.internalFindViewById(R.id.flRecommendShrink);
        this.D = (MyTouchFrameLayout) aVar.internalFindViewById(R.id.flRecommendExpand);
        this.E = aVar.internalFindViewById(R.id.expandMask);
        this.F = (LinearLayout) aVar.internalFindViewById(R.id.llContainer);
        this.G = (TextView) aVar.internalFindViewById(R.id.tvRecommendAdCount);
        View internalFindViewById = aVar.internalFindViewById(R.id.bgExpand);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f33739a;
        if (imageView != null) {
            imageView.setOnClickListener(new t());
        }
        LinearLayout linearLayout = this.f33742d;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new u());
        }
        LinearLayout linearLayout2 = this.f33743e;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new v());
        }
        ImageView imageView2 = this.A;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new w());
        }
        ImageView imageView3 = this.B;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new x());
        }
        View view = this.E;
        if (view != null) {
            view.setOnClickListener(new y());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new z());
        }
        SimpleDraweeView simpleDraweeView = this.f33749k;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new a0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new a());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33822a1.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void q2(ModGameDetailBean modGameDetailBean) {
        org.androidannotations.api.b.e("", new h(modGameDetailBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void r1(DownloadTask downloadTask) {
        org.androidannotations.api.a.l(new p("", 0L, "", downloadTask));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void s1(DownloadTask downloadTask) {
        org.androidannotations.api.a.l(new s("", 0L, "", downloadTask));
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.Z0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void t1(boolean z3, DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new c(z3, downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void u1() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void x1() {
        org.androidannotations.api.a.l(new r("", 0L, ""));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.Z0.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.Z0.a(this);
    }
}
