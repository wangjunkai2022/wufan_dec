package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MYAccountDetialActivity_ extends MYAccountDetialActivity implements g3.a, i3.a, i3.b {
    public static final String J = "accountBean";
    private final i3.c H = new i3.c();
    private final Map<Class<?>, Object> I = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    public static class a0 extends org.androidannotations.api.builder.a<a0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33590a;

        public a0(Context context) {
            super(context, MYAccountDetialActivity_.class);
        }

        public a0 a(AccountBean accountBean) {
            return (a0) super.extra("accountBean", accountBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33590a;
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

        public a0(Fragment fragment) {
            super(fragment.getActivity(), MYAccountDetialActivity_.class);
            this.f33590a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.c1();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33596a;

        g(String str) {
            this.f33596a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.error(this.f33596a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33598a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f33599b;

        h(String str, String str2) {
            this.f33598a = str;
            this.f33599b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.R0(this.f33598a, this.f33599b);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33601a;

        i(String str) {
            this.f33601a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.showToast(this.f33601a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f33606a;

        m(AccountBean accountBean) {
            this.f33606a = accountBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.N0(this.f33606a);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33608a;

        n(String str) {
            this.f33608a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.showMessage(this.f33608a);
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {
        o(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountDetialActivity_.super.V0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {
        p(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountDetialActivity_.super.d1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q extends a.c {
        q(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountDetialActivity_.super.M0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33613a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33614b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f33613a = str3;
            this.f33614b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountDetialActivity_.super.I0(this.f33613a, this.f33614b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.X0();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.e1();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.W0();
        }
    }

    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.b1();
        }
    }

    private void init_(Bundle bundle) {
        this.f33573p = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("accountBean")) {
            return;
        }
        this.f33574q = (AccountBean) extras.getSerializable("accountBean");
    }

    public static a0 r1(Context context) {
        return new a0(context);
    }

    public static a0 s1(Fragment fragment) {
        return new a0(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void I0(String str, int i2) {
        org.androidannotations.api.a.l(new r("", 0L, "", str, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void M0() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void N0(AccountBean accountBean) {
        org.androidannotations.api.b.e("", new m(accountBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void Q0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void R0(String str, String str2) {
        org.androidannotations.api.b.e("", new h(str, str2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void V0() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void c1() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void d1() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.H);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.my_account_detial_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33560c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f33561d = (TextView) aVar.internalFindViewById(R.id.levelTv);
        this.f33562e = (TextView) aVar.internalFindViewById(R.id.name);
        this.f33563f = (TextView) aVar.internalFindViewById(R.id.pabi);
        this.f33564g = (TextView) aVar.internalFindViewById(R.id.xingbie);
        this.f33565h = (TextView) aVar.internalFindViewById(R.id.expTv);
        this.f33566i = (SimpleDraweeView) aVar.internalFindViewById(R.id.iconImage);
        this.f33567j = (TextView) aVar.internalFindViewById(R.id.accountNameTv);
        this.f33568k = (TextView) aVar.internalFindViewById(R.id.phoneTv);
        this.f33569l = (TextView) aVar.internalFindViewById(R.id.passwordTv);
        this.f33570m = (TextView) aVar.internalFindViewById(R.id.hasBindWechat);
        this.f33571n = (TextView) aVar.internalFindViewById(R.id.hasBindWebo);
        this.f33572o = (TextView) aVar.internalFindViewById(R.id.hasBindQQ);
        this.f33575r = (TextView) aVar.internalFindViewById(R.id.tv_rank);
        View internalFindViewById = aVar.internalFindViewById(R.id.iconLayout);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.accountNameLayout);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.pabiLayout);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.xingbieLayout);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.nameLayout);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.passwordLayout);
        View internalFindViewById7 = aVar.internalFindViewById(R.id.phoneLayout);
        View internalFindViewById8 = aVar.internalFindViewById(R.id.levelLayout);
        View internalFindViewById9 = aVar.internalFindViewById(R.id.unSubscribe);
        View internalFindViewById10 = aVar.internalFindViewById(R.id.exitLogin);
        View internalFindViewById11 = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById12 = aVar.internalFindViewById(R.id.bindWechartLayout);
        View internalFindViewById13 = aVar.internalFindViewById(R.id.bindWeiboLayout);
        View internalFindViewById14 = aVar.internalFindViewById(R.id.bindQQLayout);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new s());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new t());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new u());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new v());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new w());
        }
        if (internalFindViewById7 != null) {
            internalFindViewById7.setOnClickListener(new x());
        }
        if (internalFindViewById8 != null) {
            internalFindViewById8.setOnClickListener(new y());
        }
        if (internalFindViewById9 != null) {
            internalFindViewById9.setOnClickListener(new z());
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
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.I.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.H.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new n(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new i(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.H.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.H.a(this);
    }
}
