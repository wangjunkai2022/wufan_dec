package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class DeveloperActivity_ extends DeveloperActivity implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    private final i3.c f29489g = new i3.c();

    /* renamed from: h  reason: collision with root package name */
    private final Map<Class<?>, Object> f29490h = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.V0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.W0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    public static class q extends org.androidannotations.api.builder.a<q> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29507a;

        public q(Context context) {
            super(context, DeveloperActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29507a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public q(Fragment fragment) {
            super(fragment.getActivity(), DeveloperActivity_.class);
            this.f29507a = fragment;
        }
    }

    public static q X0(Context context) {
        return new q(context);
    }

    public static q Y0(Fragment fragment) {
        return new q(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29490h.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29489g);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_developer);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29481a = (EditText) aVar.internalFindViewById(R.id.et_apk_path);
        View internalFindViewById = aVar.internalFindViewById(R.id.install);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.mustpaly);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.btRegin);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.launch);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.btn_notify);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.btn_download_finish);
        View internalFindViewById7 = aVar.internalFindViewById(R.id.btn_delete_file);
        View internalFindViewById8 = aVar.internalFindViewById(R.id.start_app);
        View internalFindViewById9 = aVar.internalFindViewById(R.id.btnRewardLoad);
        View internalFindViewById10 = aVar.internalFindViewById(R.id.btnRewardShow);
        View internalFindViewById11 = aVar.internalFindViewById(R.id.btnFCLoad);
        View internalFindViewById12 = aVar.internalFindViewById(R.id.btnFCShow);
        View internalFindViewById13 = aVar.internalFindViewById(R.id.btnTTTools);
        View internalFindViewById14 = aVar.internalFindViewById(R.id.btnVideo);
        View internalFindViewById15 = aVar.internalFindViewById(R.id.btn_install_a);
        View internalFindViewById16 = aVar.internalFindViewById(R.id.btn_install_b);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new h());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new i());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new j());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new k());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new l());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new m());
        }
        if (internalFindViewById7 != null) {
            internalFindViewById7.setOnClickListener(new n());
        }
        if (internalFindViewById8 != null) {
            internalFindViewById8.setOnClickListener(new o());
        }
        if (internalFindViewById9 != null) {
            internalFindViewById9.setOnClickListener(new p());
        }
        if (internalFindViewById10 != null) {
            internalFindViewById10.setOnClickListener(new a());
        }
        if (internalFindViewById11 != null) {
            internalFindViewById11.setOnClickListener(new b());
        }
        if (internalFindViewById12 != null) {
            internalFindViewById12.setOnClickListener(new c());
        }
        if (internalFindViewById13 != null) {
            internalFindViewById13.setOnClickListener(new d());
        }
        if (internalFindViewById14 != null) {
            internalFindViewById14.setOnClickListener(new e());
        }
        if (internalFindViewById15 != null) {
            internalFindViewById15.setOnClickListener(new f());
        }
        if (internalFindViewById16 != null) {
            internalFindViewById16.setOnClickListener(new g());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29490h.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29489g.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29489g.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29489g.a(this);
    }
}
