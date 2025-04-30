package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameDetialModleThreeActivity_.java */
/* loaded from: classes3.dex */
public final class c0 extends com.join.mgps.activity.b0 implements g3.a, i3.a, i3.b {
    private View T0;
    private final i3.c S0 = new i3.c();
    private final Map<Class<?>, Object> U0 = new HashMap();
    private final IntentFilter V0 = new IntentFilter();
    private final BroadcastReceiver W0 = new k();
    private final IntentFilter X0 = new IntentFilter();
    private final BroadcastReceiver Y0 = new v();
    private final IntentFilter Z0 = new IntentFilter();

    /* renamed from: a1  reason: collision with root package name */
    private final BroadcastReceiver f36821a1 = new g0();

    /* renamed from: b1  reason: collision with root package name */
    private final IntentFilter f36822b1 = new IntentFilter();

    /* renamed from: c1  reason: collision with root package name */
    private final BroadcastReceiver f36823c1 = new r0();

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.x0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f36825a;

        a0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f36825a = giftPackageDataInfoBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.D0(this.f36825a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.instalButtomButn();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f36828a;

        b0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f36828a = giftPackageDataOperationBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.E0(this.f36828a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.progress_layout();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* renamed from: com.join.mgps.activity.c0$c0  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0159c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36831a;

        RunnableC0159c0(int i2) {
            this.f36831a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.N0(this.f36831a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.Z();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36834a;

        d0(int i2) {
            this.f36834a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.M0(this.f36834a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.K0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.O0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.X();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.F0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.A0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class g0 extends BroadcastReceiver {
        g0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            c0.this.q0(intent);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.B0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class h0 implements Runnable {
        h0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.G0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36844a;

        i(boolean z3) {
            this.f36844a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.P0(this.f36844a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class i0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f36846a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36847b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f36848c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f36846a = commentBaseBean;
            this.f36847b = i2;
            this.f36848c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.n0(this.f36846a, this.f36847b, this.f36848c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36850a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36851b;

        j(int i2, int i4) {
            this.f36850a = i2;
            this.f36851b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.T(this.f36850a, this.f36851b);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class j0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f36853a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36854b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f36855c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j0(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f36853a = commentBaseBean;
            this.f36854b = i2;
            this.f36855c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.p0(this.f36853a, this.f36854b, this.f36855c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            c0.this.t0(intent);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class k0 extends a.c {
        k0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.i0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36859a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f36860b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f36861c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f36862d;

        l(String str, boolean z3, int i2, int i4) {
            this.f36859a = str;
            this.f36860b = z3;
            this.f36861c = i2;
            this.f36862d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.v0(this.f36859a, this.f36860b, this.f36861c, this.f36862d);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class l0 extends a.c {
        l0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentResponse f36865a;

        m(CommentResponse commentResponse) {
            this.f36865a = commentResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.w0(this.f36865a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class m0 extends a.c {
        m0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.f0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36868a;

        n(String str) {
            this.f36868a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.showToast(this.f36868a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class n0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f36870a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n0(String str, long j4, String str2, InformationCommentBean informationCommentBean) {
            super(str, j4, str2);
            this.f36870a = informationCommentBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.r0(this.f36870a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.showLodingFailed();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class o0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36873a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f36873a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.changeGameFollow(this.f36873a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36875a;

        p(List list) {
            this.f36875a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.showMain(this.f36875a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class p0 extends a.c {
        p0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f36878a;

        q(GamedetialModleFourBean gamedetialModleFourBean) {
            this.f36878a = gamedetialModleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.Q0(this.f36878a);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class q0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f36880a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q0(String str, long j4, String str2, GiftPackageDataInfoBean giftPackageDataInfoBean) {
            super(str, j4, str2);
            this.f36880a = giftPackageDataInfoBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.g0(this.f36880a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.H0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class r0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f36883b = "gameData";

        r0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            c0.this.l0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.m0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class s0 extends a.c {
        s0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c0.super.S();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.L0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.relodingimag();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMainBean f36889a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36890b;

        u(ResultMainBean resultMainBean, int i2) {
            this.f36889a = resultMainBean;
            this.f36890b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.updateTitleButn(this.f36889a, this.f36890b);
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.c0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class v extends BroadcastReceiver {
        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            c0.this.R0();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class v0 implements View.OnClickListener {
        v0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.setNetwork();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.showProgress();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class w0 implements View.OnClickListener {
        w0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.iv_back();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.showInstallButn();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class x0 implements View.OnClickListener {
        x0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.this.R();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.updateButn();
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    public static class y0 extends org.androidannotations.api.builder.d<y0, com.join.mgps.activity.b0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.b0 build() {
            c0 c0Var = new c0();
            c0Var.setArguments(this.args);
            return c0Var;
        }
    }

    /* compiled from: GameDetialModleThreeActivity_.java */
    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.super.updateDownloadView();
        }
    }

    private void init_(Bundle bundle) {
        this.f36782w0 = new PrefDef_(getActivity());
        i3.c.b(this);
        this.V0.addAction(f1.a.B);
        this.X0.addAction("com.broadcast.bespeak.sussess");
        this.Z0.addAction("com.join,mgps.sim.sdkgamePayfinish");
        this.f36822b1.addAction(f1.a.H);
        this.f36822b1.addAction(f1.a.F);
    }

    public static y0 z1() {
        return new y0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void D0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.b.e("", new a0(giftPackageDataInfoBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void E0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        org.androidannotations.api.b.e("", new b0(giftPackageDataOperationBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void F0() {
        org.androidannotations.api.b.e("", new f0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void G0() {
        org.androidannotations.api.b.e("", new h0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void H0() {
        org.androidannotations.api.b.e("", new r(), 4000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void L0() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void M0(int i2) {
        org.androidannotations.api.b.e("", new d0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void N0(int i2) {
        org.androidannotations.api.b.e("", new RunnableC0159c0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void O0() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void P0(boolean z3) {
        org.androidannotations.api.b.e("", new i(z3), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void Q0(GamedetialModleFourBean gamedetialModleFourBean) {
        org.androidannotations.api.b.e("", new q(gamedetialModleFourBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void S() {
        org.androidannotations.api.a.l(new s0("", 0L, ""));
    }

    @Override // com.join.mgps.activity.b0
    public void T(int i2, int i4) {
        org.androidannotations.api.b.e("", new j(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void changeGameFollow(int i2) {
        org.androidannotations.api.a.l(new o0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void e0() {
        org.androidannotations.api.a.l(new l0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void f0() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void g0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.a.l(new q0("", 0L, "", giftPackageDataInfoBean));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.U0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new p0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void i0() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.T0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void m0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void n0(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new i0("", 0L, "", commentBaseBean, i2, i4));
    }

    @Override // com.join.mgps.activity.b0, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.S0);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.W0, this.V0);
        getActivity().registerReceiver(this.Y0, this.X0);
        getActivity().registerReceiver(this.f36821a1, this.Z0);
        getActivity().registerReceiver(this.f36823c1, this.f36822b1);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.T0 = onCreateView;
        if (onCreateView == null) {
            this.T0 = layoutInflater.inflate(R.layout.gamedetial_modle_three_activity, viewGroup, false);
        }
        return this.T0;
    }

    @Override // com.join.mgps.activity.b0, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.W0);
        getActivity().unregisterReceiver(this.Y0);
        getActivity().unregisterReceiver(this.f36821a1);
        getActivity().unregisterReceiver(this.f36823c1);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.T0 = null;
        this.f36751b = null;
        this.f36752c = null;
        this.f36753d = null;
        this.f36754e = null;
        this.f36755f = null;
        this.f36756g = null;
        this.f36757h = null;
        this.f36758i = null;
        this.f36759j = null;
        this.f36760k = null;
        this.f36761l = null;
        this.f36762m = null;
        this.f36763n = null;
        this.f36765o = null;
        this.f36767p = null;
        this.f36769q = null;
        this.f36771r = null;
        this.f36773s = null;
        this.f36775t = null;
        this.f36777u = null;
        this.f36779v = null;
        this.f36781w = null;
        this.f36783x = null;
        this.f36785y = null;
        this.f36787z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = null;
        this.M0 = null;
        this.N0 = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36751b = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f36752c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f36753d = (ImageView) aVar.internalFindViewById(R.id.iv_back);
        this.f36754e = (ImageView) aVar.internalFindViewById(R.id.search);
        this.f36755f = (ImageView) aVar.internalFindViewById(R.id.share);
        this.f36756g = (ImageView) aVar.internalFindViewById(R.id.downImage);
        this.f36757h = (ImageView) aVar.internalFindViewById(R.id.followImage);
        this.f36758i = (TextView) aVar.internalFindViewById(R.id.followButton);
        this.f36759j = (LinearLayout) aVar.internalFindViewById(R.id.followLayout);
        this.f36760k = (LinearLayout) aVar.internalFindViewById(R.id.layoutGift);
        this.f36761l = (RecyclerView) aVar.internalFindViewById(R.id.recycleView);
        this.f36762m = (TextView) aVar.internalFindViewById(R.id.instalButtomButn);
        this.f36763n = (RelativeLayout) aVar.internalFindViewById(R.id.progressbarLayout);
        this.f36765o = (RelativeLayout) aVar.internalFindViewById(R.id.instalbutnLayout);
        this.f36767p = (ImageView) aVar.internalFindViewById(R.id.butn_showdownload);
        this.f36769q = (TextView) aVar.internalFindViewById(R.id.percent);
        this.f36771r = (ProgressBar) aVar.internalFindViewById(R.id.butnProgressBar);
        this.f36773s = (LinearLayout) aVar.internalFindViewById(R.id.downloadLayout);
        this.f36775t = (RelativeLayout) aVar.internalFindViewById(R.id.title_bar_layout);
        this.f36777u = (RelativeLayout) aVar.internalFindViewById(R.id.downloadRLayout2);
        this.f36779v = (RelativeLayout) aVar.internalFindViewById(R.id.titleTransfer);
        this.f36781w = (ImageView) aVar.internalFindViewById(R.id.search_detial_back);
        this.f36783x = (ImageView) aVar.internalFindViewById(R.id.download_bg);
        this.f36785y = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f36787z = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.A = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.B = (RelativeLayout) aVar.internalFindViewById(R.id.title);
        this.C = (SimpleDraweeView) aVar.internalFindViewById(R.id.giftImage);
        this.D = (TextView) aVar.internalFindViewById(R.id.giftContent);
        this.I0 = (TextView) aVar.internalFindViewById(R.id.biground);
        this.J0 = (ImageView) aVar.internalFindViewById(R.id.downloadLine);
        this.K0 = (ImageView) aVar.internalFindViewById(R.id.search_detial_image);
        this.L0 = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.M0 = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
        this.N0 = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.progress_layout);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.shareTwo);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new t0());
        }
        LinearLayout linearLayout = this.f36759j;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new u0());
        }
        Button button = this.A;
        if (button != null) {
            button.setOnClickListener(new v0());
        }
        ImageView imageView = this.f36753d;
        if (imageView != null) {
            imageView.setOnClickListener(new w0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new x0());
        }
        ImageView imageView2 = this.f36781w;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new a());
        }
        TextView textView = this.f36762m;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new c());
        }
        LinearLayout linearLayout2 = this.f36773s;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new d());
        }
        CustomerDownloadView customerDownloadView = this.N0;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new e());
        }
        ImageView imageView3 = this.f36756g;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new f());
        }
        ImageView imageView4 = this.f36755f;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new g());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new h());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.S0.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void p0(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new j0("", 0L, "", commentBaseBean, i2, i4));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.U0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void r0(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.a.l(new n0("", 0L, "", informationCommentBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void showMain(List<CommentBaseBean> list) {
        org.androidannotations.api.b.e("", new p(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void showProgress() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new n(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void updateButn() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        org.androidannotations.api.b.e("", new u(resultMainBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void v0(String str, boolean z3, int i2, int i4) {
        org.androidannotations.api.b.e("", new l(str, z3, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b0
    public void w0(CommentResponse commentResponse) {
        org.androidannotations.api.b.e("", new m(commentResponse), 0L);
    }
}
