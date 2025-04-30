package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class AccountUpgradeActivity_ extends AccountUpgradeActivity implements g3.a, i3.a, i3.b {

    /* renamed from: l  reason: collision with root package name */
    private final i3.c f28302l = new i3.c();

    /* renamed from: m  reason: collision with root package name */
    private final Map<Class<?>, Object> f28303m = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28304a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f28305b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f28306c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f28307d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f28308e;

        a(String str, String str2, String str3, String str4, int i2) {
            this.f28304a = str;
            this.f28305b = str2;
            this.f28306c = str3;
            this.f28307d = str4;
            this.f28308e = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.P0(this.f28304a, this.f28305b, this.f28306c, this.f28307d, this.f28308e);
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28310a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f28311b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f28312c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f28313d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f28314e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, String str3, String str4, String str5, String str6, int i2) {
            super(str, j4, str2);
            this.f28310a = str3;
            this.f28311b = str4;
            this.f28312c = str5;
            this.f28313d = str6;
            this.f28314e = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountUpgradeActivity_.super.R0(this.f28310a, this.f28311b, this.f28312c, this.f28313d, this.f28314e);
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
                AccountUpgradeActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28317a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f28317a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountUpgradeActivity_.super.H0(this.f28317a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28324a;

        j(String str) {
            this.f28324a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.error(this.f28324a);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    public static class n extends org.androidannotations.api.builder.a<n> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28329a;

        public n(Context context) {
            super(context, AccountUpgradeActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28329a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), AccountUpgradeActivity_.class);
            this.f28329a = fragment;
        }
    }

    public static n b1(Context context) {
        return new n(context);
    }

    public static n c1(Fragment fragment) {
        return new n(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void H0(String str) {
        org.androidannotations.api.a.l(new d("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void K0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void L0() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void M0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void O0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void P0(String str, String str2, String str3, String str4, int i2) {
        org.androidannotations.api.b.e("", new a(str, str2, str3, str4, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void R0(String str, String str2, String str3, String str4, int i2) {
        org.androidannotations.api.a.l(new b("", 0L, "", str, str2, str3, str4, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28303m.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28302l);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_account_upgrade);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28283a = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f28284b = (EditText) aVar.internalFindViewById(R.id.nickname);
        this.f28285c = (EditText) aVar.internalFindViewById(R.id.password);
        this.f28286d = (EditText) aVar.internalFindViewById(R.id.phone);
        this.f28287e = (EditText) aVar.internalFindViewById(R.id.validateCode);
        this.f28288f = (Button) aVar.internalFindViewById(R.id.getValidateCode);
        this.f28289g = (Button) aVar.internalFindViewById(R.id.submit);
        this.f28290h = (LinearLayout) aVar.internalFindViewById(R.id.alternative);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new e());
        }
        LinearLayout linearLayout = this.f28290h;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new f());
        }
        Button button = this.f28289g;
        if (button != null) {
            button.setOnClickListener(new g());
        }
        Button button2 = this.f28288f;
        if (button2 != null) {
            button2.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28303m.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28302l.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28302l.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28302l.a(this);
    }
}
