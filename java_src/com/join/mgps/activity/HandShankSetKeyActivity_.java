package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class HandShankSetKeyActivity_ extends HandShankSetKeyActivity implements g3.a, i3.a, i3.b {

    /* renamed from: y  reason: collision with root package name */
    public static final String f32533y = "from";

    /* renamed from: w  reason: collision with root package name */
    private final i3.c f32534w = new i3.c();

    /* renamed from: x  reason: collision with root package name */
    private final Map<Class<?>, Object> f32535x = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankSetKeyActivity_.this.X0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankSetKeyActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankSetKeyActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32539a;

        public d(Context context) {
            super(context, HandShankSetKeyActivity_.class);
        }

        public d a(String str) {
            return (d) super.extra("from", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32539a;
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
            super(fragment.getActivity(), HandShankSetKeyActivity_.class);
            this.f32539a = fragment;
        }
    }

    public static d c1(Context context) {
        return new d(context);
    }

    public static d d1(Fragment fragment) {
        return new d(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("from")) {
            return;
        }
        this.f32521s = extras.getString("from");
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32535x.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32534w);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.handshank_set_key);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32507e = (Button) aVar.internalFindViewById(R.id.f17866l2);
        this.f32508f = (Button) aVar.internalFindViewById(R.id.f17865l1);
        this.f32509g = (Button) aVar.internalFindViewById(R.id.f17872r2);
        this.f32510h = (Button) aVar.internalFindViewById(R.id.f17871r1);
        this.f32511i = (Button) aVar.internalFindViewById(R.id.up);
        this.f32512j = (Button) aVar.internalFindViewById(R.id.left);
        this.f32513k = (Button) aVar.internalFindViewById(R.id.right);
        this.f32514l = (Button) aVar.internalFindViewById(R.id.down);
        this.f32515m = (Button) aVar.internalFindViewById(R.id.select);
        this.f32516n = (Button) aVar.internalFindViewById(R.id.start);
        this.f32517o = (Button) aVar.internalFindViewById(R.id.f17877x);
        this.f32518p = (Button) aVar.internalFindViewById(R.id.f17878y);
        this.f32519q = (Button) aVar.internalFindViewById(R.id.f17848a);
        this.f32520r = (Button) aVar.internalFindViewById(R.id.f17850b);
        View internalFindViewById = aVar.internalFindViewById(R.id.okButn);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.resetButn);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.backImage);
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
        this.f32535x.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32534w.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32534w.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32534w.a(this);
    }
}
