package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumIndexHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.RecommenGroupClassify;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
import ru.noties.scrollable.ScrollableLayout;
/* compiled from: ForumIndexFragment_.java */
/* loaded from: classes4.dex */
public final class r0 extends q0 implements g3.a, i3.a, i3.b {

    /* renamed from: z0  reason: collision with root package name */
    private View f49987z0;

    /* renamed from: y0  reason: collision with root package name */
    private final i3.c f49986y0 = new i3.c();
    private final Map<Class<?>, Object> A0 = new HashMap();
    private final IntentFilter B0 = new IntentFilter();
    private final BroadcastReceiver C0 = new k();
    private final IntentFilter D0 = new IntentFilter();
    private final BroadcastReceiver E0 = new u();

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumData.HomepageRecommendGroup f49988a;

        a(ForumData.HomepageRecommendGroup homepageRecommendGroup) {
            this.f49988a = homepageRecommendGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.y0(this.f49988a);
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49990a;

        a0(List list) {
            this.f49990a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.q0(this.f49990a);
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.h0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.B0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBannerBean.ForumBannerDataBannerBean f49994a;

        c(ForumBannerBean.ForumBannerDataBannerBean forumBannerDataBannerBean) {
            this.f49994a = forumBannerDataBannerBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.w0(this.f49994a);
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    public static class c0 extends org.androidannotations.api.builder.d<c0, q0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public q0 build() {
            r0 r0Var = new r0();
            r0Var.setArguments(this.args);
            return r0Var;
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49996a;

        d(int i2) {
            this.f49996a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.V(this.f49996a);
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.r0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.E0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50000a;

        g(String str) {
            this.f50000a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.T(this.f50000a);
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.x0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50003a;

        i(int i2) {
            this.f50003a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.K0(this.f50003a);
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50005a;

        j(int i2) {
            this.f50005a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.I0(this.f50005a);
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r0.this.M();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.L0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.J0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class n extends a.c {
        n(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r0.super.m0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class o extends a.c {
        o(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r0.super.f0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50012a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f50012a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r0.super.u0(this.f50012a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class q extends a.c {
        q(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r0.super.d0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class r extends a.c {
        r(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r0.super.b0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class s extends a.c {
        s(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r0.super.H0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class t extends a.c {
        t(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r0.super.W();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class u extends BroadcastReceiver {
        u() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r0.this.S(intent);
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r0.this.N();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r0.this.U();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.F0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.z0();
        }
    }

    /* compiled from: ForumIndexFragment_.java */
    /* loaded from: classes4.dex */
    class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f50023a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f50024b;

        z(boolean z3, List list) {
            this.f50023a = z3;
            this.f50024b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.super.A0(this.f50023a, this.f50024b);
        }
    }

    private void init_(Bundle bundle) {
        this.f49874n0 = new PrefDef_(getActivity());
        i3.c.b(this);
        this.B0.addAction(f1.a.B);
        this.D0.addAction(f1.a.f65512y);
    }

    public static c0 k1() {
        return new c0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void A0(boolean z3, List<RecommendLabelTag> list) {
        org.androidannotations.api.b.e("", new z(z3, list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void B0() {
        org.androidannotations.api.b.e("", new b0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void E0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void F0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void H0() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void I0(int i2) {
        org.androidannotations.api.b.e("", new j(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void J0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void K0(int i2) {
        org.androidannotations.api.b.e("", new i(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void L0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0, com.join.mgps.fragment.d
    public void T(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void V(int i2) {
        org.androidannotations.api.b.e("", new d(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void W() {
        org.androidannotations.api.a.l(new t("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void b0() {
        org.androidannotations.api.a.l(new r("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void d0() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void f0() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void h0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49987z0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void m0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49986y0);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.C0, this.B0);
        getActivity().registerReceiver(this.E0, this.D0);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49987z0 = onCreateView;
        if (onCreateView == null) {
            this.f49987z0 = layoutInflater.inflate(R.layout.mg_forum_index_fragment, viewGroup, false);
        }
        return this.f49987z0;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.C0);
        getActivity().unregisterReceiver(this.E0);
        super.onDestroy();
    }

    @Override // com.join.mgps.fragment.q0, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49987z0 = null;
        this.f49861b = null;
        this.f49862c = null;
        this.f49863d = null;
        this.f49864e = null;
        this.f49865f = null;
        this.f49866g = null;
        this.f49867h = null;
        this.f49868i = null;
        this.f49869j = null;
        this.f49870k = null;
        this.f49871l = null;
        this.f49896z = null;
        this.B = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49861b = aVar.internalFindViewById(R.id.actionPlaceHolder);
        this.f49862c = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f49863d = aVar.internalFindViewById(R.id.aboutWF);
        this.f49864e = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f49865f = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f49866g = (ScrollableLayout) aVar.internalFindViewById(R.id.scrollableLayout);
        this.f49867h = (ForumIndexHeaderView) aVar.internalFindViewById(R.id.headerView);
        this.f49868i = (SlidingTabLayout4) aVar.internalFindViewById(R.id.tabsLayout);
        this.f49869j = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f49870k = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f49871l = (RelativeLayout) aVar.internalFindViewById(R.id.search);
        this.f49896z = (RelativeLayout) aVar.internalFindViewById(R.id.layout_others);
        this.B = (TextView) aVar.internalFindViewById(R.id.bigCenterRound);
        View view = this.f49863d;
        if (view != null) {
            view.setOnClickListener(new v());
        }
        ImageView imageView = this.f49862c;
        if (imageView != null) {
            imageView.setOnClickListener(new w());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49986y0.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void q0(List<RecommenGroupClassify> list) {
        org.androidannotations.api.b.e("", new a0(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void r0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void u0(String str) {
        org.androidannotations.api.a.l(new p("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void w0(ForumBannerBean.ForumBannerDataBannerBean forumBannerDataBannerBean) {
        org.androidannotations.api.b.e("", new c(forumBannerDataBannerBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void x0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void y0(ForumData.HomepageRecommendGroup homepageRecommendGroup) {
        org.androidannotations.api.b.e("", new a(homepageRecommendGroup), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void z0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }
}
