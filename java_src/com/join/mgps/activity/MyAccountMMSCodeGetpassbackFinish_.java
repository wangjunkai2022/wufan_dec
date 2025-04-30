package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyAccountMMSCodeGetpassbackFinish_ extends MyAccountMMSCodeGetpassbackFinish implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    private final i3.c f34147q = new i3.c();

    /* renamed from: r  reason: collision with root package name */
    private final Map<Class<?>, Object> f34148r = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeGetpassbackFinish_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeGetpassbackFinish_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.H0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34155a;

        g(String str) {
            this.f34155a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.error(this.f34155a);
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34157a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34157a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeGetpassbackFinish_.super.I0(this.f34157a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeGetpassbackFinish_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34160a;

        public j(Context context) {
            super(context, MyAccountMMSCodeGetpassbackFinish_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34160a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), MyAccountMMSCodeGetpassbackFinish_.class);
            this.f34160a = fragment;
        }
    }

    public static j V0(Context context) {
        return new j(context);
    }

    public static j W0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void H0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void I0(String str) {
        org.androidannotations.api.a.l(new h("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void K0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void M0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void error(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34148r.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34147q);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.my_account_regin_sendmmscode_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34127f = (EditText) aVar.internalFindViewById(R.id.mmsCode);
        this.f34128g = (TextView) aVar.internalFindViewById(R.id.phoneNumber);
        this.f34130i = (TextView) aVar.internalFindViewById(R.id.resendCode);
        Button button = (Button) aVar.internalFindViewById(R.id.sendCode);
        this.f34131j = button;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        TextView textView = this.f34130i;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34148r.put(cls, t3);
    }

    @Override // com.join.mgps.activity.BaseAccountActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34147q.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34147q.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34147q.a(this);
    }
}
