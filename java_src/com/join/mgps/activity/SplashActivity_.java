package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ThAdSwitchDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class SplashActivity_ extends SplashActivity implements g3.a, i3.a, i3.b {
    public static final String F = "thAdSwitchDataBean";
    private final i3.c D = new i3.c();
    private final Map<Class<?>, Object> E = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashActivity_.super.C();
        }
    }

    /* loaded from: classes3.dex */
    public static class b extends org.androidannotations.api.builder.a<b> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35785a;

        public b(Context context) {
            super(context, SplashActivity_.class);
        }

        public b a(ThAdSwitchDataBean thAdSwitchDataBean) {
            return (b) super.extra(SplashActivity_.F, thAdSwitchDataBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35785a;
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

        public b(Fragment fragment) {
            super(fragment.getActivity(), SplashActivity_.class);
            this.f35785a = fragment;
        }
    }

    private void F(Bundle bundle) {
        Resources resources = getResources();
        this.f35750f = new PrefDef_(this);
        i3.c.b(this);
        this.f35754j = resources.getString(R.string.net_excption);
        this.f35755k = resources.getString(R.string.connect_server_excption);
        G();
    }

    private void G() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(F)) {
            return;
        }
        this.f35756l = (ThAdSwitchDataBean) extras.getSerializable(F);
    }

    public static b H(Context context) {
        return new b(context);
    }

    public static b I(Fragment fragment) {
        return new b(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SplashActivity
    public void C() {
        org.androidannotations.api.b.e("", new a(), 100L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.E.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.activity.SplashActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.D);
        F(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.splash_main_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35745a = (FrameLayout) aVar.internalFindViewById(R.id.main);
        this.f35757m = (ImageView) aVar.internalFindViewById(R.id.splash_holder);
        this.f35758n = (TextView) aVar.internalFindViewById(R.id.skip_view);
        h();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.E.put(cls, t3);
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.D.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        G();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.D.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.D.a(this);
    }
}
