package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: MyVoucherGameFragment_.java */
/* loaded from: classes4.dex */
public final class n3 extends m3 implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private View f49472j;

    /* renamed from: i  reason: collision with root package name */
    private final i3.c f49471i = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f49473k = new HashMap();

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n3.this.relodingimag();
        }
    }

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n3.this.setNetwork();
        }
    }

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n3.super.O();
        }
    }

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n3.super.showLoding();
        }
    }

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n3.super.N();
        }
    }

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n3.super.showLodingFailed();
        }
    }

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n3.super.M();
        }
    }

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n3.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyVoucherGameFragment_.java */
    /* loaded from: classes4.dex */
    public static class i extends org.androidannotations.api.builder.d<i, m3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public m3 build() {
            n3 n3Var = new n3();
            n3Var.setArguments(this.args);
            return n3Var;
        }
    }

    public static i W() {
        return new i();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m3
    public void M() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m3
    public void N() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m3
    public void O() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49473k.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49472j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m3
    public void loadData() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49471i);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49472j = onCreateView;
        if (onCreateView == null) {
            this.f49472j = layoutInflater.inflate(R.layout.layout_listview, viewGroup, false);
        }
        return this.f49472j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49472j = null;
        this.f49361b = null;
        this.f49362c = null;
        this.f49363d = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49361b = (XListView) aVar.internalFindViewById(R.id.listview);
        this.f49362c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49363d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49471i.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49473k.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m3
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }
}
