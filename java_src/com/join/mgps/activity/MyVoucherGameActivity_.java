package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyVoucherGameActivity_ extends MyVoucherGameActivity implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    public static final String f34351q = "mVoucher";

    /* renamed from: o  reason: collision with root package name */
    private final i3.c f34352o = new i3.c();

    /* renamed from: p  reason: collision with root package name */
    private final Map<Class<?>, Object> f34353p = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyVoucherGameActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyVoucherGameActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyVoucherGameActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyVoucherGameActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMyVoucherGameBean f34358a;

        e(ResultMyVoucherGameBean resultMyVoucherGameBean) {
            this.f34358a = resultMyVoucherGameBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyVoucherGameActivity_.super.P0(this.f34358a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyVoucherGameActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyVoucherGameActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyVoucherGameActivity_.super.L0();
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
                MyVoucherGameActivity_.super.F0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34364a;

        public j(Context context) {
            super(context, MyVoucherGameActivity_.class);
        }

        public j a(AccountVoucher accountVoucher) {
            return (j) super.extra(MyVoucherGameActivity_.f34351q, accountVoucher);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34364a;
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
            super(fragment.getActivity(), MyVoucherGameActivity_.class);
            this.f34364a = fragment;
        }
    }

    public static j X0(Context context) {
        return new j(context);
    }

    public static j Y0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(f34351q)) {
            return;
        }
        this.f34346l = (AccountVoucher) extras.getSerializable(f34351q);
    }

    @Override // com.join.mgps.activity.MyVoucherGameActivity, com.join.mgps.baseactivity.BaseLoadingActivity
    public void F0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyVoucherGameActivity
    public void L0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyVoucherGameActivity
    public void M0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyVoucherGameActivity
    public void O0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyVoucherGameActivity
    public void P0(ResultMyVoucherGameBean resultMyVoucherGameBean) {
        org.androidannotations.api.b.e("", new e(resultMyVoucherGameBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34353p.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34352o);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_my_voucher_game);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34338d = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34339e = (TextView) aVar.internalFindViewById(R.id.gamrVoucherNumber);
        this.f34340f = (LinearLayout) aVar.internalFindViewById(R.id.voucherGameDetail);
        this.f34341g = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f34344j = (TextView) aVar.internalFindViewById(R.id.textTopRight);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        LinearLayout linearLayout = this.f34340f;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new b());
        }
        TextView textView = this.f34344j;
        if (textView != null) {
            textView.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34353p.put(cls, t3);
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34352o.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyVoucherGameActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34352o.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34352o.a(this);
    }
}
