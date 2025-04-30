package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GmaeFormPostFragment_.java */
/* loaded from: classes4.dex */
public final class b3 extends GmaeFormPostFragment implements g3.a, i3.a, i3.b {
    private View S0;
    private final i3.c R0 = new i3.c();
    private final Map<Class<?>, Object> T0 = new HashMap();
    private final IntentFilter U0 = new IntentFilter();
    private final BroadcastReceiver V0 = new k();

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48373a;

        a(String str) {
            this.f48373a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.showToast(this.f48373a);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    public static class a0 extends org.androidannotations.api.builder.d<a0, GmaeFormPostFragment> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public GmaeFormPostFragment build() {
            b3 b3Var = new b3();
            b3Var.setArguments(this.args);
            return b3Var;
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.c1();
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsListView f48376a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48377b;

        c(AbsListView absListView, int i2) {
            this.f48376a = absListView;
            this.f48377b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.s1(this.f48376a, this.f48377b);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsListView f48379a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48380b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f48381c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f48382d;

        d(AbsListView absListView, int i2, int i4, int i5) {
            this.f48379a = absListView;
            this.f48380b = i2;
            this.f48381c = i4;
            this.f48382d = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.r1(this.f48379a, this.f48380b, this.f48381c, this.f48382d);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.b1();
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48385a;

        f(String str) {
            this.f48385a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.showMessage(this.f48385a);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f48387a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48388b;

        g(DownloadTask downloadTask, int i2) {
            this.f48387a = downloadTask;
            this.f48388b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.n1(this.f48387a, this.f48388b);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.updateDownloadView();
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f48391a;

        i(DetailResultBean detailResultBean) {
            this.f48391a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.g1(this.f48391a);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48393a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f48394b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, int i2, String str3) {
            super(str, j4, str2);
            this.f48393a = i2;
            this.f48394b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b3.super.Z(this.f48393a, this.f48394b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f48396b = "gameData";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            b3.this.B0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class l extends a.c {
        l(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b3.super.p0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class m extends a.c {
        m(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b3.super.q0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48400a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48400a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b3.super.r0(this.f48400a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48402a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48402a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b3.super.F0(this.f48402a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f48404a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48405b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, Context context, int i2) {
            super(str, j4, str2);
            this.f48404a = context;
            this.f48405b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b3.super.d0(this.f48404a, this.f48405b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class q extends a.c {
        q(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b3.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class r extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48408a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f48408a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b3.super.f0(this.f48408a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b3.this.W();
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMainBean f48411a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48412b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f48413c;

        t(ResultMainBean resultMainBean, int i2, String str) {
            this.f48411a = resultMainBean;
            this.f48412b = i2;
            this.f48413c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.o1(this.f48411a, this.f48412b, this.f48413c);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48415a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48416b;

        u(List list, int i2) {
            this.f48415a = list;
            this.f48416b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.H0(this.f48415a, this.f48416b);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48418a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f48419b;

        v(int i2, boolean z3) {
            this.f48418a = i2;
            this.f48419b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.w0(this.f48418a, this.f48419b);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.i1();
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48422a;

        x(int i2) {
            this.f48422a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.a0(this.f48422a);
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.u0();
        }
    }

    /* compiled from: GmaeFormPostFragment_.java */
    /* loaded from: classes4.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b3.super.Z0();
        }
    }

    public static a0 R1() {
        return new a0();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.U0.addAction(f1.a.H);
        this.U0.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void F0(int i2) {
        org.androidannotations.api.a.l(new o("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void H0(List<ForumData.ForumUserFavoritesData> list, int i2) {
        org.androidannotations.api.b.e("", new u(list, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void Z(int i2, String str) {
        org.androidannotations.api.a.l(new j("", 0L, "", i2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void Z0() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void a0(int i2) {
        org.androidannotations.api.b.e("", new x(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void b1() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void c1() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void d0(Context context, int i2) {
        org.androidannotations.api.a.l(new p("", 0L, "", context, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void f0(String str) {
        org.androidannotations.api.a.l(new r("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void g1(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new i(detailResultBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.T0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void i1() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.S0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void n1(DownloadTask downloadTask, int i2) {
        org.androidannotations.api.b.e("", new g(downloadTask, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void o1(ResultMainBean resultMainBean, int i2, String str) {
        org.androidannotations.api.b.e("", new t(resultMainBean, i2, str), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.R0);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.V0, this.U0);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.S0 = onCreateView;
        if (onCreateView == null) {
            this.S0 = layoutInflater.inflate(R.layout.mg_forum_profile_favorites_activity, viewGroup, false);
        }
        return this.S0;
    }

    @Override // com.join.mgps.fragment.GmaeFormPostFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.V0);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.S0 = null;
        this.f48204a = null;
        this.f48205b = null;
        this.f48206c = null;
        this.f48207d = null;
        this.f48211h = null;
        this.f48212i = null;
        this.H = null;
        this.I = null;
        GmaeFormPostFragment.P0 = null;
        this.J = null;
        this.K = null;
        this.f48218n0 = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48204a = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f48205b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f48206c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f48207d = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f48211h = (XListView2) aVar.internalFindViewById(R.id.forum_posts_list);
        this.f48212i = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.H = (FrameLayout) aVar.internalFindViewById(R.id.videoContainer);
        this.I = (RelativeLayout) aVar.internalFindViewById(R.id.videoLayout);
        GmaeFormPostFragment.P0 = (MyVideoView) aVar.internalFindViewById(R.id.video);
        this.J = (SimpleDraweeView) aVar.internalFindViewById(R.id.cover);
        this.K = (ImageView) aVar.internalFindViewById(R.id.play);
        this.f48218n0 = (LinearLayout) aVar.internalFindViewById(R.id.loadingLayout);
        ImageView imageView = this.f48205b;
        if (imageView != null) {
            imageView.setOnClickListener(new s());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.R0.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void p0() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.T0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void q0() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void r0(int i2) {
        org.androidannotations.api.a.l(new n("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void r1(AbsListView absListView, int i2, int i4, int i5) {
        org.androidannotations.api.b.e("", new d(absListView, i2, i4, i5), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void s1(AbsListView absListView, int i2) {
        org.androidannotations.api.b.e("", new c(absListView, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void u0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void w0(int i2, boolean z3) {
        org.androidannotations.api.b.e("", new v(i2, z3), 0L);
    }
}
