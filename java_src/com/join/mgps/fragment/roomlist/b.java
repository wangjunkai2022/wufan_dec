package com.join.mgps.fragment.roomlist;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* compiled from: RaceRoomFragment_.java */
/* loaded from: classes4.dex */
public final class b extends com.join.mgps.fragment.roomlist.a implements g3.a, i3.a, i3.b {

    /* renamed from: c  reason: collision with root package name */
    private View f50074c;

    /* renamed from: b  reason: collision with root package name */
    private final i3.c f50073b = new i3.c();

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, Object> f50075d = new HashMap();

    /* compiled from: RaceRoomFragment_.java */
    /* loaded from: classes4.dex */
    public static class a extends org.androidannotations.api.builder.d<a, com.join.mgps.fragment.roomlist.a> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.fragment.roomlist.a build() {
            b bVar = new b();
            bVar.setArguments(this.args);
            return bVar;
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
        return (T) this.f50075d.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50074c;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50073b);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50074c = onCreateView;
        if (onCreateView == null) {
            this.f50074c = layoutInflater.inflate(R.layout.fragment_raceroom, viewGroup, false);
        }
        return this.f50074c;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50074c = null;
        this.f50072a = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50072a = (WebView) aVar.internalFindViewById(R.id.mWebView);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50073b.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50075d.put(cls, t3);
    }
}
