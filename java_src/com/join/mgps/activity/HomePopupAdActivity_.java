package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EverdayLogin;
import java.util.HashMap;
import java.util.Map;
import me.relex.circleindicator.CircleIndicator;
/* loaded from: classes3.dex */
public final class HomePopupAdActivity_ extends HomePopupAdActivity implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    public static final String f32694s = "adJson";

    /* renamed from: t  reason: collision with root package name */
    public static final String f32695t = "everdayLogin";

    /* renamed from: u  reason: collision with root package name */
    public static final String f32696u = "isFromAccountCenter";

    /* renamed from: o  reason: collision with root package name */
    private final i3.c f32697o = new i3.c();

    /* renamed from: p  reason: collision with root package name */
    private final Map<Class<?>, Object> f32698p = new HashMap();

    /* renamed from: q  reason: collision with root package name */
    private final IntentFilter f32699q = new IntentFilter();

    /* renamed from: r  reason: collision with root package name */
    private final BroadcastReceiver f32700r = new a();

    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HomePopupAdActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HomePopupAdActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32703a;

        public c(Context context) {
            super(context, HomePopupAdActivity_.class);
        }

        public c a(String str) {
            return (c) super.extra("adJson", str);
        }

        public c b(EverdayLogin everdayLogin) {
            return (c) super.extra("everdayLogin", everdayLogin);
        }

        public c c(boolean z3) {
            return (c) super.extra("isFromAccountCenter", z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32703a;
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
            super(fragment.getActivity(), HomePopupAdActivity_.class);
            this.f32703a = fragment;
        }
    }

    public static c K0(Context context) {
        return new c(context);
    }

    public static c L0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.f32699q.addAction(f1.a.A);
        registerReceiver(this.f32700r, this.f32699q);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("adJson")) {
                this.f32669d = extras.getString("adJson");
            }
            if (extras.containsKey("everdayLogin")) {
                this.f32670e = (EverdayLogin) extras.getSerializable("everdayLogin");
            }
            if (extras.containsKey("isFromAccountCenter")) {
                this.f32671f = extras.getBoolean("isFromAccountCenter");
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32698p.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32697o);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.home_popup_ad_activity);
    }

    @Override // com.join.mgps.activity.HomePopupAdActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f32700r);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32666a = (SimpleDraweeView) aVar.internalFindViewById(R.id.more);
        this.f32667b = (MultiTouchViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f32668c = (CircleIndicator) aVar.internalFindViewById(R.id.indicator);
        View internalFindViewById = aVar.internalFindViewById(R.id.parentLayout);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32698p.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32697o.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32697o.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32697o.a(this);
    }
}
