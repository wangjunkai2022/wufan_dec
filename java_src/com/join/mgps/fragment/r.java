package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: CollectionModuleFourFragment_.java */
/* loaded from: classes4.dex */
public final class r extends q implements g3.a, i3.a, i3.b {

    /* renamed from: y  reason: collision with root package name */
    private View f49970y;

    /* renamed from: x  reason: collision with root package name */
    private final i3.c f49969x = new i3.c();

    /* renamed from: z  reason: collision with root package name */
    private final Map<Class<?>, Object> f49971z = new HashMap();
    private final IntentFilter A = new IntentFilter();
    private final BroadcastReceiver B = new c();

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionDataBean f49972a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, CollectionDataBean collectionDataBean) {
            super(str, j4, str2);
            this.f49972a = collectionDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r.super.Q(this.f49972a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f49975b = "gameData";

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r.this.V((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r.this.relodingimag();
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r.this.T();
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r.this.setNetwork();
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.super.showLoding();
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.super.showLodingFailed();
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49982a;

        i(List list) {
            this.f49982a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            r.super.showMain(this.f49982a);
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.super.e0();
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.super.U();
        }
    }

    /* compiled from: CollectionModuleFourFragment_.java */
    /* loaded from: classes4.dex */
    public static class l extends org.androidannotations.api.builder.d<l, q> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public q build() {
            r rVar = new r();
            rVar.setArguments(this.args);
            return rVar;
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getActivity().getResources();
        i3.c.b(this);
        this.f49846l = resources.getString(R.string.net_excption);
        this.f49847m = resources.getString(R.string.connect_server_excption);
        this.A.addAction(f1.a.H);
        this.A.addAction(f1.a.F);
    }

    public static l o0() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void Q(CollectionDataBean collectionDataBean) {
        org.androidannotations.api.a.l(new a("", 0L, "", collectionDataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void R() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void U() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void e0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49971z.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49970y;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49969x);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.B, this.A);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49970y = onCreateView;
        if (onCreateView == null) {
            this.f49970y = layoutInflater.inflate(R.layout.collection_rank, viewGroup, false);
        }
        return this.f49970y;
    }

    @Override // com.join.mgps.fragment.q, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.B);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49970y = null;
        this.f49835a = null;
        this.f49836b = null;
        this.f49837c = null;
        this.f49838d = null;
        this.f49839e = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49835a = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f49836b = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        this.f49837c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49838d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49839e = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f49839e;
        if (imageView != null) {
            imageView.setOnClickListener(new d());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new e());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new f());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49969x.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49971z.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void showMain(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new i(list), 0L);
    }
}
