package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameOlOpenTestFragment_.java */
/* loaded from: classes4.dex */
public final class u2 extends t2 implements g3.a, i3.a, i3.b {

    /* renamed from: r  reason: collision with root package name */
    private View f50434r;

    /* renamed from: q  reason: collision with root package name */
    private final i3.c f50433q = new i3.c();

    /* renamed from: s  reason: collision with root package name */
    private final Map<Class<?>, Object> f50435s = new HashMap();

    /* renamed from: t  reason: collision with root package name */
    private final IntentFilter f50436t = new IntentFilter();

    /* renamed from: u  reason: collision with root package name */
    private final BroadcastReceiver f50437u = new a();

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f50438b = "gameData";

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            u2.this.g0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u2.this.e0();
        }
    }

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u2.super.showLodingFailed();
        }
    }

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50442a;

        d(List list) {
            this.f50442a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            u2.super.showMain(this.f50442a);
        }
    }

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u2.super.l0();
        }
    }

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u2.super.f0();
        }
    }

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    class g extends a.c {
        g(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u2.super.c0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u2.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameOlOpenTestFragment_.java */
    /* loaded from: classes4.dex */
    public static class i extends org.androidannotations.api.builder.d<i, t2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public t2 build() {
            u2 u2Var = new u2();
            u2Var.setArguments(this.args);
            return u2Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f50436t.addAction(f1.a.H);
        this.f50436t.addAction(f1.a.F);
    }

    public static i w0() {
        return new i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t2
    public void c0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t2
    public void f0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50435s.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50434r;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t2
    public void l0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.t2, com.join.mgps.basefragment.a
    public void loadData() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50433q);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f50437u, this.f50436t);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50434r = onCreateView;
        return onCreateView;
    }

    @Override // com.join.mgps.fragment.t2, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f50437u);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50434r = null;
        this.f50329b = null;
        this.f50330c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50329b = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f50330c = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        b0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50433q.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50435s.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t2
    public void showMain(List<k1.a<GameOLFirstBean>> list) {
        org.androidannotations.api.b.e("", new d(list), 0L);
    }
}
