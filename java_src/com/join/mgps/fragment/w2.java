package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameSingleCompanyFragment_.java */
/* loaded from: classes4.dex */
public final class w2 extends v2 implements g3.a, i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    private View f50633m;

    /* renamed from: l  reason: collision with root package name */
    private final i3.c f50632l = new i3.c();

    /* renamed from: n  reason: collision with root package name */
    private final Map<Class<?>, Object> f50634n = new HashMap();

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w2.this.relodingimag();
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w2.this.R();
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w2.this.setNetwork();
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.showLoding();
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.showLodingFailed();
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50640a;

        f(List list) {
            this.f50640a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.showMain(this.f50640a);
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.T();
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.S();
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                w2.super.P();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameSingleCompanyFragment_.java */
    /* loaded from: classes4.dex */
    public static class j extends org.androidannotations.api.builder.d<j, v2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public v2 build() {
            w2 w2Var = new w2();
            w2Var.setArguments(this.args);
            return w2Var;
        }
    }

    public static j b0() {
        return new j();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void P() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void S() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void T() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50634n.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50633m;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50632l);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50633m = onCreateView;
        if (onCreateView == null) {
            this.f50633m = layoutInflater.inflate(R.layout.game_single_conpany_layout, viewGroup, false);
        }
        return this.f50633m;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50633m = null;
        this.f50554a = null;
        this.f50555b = null;
        this.f50556c = null;
        this.f50557d = null;
        this.f50558e = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50554a = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f50555b = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        this.f50556c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f50557d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f50558e = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f50558e;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new c());
        }
        O();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50632l.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50634n.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void showMain(List<k1.b> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }
}
