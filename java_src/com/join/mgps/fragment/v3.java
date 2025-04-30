package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: PaPaLocalGameFragment_.java */
/* loaded from: classes4.dex */
public final class v3 extends u3 implements g3.a, i3.a, i3.b {

    /* renamed from: e  reason: collision with root package name */
    private View f50568e;

    /* renamed from: d  reason: collision with root package name */
    private final i3.c f50567d = new i3.c();

    /* renamed from: f  reason: collision with root package name */
    private final Map<Class<?>, Object> f50569f = new HashMap();

    /* compiled from: PaPaLocalGameFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50570a;

        a(List list) {
            this.f50570a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.O(this.f50570a);
        }
    }

    /* compiled from: PaPaLocalGameFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.N();
        }
    }

    /* compiled from: PaPaLocalGameFragment_.java */
    /* loaded from: classes4.dex */
    public static class c extends org.androidannotations.api.builder.d<c, u3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public u3 build() {
            v3 v3Var = new v3();
            v3Var.setArguments(this.args);
            return v3Var;
        }
    }

    public static c S() {
        return new c();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // com.join.mgps.fragment.u3
    public void N() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // com.join.mgps.fragment.u3
    public void O(List<DownloadTask> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50569f.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50568e;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50567d);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50568e = onCreateView;
        if (onCreateView == null) {
            this.f50568e = layoutInflater.inflate(R.layout.fragment_papa_game_local, viewGroup, false);
        }
        return this.f50568e;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50568e = null;
        this.f50448a = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50448a = (XListView2) aVar.internalFindViewById(R.id.mListView);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50567d.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50569f.put(cls, t3);
    }
}
