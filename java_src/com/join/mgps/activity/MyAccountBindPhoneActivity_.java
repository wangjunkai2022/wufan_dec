package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyAccountBindPhoneActivity_ extends MyAccountBindPhoneActivity implements g3.a, i3.a, i3.b {

    /* renamed from: t  reason: collision with root package name */
    public static final String f33936t = "accountBean";

    /* renamed from: r  reason: collision with root package name */
    private final i3.c f33937r = new i3.c();

    /* renamed from: s  reason: collision with root package name */
    private final Map<Class<?>, Object> f33938s = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountBindPhoneActivity_.super.H0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                MyAccountBindPhoneActivity_.super.G0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountBindPhoneActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountBindPhoneActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountBindPhoneActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33944a;

        f(String str) {
            this.f33944a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.M0(this.f33944a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.I0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33947a;

        h(String str) {
            this.f33947a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.showToast(this.f33947a);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    class k extends a.c {
        k(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountBindPhoneActivity_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class l extends org.androidannotations.api.builder.a<l> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33952a;

        public l(Context context) {
            super(context, MyAccountBindPhoneActivity_.class);
        }

        public l a(AccountBean accountBean) {
            return (l) super.extra("accountBean", accountBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33952a;
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

        public l(Fragment fragment) {
            super(fragment.getActivity(), MyAccountBindPhoneActivity_.class);
            this.f33952a = fragment;
        }
    }

    public static l V0(Context context) {
        return new l(context);
    }

    public static l W0(Fragment fragment) {
        return new l(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f33916a = resources.getString(R.string.net_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("accountBean")) {
            return;
        }
        this.f33926k = (AccountBean) extras.getSerializable("accountBean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void G0() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void H0() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void I0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void K0() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void M0(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33938s.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33937r);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.bind_phone_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33917b = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f33918c = (TextView) aVar.internalFindViewById(R.id.myAccountTv);
        this.f33919d = (TextView) aVar.internalFindViewById(R.id.securityLevel);
        this.f33920e = (TextView) aVar.internalFindViewById(R.id.securitySuggest);
        this.f33921f = (EditText) aVar.internalFindViewById(R.id.inputPhone);
        this.f33922g = (EditText) aVar.internalFindViewById(R.id.inputCode);
        this.f33923h = (TextView) aVar.internalFindViewById(R.id.getCodeTv);
        this.f33924i = (Button) aVar.internalFindViewById(R.id.settingButn);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        TextView textView = this.f33923h;
        if (textView != null) {
            textView.setOnClickListener(new c());
        }
        Button button = this.f33924i;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33938s.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33937r.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33937r.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33937r.a(this);
    }
}
