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
import com.join.mgps.customview.LJWebView;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class ArenaWebViewActivity_ extends ArenaWebViewActivity implements g3.a, i3.a, i3.b {

    /* renamed from: e  reason: collision with root package name */
    public static final String f28397e = "url";

    /* renamed from: c  reason: collision with root package name */
    private final i3.c f28398c = new i3.c();

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, Object> f28399d = new HashMap();

    /* loaded from: classes3.dex */
    public static class a extends org.androidannotations.api.builder.a<a> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28400a;

        public a(Context context) {
            super(context, ArenaWebViewActivity_.class);
        }

        public a a(String str) {
            return (a) super.extra("url", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28400a;
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

        public a(Fragment fragment) {
            super(fragment.getActivity(), ArenaWebViewActivity_.class);
            this.f28400a = fragment;
        }
    }

    public static a F0(Context context) {
        return new a(context);
    }

    public static a G0(Fragment fragment) {
        return new a(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("url")) {
            return;
        }
        this.f28395b = extras.getString("url");
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28399d.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28398c);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.arena_web);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28394a = (LJWebView) aVar.internalFindViewById(R.id.web);
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28399d.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28398c.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28398c.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28398c.a(this);
    }
}
