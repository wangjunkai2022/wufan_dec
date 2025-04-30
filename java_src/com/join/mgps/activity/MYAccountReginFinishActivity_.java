package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.dto.AccountBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MYAccountReginFinishActivity_ extends MYAccountReginFinishActivity implements g3.a, i3.a, i3.b {

    /* renamed from: x  reason: collision with root package name */
    public static final String f33683x = "accountBean";

    /* renamed from: y  reason: collision with root package name */
    public static final String f33684y = "fromWhere";

    /* renamed from: v  reason: collision with root package name */
    private final i3.c f33685v = new i3.c();

    /* renamed from: w  reason: collision with root package name */
    private final Map<Class<?>, Object> f33686w = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33687a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f33687a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountReginFinishActivity_.super.P0(this.f33687a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33689a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f33689a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountReginFinishActivity_.super.L0(this.f33689a);
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
            MYAccountReginFinishActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.N0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33694a;

        f(List list) {
            this.f33694a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.M0(this.f33694a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.showLodingDismis();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33699a;

        j(String str) {
            this.f33699a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.error(this.f33699a);
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
                MYAccountReginFinishActivity_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class l extends org.androidannotations.api.builder.a<l> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33702a;

        public l(Context context) {
            super(context, MYAccountReginFinishActivity_.class);
        }

        public l a(AccountBean accountBean) {
            return (l) super.extra("accountBean", accountBean);
        }

        public l b(int i2) {
            return (l) super.extra(MYAccountReginFinishActivity_.f33684y, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33702a;
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
            super(fragment.getActivity(), MYAccountReginFinishActivity_.class);
            this.f33702a = fragment;
        }
    }

    public static l a1(Context context) {
        return new l(context);
    }

    public static l b1(Fragment fragment) {
        return new l(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("accountBean")) {
                this.f33672l = (AccountBean) extras.getSerializable("accountBean");
            }
            if (extras.containsKey(f33684y)) {
                this.f33673m = extras.getInt(f33684y);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void I0() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void J0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void L0(String str) {
        org.androidannotations.api.a.l(new b("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void M0(List<String> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void N0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void O0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void P0(String str) {
        org.androidannotations.api.a.l(new a("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33686w.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33685v);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.my_account_reginfinish_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33662b = (MyGridView) aVar.internalFindViewById(R.id.chooseGridView);
        this.f33663c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f33664d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f33665e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f33666f = (ScrollView) aVar.internalFindViewById(R.id.scrollView);
        Button button = (Button) aVar.internalFindViewById(R.id.reginFinish);
        this.f33667g = button;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33686w.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33685v.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33685v.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33685v.a(this);
    }
}
