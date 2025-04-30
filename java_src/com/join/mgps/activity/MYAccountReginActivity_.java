package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountReginBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MYAccountReginActivity_ extends MYAccountReginActivity implements g3.a, i3.a, i3.b {

    /* renamed from: r  reason: collision with root package name */
    public static final String f33642r = "reginBean";

    /* renamed from: p  reason: collision with root package name */
    private final i3.c f33643p = new i3.c();

    /* renamed from: q  reason: collision with root package name */
    private final Map<Class<?>, Object> f33644q = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountReginActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountReginActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginActivity_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33649a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f33650b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f33651c;

        e(String str, String str2, String str3) {
            this.f33649a = str;
            this.f33650b = str2;
            this.f33651c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginActivity_.super.J0(this.f33649a, this.f33650b, this.f33651c);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33653a;

        f(String str) {
            this.f33653a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginActivity_.super.error(this.f33653a);
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33655a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f33656b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f33657c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, String str3, String str4, String str5) {
            super(str, j4, str2);
            this.f33655a = str3;
            this.f33656b = str4;
            this.f33657c = str5;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountReginActivity_.super.I0(this.f33655a, this.f33656b, this.f33657c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class h extends org.androidannotations.api.builder.a<h> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33659a;

        public h(Context context) {
            super(context, MYAccountReginActivity_.class);
        }

        public h a(AccountReginBean accountReginBean) {
            return (h) super.extra(MYAccountReginActivity_.f33642r, accountReginBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33659a;
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
            super(fragment.getActivity(), MYAccountReginActivity_.class);
            this.f33659a = fragment;
        }
    }

    public static h R0(Context context) {
        return new h(context);
    }

    public static h S0(Fragment fragment) {
        return new h(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(f33642r)) {
            return;
        }
        this.f33637n = (AccountReginBean) extras.getSerializable(f33642r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void I0(String str, String str2, String str3) {
        org.androidannotations.api.a.l(new g("", 0L, "", str, str2, str3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void J0(String str, String str2, String str3) {
        org.androidannotations.api.b.e("", new e(str, str2, str3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33644q.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33643p);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.my_account_regin_activity_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33625b = (EditText) aVar.internalFindViewById(R.id.telPhone);
        this.f33626c = (EditText) aVar.internalFindViewById(R.id.password);
        this.f33627d = (EditText) aVar.internalFindViewById(R.id.userName);
        this.f33628e = (CheckBox) aVar.internalFindViewById(R.id.agreeCheckBox);
        this.f33630g = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f33631h = (Button) aVar.internalFindViewById(R.id.reginButton);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        Button button = this.f33631h;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33644q.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33643p.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33643p.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33643p.a(this);
    }
}
