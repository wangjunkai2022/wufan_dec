package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MGChooseIconActivity_ extends MGChooseIconActivity implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    public static final String f32967q = "accountBean";

    /* renamed from: r  reason: collision with root package name */
    public static final String f32968r = "from";

    /* renamed from: o  reason: collision with root package name */
    private final i3.c f32969o = new i3.c();

    /* renamed from: p  reason: collision with root package name */
    private final Map<Class<?>, Object> f32970p = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32971a;

        a(String str) {
            this.f32971a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGChooseIconActivity_.super.error(this.f32971a);
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGChooseIconActivity_.super.G0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32974a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f32974a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGChooseIconActivity_.super.L0(this.f32974a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGChooseIconActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGChooseIconActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGChooseIconActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGChooseIconActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f32980a;

        h(List list) {
            this.f32980a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGChooseIconActivity_.super.I0(this.f32980a);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGChooseIconActivity_.super.H0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32983a;

        j(String str) {
            this.f32983a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGChooseIconActivity_.super.K0(this.f32983a);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGChooseIconActivity_.super.showLoading();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGChooseIconActivity_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    public static class m extends org.androidannotations.api.builder.a<m> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32987a;

        public m(Context context) {
            super(context, MGChooseIconActivity_.class);
        }

        public m a(AccountBean accountBean) {
            return (m) super.extra("accountBean", accountBean);
        }

        public m b(int i2) {
            return (m) super.extra("from", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32987a;
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

        public m(Fragment fragment) {
            super(fragment.getActivity(), MGChooseIconActivity_.class);
            this.f32987a = fragment;
        }
    }

    public static m V0(Context context) {
        return new m(context);
    }

    public static m W0(Fragment fragment) {
        return new m(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("accountBean")) {
                this.f32957g = (AccountBean) extras.getSerializable("accountBean");
            }
            if (extras.containsKey("from")) {
                this.f32964n = extras.getInt("from");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void G0() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void H0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void I0(List<String> list) {
        org.androidannotations.api.b.e("", new h(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void J0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void K0(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void L0(String str) {
        org.androidannotations.api.a.l(new c("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32970p.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32969o);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_choose_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32953c = (GridView) aVar.internalFindViewById(R.id.chooseGridView);
        this.f32954d = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f32960j = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f32961k = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new d());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new e());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new f());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32970p.put(cls, t3);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32969o.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGChooseIconActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32969o.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32969o.a(this);
    }
}
