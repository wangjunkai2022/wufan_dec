package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: MyPapaFragment_.java */
/* loaded from: classes3.dex */
public final class b2 extends a2 implements g3.a, i3.a, i3.b {

    /* renamed from: n  reason: collision with root package name */
    private View f36810n;

    /* renamed from: m  reason: collision with root package name */
    private final i3.c f36809m = new i3.c();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Class<?>, Object> f36811o = new HashMap();

    /* compiled from: MyPapaFragment_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b2.this.relodingimag();
        }
    }

    /* compiled from: MyPapaFragment_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b2.this.setNetwork();
        }
    }

    /* compiled from: MyPapaFragment_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36814a;

        c(List list) {
            this.f36814a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            b2.super.O(this.f36814a);
        }
    }

    /* compiled from: MyPapaFragment_.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b2.super.N();
        }
    }

    /* compiled from: MyPapaFragment_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b2.super.M();
        }
    }

    /* compiled from: MyPapaFragment_.java */
    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.d<f, a2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public a2 build() {
            b2 b2Var = new b2();
            b2Var.setArguments(this.args);
            return b2Var;
        }
    }

    public static f V() {
        return new f();
    }

    private void init_(Bundle bundle) {
        this.f36296f = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.a2
    public void M() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // com.join.mgps.activity.a2
    public void N() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // com.join.mgps.activity.a2
    public void O(List<DownloadTask> list) {
        org.androidannotations.api.b.e("", new c(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36811o.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f36810n;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36809m);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f36810n = onCreateView;
        if (onCreateView == null) {
            this.f36810n = layoutInflater.inflate(R.layout.my_papa_layout, viewGroup, false);
        }
        return this.f36810n;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f36810n = null;
        this.f36297g = null;
        this.f36298h = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36297g = (XListView2) aVar.internalFindViewById(R.id.classifyListView);
        this.f36298h = (LinearLayout) aVar.internalFindViewById(R.id.noneLayout);
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
        this.f36809m.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36811o.put(cls, t3);
    }
}
