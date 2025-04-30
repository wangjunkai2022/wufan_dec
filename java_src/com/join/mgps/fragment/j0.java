package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: DownloadMYGameFragment_.java */
/* loaded from: classes4.dex */
public final class j0 extends i0 implements g3.a, i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    private View f48969m;

    /* renamed from: l  reason: collision with root package name */
    private final i3.c f48968l = new i3.c();

    /* renamed from: n  reason: collision with root package name */
    private final Map<Class<?>, Object> f48970n = new HashMap();

    /* renamed from: o  reason: collision with root package name */
    private final IntentFilter f48971o = new IntentFilter();

    /* renamed from: p  reason: collision with root package name */
    private final BroadcastReceiver f48972p = new a();

    /* renamed from: q  reason: collision with root package name */
    private final IntentFilter f48973q = new IntentFilter();

    /* renamed from: r  reason: collision with root package name */
    private final BroadcastReceiver f48974r = new b();

    /* compiled from: DownloadMYGameFragment_.java */
    /* loaded from: classes4.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            j0.this.M(intent);
        }
    }

    /* compiled from: DownloadMYGameFragment_.java */
    /* loaded from: classes4.dex */
    class b extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f48976b = "gameId";

        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            j0.this.Q((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("gameId"));
        }
    }

    /* compiled from: DownloadMYGameFragment_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j0.this.P();
        }
    }

    /* compiled from: DownloadMYGameFragment_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j0.this.relodingimag();
        }
    }

    /* compiled from: DownloadMYGameFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j0.this.setNetwork();
        }
    }

    /* compiled from: DownloadMYGameFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0.super.N();
        }
    }

    /* compiled from: DownloadMYGameFragment_.java */
    /* loaded from: classes4.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f48982a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f48983b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, Context context, String str3) {
            super(str, j4, str2);
            this.f48982a = context;
            this.f48983b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j0.super.R(this.f48982a, this.f48983b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DownloadMYGameFragment_.java */
    /* loaded from: classes4.dex */
    public static class h extends org.androidannotations.api.builder.d<h, i0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public i0 build() {
            j0 j0Var = new j0();
            j0Var.setArguments(this.args);
            return j0Var;
        }
    }

    public static h V() {
        return new h();
    }

    private void init_(Bundle bundle) {
        this.f48839d = new PrefDef_(getActivity());
        i3.c.b(this);
        this.f48971o.addAction(f1.a.f65512y);
        this.f48973q.addAction(f1.a.f65484k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i0
    public void N() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i0
    public void R(Context context, String str) {
        org.androidannotations.api.a.l(new g("", 0L, "", context, str));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48970n.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48969m;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48968l);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f48972p, this.f48971o);
        getActivity().registerReceiver(this.f48974r, this.f48973q);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48969m = onCreateView;
        if (onCreateView == null) {
            this.f48969m = layoutInflater.inflate(R.layout.download_mygame_fragment, viewGroup, false);
        }
        return this.f48969m;
    }

    @Override // com.join.mgps.fragment.i0, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f48972p);
        getActivity().unregisterReceiver(this.f48974r);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48969m = null;
        this.f48840e = null;
        this.f48841f = null;
        this.f48842g = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48840e = (ListView) aVar.internalFindViewById(R.id.downloadListView);
        this.f48841f = (LinearLayout) aVar.internalFindViewById(R.id.noneLayout);
        this.f48842g = (LinearLayout) aVar.internalFindViewById(R.id.topTip);
        View internalFindViewById = aVar.internalFindViewById(R.id.topTipClose);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48968l.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48970n.put(cls, t3);
    }
}
