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
public final class HandShankWSCActivity_ extends HandShankWSCActivity implements g3.a, i3.a, i3.b {

    /* renamed from: y  reason: collision with root package name */
    private final i3.c f32571y = new i3.c();

    /* renamed from: z  reason: collision with root package name */
    private final Map<Class<?>, Object> f32572z = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankWSCActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankWSCActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankWSCActivity_.this.d1();
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32576a;

        public d(Context context) {
            super(context, HandShankWSCActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32576a;
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
            super(fragment.getActivity(), HandShankWSCActivity_.class);
            this.f32576a = fragment;
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
        return (T) this.f32572z.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32571y);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_wsc_key_map);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32540c = (Button) aVar.internalFindViewById(R.id.select);
        this.f32541d = (Button) aVar.internalFindViewById(R.id.start);
        this.f32542e = (Button) aVar.internalFindViewById(R.id.f17865l1);
        this.f32543f = (Button) aVar.internalFindViewById(R.id.f17866l2);
        this.f32544g = (Button) aVar.internalFindViewById(R.id.f17871r1);
        this.f32545h = (Button) aVar.internalFindViewById(R.id.f17872r2);
        this.f32546i = (Button) aVar.internalFindViewById(R.id.up);
        this.f32547j = (Button) aVar.internalFindViewById(R.id.left);
        this.f32548k = (Button) aVar.internalFindViewById(R.id.right);
        this.f32549l = (Button) aVar.internalFindViewById(R.id.down);
        this.f32550m = (Button) aVar.internalFindViewById(R.id.f17848a);
        this.f32551n = (Button) aVar.internalFindViewById(R.id.f17850b);
        this.f32552o = (Button) aVar.internalFindViewById(R.id.resetButn);
        this.f32553p = (TextView) aVar.internalFindViewById(R.id.titleText);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.okButn);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        Button button = this.f32552o;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32572z.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32571y.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32571y.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32571y.a(this);
    }
}
