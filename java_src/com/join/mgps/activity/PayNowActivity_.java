package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class PayNowActivity_ extends PayNowActivity implements g3.a, i3.a, i3.b {

    /* renamed from: x0  reason: collision with root package name */
    public static final String f34915x0 = "order";

    /* renamed from: y0  reason: collision with root package name */
    public static final String f34916y0 = "intentDataMain";

    /* renamed from: z0  reason: collision with root package name */
    public static final String f34917z0 = "extBean";

    /* renamed from: t0  reason: collision with root package name */
    private final i3.c f34918t0 = new i3.c();

    /* renamed from: u0  reason: collision with root package name */
    private final Map<Class<?>, Object> f34919u0 = new HashMap();

    /* renamed from: v0  reason: collision with root package name */
    private final IntentFilter f34920v0 = new IntentFilter();

    /* renamed from: w0  reason: collision with root package name */
    private final BroadcastReceiver f34921w0 = new b();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PayNowActivity_.super.checkToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PayNowActivity_.this.e1(intent);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.ok();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.f1();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.d1();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    public static class k extends org.androidannotations.api.builder.a<k> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34932a;

        public k(Context context) {
            super(context, PayNowActivity_.class);
        }

        public k a(ExtBean extBean) {
            return (k) super.extra("extBean", extBean);
        }

        public k b(IntentDataMain intentDataMain) {
            return (k) super.extra("intentDataMain", intentDataMain);
        }

        public k c(PapayOrder papayOrder) {
            return (k) super.extra(PayNowActivity_.f34915x0, papayOrder);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34932a;
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

        public k(Fragment fragment) {
            super(fragment.getActivity(), PayNowActivity_.class);
            this.f34932a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        this.f34900t = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        this.f34920v0.addAction(f1.a.K);
        registerReceiver(this.f34921w0, this.f34920v0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(f34915x0)) {
                this.f34901u = (PapayOrder) extras.getSerializable(f34915x0);
            }
            if (extras.containsKey("intentDataMain")) {
                this.f34902v = (IntentDataMain) extras.getSerializable("intentDataMain");
            }
            if (extras.containsKey("extBean")) {
                this.f34903w = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    public static k j1(Context context) {
        return new k(context);
    }

    public static k k1(Fragment fragment) {
        return new k(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PayNowActivity
    public void checkToken() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34919u0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34918t0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_pay_now);
    }

    @Override // com.join.mgps.activity.PayNowActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f34921w0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34881a = (LinearLayout) aVar.internalFindViewById(R.id.papa_pay);
        this.f34882b = (TextView) aVar.internalFindViewById(R.id.payTitle);
        this.f34883c = (LinearLayout) aVar.internalFindViewById(R.id.payDefault);
        this.f34884d = (HorizontalScrollView) aVar.internalFindViewById(R.id.payChoisePayType);
        this.f34885e = (LinearLayout) aVar.internalFindViewById(R.id.payLoding);
        this.f34886f = (TextView) aVar.internalFindViewById(R.id.payProduct);
        this.f34887g = (TextView) aVar.internalFindViewById(R.id.payMoney);
        this.f34888h = (TextView) aVar.internalFindViewById(R.id.anotherPayType);
        this.f34889i = (Button) aVar.internalFindViewById(R.id.ok);
        this.f34890j = (ImageView) aVar.internalFindViewById(R.id.weichatPay);
        this.f34891k = (ImageView) aVar.internalFindViewById(R.id.aliPay);
        this.f34892l = (ImageView) aVar.internalFindViewById(R.id.unionpay);
        this.f34893m = (ImageView) aVar.internalFindViewById(R.id.creditCardPay);
        this.f34894n = (LinearLayout) aVar.internalFindViewById(R.id.layoutPabiPay);
        this.f34895o = (LinearLayout) aVar.internalFindViewById(R.id.layouthongbaoPay);
        this.f34896p = (LinearLayout) aVar.internalFindViewById(R.id.layoutWeixin);
        this.f34897q = (LinearLayout) aVar.internalFindViewById(R.id.layoutAlipay);
        this.f34898r = (LinearLayout) aVar.internalFindViewById(R.id.layoutUnionpay);
        this.f34899s = (LinearLayout) aVar.internalFindViewById(R.id.layoutCreditCardPay);
        View internalFindViewById = aVar.internalFindViewById(R.id.pabiPay);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.hongbaoPay);
        TextView textView = this.f34888h;
        if (textView != null) {
            textView.setOnClickListener(new c());
        }
        Button button = this.f34889i;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        ImageView imageView = this.f34890j;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        ImageView imageView2 = this.f34891k;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new f());
        }
        ImageView imageView3 = this.f34892l;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new g());
        }
        ImageView imageView4 = this.f34893m;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new h());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new i());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new j());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34919u0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34918t0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34918t0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34918t0.a(this);
    }
}
