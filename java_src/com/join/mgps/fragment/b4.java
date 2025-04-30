package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
import java.util.HashMap;
import java.util.Map;
/* compiled from: RankFragmentNew_.java */
/* loaded from: classes4.dex */
public final class b4 extends a4 implements g3.a, i3.a, i3.b {

    /* renamed from: h  reason: collision with root package name */
    private View f48427h;

    /* renamed from: g  reason: collision with root package name */
    private final i3.c f48426g = new i3.c();

    /* renamed from: i  reason: collision with root package name */
    private final Map<Class<?>, Object> f48428i = new HashMap();

    /* compiled from: RankFragmentNew_.java */
    /* loaded from: classes4.dex */
    public static class a extends org.androidannotations.api.builder.d<a, a4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public a4 build() {
            b4 b4Var = new b4();
            b4Var.setArguments(this.args);
            return b4Var;
        }
    }

    public static a R() {
        return new a();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48428i.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48427h;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48426g);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48427h = onCreateView;
        if (onCreateView == null) {
            this.f48427h = layoutInflater.inflate(R.layout.fragment_rank_new, viewGroup, false);
        }
        return this.f48427h;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48427h = null;
        this.f48328a = null;
        this.f48329b = null;
        this.f48330c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48328a = (SlidingTabLayout1) aVar.internalFindViewById(R.id.tabs);
        this.f48329b = (RelativeLayout) aVar.internalFindViewById(R.id.title);
        this.f48330c = (ViewPagerCompat) aVar.internalFindViewById(R.id.view_pager);
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48426g.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48428i.put(cls, t3);
    }
}
