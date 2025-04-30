package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;
import java.util.HashMap;
import java.util.Map;
/* compiled from: PaPaStandAloneOverSeaFragment_.java */
/* loaded from: classes4.dex */
public final class x3 extends w3 implements g3.a, i3.a, i3.b {

    /* renamed from: k  reason: collision with root package name */
    private View f50748k;

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f50747j = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f50749l = new HashMap();

    /* compiled from: PaPaStandAloneOverSeaFragment_.java */
    /* loaded from: classes4.dex */
    public static class a extends org.androidannotations.api.builder.d<a, w3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public w3 build() {
            x3 x3Var = new x3();
            x3Var.setArguments(this.args);
            return x3Var;
        }
    }

    public static a Q() {
        return new a();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50749l.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50748k;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // com.join.mgps.fragment.w3, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50747j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50748k = onCreateView;
        if (onCreateView == null) {
            this.f50748k = layoutInflater.inflate(R.layout.fragment_papa_standalone_oversea, viewGroup, false);
        }
        return this.f50748k;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50748k = null;
        this.f50649b = null;
        this.f50650c = null;
        this.f50651d = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50649b = (TextView) aVar.internalFindViewById(R.id.tv_free);
        this.f50650c = (TextView) aVar.internalFindViewById(R.id.tv_new);
        this.f50651d = (InterceptEventViewPager) aVar.internalFindViewById(R.id.mViewPager);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50747j.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50749l.put(cls, t3);
    }
}
