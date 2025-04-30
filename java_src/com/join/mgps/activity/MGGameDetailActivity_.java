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
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.activity.MGGameDetailActivity;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GameVoucherBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MGGameDetailActivity_ extends MGGameDetailActivity implements g3.a, i3.a, i3.b {

    /* renamed from: v1  reason: collision with root package name */
    public static final String f33078v1 = "intentdate";

    /* renamed from: w1  reason: collision with root package name */
    public static final String f33079w1 = "extBean";

    /* renamed from: p1  reason: collision with root package name */
    private final i3.c f33080p1 = new i3.c();

    /* renamed from: q1  reason: collision with root package name */
    private final Map<Class<?>, Object> f33081q1 = new HashMap();

    /* renamed from: r1  reason: collision with root package name */
    private final IntentFilter f33082r1 = new IntentFilter();

    /* renamed from: s1  reason: collision with root package name */
    private final BroadcastReceiver f33083s1 = new k();

    /* renamed from: t1  reason: collision with root package name */
    private final IntentFilter f33084t1 = new IntentFilter();

    /* renamed from: u1  reason: collision with root package name */
    private final BroadcastReceiver f33085u1 = new v();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class a1 extends a.c {
        a1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.g1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.w2();
        }
    }

    /* loaded from: classes3.dex */
    class b1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f33091a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b1(String str, long j4, String str2, InformationCommentBean informationCommentBean) {
            super(str, j4, str2);
            this.f33091a = informationCommentBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.A1(this.f33091a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.t2();
        }
    }

    /* loaded from: classes3.dex */
    class c1 implements View.OnClickListener {
        c1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.G1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.z2();
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.E2();
        }
    }

    /* loaded from: classes3.dex */
    class d1 extends a.c {
        d1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.checkDownlodingNumber();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33100a;

        e0(int i2) {
            this.f33100a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateLine(this.f33100a);
        }
    }

    /* loaded from: classes3.dex */
    class e1 extends a.c {
        e1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.B2();
        }
    }

    /* loaded from: classes3.dex */
    class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33104a;

        f0(int i2) {
            this.f33104a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateDownloadingPoint(this.f33104a);
        }
    }

    /* loaded from: classes3.dex */
    class f1 extends a.c {
        f1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.h1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.A2();
        }
    }

    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.downloadLayout();
        }
    }

    /* loaded from: classes3.dex */
    class g1 extends a.c {
        g1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.E0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.n1();
        }
    }

    /* loaded from: classes3.dex */
    class h0 implements Runnable {
        h0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateNoOpenPoint();
        }
    }

    /* loaded from: classes3.dex */
    class h1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33112a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f33113b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MGGameDetailActivity.w f33114c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h1(String str, long j4, String str2, String str3, String str4, MGGameDetailActivity.w wVar) {
            super(str, j4, str2);
            this.f33112a = str3;
            this.f33113b = str4;
            this.f33114c = wVar;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.F0(this.f33112a, this.f33113b, this.f33114c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.D1();
        }
    }

    /* loaded from: classes3.dex */
    class i0 implements Runnable {
        i0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class i1 implements View.OnClickListener {
        i1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.p2();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f33119a;

        j(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f33119a = giftPackageDataInfoBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.r2(this.f33119a);
        }
    }

    /* loaded from: classes3.dex */
    class j0 implements Runnable {
        j0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.x2();
        }
    }

    /* loaded from: classes3.dex */
    class j1 implements View.OnClickListener {
        j1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.B1();
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGGameDetailActivity_.this.z1(intent);
        }
    }

    /* loaded from: classes3.dex */
    class k0 implements Runnable {
        k0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.y2();
        }
    }

    /* loaded from: classes3.dex */
    class k1 implements View.OnClickListener {
        k1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.q1();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f33126a;

        l(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f33126a = giftPackageDataOperationBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.s2(this.f33126a);
        }
    }

    /* loaded from: classes3.dex */
    class l0 implements Runnable {
        l0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.G0();
        }
    }

    /* loaded from: classes3.dex */
    class l1 implements View.OnClickListener {
        l1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.b1();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33130a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f33131b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33132c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f33133d;

        m(String str, boolean z3, int i2, int i4) {
            this.f33130a = str;
            this.f33131b = z3;
            this.f33132c = i2;
            this.f33133d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.E1(this.f33130a, this.f33131b, this.f33132c, this.f33133d);
        }
    }

    /* loaded from: classes3.dex */
    class m0 implements Runnable {
        m0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.F2();
        }
    }

    /* loaded from: classes3.dex */
    public static class m1 extends org.androidannotations.api.builder.a<m1> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33136a;

        public m1(Context context) {
            super(context, MGGameDetailActivity_.class);
        }

        public m1 a(ExtBean extBean) {
            return (m1) super.extra("extBean", extBean);
        }

        public m1 b(IntentDateBean intentDateBean) {
            return (m1) super.extra("intentdate", intentDateBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33136a;
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

        public m1(Fragment fragment) {
            super(fragment.getActivity(), MGGameDetailActivity_.class);
            this.f33136a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentResponse f33137a;

        n(CommentResponse commentResponse) {
            this.f33137a = commentResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.F1(this.f33137a);
        }
    }

    /* loaded from: classes3.dex */
    class n0 implements Runnable {
        n0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.C2();
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33140a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33141b;

        o(int i2, int i4) {
            this.f33140a = i2;
            this.f33141b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.U0(this.f33140a, this.f33141b);
        }
    }

    /* loaded from: classes3.dex */
    class o0 implements Runnable {
        o0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.o1();
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33144a;

        p(boolean z3) {
            this.f33144a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.G2(this.f33144a);
        }
    }

    /* loaded from: classes3.dex */
    class p0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean f33146a;

        p0(GameFromPopoWinBean gameFromPopoWinBean) {
            this.f33146a = gameFromPopoWinBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.Q0(this.f33146a);
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMainBean f33148a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33149b;

        q(ResultMainBean resultMainBean, int i2) {
            this.f33148a = resultMainBean;
            this.f33149b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.H2(this.f33148a, this.f33149b);
        }
    }

    /* loaded from: classes3.dex */
    class q0 implements Runnable {
        q0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.W0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.v1();
        }
    }

    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.X0();
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.D2();
        }
    }

    /* loaded from: classes3.dex */
    class s0 implements Runnable {
        s0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.p1();
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33156a;

        t(String str) {
            this.f33156a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showToast(this.f33156a);
        }
    }

    /* loaded from: classes3.dex */
    class t0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameVoucherBean f33158a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t0(String str, long j4, String str2, GameVoucherBean gameVoucherBean) {
            super(str, j4, str2);
            this.f33158a = gameVoucherBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.l1(this.f33158a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.r1();
        }
    }

    /* loaded from: classes3.dex */
    class u0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f33161a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u0(String str, long j4, String str2, GiftPackageDataInfoBean giftPackageDataInfoBean) {
            super(str, j4, str2);
            this.f33161a = giftPackageDataInfoBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.i1(this.f33161a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class v extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f33163b = "gameData";

        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGGameDetailActivity_.this.u1((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class v0 extends a.c {
        v0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.k1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33166a;

        w(List list) {
            this.f33166a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.v2(this.f33166a);
        }
    }

    /* loaded from: classes3.dex */
    class w0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f33168a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33169b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33170c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w0(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f33168a = commentBaseBean;
            this.f33169b = i2;
            this.f33170c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.w1(this.f33168a, this.f33169b, this.f33170c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBeanV3 f33172a;

        x(DetailResultBeanV3 detailResultBeanV3) {
            this.f33172a = detailResultBeanV3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.u2(this.f33172a);
        }
    }

    /* loaded from: classes3.dex */
    class x0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f33174a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33175b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33176c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x0(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f33174a = commentBaseBean;
            this.f33175b = i2;
            this.f33176c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.y1(this.f33174a, this.f33175b, this.f33176c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBeanV3 f33178a;

        y(DetailResultBeanV3 detailResultBeanV3) {
            this.f33178a = detailResultBeanV3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.N1(this.f33178a);
        }
    }

    /* loaded from: classes3.dex */
    class y0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33180a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f33180a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.T0(this.f33180a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class z0 extends a.c {
        z0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.f1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static m1 E3(Context context) {
        return new m1(context);
    }

    public static m1 F3(Fragment fragment) {
        return new m1(fragment);
    }

    private void init_(Bundle bundle) {
        this.I = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        this.f33082r1.addAction("com.join,mgps.sim.sdkgamePayfinish");
        this.f33084t1.addAction(f1.a.H);
        this.f33084t1.addAction(f1.a.F);
        registerReceiver(this.f33083s1, this.f33082r1);
        registerReceiver(this.f33085u1, this.f33084t1);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentdate")) {
                this.G = (IntentDateBean) extras.getSerializable("intentdate");
            }
            if (extras.containsKey("extBean")) {
                this.H = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void A1(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.a.l(new b1("", 0L, "", informationCommentBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void C2() {
        org.androidannotations.api.b.e("", new n0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void D1() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void D2() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void E0() {
        org.androidannotations.api.a.l(new g1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void E1(String str, boolean z3, int i2, int i4) {
        org.androidannotations.api.b.e("", new m(str, z3, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void E2() {
        org.androidannotations.api.b.e("", new d0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void F0(String str, String str2, MGGameDetailActivity.w wVar) {
        org.androidannotations.api.a.l(new h1("", 0L, "", str, str2, wVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void F1(CommentResponse commentResponse) {
        org.androidannotations.api.b.e("", new n(commentResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void F2() {
        org.androidannotations.api.b.e("", new m0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void G0() {
        org.androidannotations.api.b.e("", new l0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void G2(boolean z3) {
        org.androidannotations.api.b.e("", new p(z3), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void H2(ResultMainBean resultMainBean, int i2) {
        org.androidannotations.api.b.e("", new q(resultMainBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void N1(DetailResultBeanV3 detailResultBeanV3) {
        org.androidannotations.api.b.e("", new y(detailResultBeanV3), 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void Q0(GameFromPopoWinBean gameFromPopoWinBean) {
        org.androidannotations.api.b.e("", new p0(gameFromPopoWinBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void T0(int i2) {
        org.androidannotations.api.a.l(new y0("", 0L, "", i2));
    }

    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void U0(int i2, int i4) {
        org.androidannotations.api.b.e("", new o(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void W0() {
        org.androidannotations.api.b.e("", new q0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void checkDownlodingNumber() {
        org.androidannotations.api.a.l(new d1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void f1() {
        org.androidannotations.api.a.l(new z0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void g1() {
        org.androidannotations.api.a.l(new a1("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33081q1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new e1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void h1() {
        org.androidannotations.api.a.l(new f1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void i1(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.a.l(new u0("", 0L, "", giftPackageDataInfoBean));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void k1() {
        org.androidannotations.api.a.l(new v0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void l1(GameVoucherBean gameVoucherBean) {
        org.androidannotations.api.a.l(new t0("", 0L, "", gameVoucherBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void n1() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void o1() {
        org.androidannotations.api.b.e("", new o0(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33080p1);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_game_detail_layout);
    }

    @Override // com.join.mgps.activity.MGGameDetailActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f33083s1);
        unregisterReceiver(this.f33085u1);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32992a = aVar.internalFindViewById(R.id.topBarline);
        this.f32994b = (RelativeLayout) aVar.internalFindViewById(R.id.title_bar_layout);
        this.f32996c = (RelativeLayout) aVar.internalFindViewById(R.id.downloadRLayout2);
        this.f32998d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f33000e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f33002f = (TextView) aVar.internalFindViewById(R.id.gameDescribeInit);
        this.f33004g = (ListView) aVar.internalFindViewById(R.id.gameListView);
        this.f33006h = (RelativeLayout) aVar.internalFindViewById(R.id.detialDownBottom);
        this.f33008i = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f33010j = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f33012k = (TextView) aVar.internalFindViewById(R.id.instalButtomButn);
        this.f33014l = (RelativeLayout) aVar.internalFindViewById(R.id.progressbarLayout);
        this.f33015m = (RelativeLayout) aVar.internalFindViewById(R.id.instalbutnLayout);
        this.f33016n = (ImageView) aVar.internalFindViewById(R.id.butn_showdownload);
        this.f33018o = (TextView) aVar.internalFindViewById(R.id.percent);
        this.f33020p = (ProgressBar) aVar.internalFindViewById(R.id.butnProgressBar);
        this.f33022q = (LinearLayout) aVar.internalFindViewById(R.id.downloadLayout);
        this.f33024r = (TextView) aVar.internalFindViewById(R.id.scroll_text);
        this.f33026s = (TextView) aVar.internalFindViewById(R.id.biground);
        this.f33028t = (ScrollTextViewLayout) aVar.internalFindViewById(R.id.scroll_text_layout);
        this.f33030u = (ImageView) aVar.internalFindViewById(R.id.hasNewFinishedGameImage);
        this.f33032v = (ImageView) aVar.internalFindViewById(R.id.downloadLine);
        this.f33034w = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
        this.f33036x = (ImageView) aVar.internalFindViewById(R.id.search_detial_image);
        this.f33038y = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f33040z = aVar.internalFindViewById(R.id.linebutn);
        this.A = (ImageView) aVar.internalFindViewById(R.id.share);
        this.B = (RelativeLayout) aVar.internalFindViewById(R.id.container);
        this.C = (ImageView) aVar.internalFindViewById(R.id.backBtn);
        this.D = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.detial_search_layout);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.search_detial_back);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.progress_layout);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.downloadRLayout);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.setNetwork);
        LinearLayout linearLayout = this.f33022q;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new g0());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new r0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new c1());
        }
        ImageView imageView = this.A;
        if (imageView != null) {
            imageView.setOnClickListener(new i1());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new j1());
        }
        TextView textView = this.f33012k;
        if (textView != null) {
            textView.setOnClickListener(new k1());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new l1());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new a());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new b());
        }
        ImageView imageView2 = this.f33010j;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new c());
        }
        RelativeLayout relativeLayout = this.f32994b;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new d());
        }
        ImageView imageView3 = this.C;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new e());
        }
        ImageView imageView4 = this.f33038y;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new f());
        }
        CustomerDownloadView customerDownloadView = this.D;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new g());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void p1() {
        org.androidannotations.api.b.e("", new s0(), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33081q1.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void r1() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void r2(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.b.e("", new j(giftPackageDataInfoBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void s2(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        org.androidannotations.api.b.e("", new l(giftPackageDataOperationBean), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33080p1.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new t(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void t2() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void u2(DetailResultBeanV3 detailResultBeanV3) {
        org.androidannotations.api.b.e("", new x(detailResultBeanV3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new i0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateDownloadingPoint(int i2) {
        org.androidannotations.api.b.e("", new f0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateLine(int i2) {
        org.androidannotations.api.b.e("", new e0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateNoOpenPoint() {
        org.androidannotations.api.b.e("", new h0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void v1() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void v2(List<CommentBaseBean> list) {
        org.androidannotations.api.b.e("", new w(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void w1(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new w0("", 0L, "", commentBaseBean, i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void w2() {
        org.androidannotations.api.b.e("", new b0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void x2() {
        org.androidannotations.api.b.e("", new j0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void y1(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new x0("", 0L, "", commentBaseBean, i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void y2() {
        org.androidannotations.api.b.e("", new k0(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33080p1.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33080p1.a(this);
    }
}
