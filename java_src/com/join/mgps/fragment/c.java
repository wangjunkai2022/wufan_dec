package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameInfoBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: ArenaGameListFragment_.java */
/* loaded from: classes4.dex */
public final class c extends com.join.mgps.fragment.b implements g3.a, i3.a, i3.b {

    /* renamed from: n  reason: collision with root package name */
    private View f48430n;

    /* renamed from: m  reason: collision with root package name */
    private final i3.c f48429m = new i3.c();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Class<?>, Object> f48431o = new HashMap();

    /* compiled from: ArenaGameListFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48432a;

        a(List list) {
            this.f48432a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.super.d0(this.f48432a);
        }
    }

    /* compiled from: ArenaGameListFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.super.showLodingFailed();
        }
    }

    /* compiled from: ArenaGameListFragment_.java */
    /* renamed from: com.join.mgps.fragment.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0205c implements Runnable {
        RunnableC0205c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.super.c0();
        }
    }

    /* compiled from: ArenaGameListFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ArenaGameListFragment_.java */
    /* loaded from: classes4.dex */
    public static class e extends org.androidannotations.api.builder.d<e, com.join.mgps.fragment.b> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.fragment.b build() {
            c cVar = new c();
            cVar.setArguments(this.args);
            return cVar;
        }
    }

    public static e i0() {
        return new e();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b
    public void c0() {
        org.androidannotations.api.b.e("", new RunnableC0205c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b
    public void d0(List<GameInfoBean> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48431o.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48430n;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.b, com.join.mgps.basefragment.a
    public void loadData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // com.join.mgps.fragment.b, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48429m);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48430n = onCreateView;
        if (onCreateView == null) {
            this.f48430n = layoutInflater.inflate(R.layout.fragment_gamelist, viewGroup, false);
        }
        return this.f48430n;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48430n = null;
        this.f48337c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48337c = (XRecyclerView) aVar.internalFindViewById(R.id.listView2);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48429m.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48431o.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }
}
