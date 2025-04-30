package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MyShopFragment_.java */
/* loaded from: classes4.dex */
public final class l3 extends k3 implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    private View f49281s;

    /* renamed from: r  reason: collision with root package name */
    private final i3.c f49280r = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f49282t = new HashMap();

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l3.this.S();
        }
    }

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l3.this.W();
        }
    }

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l3.this.P();
        }
    }

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l3.this.T();
        }
    }

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l3.this.R();
        }
    }

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l3.this.V();
        }
    }

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l3.this.Q();
        }
    }

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l3.this.U();
        }
    }

    /* compiled from: MyShopFragment_.java */
    /* loaded from: classes4.dex */
    public static class i extends org.androidannotations.api.builder.d<i, k3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public k3 build() {
            l3 l3Var = new l3();
            l3Var.setArguments(this.args);
            return l3Var;
        }
    }

    public static i a0() {
        return new i();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49282t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49281s;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49280r);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49281s = onCreateView;
        if (onCreateView == null) {
            this.f49281s = layoutInflater.inflate(R.layout.item_shop_fragment, viewGroup, false);
        }
        return this.f49281s;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49281s = null;
        this.f49173a = null;
        this.f49174b = null;
        this.f49175c = null;
        this.f49176d = null;
        this.f49177e = null;
        this.f49178f = null;
        this.f49179g = null;
        this.f49180h = null;
        this.f49181i = null;
        this.f49182j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49173a = (RadioButton) aVar.internalFindViewById(R.id.rb_zong);
        this.f49174b = (RadioButton) aVar.internalFindViewById(R.id.rb_good);
        this.f49175c = (RadioButton) aVar.internalFindViewById(R.id.rb_new);
        this.f49176d = (RadioButton) aVar.internalFindViewById(R.id.rb_my);
        this.f49177e = (LinearLayout) aVar.internalFindViewById(R.id.ll_zong);
        this.f49178f = (LinearLayout) aVar.internalFindViewById(R.id.ll_good);
        this.f49179g = (LinearLayout) aVar.internalFindViewById(R.id.ll_new);
        this.f49180h = (LinearLayout) aVar.internalFindViewById(R.id.ll_my);
        this.f49181i = (FrameLayout) aVar.internalFindViewById(R.id.frag_shop);
        this.f49182j = (RelativeLayout) aVar.internalFindViewById(R.id.rl_titleshopbar);
        LinearLayout linearLayout = this.f49177e;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        RadioButton radioButton = this.f49173a;
        if (radioButton != null) {
            radioButton.setOnClickListener(new b());
        }
        LinearLayout linearLayout2 = this.f49178f;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new c());
        }
        RadioButton radioButton2 = this.f49174b;
        if (radioButton2 != null) {
            radioButton2.setOnClickListener(new d());
        }
        LinearLayout linearLayout3 = this.f49179g;
        if (linearLayout3 != null) {
            linearLayout3.setOnClickListener(new e());
        }
        RadioButton radioButton3 = this.f49175c;
        if (radioButton3 != null) {
            radioButton3.setOnClickListener(new f());
        }
        LinearLayout linearLayout4 = this.f49180h;
        if (linearLayout4 != null) {
            linearLayout4.setOnClickListener(new g());
        }
        RadioButton radioButton4 = this.f49176d;
        if (radioButton4 != null) {
            radioButton4.setOnClickListener(new h());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49280r.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49282t.put(cls, t3);
    }
}
