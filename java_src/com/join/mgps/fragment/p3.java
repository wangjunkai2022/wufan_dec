package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import app.mgsim.arena.ArenaResponse;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.papa91.battle.protocol.GameRoom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: NewArenaMainFragment_.java */
/* loaded from: classes4.dex */
public final class p3 extends o3 implements g3.a, i3.a, i3.b {
    private View G0;
    private final i3.c F0 = new i3.c();
    private final Map<Class<?>, Object> H0 = new HashMap();

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f49768a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f49769b;

        a(GameRoom gameRoom, String str) {
            this.f49768a = gameRoom;
            this.f49769b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.i0(this.f49768a, this.f49769b);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f49771a;

        b(GameRoom gameRoom) {
            this.f49771a = gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.H0(this.f49771a);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.p0();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameListBannerBean f49774a;

        d(GameListBannerBean gameListBannerBean) {
            this.f49774a = gameListBannerBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.D0(this.f49774a);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.q0();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.u0();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49778a;

        g(List list) {
            this.f49778a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.B0(this.f49778a);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49780a;

        h(List list) {
            this.f49780a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.C0(this.f49780a);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.showLoding();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.showLodingFailed();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p3.this.setNetwork();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49785a;

        l(String str) {
            this.f49785a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.showToast(this.f49785a);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class m extends a.c {
        m(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p3.super.g0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class n extends a.c {
        n(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p3.super.z0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p3.this.relodingimag();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p3.this.x0();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p3.this.A0();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49792a;

        r(String str) {
            this.f49792a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.j0(this.f49792a);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.J0();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.h0();
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f49796a;

        u(ArenaResponse arenaResponse) {
            this.f49796a = arenaResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.r0(this.f49796a);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f49798a;

        v(GameRoom gameRoom) {
            this.f49798a = gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.t0(this.f49798a);
        }
    }

    /* compiled from: NewArenaMainFragment_.java */
    /* loaded from: classes4.dex */
    public static class w extends org.androidannotations.api.builder.d<w, o3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public o3 build() {
            p3 p3Var = new p3();
            p3Var.setArguments(this.args);
            return p3Var;
        }
    }

    public static w e1() {
        return new w();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f49608o = AccountUtil_.getInstance_(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void B0(List<BannerBean> list) {
        org.androidannotations.api.b.e("", new g(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void C0(List<GameInfoBean> list) {
        org.androidannotations.api.b.e("", new h(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void D0(GameListBannerBean gameListBannerBean) {
        org.androidannotations.api.b.e("", new d(gameListBannerBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void H0(GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new b(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void J0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void g0() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.H0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void h0() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void i0(GameRoom gameRoom, String str) {
        org.androidannotations.api.b.e("", new a(gameRoom, str), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.G0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void j0(String str) {
        org.androidannotations.api.b.e("", new r(str), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.F0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.fragment.o3, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.G0 = onCreateView;
        if (onCreateView == null) {
            this.G0 = layoutInflater.inflate(R.layout.fragment_new_arenamain, viewGroup, false);
        }
        return this.G0;
    }

    @Override // com.join.mgps.fragment.o3, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.G0 = null;
        this.f49596d = null;
        this.f49597e = null;
        this.f49598f = null;
        this.f49599g = null;
        this.f49600h = null;
        this.f49601i = null;
        this.f49602j = null;
        this.f49603k = null;
        this.f49605m = null;
        this.f49606n = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49596d = (LinearLayout) aVar.internalFindViewById(R.id.searchBack);
        this.f49597e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49598f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49599g = (LinearLayout) aVar.internalFindViewById(R.id.hit_temp_ll);
        this.f49600h = (XRecyclerView) aVar.internalFindViewById(R.id.listview);
        this.f49601i = aVar.internalFindViewById(R.id.myDragImageView);
        this.f49602j = (LinearLayout) aVar.internalFindViewById(R.id.selecterLayout);
        this.f49603k = (FrameLayout) aVar.internalFindViewById(R.id.fragmentLayout);
        this.f49605m = aVar.internalFindViewById(R.id.ll_main);
        this.f49606n = aVar.internalFindViewById(R.id.redPoint);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new o());
        }
        View view = this.f49601i;
        if (view != null) {
            view.setOnClickListener(new p());
        }
        LinearLayout linearLayout = this.f49596d;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new q());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.F0.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void p0() {
        org.androidannotations.api.b.e("", new c(), 500L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.H0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void q0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void r0(ArenaResponse arenaResponse) {
        org.androidannotations.api.b.e("", new u(arenaResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new l(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void t0(GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new v(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void u0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void z0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }
}
