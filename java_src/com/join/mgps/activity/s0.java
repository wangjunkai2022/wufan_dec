package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ObservableWebView;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MGDetailSimpleInfoFragment_.java */
/* loaded from: classes3.dex */
public final class s0 extends r0 implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private View f38372j;

    /* renamed from: i  reason: collision with root package name */
    private final i3.c f38371i = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f38373k = new HashMap();

    /* compiled from: MGDetailSimpleInfoFragment_.java */
    /* loaded from: classes3.dex */
    public static class a extends org.androidannotations.api.builder.d<a, r0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public r0 build() {
            s0 s0Var = new s0();
            s0Var.setArguments(this.args);
            return s0Var;
        }
    }

    public static a N() {
        return new a();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f38373k.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f38372j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f38371i);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f38372j = onCreateView;
        if (onCreateView == null) {
            this.f38372j = layoutInflater.inflate(R.layout.detail_simple_info_layout, viewGroup, false);
        }
        return this.f38372j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f38372j = null;
        this.f38361b = null;
        this.f38362c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f38361b = (LinearLayout) aVar.internalFindViewById(R.id.tipsLayout);
        this.f38362c = (ObservableWebView) aVar.internalFindViewById(R.id.webView);
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f38371i.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f38373k.put(cls, t3);
    }
}
