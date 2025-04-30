package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: CodesBoxFragment_.java */
/* loaded from: classes4.dex */
public final class p extends o implements g3.a, i3.a, i3.b {

    /* renamed from: x  reason: collision with root package name */
    private View f49696x;

    /* renamed from: w  reason: collision with root package name */
    private final i3.c f49695w = new i3.c();

    /* renamed from: y  reason: collision with root package name */
    private final Map<Class<?>, Object> f49697y = new HashMap();

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p.super.S();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f49699a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f49700b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, AccountBean accountBean, GiftPackageDataInfoBean giftPackageDataInfoBean) {
            super(str, j4, str2);
            this.f49699a = accountBean;
            this.f49700b = giftPackageDataInfoBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p.super.T(this.f49699a, this.f49700b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.relodingimag();
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.setNetwork();
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f49704a;

        e(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f49704a = giftPackageDataOperationBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.V(this.f49704a);
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49706a;

        f(String str) {
            this.f49706a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.showToast(this.f49706a);
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.Z();
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49709a;

        h(List list) {
            this.f49709a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.showMain(this.f49709a);
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.X();
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.a0();
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.W();
        }
    }

    /* compiled from: CodesBoxFragment_.java */
    /* loaded from: classes4.dex */
    public static class l extends org.androidannotations.api.builder.d<l, o> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public o build() {
            p pVar = new p();
            pVar.setArguments(this.args);
            return pVar;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static l k0() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void S() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void T(AccountBean accountBean, GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.a.l(new b("", 0L, "", accountBean, giftPackageDataInfoBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void V(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        org.androidannotations.api.b.e("", new e(giftPackageDataOperationBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void W() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void X() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void Z() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void a0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49697y.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49696x;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // com.join.mgps.fragment.o, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49695w);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49696x = onCreateView;
        if (onCreateView == null) {
            this.f49696x = layoutInflater.inflate(R.layout.fragment_codesbox, viewGroup, false);
        }
        return this.f49696x;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49696x = null;
        this.f49504b = null;
        this.f49505c = null;
        this.f49506d = null;
        this.f49507e = null;
        this.f49508f = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49504b = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49505c = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49506d = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f49507e = (XListView2) aVar.internalFindViewById(R.id.listView2);
        this.f49508f = (ListView) aVar.internalFindViewById(R.id.recommendView);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49695w.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49697y.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void showMain(List<GiftPackageDataInfoBean> list) {
        org.androidannotations.api.b.e("", new h(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }
}
