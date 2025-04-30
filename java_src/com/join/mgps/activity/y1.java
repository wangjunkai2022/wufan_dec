package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: MyGamePapaFragment_.java */
/* loaded from: classes3.dex */
public final class y1 extends w1 implements g3.a, i3.a, i3.b {
    private View A0;

    /* renamed from: z0  reason: collision with root package name */
    private final i3.c f38504z0 = new i3.c();
    private final Map<Class<?>, Object> B0 = new HashMap();
    private final IntentFilter C0 = new IntentFilter();
    private final BroadcastReceiver D0 = new k();
    private final IntentFilter E0 = new IntentFilter();
    private final BroadcastReceiver F0 = new s();

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.q0();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    public static class a0 extends org.androidannotations.api.builder.d<a0, w1> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public w1 build() {
            y1 y1Var = new y1();
            y1Var.setArguments(this.args);
            return y1Var;
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.h1();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38507a;

        c(String str) {
            this.f38507a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.j1(this.f38507a);
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HashMap f38509a;

        d(HashMap hashMap) {
            this.f38509a = hashMap;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.L0(this.f38509a);
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.l1();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.n1();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.J0();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38514a;

        h(String str) {
            this.f38514a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.N0(this.f38514a);
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SNKGameInfoBean f38516a;

        i(SNKGameInfoBean sNKGameInfoBean) {
            this.f38516a = sNKGameInfoBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.g1(this.f38516a);
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f38518a;

        j(DownloadTask downloadTask) {
            this.f38518a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.s1(this.f38518a);
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f38520b = "gameId";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            y1.this.M0((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("gameId"));
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f38522a;

        l(List list) {
            this.f38522a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.k1(this.f38522a);
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ OnlineCouponConfigBean f38524a;

        m(OnlineCouponConfigBean onlineCouponConfigBean) {
            this.f38524a = onlineCouponConfigBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.f1(this.f38524a);
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class n extends a.c {
        n(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                y1.super.Y0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f38527a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, List list) {
            super(str, j4, str2);
            this.f38527a = list;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                y1.super.Z0(this.f38527a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class p extends a.c {
        p(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                y1.super.t0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class q extends a.c {
        q(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                y1.super.x0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class r extends a.c {
        r(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                y1.super.W0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class s extends BroadcastReceiver {
        s() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            y1.this.V0();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.setNetwork();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.A0();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.G0();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.l0();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.e1();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.P0();
        }
    }

    /* compiled from: MyGamePapaFragment_.java */
    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.I0();
        }
    }

    public static a0 J1() {
        return new a0();
    }

    private void init_(Bundle bundle) {
        this.I = new PrefDef_(getActivity());
        i3.c.b(this);
        this.C0.addAction(f1.a.f65484k);
        this.E0.addAction(f1.a.H);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void J0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void L0(HashMap<String, Boolean> hashMap) {
        org.androidannotations.api.b.e("", new d(hashMap), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void N0(String str) {
        org.androidannotations.api.b.e("", new h(str), 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void W0() {
        org.androidannotations.api.a.l(new r("", 1000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void Y0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void Z0(List<DownloadTask> list) {
        org.androidannotations.api.a.l(new o("", 0L, "", list));
    }

    @Override // com.join.mgps.activity.w1
    public void f1(OnlineCouponConfigBean onlineCouponConfigBean) {
        org.androidannotations.api.b.e("", new m(onlineCouponConfigBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void g1(SNKGameInfoBean sNKGameInfoBean) {
        org.androidannotations.api.b.e("", new i(sNKGameInfoBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.B0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.A0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void j1(String str) {
        org.androidannotations.api.b.e("", new c(str), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void k1(List<GamedownRecomendItemBean> list) {
        org.androidannotations.api.b.e("", new l(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void l1() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void n1() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f38504z0);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.D0, this.C0);
        getActivity().registerReceiver(this.F0, this.E0);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.A0 = onCreateView;
        if (onCreateView == null) {
            this.A0 = layoutInflater.inflate(R.layout.fragment_my_game, viewGroup, false);
        }
        return this.A0;
    }

    @Override // com.join.mgps.activity.w1, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.D0);
        getActivity().unregisterReceiver(this.F0);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.A0 = null;
        this.f38449c = null;
        this.f38450d = null;
        this.f38451e = null;
        this.f38452f = null;
        this.f38453g = null;
        this.f38454h = null;
        this.f38455i = null;
        this.f38456j = null;
        this.f38457k = null;
        this.f38458l = null;
        this.f38459m = null;
        this.f38460n = null;
        this.f38462o = null;
        this.f38464p = null;
        this.f38466q = null;
        this.f38468r = null;
        this.f38470s = null;
        this.f38472t = null;
        this.f38474u = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f38449c = aVar.internalFindViewById(R.id.appbar);
        this.f38450d = (XListView2) aVar.internalFindViewById(R.id.listView);
        this.f38451e = aVar.internalFindViewById(R.id.plugsDownloadTip);
        this.f38452f = (TextView) aVar.internalFindViewById(R.id.plugType);
        this.f38453g = (TextView) aVar.internalFindViewById(R.id.plugProgress);
        this.f38454h = aVar.internalFindViewById(R.id.filter);
        this.f38455i = aVar.internalFindViewById(R.id.noGame);
        this.f38456j = (TextView) aVar.internalFindViewById(R.id.filterArr);
        this.f38457k = (TextView) aVar.internalFindViewById(R.id.title);
        this.f38458l = (TextView) aVar.internalFindViewById(R.id.count);
        this.f38459m = aVar.internalFindViewById(R.id.root);
        this.f38460n = aVar.internalFindViewById(R.id.needUpdate);
        this.f38462o = aVar.internalFindViewById(R.id.search);
        this.f38464p = aVar.internalFindViewById(R.id.back);
        this.f38466q = aVar.internalFindViewById(R.id.statubar);
        this.f38468r = (WrapContentGridView) aVar.internalFindViewById(R.id.noGameList);
        this.f38470s = (LinearLayout) aVar.internalFindViewById(R.id.llOnlineCouponBottom);
        this.f38472t = (TextView) aVar.internalFindViewById(R.id.tvOnlineCouponBottomDesc);
        this.f38474u = (ImageView) aVar.internalFindViewById(R.id.ivOnlineCouponBottomClose);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.plugs);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.settings);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new t());
        }
        ImageView imageView = this.f38474u;
        if (imageView != null) {
            imageView.setOnClickListener(new u());
        }
        LinearLayout linearLayout = this.f38470s;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new v());
        }
        View view = this.f38464p;
        if (view != null) {
            view.setOnClickListener(new w());
        }
        View view2 = this.f38462o;
        if (view2 != null) {
            view2.setOnClickListener(new x());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new y());
        }
        View view3 = this.f38460n;
        if (view3 != null) {
            view3.setOnClickListener(new z());
        }
        View view4 = this.f38454h;
        if (view4 != null) {
            view4.setOnClickListener(new a());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f38504z0.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.B0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void s1(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new j(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void t0() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.w1
    public void x0() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }
}
