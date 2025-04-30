package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyAccountLoginActivity_ extends MyAccountLoginActivity implements g3.a, i3.a, i3.b {
    public static final String I = "intentFrom";
    public static final String J = "fromIndex";
    private final i3.c G = new i3.c();
    private final Map<Class<?>, Object> H = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.xieyi();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34089a;

        d(String str) {
            this.f34089a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.error(this.f34089a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f34091a;

        e(AccountBean accountBean) {
            this.f34091a = accountBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.loginSuccess(this.f34091a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34093a;

        f(String str) {
            this.f34093a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.showToast(this.f34093a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountRegisterThirdwaiRequestBean f34095a;

        g(AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean) {
            this.f34095a = accountRegisterThirdwaiRequestBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.goRegin(this.f34095a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34097a;

        h(String str) {
            this.f34097a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.showMessage(this.f34097a);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f34100a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RewardBean f34101b;

        j(AccountBean accountBean, RewardBean rewardBean) {
            this.f34100a = accountBean;
            this.f34101b = rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.loginSuccess(this.f34100a, this.f34101b);
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34104a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f34105b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, String str3, String str4) {
            super(str, j4, str2);
            this.f34104a = str3;
            this.f34105b = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountLoginActivity_.super.getLogin(this.f34104a, this.f34105b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {
        m(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountLoginActivity_.super.joinDevice();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {
        n(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountLoginActivity_.super.S0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34109a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f34110b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f34111c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f34112d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f34113e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, int i2, String str3, String str4, int i4, String str5) {
            super(str, j4, str2);
            this.f34109a = i2;
            this.f34110b = str3;
            this.f34111c = str4;
            this.f34112d = i4;
            this.f34113e = str5;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountLoginActivity_.super.login(this.f34109a, this.f34110b, this.f34111c, this.f34112d, this.f34113e);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.login();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.shengming();
        }
    }

    /* loaded from: classes3.dex */
    public static class x extends org.androidannotations.api.builder.a<x> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34123a;

        public x(Context context) {
            super(context, MyAccountLoginActivity_.class);
        }

        public x a(int i2) {
            return (x) super.extra(MyAccountLoginActivity_.J, i2);
        }

        public x b(int i2) {
            return (x) super.extra("intentFrom", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34123a;
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

        public x(Fragment fragment) {
            super(fragment.getActivity(), MyAccountLoginActivity_.class);
            this.f34123a = fragment;
        }
    }

    public static x g1(Context context) {
        return new x(context);
    }

    public static x h1(Fragment fragment) {
        return new x(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        this.f34075w = new PrefDef_(this);
        i3.c.b(this);
        this.f34057e = resources.getString(R.string.net_excption);
        this.f34058f = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentFrom")) {
                this.f34069q = extras.getInt("intentFrom");
            }
            if (extras.containsKey(J)) {
                this.f34074v = extras.getInt(J);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void Q0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void S0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.H.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void getLogin(String str, String str2) {
        org.androidannotations.api.a.l(new l("", 0L, "", str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void goRegin(AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean) {
        org.androidannotations.api.b.e("", new g(accountRegisterThirdwaiRequestBean), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void joinDevice() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void login(int i2, String str, String str2, int i4, String str3) {
        org.androidannotations.api.a.l(new o("", 0L, "", i2, str, str2, i4, str3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void loginSuccess(AccountBean accountBean) {
        org.androidannotations.api.b.e("", new e(accountBean), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.G);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.my_account_login_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34059g = (EditText) aVar.internalFindViewById(R.id.username);
        this.f34060h = (TextView) aVar.internalFindViewById(R.id.passwordTitle);
        this.f34061i = (TextView) aVar.internalFindViewById(R.id.userNameTitle);
        this.f34062j = (EditText) aVar.internalFindViewById(R.id.password);
        this.f34063k = (CheckBox) aVar.internalFindViewById(R.id.checkBox);
        this.f34064l = (TextView) aVar.internalFindViewById(R.id.loginbutn);
        this.f34065m = (TextView) aVar.internalFindViewById(R.id.xieyi);
        View internalFindViewById = aVar.internalFindViewById(R.id.signUp);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.fergetbutn);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.loginQQ);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.loginWechat);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.loginWeibo);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.login);
        View internalFindViewById7 = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById8 = aVar.internalFindViewById(R.id.shengming);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        TextView textView = this.f34064l;
        if (textView != null) {
            textView.setOnClickListener(new p());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new q());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new r());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new s());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new t());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new u());
        }
        if (internalFindViewById7 != null) {
            internalFindViewById7.setOnClickListener(new v());
        }
        if (internalFindViewById8 != null) {
            internalFindViewById8.setOnClickListener(new w());
        }
        TextView textView2 = this.f34065m;
        if (textView2 != null) {
            textView2.setOnClickListener(new a());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.H.put(cls, t3);
    }

    @Override // com.join.mgps.activity.BaseAccountActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.G.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void loginSuccess(AccountBean accountBean, RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new j(accountBean, rewardBean), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.G.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.G.a(this);
    }
}
