package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class GameAndProfileActivity_ extends GameAndProfileActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p  reason: collision with root package name */
    public static final String f30932p = "type";

    /* renamed from: q  reason: collision with root package name */
    public static final String f30933q = "uid";

    /* renamed from: n  reason: collision with root package name */
    private final i3.c f30934n = new i3.c();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Class<?>, Object> f30935o = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameAndProfileActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameAndProfileActivity_.this.iv_back();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30938a;

        public c(Context context) {
            super(context, GameAndProfileActivity_.class);
        }

        public c a(int i2) {
            return (c) super.extra("type", i2);
        }

        public c b(int i2) {
            return (c) super.extra("uid", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30938a;
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
            super(fragment.getActivity(), GameAndProfileActivity_.class);
            this.f30938a = fragment;
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
            if (extras.containsKey("type")) {
                this.f30924g = extras.getInt("type");
            }
            if (extras.containsKey("uid")) {
                this.f30925h = extras.getInt("uid");
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f30935o.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f30934n);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_and_profile);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30918a = (SlidingTabLayout) aVar.internalFindViewById(R.id.tableLayout);
        this.f30919b = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f30920c = (LinearLayout) aVar.internalFindViewById(R.id.iv_back);
        this.f30921d = (RelativeLayout) aVar.internalFindViewById(R.id.tv_back);
        this.f30922e = (TextView) aVar.internalFindViewById(R.id.tv_buildGmae);
        this.f30923f = (TextView) aVar.internalFindViewById(R.id.title);
        TextView textView = this.f30922e;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        LinearLayout linearLayout = this.f30920c;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new b());
        }
        D0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f30935o.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f30934n.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f30934n.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f30934n.a(this);
    }
}
