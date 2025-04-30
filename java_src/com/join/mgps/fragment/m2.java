package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameFromPopoWinBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameFromBuildFragment_.java */
/* loaded from: classes4.dex */
public final class m2 extends l2 implements g3.a, i3.a, i3.b {

    /* renamed from: z  reason: collision with root package name */
    private View f49338z;

    /* renamed from: y  reason: collision with root package name */
    private final i3.c f49337y = new i3.c();
    private final Map<Class<?>, Object> A = new HashMap();

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.g0();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.S();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.showLoding();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.W();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.showLodingFailed();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.R();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49345a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f49345a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m2.super.U(this.f49345a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m2.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m2.this.relodingimag();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m2.this.setNetwork();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.Q();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49351a;

        l(String str) {
            this.f49351a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.showToast(this.f49351a);
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49353a;

        m(List list) {
            this.f49353a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.O(this.f49353a);
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.c0();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.d0();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49357a;

        p(List list) {
            this.f49357a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.N(this.f49357a);
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m2.super.P();
        }
    }

    /* compiled from: GameFromBuildFragment_.java */
    /* loaded from: classes4.dex */
    public static class r extends org.androidannotations.api.builder.d<r, l2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public l2 build() {
            m2 m2Var = new m2();
            m2Var.setArguments(this.args);
            return m2Var;
        }
    }

    public static r A0() {
        return new r();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void N(List<GameFromPopoWinBean.DataBean> list) {
        org.androidannotations.api.b.e("", new p(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void O(List<CollectionBeanSub> list) {
        org.androidannotations.api.b.e("", new m(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void P() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    @Override // com.join.mgps.fragment.l2
    public void Q() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void R() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void S() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void U(String str) {
        org.androidannotations.api.a.l(new g("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void V() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void W() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void c0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void d0() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void g0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49338z;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49337y);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49338z = onCreateView;
        if (onCreateView == null) {
            this.f49338z = layoutInflater.inflate(R.layout.game_build, viewGroup, false);
        }
        return this.f49338z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49338z = null;
        this.f49217a = null;
        this.f49218b = null;
        this.f49219c = null;
        this.f49220d = null;
        this.f49221e = null;
        this.f49222f = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49217a = (LinearLayout) aVar.internalFindViewById(R.id.tv_nodata);
        this.f49218b = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f49219c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49220d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49221e = (Button) aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f49222f = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new i());
        }
        Button button = this.f49221e;
        if (button != null) {
            button.setOnClickListener(new j());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49337y.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l2
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new l(str), 0L);
    }
}
