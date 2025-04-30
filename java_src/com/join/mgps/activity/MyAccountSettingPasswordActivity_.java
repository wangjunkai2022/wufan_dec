package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
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
import com.join.mgps.dto.AccountBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyAccountSettingPasswordActivity_ extends MyAccountSettingPasswordActivity implements g3.a, i3.a, i3.b {

    /* renamed from: l  reason: collision with root package name */
    public static final String f34220l = "accountBean";

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f34221j = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f34222k = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountSettingPasswordActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountSettingPasswordActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountSettingPasswordActivity_.super.F0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34226a;

        d(String str) {
            this.f34226a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountSettingPasswordActivity_.super.showToast(this.f34226a);
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34228a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34228a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountSettingPasswordActivity_.super.H0(this.f34228a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34230a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f34231b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, String str3, String str4) {
            super(str, j4, str2);
            this.f34230a = str3;
            this.f34231b = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountSettingPasswordActivity_.super.G0(this.f34230a, this.f34231b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class g extends org.androidannotations.api.builder.a<g> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34233a;

        public g(Context context) {
            super(context, MyAccountSettingPasswordActivity_.class);
        }

        public g a(AccountBean accountBean) {
            return (g) super.extra("accountBean", accountBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34233a;
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

        public g(Fragment fragment) {
            super(fragment.getActivity(), MyAccountSettingPasswordActivity_.class);
            this.f34233a = fragment;
        }
    }

    public static g N0(Context context) {
        return new g(context);
    }

    public static g O0(Fragment fragment) {
        return new g(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("accountBean")) {
            return;
        }
        this.f34217g = (AccountBean) extras.getSerializable("accountBean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountSettingPasswordActivity
    public void F0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountSettingPasswordActivity
    public void G0(String str, String str2) {
        org.androidannotations.api.a.l(new f("", 0L, "", str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountSettingPasswordActivity
    public void H0(String str) {
        org.androidannotations.api.a.l(new e("", 0L, "", str));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34222k.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34221j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.setting_password_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34211a = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f34212b = (Button) aVar.internalFindViewById(R.id.settingButn);
        this.f34213c = (LinearLayout) aVar.internalFindViewById(R.id.layoutTop);
        this.f34214d = (EditText) aVar.internalFindViewById(R.id.recentPassword);
        this.f34215e = (EditText) aVar.internalFindViewById(R.id.password);
        this.f34216f = (EditText) aVar.internalFindViewById(R.id.repeatPassword);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        Button button = this.f34212b;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34222k.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34221j.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountSettingPasswordActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34221j.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34221j.a(this);
    }
}
