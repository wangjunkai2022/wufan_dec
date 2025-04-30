package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* compiled from: CheckLocalGameFragment_.java */
/* loaded from: classes3.dex */
public final class c extends b implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    private View f36819g;

    /* renamed from: f  reason: collision with root package name */
    private final i3.c f36818f = new i3.c();

    /* renamed from: h  reason: collision with root package name */
    private final Map<Class<?>, Object> f36820h = new HashMap();

    /* compiled from: CheckLocalGameFragment_.java */
    /* loaded from: classes3.dex */
    public static class a extends org.androidannotations.api.builder.d<a, b> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public b build() {
            c cVar = new c();
            cVar.setArguments(this.args);
            return cVar;
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
        return (T) this.f36820h.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f36819g;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36818f);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f36819g = onCreateView;
        if (onCreateView == null) {
            this.f36819g = layoutInflater.inflate(R.layout.fragment_check_local_game, viewGroup, false);
        }
        return this.f36819g;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f36819g = null;
        this.f36745a = null;
        this.f36746b = null;
        this.f36747c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36745a = (TextView) aVar.internalFindViewById(R.id.beforNameTx);
        this.f36746b = (TextView) aVar.internalFindViewById(R.id.afterNameTx);
        this.f36747c = (SimpleDraweeView) aVar.internalFindViewById(R.id.appIcon);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f36818f.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36820h.put(cls, t3);
    }
}
