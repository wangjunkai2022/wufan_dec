package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameOlFirstFragment_.java */
/* loaded from: classes4.dex */
public final class o2 extends n2 implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    private View f49577s;

    /* renamed from: r  reason: collision with root package name */
    private final i3.c f49576r = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f49578t = new HashMap();

    /* renamed from: u  reason: collision with root package name */
    private final IntentFilter f49579u = new IntentFilter();

    /* renamed from: v  reason: collision with root package name */
    private final BroadcastReceiver f49580v = new b();

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class b extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f49582b = "gameData";

        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o2.this.V((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.relodingimag();
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.T();
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.setNetwork();
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.showLoding();
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.showLodingFailed();
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49589a;

        h(List list) {
            this.f49589a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.showMain(this.f49589a);
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.c0();
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.U();
        }
    }

    /* compiled from: GameOlFirstFragment_.java */
    /* loaded from: classes4.dex */
    public static class k extends org.androidannotations.api.builder.d<k, n2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public n2 build() {
            o2 o2Var = new o2();
            o2Var.setArguments(this.args);
            return o2Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f49579u.addAction(f1.a.H);
        this.f49579u.addAction(f1.a.F);
    }

    public static k m0() {
        return new k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n2
    public void R() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n2
    public void U() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n2
    public void c0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49578t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49577s;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49576r);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f49580v, this.f49579u);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49577s = onCreateView;
        if (onCreateView == null) {
            this.f49577s = layoutInflater.inflate(R.layout.game_online_first_layout, viewGroup, false);
        }
        return this.f49577s;
    }

    @Override // com.join.mgps.fragment.n2, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f49580v);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49577s = null;
        this.f49451a = null;
        this.f49452b = null;
        this.f49453c = null;
        this.f49454d = null;
        this.f49455e = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49451a = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f49452b = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        this.f49453c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49454d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49455e = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f49455e;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new d());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new e());
        }
        Q();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49576r.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49578t.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n2
    public void showLoding() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n2
    public void showMain(List<k1.a<GameOLFirstBean>> list) {
        org.androidannotations.api.b.e("", new h(list), 0L);
    }
}
