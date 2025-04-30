package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
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
import com.join.mgps.dto.AccountReginBean;
import com.join.mgps.dto.RewardBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyAccountMMSCodeReginFinish_ extends MyAccountMMSCodeReginFinish implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    public static final String f34185s = "accountReginBean";

    /* renamed from: q  reason: collision with root package name */
    private final i3.c f34186q = new i3.c();

    /* renamed from: r  reason: collision with root package name */
    private final Map<Class<?>, Object> f34187r = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeReginFinish_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountReginBean f34189a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, AccountReginBean accountReginBean) {
            super(str, j4, str2);
            this.f34189a = accountReginBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeReginFinish_.super.G0(this.f34189a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34191a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34191a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeReginFinish_.super.H0(this.f34191a);
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
            MyAccountMMSCodeReginFinish_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeReginFinish_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeReginFinish_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.F0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34199a;

        j(String str) {
            this.f34199a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.error(this.f34199a);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f34201a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RewardBean f34202b;

        k(AccountBean accountBean, RewardBean rewardBean) {
            this.f34201a = accountBean;
            this.f34202b = rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.I0(this.f34201a, this.f34202b);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    public static class m extends org.androidannotations.api.builder.a<m> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34205a;

        public m(Context context) {
            super(context, MyAccountMMSCodeReginFinish_.class);
        }

        public m a(AccountReginBean accountReginBean) {
            return (m) super.extra(MyAccountMMSCodeReginFinish_.f34185s, accountReginBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34205a;
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
            super(fragment.getActivity(), MyAccountMMSCodeReginFinish_.class);
            this.f34205a = fragment;
        }
    }

    public static m X0(Context context) {
        return new m(context);
    }

    public static m Y0(Fragment fragment) {
        return new m(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(f34185s)) {
            return;
        }
        this.f34173m = (AccountReginBean) extras.getSerializable(f34185s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void F0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void G0(AccountReginBean accountReginBean) {
        org.androidannotations.api.a.l(new b("", 0L, "", accountReginBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void H0(String str) {
        org.androidannotations.api.a.l(new c("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void I0(AccountBean accountBean, RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new k(accountBean, rewardBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void K0() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void M0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void error(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34187r.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34186q);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.my_account_regin_sendmmscode_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34164d = (EditText) aVar.internalFindViewById(R.id.mmsCode);
        this.f34165e = (TextView) aVar.internalFindViewById(R.id.resendCode);
        this.f34166f = (TextView) aVar.internalFindViewById(R.id.phoneNumber);
        this.f34167g = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f34169i = (Button) aVar.internalFindViewById(R.id.sendCode);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new d());
        }
        Button button = this.f34169i;
        if (button != null) {
            button.setOnClickListener(new e());
        }
        TextView textView = this.f34165e;
        if (textView != null) {
            textView.setOnClickListener(new f());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34187r.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34186q.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34186q.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34186q.a(this);
    }
}
