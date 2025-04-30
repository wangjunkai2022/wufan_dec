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
import com.join.mgps.dto.PapayResult;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class PapayFinishActivity_ extends PapayFinishActivity implements g3.a, i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    public static final String f34841m = "papayResult";

    /* renamed from: n  reason: collision with root package name */
    public static final String f34842n = "vipRechargeSuccess";

    /* renamed from: k  reason: collision with root package name */
    private final i3.c f34843k = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f34844l = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapayFinishActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapayFinishActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34847a;

        public c(Context context) {
            super(context, PapayFinishActivity_.class);
        }

        public c a(PapayResult papayResult) {
            return (c) super.extra("papayResult", papayResult);
        }

        public c b(boolean z3) {
            return (c) super.extra(PapayFinishActivity_.f34842n, z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34847a;
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

        public c(Fragment fragment) {
            super(fragment.getActivity(), PapayFinishActivity_.class);
            this.f34847a = fragment;
        }
    }

    public static c F0(Context context) {
        return new c(context);
    }

    public static c G0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("papayResult")) {
                this.f34839i = (PapayResult) extras.getSerializable("papayResult");
            }
            if (extras.containsKey(f34842n)) {
                this.f34840j = extras.getBoolean(f34842n);
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34844l.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34843k);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_papay_finish);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34831a = (TextView) aVar.internalFindViewById(R.id.userName);
        this.f34832b = (TextView) aVar.internalFindViewById(R.id.pabiNumber);
        this.f34833c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34834d = (TextView) aVar.internalFindViewById(R.id.vipRecharge);
        this.f34835e = (ImageView) aVar.internalFindViewById(R.id.imageSuccessOrFailed);
        this.f34836f = (Button) aVar.internalFindViewById(R.id.backButn);
        this.f34837g = (TextView) aVar.internalFindViewById(R.id.orderid);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        Button button = this.f34836f;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34844l.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34843k.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34843k.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34843k.a(this);
    }
}
