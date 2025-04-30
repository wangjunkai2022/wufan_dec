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
import androidx.core.widget.NestedScrollView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
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
/* compiled from: GameDetialModleFourActivity_.java */
/* loaded from: classes3.dex */
public final class a0 extends com.join.mgps.activity.z implements g3.a, i3.a, i3.b {

    /* renamed from: d1  reason: collision with root package name */
    private View f36200d1;

    /* renamed from: c1  reason: collision with root package name */
    private final i3.c f36199c1 = new i3.c();

    /* renamed from: e1  reason: collision with root package name */
    private final Map<Class<?>, Object> f36201e1 = new HashMap();

    /* renamed from: f1  reason: collision with root package name */
    private final IntentFilter f36202f1 = new IntentFilter();

    /* renamed from: g1  reason: collision with root package name */
    private final BroadcastReceiver f36203g1 = new k();

    /* renamed from: h1  reason: collision with root package name */
    private final IntentFilter f36204h1 = new IntentFilter();

    /* renamed from: i1  reason: collision with root package name */
    private final BroadcastReceiver f36205i1 = new v();

    /* renamed from: j1  reason: collision with root package name */
    private final IntentFilter f36206j1 = new IntentFilter();

    /* renamed from: k1  reason: collision with root package name */
    private final BroadcastReceiver f36207k1 = new g0();

    /* renamed from: l1  reason: collision with root package name */
    private final IntentFilter f36208l1 = new IntentFilter();

