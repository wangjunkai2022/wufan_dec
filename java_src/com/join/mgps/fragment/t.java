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
/* compiled from: CollectionModuleTwoFragment_.java */
/* loaded from: classes4.dex */
public final class t extends s implements g3.a, i3.a, i3.b {
    private View E;
    private final i3.c D = new i3.c();
    private final Map<Class<?>, Object> F = new HashMap();
    private final IntentFilter G = new IntentFilter();
    private final BroadcastReceiver H = new d();

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.super.T();
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionDataBean f50297a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, CollectionDataBean collectionDataBean) {
            super(str, j4, str2);
            this.f50297a = collectionDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t.super.R(this.f50297a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t.super.Q();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class d extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f50300b = "gameData";

        d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t.this.V((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.relodingimag();
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.setNetwork();
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.super.showLoding();
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.super.showLodingFailed();
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50306a;

        i(List list) {
            this.f50306a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.super.showMain(this.f50306a);
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.super.f0();
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.super.U();
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.super.b0();
        }
    }

    /* compiled from: CollectionModuleTwoFragment_.java */
    /* loaded from: classes4.dex */
    public static class m extends org.androidannotations.api.builder.d<m, s> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public s build() {
            t tVar = new t();
            tVar.setArguments(this.args);
            return tVar;
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getActivity().getResources();
        i3.c.b(this);
        this.f50165o = resources.getString(R.string.net_excption);
        this.f50166p = resources.getString(R.string.connect_server_excption);
        this.G.addAction(f1.a.H);
        this.G.addAction(f1.a.F);
    }

    public static m r0() {
        return new m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void Q() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void R(CollectionDataBean collectionDataBean) {
        org.androidannotations.api.a.l(new b("", 0L, "", collectionDataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void T() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void U() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void b0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void f0() {
        org.androidannotations.api.b.e("", new j(), 0L);
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
            this.E = layoutInflater.inflate(R.layout.collection_break, viewGroup, false);
        }
        return this.E;
    }

    @Override // com.join.mgps.fragment.s, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.H);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.E = null;
        this.f50153c = null;
        this.f50154d = null;
        this.f50155e = null;
        this.f50156f = null;
        this.f50157g = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50153c = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f50154d = (XListView2) aVar.internalFindViewById(R.id.breakListView);
        this.f50155e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f50156f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f50157g = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f50157g;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new f());
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
    @Override // com.join.mgps.fragment.s
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void showMain(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new i(list), 0L);
    }
}
