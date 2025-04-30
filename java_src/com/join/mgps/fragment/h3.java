package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MarketFragment_.java */
/* loaded from: classes4.dex */
public final class h3 extends g3 implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private View f48817j;

    /* renamed from: i  reason: collision with root package name */
    private final i3.c f48816i = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f48818k = new HashMap();

    /* compiled from: MarketFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h3.this.P();
        }
    }

    /* compiled from: MarketFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h3.super.O();
        }
    }

    /* compiled from: MarketFragment_.java */
    /* loaded from: classes4.dex */
    public static class c extends org.androidannotations.api.builder.d<c, g3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public g3 build() {
            h3 h3Var = new h3();
            h3Var.setArguments(this.args);
            return h3Var;
        }
    }

    public static c T() {
        return new c();
    }

    private void init_(Bundle bundle) {
        this.f48753d = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g3
    public void O() {
        org.androidannotations.api.b.e("", new b(), 400L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48818k.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48817j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48816i);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48817j = onCreateView;
        if (onCreateView == null) {
            this.f48817j = layoutInflater.inflate(R.layout.fragment_market_new, viewGroup, false);
        }
        return this.f48817j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48817j = null;
        this.f48750a = null;
        this.f48751b = null;
        this.f48752c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48750a = (SlidingTabLayout1) aVar.internalFindViewById(R.id.tabs);
        this.f48751b = (ViewPagerCompat) aVar.internalFindViewById(R.id.view_pager);
        this.f48752c = (TextView) aVar.internalFindViewById(R.id.searchContent);
        View internalFindViewById = aVar.internalFindViewById(R.id.searchImage);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48816i.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48818k.put(cls, t3);
    }
}
