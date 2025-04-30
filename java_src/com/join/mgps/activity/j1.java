package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayout;
import com.join.mgps.dto.CategorySimpleBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: MGMainClassifyFragment_.java */
/* loaded from: classes3.dex */
public final class j1 extends MGMainClassifyFragment implements g3.a, i3.a, i3.b {
    private View J;
    private final i3.c I = new i3.c();
    private final Map<Class<?>, Object> K = new HashMap();

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37332a;

        a(String str) {
            this.f37332a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.a0(this.f37332a);
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37334a;

        b(List list) {
            this.f37334a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.f0(this.f37334a);
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.h0();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.g0();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j1.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j1.this.U();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j1.this.setNetwork();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j1.this.relodingimag();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j1.this.Z();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37343a;

        j(String str) {
            this.f37343a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.c0(this.f37343a);
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.e0();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.b0();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.i0();
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37348a;

        n(String str) {
            this.f37348a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.d0(this.f37348a);
        }
    }

    /* compiled from: MGMainClassifyFragment_.java */
    /* loaded from: classes3.dex */
    public static class o extends org.androidannotations.api.builder.d<o, MGMainClassifyFragment> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public MGMainClassifyFragment build() {
            j1 j1Var = new j1();
            j1Var.setArguments(this.args);
            return j1Var;
        }
    }

    private void init_(Bundle bundle) {
        this.D = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    public static o v0() {
        return new o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void V() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void a0(String str) {
        org.androidannotations.api.b.e("", new a(str), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void b0() {
        org.androidannotations.api.b.e("", new l(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void c0(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void d0(String str) {
        org.androidannotations.api.b.e("", new n(str), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void e0() {
        org.androidannotations.api.b.e("", new k(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void f0(List<CategorySimpleBean> list) {
        org.androidannotations.api.b.e("", new b(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void g0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void h0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void i0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.J;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.I);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.J = onCreateView;
        if (onCreateView == null) {
            this.J = layoutInflater.inflate(R.layout.my_game_layout, viewGroup, false);
        }
        return this.J;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.J = null;
        this.f33472r = null;
        this.f33473s = null;
        this.f33474t = null;
        this.f33475u = null;
        this.f33476v = null;
        this.f33477w = null;
        this.f33478x = null;
        this.f33479y = null;
        this.f33480z = null;
        this.A = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33472r = (LinearLayout) aVar.internalFindViewById(R.id.linearLayoutMain);
        this.f33473s = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f33474t = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f33475u = (MViewpagerV4) aVar.internalFindViewById(R.id.mViewpagerV4);
        this.f33476v = (SlidingTabLayout) aVar.internalFindViewById(R.id.mSlidingTabLayout);
        this.f33477w = (ToggleButton) aVar.internalFindViewById(R.id.toggleButton);
        this.f33478x = (TextView) aVar.internalFindViewById(R.id.backTextView);
        this.f33479y = (TextView) aVar.internalFindViewById(R.id.romTypeTitle);
        this.f33480z = (LinearLayout) aVar.internalFindViewById(R.id.searchImage);
        this.A = (ToggleButton) aVar.internalFindViewById(R.id.toggleButtonRom);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.relodingimag);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new f());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new g());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new h());
        }
        LinearLayout linearLayout = this.f33480z;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new i());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.I.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.K.put(cls, t3);
    }
}