    /* renamed from: m1  reason: collision with root package name */
    private final BroadcastReceiver f36209m1 = new r0();

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.I0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* renamed from: com.join.mgps.activity.a0$a0  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0156a0 implements Runnable {
        RunnableC0156a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.updateDownloadView();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    public static class a1 extends org.androidannotations.api.builder.d<a1, com.join.mgps.activity.z> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.z build() {
            a0 a0Var = new a0();
            a0Var.setArguments(this.args);
            return a0Var;
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.instalButtomButn();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f36213a;

        b0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f36213a = giftPackageDataInfoBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.O0(this.f36213a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.progress_layout();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f36216a;

        c0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f36216a = giftPackageDataOperationBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.P0(this.f36216a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.f0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36219a;

        d0(int i2) {
            this.f36219a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.a1(this.f36219a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.V0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36222a;

        e0(int i2) {
            this.f36222a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.Z0(this.f36222a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.e0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.c1();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.L0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class g0 extends BroadcastReceiver {
        g0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            a0.this.y0(intent);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.M0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class h0 implements Runnable {
        h0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.Q0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36230a;

        i(List list) {
            this.f36230a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.b1(this.f36230a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class i0 implements Runnable {
        i0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.R0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36233a;

        j(boolean z3) {
            this.f36233a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.d1(this.f36233a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class j0 extends a.c {
        j0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.q0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            a0.this.E0(intent);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class k0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f36237a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36238b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f36239c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k0(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f36237a = commentBaseBean;
            this.f36238b = i2;
            this.f36239c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.v0(this.f36237a, this.f36238b, this.f36239c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36241a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36242b;

        l(int i2, int i4) {
            this.f36241a = i2;
            this.f36242b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.a0(this.f36241a, this.f36242b);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class l0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f36244a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36245b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f36246c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f36244a = commentBaseBean;
            this.f36245b = i2;
            this.f36246c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.x0(this.f36244a, this.f36245b, this.f36246c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36248a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f36249b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f36250c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f36251d;

        m(String str, boolean z3, int i2, int i4) {
            this.f36248a = str;
            this.f36249b = z3;
            this.f36250c = i2;
            this.f36251d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.G0(this.f36248a, this.f36249b, this.f36250c, this.f36251d);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class m0 extends a.c {
        m0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.o0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentResponse f36254a;

        n(CommentResponse commentResponse) {
            this.f36254a = commentResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.H0(this.f36254a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class n0 extends a.c {
        n0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.k0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36257a;

        o(String str) {
            this.f36257a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showToast(this.f36257a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class o0 extends a.c {
        o0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.l0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showLodingFailed();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class p0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f36261a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p0(String str, long j4, String str2, InformationCommentBean informationCommentBean) {
            super(str, j4, str2);
            this.f36261a = informationCommentBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.z0(this.f36261a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36263a;

        q(List list) {
            this.f36263a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showMain(this.f36263a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class q0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36265a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f36265a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.changeGameFollow(this.f36265a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f36267a;

        r(GamedetialModleFourBean gamedetialModleFourBean) {
            this.f36267a = gamedetialModleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.g1(this.f36267a);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class r0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f36269b = "gameData";

        r0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            a0.this.t0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.S0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class s0 extends a.c {
        s0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.u0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class t0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f36274a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t0(String str, long j4, String str2, GiftPackageDataInfoBean giftPackageDataInfoBean) {
            super(str, j4, str2);
            this.f36274a = giftPackageDataInfoBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.m0(this.f36274a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.W0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class u0 extends a.c {
        u0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.Z();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class v extends BroadcastReceiver {
        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            a0.this.h1();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class v0 implements View.OnClickListener {
        v0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.relodingimag();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMainBean f36280a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36281b;

        w(ResultMainBean resultMainBean, int i2) {
            this.f36280a = resultMainBean;
            this.f36281b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.updateTitleButn(this.f36280a, this.f36281b);
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class w0 implements View.OnClickListener {
        w0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.i0();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showProgress();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class x0 implements View.OnClickListener {
        x0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.setNetwork();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showInstallButn();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class y0 implements View.OnClickListener {
        y0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.iv_back();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.updateButn();
        }
    }

    /* compiled from: GameDetialModleFourActivity_.java */
    /* loaded from: classes3.dex */
    class z0 implements View.OnClickListener {
        z0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.X();
        }
    }

    public static a1 R1() {
        return new a1();
    }

    private void init_(Bundle bundle) {
        this.F0 = new PrefDef_(getActivity());
        i3.c.b(this);
        this.f36202f1.addAction(f1.a.B);
        this.f36204h1.addAction("com.broadcast.bespeak.sussess");
        this.f36206j1.addAction("com.join,mgps.sim.sdkgamePayfinish");
        this.f36208l1.addAction(f1.a.H);
        this.f36208l1.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void G0(String str, boolean z3, int i2, int i4) {
        org.androidannotations.api.b.e("", new m(str, z3, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void H0(CommentResponse commentResponse) {
        org.androidannotations.api.b.e("", new n(commentResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void O0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.b.e("", new b0(giftPackageDataInfoBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void P0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        org.androidannotations.api.b.e("", new c0(giftPackageDataOperationBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void Q0() {
        org.androidannotations.api.b.e("", new h0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void R0() {
        org.androidannotations.api.b.e("", new i0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void S0() {
        org.androidannotations.api.b.e("", new s(), 4000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void W0() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void Z() {
        org.androidannotations.api.a.l(new u0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void Z0(int i2) {
        org.androidannotations.api.b.e("", new e0(i2), 0L);
    }

    @Override // com.join.mgps.activity.z
    public void a0(int i2, int i4) {
        org.androidannotations.api.b.e("", new l(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void a1(int i2) {
        org.androidannotations.api.b.e("", new d0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void b1(List<CollectionBeanSub> list) {
        org.androidannotations.api.b.e("", new i(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void c1() {
        org.androidannotations.api.b.e("", new f0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void changeGameFollow(int i2) {
        org.androidannotations.api.a.l(new q0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void d1(boolean z3) {
        org.androidannotations.api.b.e("", new j(z3), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void g1(GamedetialModleFourBean gamedetialModleFourBean) {
        org.androidannotations.api.b.e("", new r(gamedetialModleFourBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36201e1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new s0("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f36200d1;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void k0() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void l0() {
        org.androidannotations.api.a.l(new o0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void m0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.a.l(new t0("", 0L, "", giftPackageDataInfoBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void o0() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    @Override // com.join.mgps.activity.z, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36199c1);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f36203g1, this.f36202f1);
        getActivity().registerReceiver(this.f36205i1, this.f36204h1);
        getActivity().registerReceiver(this.f36207k1, this.f36206j1);
        getActivity().registerReceiver(this.f36209m1, this.f36208l1);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f36200d1 = onCreateView;
        if (onCreateView == null) {
            this.f36200d1 = layoutInflater.inflate(R.layout.gamedetial_modle_four_activity, viewGroup, false);
        }
        return this.f36200d1;
    }

    @Override // com.join.mgps.activity.z, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f36203g1);
        getActivity().unregisterReceiver(this.f36205i1);
        getActivity().unregisterReceiver(this.f36207k1);
        getActivity().unregisterReceiver(this.f36209m1);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f36200d1 = null;
        this.f38543b = null;
        this.f38544c = null;
        this.f38545d = null;
        this.f38546e = null;
        this.f38547f = null;
        this.f38548g = null;
        this.f38549h = null;
        this.f38550i = null;
        this.f38551j = null;
        this.f38552k = null;
        this.f38553l = null;
        this.f38554m = null;
        this.f38555n = null;
        this.f38557o = null;
        this.f38559p = null;
        this.f38561q = null;
        this.f38563r = null;
        this.f38565s = null;
        this.f38567t = null;
        this.f38569u = null;
        this.f38571v = null;
        this.f38573w = null;
        this.f38575x = null;
        this.f38577y = null;
        this.f38579z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.S0 = null;
        this.T0 = null;
        this.U0 = null;
        this.V0 = null;
        this.W0 = null;
        this.X0 = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f38543b = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f38544c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f38545d = (ImageView) aVar.internalFindViewById(R.id.iv_back);
        this.f38546e = (ImageView) aVar.internalFindViewById(R.id.search);
        this.f38547f = (ImageView) aVar.internalFindViewById(R.id.share);
        this.f38548g = (ImageView) aVar.internalFindViewById(R.id.downImage);
        this.f38549h = (ImageView) aVar.internalFindViewById(R.id.followImage);
        this.f38550i = (TextView) aVar.internalFindViewById(R.id.followButton);
        this.f38551j = (LinearLayout) aVar.internalFindViewById(R.id.followLayout);
        this.f38552k = (LinearLayout) aVar.internalFindViewById(R.id.layoutGift);
        this.f38553l = (XRecyclerView) aVar.internalFindViewById(R.id.recycleView);
        this.f38554m = (TextView) aVar.internalFindViewById(R.id.instalButtomButn);
        this.f38555n = (RelativeLayout) aVar.internalFindViewById(R.id.progressbarLayout);
        this.f38557o = (RelativeLayout) aVar.internalFindViewById(R.id.instalbutnLayout);
        this.f38559p = (ImageView) aVar.internalFindViewById(R.id.butn_showdownload);
        this.f38561q = (TextView) aVar.internalFindViewById(R.id.percent);
        this.f38563r = (ProgressBar) aVar.internalFindViewById(R.id.butnProgressBar);
        this.f38565s = (LinearLayout) aVar.internalFindViewById(R.id.downloadLayout);
        this.f38567t = (RelativeLayout) aVar.internalFindViewById(R.id.title_bar_layout);
        this.f38569u = (RelativeLayout) aVar.internalFindViewById(R.id.downloadRLayout2);
        this.f38571v = (RelativeLayout) aVar.internalFindViewById(R.id.titleTransfer);
        this.f38573w = (ImageView) aVar.internalFindViewById(R.id.search_detial_back);
        this.f38575x = (ImageView) aVar.internalFindViewById(R.id.download_bg);
        this.f38577y = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f38579z = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.A = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.B = (RelativeLayout) aVar.internalFindViewById(R.id.title);
        this.C = (SimpleDraweeView) aVar.internalFindViewById(R.id.giftImage);
        this.D = (TextView) aVar.internalFindViewById(R.id.giftContent);
        this.E = (NestedScrollView) aVar.internalFindViewById(R.id.nsv_view);
        this.S0 = (TextView) aVar.internalFindViewById(R.id.biground);
        this.T0 = (ImageView) aVar.internalFindViewById(R.id.downloadLine);
        this.U0 = (ImageView) aVar.internalFindViewById(R.id.search_detial_image);
        this.V0 = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.W0 = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
        this.X0 = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.progress_layout);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.shareTwo);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new v0());
        }
        LinearLayout linearLayout = this.f38551j;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new w0());
        }
        Button button = this.A;
        if (button != null) {
            button.setOnClickListener(new x0());
        }
        ImageView imageView = this.f38545d;
        if (imageView != null) {
            imageView.setOnClickListener(new y0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new z0());
        }
        ImageView imageView2 = this.f38573w;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new a());
        }
        TextView textView = this.f38554m;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new c());
        }
        LinearLayout linearLayout2 = this.f38565s;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new d());
        }
        CustomerDownloadView customerDownloadView = this.X0;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new e());
        }
        ImageView imageView3 = this.f38548g;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new f());
        }
        ImageView imageView4 = this.f38547f;
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
        this.f36199c1.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36201e1.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void q0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void showMain(List<CommentBaseBean> list) {
        org.androidannotations.api.b.e("", new q(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void showProgress() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void u0() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void updateButn() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new RunnableC0156a0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        org.androidannotations.api.b.e("", new w(resultMainBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void v0(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new k0("", 0L, "", commentBaseBean, i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void x0(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new l0("", 0L, "", commentBaseBean, i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.z
    public void z0(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.a.l(new p0("", 0L, "", informationCommentBean));
    }
}
