package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.IntentDataMain;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class PayStartActivity_ extends PayStartActivity implements g3.a, i3.a, i3.b {

    /* renamed from: t  reason: collision with root package name */
    public static final String f34954t = "accountBean";

    /* renamed from: u  reason: collision with root package name */
    public static final String f34955u = "intentDataMain";

    /* renamed from: r  reason: collision with root package name */
    private final i3.c f34956r = new i3.c();

    /* renamed from: s  reason: collision with root package name */
    private final Map<Class<?>, Object> f34957s = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayStartActivity_.this.V0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayStartActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayStartActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayStartActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayStartActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PayStartActivity_.super.S0();
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
                PayStartActivity_.super.N0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class h extends org.androidannotations.api.builder.a<h> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34965a;

        public h(Context context) {
            super(context, PayStartActivity_.class);
        }

        public h a(AccountBean accountBean) {
            return (h) super.extra("accountBean", accountBean);
        }

        public h b(IntentDataMain intentDataMain) {
            return (h) super.extra("intentDataMain", intentDataMain);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34965a;
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

        public h(Fragment fragment) {
            super(fragment.getActivity(), PayStartActivity_.class);
            this.f34965a = fragment;
        }
    }

    public static h Y0(Context context) {
        return new h(context);
    }

    public static h Z0(Fragment fragment) {
        return new h(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("accountBean")) {
                this.f34943k = (AccountBean) extras.getSerializable("accountBean");
            }
            if (extras.containsKey("intentDataMain")) {
                this.f34944l = (IntentDataMain) extras.getSerializable("intentDataMain");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PayStartActivity
    public void N0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PayStartActivity
    public void S0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34957s.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34956r);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_pay_start);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34933a = (Button) aVar.internalFindViewById(R.id.startPay);
        this.f34934b = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34935c = (FlowLayout) aVar.internalFindViewById(R.id.papa_top_layout);
        this.f34936d = (TextView) aVar.internalFindViewById(R.id.papa_top_number);
        this.f34937e = (TextView) aVar.internalFindViewById(R.id.papaTopPriceBig);
        this.f34938f = (TextView) aVar.internalFindViewById(R.id.papa_top_oto);
        this.f34939g = (ImageView) aVar.internalFindViewById(R.id.checkBoxPay);
        this.f34941i = (TextView) aVar.internalFindViewById(R.id.showPrice);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.readMsg);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.openTalk);
        Button button = this.f34933a;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new c());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new d());
        }
        ImageView imageView = this.f34939g;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34957s.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34956r.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34956r.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34956r.a(this);
    }
}
