package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class HandShankGBAActivity_ extends HandShankGBAActivity implements g3.a, i3.a, i3.b {

    /* renamed from: v  reason: collision with root package name */
    private final i3.c f32302v = new i3.c();

    /* renamed from: w  reason: collision with root package name */
    private final Map<Class<?>, Object> f32303w = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankGBAActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankGBAActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankGBAActivity_.this.d1();
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32307a;

        public d(Context context) {
            super(context, HandShankGBAActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32307a;
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
            super(fragment.getActivity(), HandShankGBAActivity_.class);
            this.f32307a = fragment;
        }
    }

    public static d g1(Context context) {
        return new d(context);
    }

    public static d h1(Fragment fragment) {
        return new d(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32303w.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32302v);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_gba_key_map);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32275d = (Button) aVar.internalFindViewById(R.id.select);
        this.f32276e = (Button) aVar.internalFindViewById(R.id.start);
        this.f32277f = (Button) aVar.internalFindViewById(R.id.turbo_b);
        this.f32278g = (Button) aVar.internalFindViewById(R.id.turbo_a);
        this.f32279h = (Button) aVar.internalFindViewById(R.id.f17864l);
        this.f32280i = (Button) aVar.internalFindViewById(R.id.f17850b);
        this.f32281j = (Button) aVar.internalFindViewById(R.id.f17848a);
        this.f32282k = (Button) aVar.internalFindViewById(R.id.f17870r);
        this.f32283l = (Button) aVar.internalFindViewById(R.id.f17866l2);
        this.f32284m = (TextView) aVar.internalFindViewById(R.id.titleText);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.okButn);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.resetButn);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32303w.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32302v.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32302v.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32302v.a(this);
    }
}
