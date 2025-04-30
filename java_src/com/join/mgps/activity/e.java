package com.join.mgps.activity;

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
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: ClassifyListFragment_.java */
/* loaded from: classes3.dex */
public final class e extends com.join.mgps.activity.d implements g3.a, i3.a, i3.b {
    private View E;
    private final i3.c D = new i3.c();
    private final Map<Class<?>, Object> F = new HashMap();
    private final IntentFilter G = new IntentFilter();
    private final BroadcastReceiver H = new c();

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.super.d0();
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36955a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f36956b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, String str3, String str4) {
            super(str, j4, str2);
            this.f36955a = str3;
            this.f36956b = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                e.super.V(this.f36955a, this.f36956b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f36958b = "gameData";

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            e.this.f0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.relodingimag();
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* renamed from: com.join.mgps.activity.e$e  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0160e implements View.OnClickListener {
        View$OnClickListenerC0160e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.e0();
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.W();
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.k0();
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.setNetwork();
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.super.showLoding();
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36966a;

        j(boolean z3) {
            this.f36966a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.super.o0(this.f36966a);
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36968a;

        k(List list) {
            this.f36968a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.super.showMain(this.f36968a);
        }
    }

    /* compiled from: ClassifyListFragment_.java */
    /* loaded from: classes3.dex */
    public static class l extends org.androidannotations.api.builder.d<l, com.join.mgps.activity.d> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.d build() {
            e eVar = new e();
            eVar.setArguments(this.args);
            return eVar;
        }
    }

    public static l A0() {
        return new l();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.G.addAction(f1.a.H);
        this.G.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d
    public void V(String str, String str2) {
        org.androidannotations.api.a.l(new b("", 0L, "", str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d
    public void d0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.F.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.E;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d
    public void o0(boolean z3) {
        org.androidannotations.api.b.e("", new j(z3), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.D);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.H, this.G);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.E = onCreateView;
        if (onCreateView == null) {
            this.E = layoutInflater.inflate(R.layout.classify_list_layout, viewGroup, false);
        }
        return this.E;
    }

    @Override // com.join.mgps.activity.d, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.H);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.E = null;
        this.f36922d = null;
        this.f36923e = null;
        this.f36924f = null;
        this.f36925g = null;
        this.f36926h = null;
        this.f36927i = null;
        this.f36928j = null;
        this.f36929k = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36922d = (RelativeLayout) aVar.internalFindViewById(R.id.rootRl);
        this.f36923e = (XListView2) aVar.internalFindViewById(R.id.classifyListView);
        this.f36924f = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f36925g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f36926h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f36927i = (LinearLayout) aVar.internalFindViewById(R.id.loading_none);
        this.f36928j = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f36929k = (ImageView) aVar.internalFindViewById(R.id.noneReloadImage);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setAll);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f36928j;
        if (imageView != null) {
            imageView.setOnClickListener(new d());
        }
        ImageView imageView2 = this.f36929k;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View$OnClickListenerC0160e());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new f());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new g());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.D.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.F.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d
    public void showMain(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new k(list), 0L);
    }
}
