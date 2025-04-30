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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: PaPaStandAloneV2Fragment_.java */
/* loaded from: classes4.dex */
public final class z3 extends y3 implements g3.a, i3.a, i3.b {
    private View B;
    private final i3.c A = new i3.c();
    private final Map<Class<?>, Object> C = new HashMap();
    private final IntentFilter D = new IntentFilter();
    private final BroadcastReceiver E = new c();

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50837a;

        a(String str) {
            this.f50837a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            z3.super.showToast(this.f50837a);
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                z3.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f50840b = "gameData";

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            z3.this.Z((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z3.this.relodingimag();
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z3.this.setNetwork();
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z3.super.h0();
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50845a;

        g(List list) {
            this.f50845a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            z3.super.l0(this.f50845a);
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z3.super.f0();
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z3.super.g0();
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z3.super.e0();
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z3.super.hideLoading();
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment_.java */
    /* loaded from: classes4.dex */
    public static class l extends org.androidannotations.api.builder.d<l, y3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public y3 build() {
            z3 z3Var = new z3();
            z3Var.setArguments(this.args);
            return z3Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.D.addAction(f1.a.H);
        this.D.addAction(f1.a.F);
    }

    public static l v0() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void R() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void e0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void f0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void g0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.C.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void h0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void hideLoading() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.B;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void l0(List<PaPaBean> list) {
        org.androidannotations.api.b.e("", new g(list), 0L);
    }

    @Override // com.join.mgps.fragment.y3, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.A);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.E, this.D);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.B = onCreateView;
        if (onCreateView == null) {
            this.B = layoutInflater.inflate(R.layout.fragment_papa_standalone_v2, viewGroup, false);
        }
        return this.B;
    }

    @Override // com.join.mgps.fragment.y3, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.E);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.B = null;
        this.f50791e = null;
        this.f50794h = null;
        this.f50795i = null;
        this.f50796j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50791e = (XListView2) aVar.internalFindViewById(R.id.mListView);
        this.f50794h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f50795i = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f50796j = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new d());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.A.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.C.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }
}
