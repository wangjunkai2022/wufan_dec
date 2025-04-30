package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.PapayResult;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class PayFinishActivity_ extends PayFinishActivity implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    public static final String f34867g = "papayResult";

    /* renamed from: e  reason: collision with root package name */
    private final i3.c f34868e = new i3.c();

    /* renamed from: f  reason: collision with root package name */
    private final Map<Class<?>, Object> f34869f = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayFinishActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayFinishActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34872a;

        c(String str) {
            this.f34872a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            PayFinishActivity_.super.H0(this.f34872a);
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34874a;

        public d(Context context) {
            super(context, PayFinishActivity_.class);
        }

        public d a(PapayResult papayResult) {
            return (d) super.extra("papayResult", papayResult);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34874a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), PayFinishActivity_.class);
            this.f34874a = fragment;
        }
    }

    public static d J0(Context context) {
        return new d(context);
    }

    public static d K0(Fragment fragment) {
        return new d(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("papayResult")) {
            return;
        }
        this.f34861a = (PapayResult) extras.getSerializable("papayResult");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PayFinishActivity
    public void H0(String str) {
        org.androidannotations.api.b.e("", new c(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34869f.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34868e);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.payfinish_activirty);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        View internalFindViewById = aVar.internalFindViewById(R.id.closed);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.downButn);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34869f.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34868e.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34868e.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34868e.a(this);
    }
}
