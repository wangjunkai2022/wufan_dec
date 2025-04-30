package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.PapayResultData;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class PAPayCenterActivity_ extends PAPayCenterActivity implements g3.a, i3.a, i3.b {

    /* renamed from: z  reason: collision with root package name */
    public static final String f34526z = "intentFrom";

    /* renamed from: x  reason: collision with root package name */
    private final i3.c f34527x = new i3.c();

    /* renamed from: y  reason: collision with root package name */
    private final Map<Class<?>, Object> f34528y = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PAPayCenterActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PAPayCenterActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PAPayCenterActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PAPayCenterActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PAPayCenterActivity_.super.H0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PapayResultData f34534a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f34535b;

        f(PapayResultData papayResultData, int i2) {
            this.f34534a = papayResultData;
            this.f34535b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            PAPayCenterActivity_.super.L0(this.f34534a, this.f34535b);
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f34537a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f34538b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, AccountBean accountBean, int i2) {
            super(str, j4, str2);
            this.f34537a = accountBean;
            this.f34538b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PAPayCenterActivity_.super.I0(this.f34537a, this.f34538b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class h extends org.androidannotations.api.builder.a<h> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34540a;

        public h(Context context) {
            super(context, PAPayCenterActivity_.class);
        }

        public h a(int i2) {
            return (h) super.extra("intentFrom", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34540a;
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

        public h(Fragment fragment) {
            super(fragment.getActivity(), PAPayCenterActivity_.class);
            this.f34540a = fragment;
        }
    }

    public static h S0(Context context) {
        return new h(context);
    }

    public static h T0(Fragment fragment) {
        return new h(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("intentFrom")) {
            return;
        }
        this.f34513o = extras.getInt("intentFrom");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void H0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void I0(AccountBean accountBean, int i2) {
        org.androidannotations.api.a.l(new g("", 0L, "", accountBean, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void J0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void L0(PapayResultData papayResultData, int i2) {
        org.androidannotations.api.b.e("", new f(papayResultData, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void M0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34528y.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34527x);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.papapay_center_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34499a = (XListView) aVar.internalFindViewById(R.id.xListView);
        this.f34500b = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34510l = (TextView) aVar.internalFindViewById(R.id.aboutPabi);
        this.f34511m = (LinearLayout) aVar.internalFindViewById(R.id.nodata);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        TextView textView = this.f34510l;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34528y.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34527x.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34527x.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34527x.a(this);
    }
}
