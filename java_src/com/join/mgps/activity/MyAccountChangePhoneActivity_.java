package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
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
public final class MyAccountChangePhoneActivity_ extends MyAccountChangePhoneActivity implements g3.a, i3.a, i3.b {

    /* renamed from: u  reason: collision with root package name */
    public static final String f33974u = "accountBean";

    /* renamed from: v  reason: collision with root package name */
    public static final String f33975v = "newMobile";

    /* renamed from: s  reason: collision with root package name */
    private final i3.c f33976s = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f33977t = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33980a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f33980a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountChangePhoneActivity_.super.O0(this.f33980a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountChangePhoneActivity_.super.I0();
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
                MyAccountChangePhoneActivity_.super.H0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountChangePhoneActivity_.super.G0();
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
                MyAccountChangePhoneActivity_.super.N0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountChangePhoneActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountChangePhoneActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountChangePhoneActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements TextWatcher {
        k() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            MyAccountChangePhoneActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements TextWatcher {
        l() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            MyAccountChangePhoneActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33992a;

        n(String str) {
            this.f33992a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.showToast(this.f33992a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33994a;

        o(String str) {
            this.f33994a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.R0(this.f33994a);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    public static class q extends org.androidannotations.api.builder.a<q> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33997a;

        public q(Context context) {
            super(context, MyAccountChangePhoneActivity_.class);
        }

        public q a(AccountBean accountBean) {
            return (q) super.extra("accountBean", accountBean);
        }

        public q b(String str) {
            return (q) super.extra(MyAccountChangePhoneActivity_.f33975v, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33997a;
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
            super(fragment.getActivity(), MyAccountChangePhoneActivity_.class);
            this.f33997a = fragment;
        }
    }

    public static q d1(Context context) {
        return new q(context);
    }

    public static q e1(Fragment fragment) {
        return new q(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f33953a = resources.getString(R.string.net_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("accountBean")) {
                this.f33962j = (AccountBean) extras.getSerializable("accountBean");
            }
            if (extras.containsKey(f33975v)) {
                this.f33964l = extras.getString(f33975v);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void G0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void H0() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void I0() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void J0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void N0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void O0(String str) {
        org.androidannotations.api.a.l(new c("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void Q0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void R0(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33977t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33976s);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.change_phone_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33954b = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f33955c = (TextView) aVar.internalFindViewById(R.id.myAccountTv);
        this.f33956d = (TextView) aVar.internalFindViewById(R.id.oldMessageTv);
        this.f33957e = (TextView) aVar.internalFindViewById(R.id.newMessageTv);
        this.f33958f = (EditText) aVar.internalFindViewById(R.id.newInputCode);
        this.f33959g = (EditText) aVar.internalFindViewById(R.id.oldInputCode);
        this.f33960h = (TextView) aVar.internalFindViewById(R.id.getCodeTv);
        this.f33961i = (Button) aVar.internalFindViewById(R.id.settingButn);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        Button button = this.f33961i;
        if (button != null) {
            button.setOnClickListener(new h());
        }
        TextView textView = this.f33960h;
        if (textView != null) {
            textView.setOnClickListener(new i());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new j());
        }
        TextView textView2 = (TextView) aVar.internalFindViewById(R.id.oldInputCode);
        if (textView2 != null) {
            textView2.addTextChangedListener(new k());
        }
        TextView textView3 = (TextView) aVar.internalFindViewById(R.id.newInputCode);
        if (textView3 != null) {
            textView3.addTextChangedListener(new l());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33977t.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33976s.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new n(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33976s.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33976s.a(this);
    }
}
