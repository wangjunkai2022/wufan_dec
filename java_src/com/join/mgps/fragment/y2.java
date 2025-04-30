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
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameSubscribeFragment_.java */
/* loaded from: classes4.dex */
public final class y2 extends x2 implements g3.a, i3.a, i3.b {

    /* renamed from: r  reason: collision with root package name */
    private View f50766r;

    /* renamed from: q  reason: collision with root package name */
    private final i3.c f50765q = new i3.c();

    /* renamed from: s  reason: collision with root package name */
    private final Map<Class<?>, Object> f50767s = new HashMap();

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.S();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.showLodingFailed();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.P();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                y2.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y2.this.relodingimag();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y2.this.setNetwork();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.U();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50775a;

        h(List list) {
            this.f50775a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.N(this.f50775a);
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.T();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.O();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.V();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.Q();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.showLoding();
        }
    }

    /* compiled from: GameSubscribeFragment_.java */
    /* loaded from: classes4.dex */
    public static class n extends org.androidannotations.api.builder.d<n, x2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public x2 build() {
            y2 y2Var = new y2();
            y2Var.setArguments(this.args);
            return y2Var;
        }
    }

    public static n i0() {
        return new n();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void N(List<GameFromPopoWinBean.DataBean> list) {
        org.androidannotations.api.b.e("", new h(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void O() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void P() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void Q() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void R() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void S() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void T() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void U() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void V() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50767s.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50766r;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50765q);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50766r = onCreateView;
        if (onCreateView == null) {
            this.f50766r = layoutInflater.inflate(R.layout.game_build, viewGroup, false);
        }
        return this.f50766r;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50766r = null;
        this.f50721a = null;
        this.f50722b = null;
        this.f50723c = null;
        this.f50724d = null;
        this.f50725e = null;
        this.f50726f = null;
        this.f50727g = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50721a = (LinearLayout) aVar.internalFindViewById(R.id.tv_nodata);
        this.f50722b = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.myswip);
        this.f50723c = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f50724d = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f50725e = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f50726f = (Button) aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f50727g = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        Button button = this.f50726f;
        if (button != null) {
            button.setOnClickListener(new f());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50765q.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50767s.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void showLoding() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }
}
