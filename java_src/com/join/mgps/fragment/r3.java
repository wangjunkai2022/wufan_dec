package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* compiled from: NewGameFragment_.java */
/* loaded from: classes4.dex */
public final class r3 extends q3 implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private View f50048j;

    /* renamed from: i  reason: collision with root package name */
    private final i3.c f50047i = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f50049k = new HashMap();

    /* compiled from: NewGameFragment_.java */
    /* loaded from: classes4.dex */
    public static class a extends org.androidannotations.api.builder.d<a, q3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public q3 build() {
            r3 r3Var = new r3();
            r3Var.setArguments(this.args);
            return r3Var;
        }
    }

    public static a M() {
        return new a();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50049k.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50048j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50047i);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.fragment.q3, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50048j = onCreateView;
        if (onCreateView == null) {
            this.f50048j = layoutInflater.inflate(R.layout.newgame_fragment_layout, viewGroup, false);
        }
        return this.f50048j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50048j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50047i.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50049k.put(cls, t3);
    }
}
