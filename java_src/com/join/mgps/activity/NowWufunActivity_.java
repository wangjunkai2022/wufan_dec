package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class NowWufunActivity_ extends NowWufunActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p  reason: collision with root package name */
    public static final String f34424p = "fromTo";

    /* renamed from: l  reason: collision with root package name */
    private final i3.c f34425l = new i3.c();

    /* renamed from: m  reason: collision with root package name */
    private final Map<Class<?>, Object> f34426m = new HashMap();

    /* renamed from: n  reason: collision with root package name */
    private final IntentFilter f34427n = new IntentFilter();

    /* renamed from: o  reason: collision with root package name */
    private final BroadcastReceiver f34428o = new a();

    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NowWufunActivity_.this.I0(intent);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NowWufunActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NowWufunActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NowWufunActivity_.this.D0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NowWufunActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NowWufunActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NowWufunActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    public static class h extends org.androidannotations.api.builder.a<h> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34436a;

        public h(Context context) {
            super(context, NowWufunActivity_.class);
        }

        public h a(int i2) {
            return (h) super.extra(NowWufunActivity_.f34424p, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34436a;
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
            super(fragment.getActivity(), NowWufunActivity_.class);
            this.f34436a = fragment;
        }
    }

    public static h O0(Context context) {
        return new h(context);
    }

    public static h P0(Fragment fragment) {
        return new h(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.f34427n.addAction("com.intent.nowwufun.everdaytab");
        registerReceiver(this.f34428o, this.f34427n);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(f34424p)) {
            return;
        }
        this.f34413a = extras.getInt(f34424p);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34426m.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34425l);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.now_wufun_activity_layout);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f34428o);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34414b = (FrameLayout) aVar.internalFindViewById(R.id.fragmentLayout);
        this.f34415c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34416d = (TextView) aVar.internalFindViewById(R.id.nowWufun);
        this.f34417e = (TextView) aVar.internalFindViewById(R.id.everdayFind);
        this.f34418f = (TextView) aVar.internalFindViewById(R.id.broadcast);
        this.f34419g = (TextView) aVar.internalFindViewById(R.id.todayNew);
        this.f34420h = (TextView) aVar.internalFindViewById(R.id.tallk);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        TextView textView = this.f34416d;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        TextView textView2 = this.f34417e;
        if (textView2 != null) {
            textView2.setOnClickListener(new c());
        }
        TextView textView3 = this.f34418f;
        if (textView3 != null) {
            textView3.setOnClickListener(new d());
        }
        TextView textView4 = this.f34419g;
        if (textView4 != null) {
            textView4.setOnClickListener(new e());
        }
        TextView textView5 = this.f34420h;
        if (textView5 != null) {
            textView5.setOnClickListener(new f());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new g());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34426m.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34425l.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34425l.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34425l.a(this);
    }
}
