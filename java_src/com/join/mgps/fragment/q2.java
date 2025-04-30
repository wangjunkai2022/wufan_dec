package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameOlGiftPackageFragment_.java */
/* loaded from: classes4.dex */
public final class q2 extends p2 implements g3.a, i3.a, i3.b {
    private View A;

    /* renamed from: z  reason: collision with root package name */
    private final i3.c f49909z = new i3.c();
    private final Map<Class<?>, Object> B = new HashMap();

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.i0();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.e0();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.g0();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.h0();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f49914a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f49915b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, GiftPackageDataInfoBean giftPackageDataInfoBean, int i2) {
            super(str, j4, str2);
            this.f49914a = giftPackageDataInfoBean;
            this.f49915b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                q2.super.Z(this.f49914a, this.f49915b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                q2.super.a0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q2.this.relodingimag();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q2.this.d0();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q2.this.setNetwork();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.c0();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49922a;

        k(String str) {
            this.f49922a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.showToast(this.f49922a);
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f49924a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f49925b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f49926c;

        l(GiftPackageDataOperationBean giftPackageDataOperationBean, DownloadTask downloadTask, int i2) {
            this.f49924a = giftPackageDataOperationBean;
            this.f49925b = downloadTask;
            this.f49926c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.f0(this.f49924a, this.f49925b, this.f49926c);
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.showLoding();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.showLodingFailed();
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49930a;

        o(List list) {
            this.f49930a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            q2.super.showMain(this.f49930a);
        }
    }

    /* compiled from: GameOlGiftPackageFragment_.java */
    /* loaded from: classes4.dex */
    public static class p extends org.androidannotations.api.builder.d<p, p2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public p2 build() {
            q2 q2Var = new q2();
            q2Var.setArguments(this.args);
            return q2Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static p w0() {
        return new p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void Z(GiftPackageDataInfoBean giftPackageDataInfoBean, int i2) {
        org.androidannotations.api.a.l(new e("", 0L, "", giftPackageDataInfoBean, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void a0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void c0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void e0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void f0(GiftPackageDataOperationBean giftPackageDataOperationBean, DownloadTask downloadTask, int i2) {
        org.androidannotations.api.b.e("", new l(giftPackageDataOperationBean, downloadTask, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void g0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.B.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void h0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void i0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.A;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49909z);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.A = onCreateView;
        if (onCreateView == null) {
            this.A = layoutInflater.inflate(R.layout.game_online_first_layout, viewGroup, false);
        }
        return this.A;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.A = null;
        this.f49733a = null;
        this.f49734b = null;
        this.f49735c = null;
        this.f49736d = null;
        this.f49737e = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49733a = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f49734b = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        this.f49735c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49736d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49737e = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f49737e;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new h());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new i());
        }
        T();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49909z.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.B.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void showLoding() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void showMain(List<k1.a<GiftPackageDataInfoBean>> list) {
        org.androidannotations.api.b.e("", new o(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p2
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new k(str), 0L);
    }
}
