package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountAnonymousReginRequest;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class AccountBindPhoneNew_ extends AccountBindPhoneNew implements g3.a, i3.a, i3.b {
    public static final String E = "thirdRequestbean";
    public static final String F = "from";
    private final i3.c C = new i3.c();
    private final Map<Class<?>, Object> D = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.R0();
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
                AccountBindPhoneNew_.super.Q0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountAnonymousReginRequest f28131a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, AccountAnonymousReginRequest accountAnonymousReginRequest) {
            super(str, j4, str2);
            this.f28131a = accountAnonymousReginRequest;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.O0(this.f28131a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.joinDevice();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountAnonymousReginRequest f28134a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, AccountAnonymousReginRequest accountAnonymousReginRequest) {
            super(str, j4, str2);
            this.f28134a = accountAnonymousReginRequest;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.P0(this.f28134a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {
        g(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.phoneRegin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.thirdRegin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28138a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f28138a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.L0(this.f28138a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28140a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f28140a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.M0(this.f28140a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.nextStep();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.userIcon();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.nickNameBution();
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28147a;

        p(String str) {
            this.f28147a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.error(this.f28147a);
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f28150a;

        r(AccountBean accountBean) {
            this.f28150a = accountBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.showFinishPage(this.f28150a);
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountAnonymousReginRequest f28152a;

        s(AccountAnonymousReginRequest accountAnonymousReginRequest) {
            this.f28152a = accountAnonymousReginRequest;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.S0(this.f28152a);
        }
    }

    /* loaded from: classes3.dex */
    public static class t extends org.androidannotations.api.builder.a<t> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28154a;

        public t(Context context) {
            super(context, AccountBindPhoneNew_.class);
        }

        public t a(int i2) {
            return (t) super.extra("from", i2);
        }

        public t b(AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean) {
            return (t) super.extra("thirdRequestbean", accountRegisterThirdwaiRequestBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28154a;
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

        public t(Fragment fragment) {
            super(fragment.getActivity(), AccountBindPhoneNew_.class);
            this.f28154a = fragment;
        }
    }

    public static t h1(Context context) {
        return new t(context);
    }

    public static t i1(Fragment fragment) {
        return new t(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("thirdRequestbean")) {
                this.f28098c = (AccountRegisterThirdwaiRequestBean) extras.getSerializable("thirdRequestbean");
            }
            if (extras.containsKey("from")) {
                this.f28099d = extras.getInt("from");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void I0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void K0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void L0(String str) {
        org.androidannotations.api.a.l(new i("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void M0(String str) {
        org.androidannotations.api.a.l(new j("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void O0(AccountAnonymousReginRequest accountAnonymousReginRequest) {
        org.androidannotations.api.a.l(new d("", 0L, "", accountAnonymousReginRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void P0(AccountAnonymousReginRequest accountAnonymousReginRequest) {
        org.androidannotations.api.a.l(new f("", 0L, "", accountAnonymousReginRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void Q0() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void R0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void S0(AccountAnonymousReginRequest accountAnonymousReginRequest) {
        org.androidannotations.api.b.e("", new s(accountAnonymousReginRequest), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void error(String str) {
        org.androidannotations.api.b.e("", new p(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.D.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void joinDevice() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.C);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.bind_phone_activity_new);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28100e = (TextView) aVar.internalFindViewById(R.id.codeTime);
        this.f28101f = (SimpleDraweeView) aVar.internalFindViewById(R.id.userIcon);
        this.f28102g = (TextView) aVar.internalFindViewById(R.id.hintPhone);
        this.f28103h = (TextView) aVar.internalFindViewById(R.id.phoneShow);
        this.f28104i = (EditText) aVar.internalFindViewById(R.id.phoneNumber);
        this.f28105j = (EditText) aVar.internalFindViewById(R.id.password);
        this.f28106k = (EditText) aVar.internalFindViewById(R.id.code);
        this.f28107l = (EditText) aVar.internalFindViewById(R.id.nickName);
        this.f28108m = (LinearLayout) aVar.internalFindViewById(R.id.setPassLayout);
        this.f28109n = (LinearLayout) aVar.internalFindViewById(R.id.editPhone);
        this.f28110o = (LinearLayout) aVar.internalFindViewById(R.id.changeNickNameLayout);
        this.f28111p = (TextView) aVar.internalFindViewById(R.id.nextStep);
        this.f28112q = (TextView) aVar.internalFindViewById(R.id.nextStep2);
        this.f28113r = (TextView) aVar.internalFindViewById(R.id.nickNameBution);
        TextView textView = this.f28111p;
        if (textView != null) {
            textView.setOnClickListener(new k());
        }
        TextView textView2 = this.f28100e;
        if (textView2 != null) {
            textView2.setOnClickListener(new l());
        }
        TextView textView3 = this.f28112q;
        if (textView3 != null) {
            textView3.setOnClickListener(new m());
        }
        SimpleDraweeView simpleDraweeView = this.f28101f;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new n());
        }
        TextView textView4 = this.f28113r;
        if (textView4 != null) {
            textView4.setOnClickListener(new o());
        }
        afterview();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void phoneRegin() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.D.put(cls, t3);
    }

    @Override // com.join.mgps.activity.BaseAccountActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.C.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void showFinishPage(AccountBean accountBean) {
        org.androidannotations.api.b.e("", new r(accountBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void thirdRegin() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.C.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.C.a(this);
    }
}
