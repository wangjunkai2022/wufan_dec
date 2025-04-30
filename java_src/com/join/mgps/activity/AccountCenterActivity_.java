package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.PullableScrollView;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.RecomCentrebean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class AccountCenterActivity_ extends AccountCenterActivity implements g3.a, i3.a, i3.b {

    /* renamed from: e1  reason: collision with root package name */
    private final i3.c f28214e1 = new i3.c();

    /* renamed from: f1  reason: collision with root package name */
    private final Map<Class<?>, Object> f28215f1 = new HashMap();

    /* renamed from: g1  reason: collision with root package name */
    private final IntentFilter f28216g1 = new IntentFilter();

    /* renamed from: h1  reason: collision with root package name */
    private final BroadcastReceiver f28217h1 = new k();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.V0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.a1();
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.e1();
        }
    }

    /* loaded from: classes3.dex */
    public static class e0 extends org.androidannotations.api.builder.a<e0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28227a;

        public e0(Context context) {
            super(context, AccountCenterActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28227a;
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

        public e0(Fragment fragment) {
            super(fragment.getActivity(), AccountCenterActivity_.class);
            this.f28227a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.W0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.g1();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomCentrebean f28232a;

        j(RecomCentrebean recomCentrebean) {
            this.f28232a = recomCentrebean;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.P0(this.f28232a);
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AccountCenterActivity_.this.h1(context);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.d1();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.f1();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.c1();
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28238a;

        o(int i2) {
            this.f28238a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.K0(this.f28238a);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28241a;

        q(String str) {
            this.f28241a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.error(this.f28241a);
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28243a;

        r(String str) {
            this.f28243a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.showMessage(this.f28243a);
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
                AccountCenterActivity_.super.X0();
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
                AccountCenterActivity_.super.L0();
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
                AccountCenterActivity_.super.b1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.H0();
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
                AccountCenterActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.T0();
        }
    }

    private void init_(Bundle bundle) {
        this.B = new PrefDef_(this);
        i3.c.b(this);
        this.f28216g1.addAction(f1.a.B);
        registerReceiver(this.f28217h1, this.f28216g1);
    }

    public static e0 w1(Context context) {
        return new e0(context);
    }

    public static e0 x1(Fragment fragment) {
        return new e0(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void K0(int i2) {
        org.androidannotations.api.b.e("", new o(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void L0() {
        org.androidannotations.api.a.l(new t("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void P0(RecomCentrebean recomCentrebean) {
        org.androidannotations.api.b.e("", new j(recomCentrebean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void X0() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void Y0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void b1() {
        org.androidannotations.api.a.l(new u("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void c1() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void d1() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new q(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void f1() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28215f1.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28214e1);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_account_center);
    }

    @Override // com.join.mgps.activity.AccountCenterActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f28217h1);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28155a = (SimpleDraweeView) aVar.internalFindViewById(R.id.avatar);
        this.f28157b = (TextView) aVar.internalFindViewById(R.id.levelBadge);
        this.f28159c = (TextView) aVar.internalFindViewById(R.id.nickname);
        this.f28161d = (TextView) aVar.internalFindViewById(R.id.account);
        this.f28163e = (TextView) aVar.internalFindViewById(R.id.tourTip);
        this.f28164f = (LinearLayout) aVar.internalFindViewById(R.id.vip_lay);
        this.f28165g = (TextView) aVar.internalFindViewById(R.id.papaBrasss);
        this.f28166h = (RelativeLayout) aVar.internalFindViewById(R.id.mGiftBox);
        this.f28167i = (RelativeLayout) aVar.internalFindViewById(R.id.mPosts);
        this.f28168j = (RelativeLayout) aVar.internalFindViewById(R.id.mMessages);
        this.f28169k = (RelativeLayout) aVar.internalFindViewById(R.id.tools);
        this.f28170l = (TextView) aVar.internalFindViewById(R.id.messageBadge);
        this.f28171m = (TextView) aVar.internalFindViewById(R.id.signBadge);
        this.f28172n = (TextView) aVar.internalFindViewById(R.id.papaMoney);
        this.f28174o = (ImageView) aVar.internalFindViewById(R.id.userIconBg);
        this.f28176p = (TextView) aVar.internalFindViewById(R.id.pabiAd);
        this.f28178q = (TextView) aVar.internalFindViewById(R.id.couponNumber);
        this.f28180r = (RelativeLayout) aVar.internalFindViewById(R.id.signIn);
        this.f28182s = (RelativeLayout) aVar.internalFindViewById(R.id.mBrass);
        this.f28184t = (RelativeLayout) aVar.internalFindViewById(R.id.liveLayout);
        this.f28186u = (TextView) aVar.internalFindViewById(R.id.papaliveText);
        this.f28188v = (RelativeLayout) aVar.internalFindViewById(R.id.paCreditCenter);
        this.f28190w = (RelativeLayout) aVar.internalFindViewById(R.id.joystick);
        this.f28192x = (FrameLayout) aVar.internalFindViewById(R.id.userLogin);
        this.f28194y = (RelativeLayout) aVar.internalFindViewById(R.id.downloads);
        this.f28196z = (RelativeLayout) aVar.internalFindViewById(R.id.feedback);
        this.A = (RelativeLayout) aVar.internalFindViewById(R.id.papaMore);
        this.G = (PullableScrollView) aVar.internalFindViewById(R.id.scrollView);
        this.H = (RelativeLayout) aVar.internalFindViewById(R.id.back_layout);
        this.I = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.J = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.K = (RelativeLayout) aVar.internalFindViewById(R.id.myGameTip);
        this.f28175o0 = aVar.internalFindViewById(R.id.accountCenterLine);
        this.f28177p0 = (ImageView) aVar.internalFindViewById(R.id.userisLogin);
        this.f28179q0 = (LinearLayout) aVar.internalFindViewById(R.id.layoutText);
        this.f28181r0 = (ImageView) aVar.internalFindViewById(R.id.accountCenterImageView);
        this.f28183s0 = (ImageView) aVar.internalFindViewById(R.id.accountCenterMsgBg);
        this.f28185t0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.img_brass);
        this.f28187u0 = (TextView) aVar.internalFindViewById(R.id.brass_title);
        this.f28189v0 = (VipView) aVar.internalFindViewById(R.id.vipText);
        this.f28191w0 = (VipView) aVar.internalFindViewById(R.id.svipText);
        this.f28193x0 = (VipView) aVar.internalFindViewById(R.id.vipItem);
        this.f28195y0 = (TextView) aVar.internalFindViewById(R.id.vipMessage);
        this.F0 = (RelativeLayout) aVar.internalFindViewById(R.id.paVip);
        this.G0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.paVipIcon);
        this.H0 = (RelativeLayout) aVar.internalFindViewById(R.id.myVoucher);
        this.I0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.img_voucher);
        this.J0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.img_gift);
        this.K0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.paCreditCenterIcon);
        this.T0 = (LinearLayout) aVar.internalFindViewById(R.id.vip_lay_1);
        this.U0 = (LinearLayout) aVar.internalFindViewById(R.id.vip_lay_2);
        this.V0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.vip_icon_1);
        this.W0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.vip_icon_2);
        this.X0 = (TextView) aVar.internalFindViewById(R.id.vip_1_txt);
        this.Y0 = (TextView) aVar.internalFindViewById(R.id.vip_2_txt);
        this.Z0 = (TextView) aVar.internalFindViewById(R.id.paVipAd);
        this.f28156a1 = (TextView) aVar.internalFindViewById(R.id.couponNumberTxt);
        this.f28158b1 = (TextView) aVar.internalFindViewById(R.id.game_packs_txt);
        this.f28160c1 = aVar.internalFindViewById(R.id.vip_lay_2_line);
        View internalFindViewById = aVar.internalFindViewById(R.id.face_transfer_rl);
        ImageView imageView = this.f28181r0;
        if (imageView != null) {
            imageView.setOnClickListener(new v());
        }
        RelativeLayout relativeLayout = this.f28184t;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new x());
        }
        ImageView imageView2 = this.I;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new y());
        }
        RelativeLayout relativeLayout2 = this.f28166h;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new z());
        }
        RelativeLayout relativeLayout3 = this.f28167i;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnClickListener(new a0());
        }
        RelativeLayout relativeLayout4 = this.f28168j;
        if (relativeLayout4 != null) {
            relativeLayout4.setOnClickListener(new b0());
        }
        RelativeLayout relativeLayout5 = this.f28188v;
        if (relativeLayout5 != null) {
            relativeLayout5.setOnClickListener(new c0());
        }
        RelativeLayout relativeLayout6 = this.f28190w;
        if (relativeLayout6 != null) {
            relativeLayout6.setOnClickListener(new d0());
        }
        RelativeLayout relativeLayout7 = this.f28194y;
        if (relativeLayout7 != null) {
            relativeLayout7.setOnClickListener(new a());
        }
        RelativeLayout relativeLayout8 = this.f28196z;
        if (relativeLayout8 != null) {
            relativeLayout8.setOnClickListener(new b());
        }
        RelativeLayout relativeLayout9 = this.A;
        if (relativeLayout9 != null) {
            relativeLayout9.setOnClickListener(new c());
        }
        RelativeLayout relativeLayout10 = this.H;
        if (relativeLayout10 != null) {
            relativeLayout10.setOnClickListener(new d());
        }
        RelativeLayout relativeLayout11 = this.f28180r;
        if (relativeLayout11 != null) {
            relativeLayout11.setOnClickListener(new e());
        }
        RelativeLayout relativeLayout12 = this.H0;
        if (relativeLayout12 != null) {
            relativeLayout12.setOnClickListener(new f());
        }
        RelativeLayout relativeLayout13 = this.f28182s;
        if (relativeLayout13 != null) {
            relativeLayout13.setOnClickListener(new g());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new h());
        }
        RelativeLayout relativeLayout14 = this.f28169k;
        if (relativeLayout14 != null) {
            relativeLayout14.setOnClickListener(new i());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28215f1.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28214e1.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new r(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28214e1.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28214e1.a(this);
    }
}
