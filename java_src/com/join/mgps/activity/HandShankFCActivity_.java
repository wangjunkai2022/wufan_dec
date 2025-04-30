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
public final class HandShankFCActivity_ extends HandShankFCActivity implements g3.a, i3.a, i3.b {
    private final i3.c I = new i3.c();
    private final Map<Class<?>, Object> J = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankFCActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankFCActivity_.this.c1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankFCActivity_.this.e1();
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32273a;

        public d(Context context) {
            super(context, HandShankFCActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32273a;
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
            super(fragment.getActivity(), HandShankFCActivity_.class);
            this.f32273a = fragment;
        }
    }

    public static d h1(Context context) {
        return new d(context);
    }

    public static d i1(Fragment fragment) {
        return new d(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.J.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.I);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_fc_key_map1);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32243c = (Button) aVar.internalFindViewById(R.id.select);
        this.f32244d = (Button) aVar.internalFindViewById(R.id.start);
        this.f32245e = (Button) aVar.internalFindViewById(R.id.f17848a);
        this.f32246f = (Button) aVar.internalFindViewById(R.id.f17850b);
        this.f32247g = (Button) aVar.internalFindViewById(R.id.f17854c);
        this.f32248h = (Button) aVar.internalFindViewById(R.id.f17855d);
        this.f32249i = (Button) aVar.internalFindViewById(R.id.f17856e);
        this.f32250j = (Button) aVar.internalFindViewById(R.id.f17857f);
        this.f32251k = (Button) aVar.internalFindViewById(R.id.ab);
        this.f32252l = (Button) aVar.internalFindViewById(R.id.cd);
        this.f32253m = (Button) aVar.internalFindViewById(R.id.abc);
        this.f32254n = (Button) aVar.internalFindViewById(R.id.f17858f1);
        this.f32255o = (Button) aVar.internalFindViewById(R.id.f17859f2);
        this.f32256p = (Button) aVar.internalFindViewById(R.id.f17860f3);
        this.f32257q = (Button) aVar.internalFindViewById(R.id.f4);
        this.f32258r = (Button) aVar.internalFindViewById(R.id.sp1);
        this.f32259s = (Button) aVar.internalFindViewById(R.id.sp2);
        this.f32260t = (Button) aVar.internalFindViewById(R.id.sp3);
        this.f32261u = (Button) aVar.internalFindViewById(R.id.sp4);
        this.f32262v = (Button) aVar.internalFindViewById(R.id.sp5);
        this.f32263w = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f32264x = (Button) aVar.internalFindViewById(R.id.resetButn);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.okButn);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        Button button = this.f32264x;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.J.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.I.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.I.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.I.a(this);
    }
}
