package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.ResultMyVoucherBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: VoucherFragment_.java */
/* loaded from: classes4.dex */
public final class x4 extends w4 implements g3.a, i3.a, i3.b {

    /* renamed from: r  reason: collision with root package name */
    private View f50751r;

    /* renamed from: q  reason: collision with root package name */
    private final i3.c f50750q = new i3.c();

    /* renamed from: s  reason: collision with root package name */
    private final Map<Class<?>, Object> f50752s = new HashMap();

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x4.this.a0();
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x4.super.d0();
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PapayVoucherResultMain f50755a;

        c(PapayVoucherResultMain papayVoucherResultMain) {
            this.f50755a = papayVoucherResultMain;
        }

        @Override // java.lang.Runnable
        public void run() {
            x4.super.c0(this.f50755a);
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x4.super.g0();
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x4.super.f0();
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x4.super.e0();
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x4.super.showLodingFailed();
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x4.super.b0();
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x4.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: VoucherFragment_.java */
    /* loaded from: classes4.dex */
    public static class j extends org.androidannotations.api.builder.d<j, w4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public w4 build() {
            x4 x4Var = new x4();
            x4Var.setArguments(this.args);
            return x4Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static j p0() {
        return new j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w4
    public void b0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w4
    public void c0(PapayVoucherResultMain<ResultMyVoucherBean> papayVoucherResultMain) {
        org.androidannotations.api.b.e("", new c(papayVoucherResultMain), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w4
    public void d0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w4
    public void e0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w4
    public void f0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w4
    public void g0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50752s.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50751r;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // com.join.mgps.fragment.w4, com.join.mgps.basefragment.a
    public void loadData() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50750q);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50751r = onCreateView;
        if (onCreateView == null) {
            this.f50751r = layoutInflater.inflate(R.layout.fragment_my_voucher, viewGroup, false);
        }
        return this.f50751r;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50751r = null;
        this.f50658b = null;
        this.f50660d = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50658b = (XListView2) aVar.internalFindViewById(R.id.listview);
        LinearLayout linearLayout = (LinearLayout) aVar.internalFindViewById(R.id.hotVoucherLayout);
        this.f50660d = linearLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50750q.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50752s.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w4
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }
}
