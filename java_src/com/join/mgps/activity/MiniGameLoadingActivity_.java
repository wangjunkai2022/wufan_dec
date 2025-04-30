package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.PictureHProgress;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class MiniGameLoadingActivity_ extends MiniGameLoadingActivity implements g3.a, i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    public static final String f33733m = "gameId";

    /* renamed from: k  reason: collision with root package name */
    private final i3.c f33734k = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f33735l = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MiniGameLoadingActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MiniGameLoadingActivity_.this.back();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33738a;

        public c(Context context) {
            super(context, MiniGameLoadingActivity_.class);
        }

        public c a(String str) {
            return (c) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33738a;
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
            super(fragment.getActivity(), MiniGameLoadingActivity_.class);
            this.f33738a = fragment;
        }
    }

    public static c J0(Context context) {
        return new c(context);
    }

    public static c K0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.f33724b = extras.getString("gameId");
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33735l.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33734k);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_mini_game_loading);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33723a = aVar.internalFindViewById(R.id.statubar);
        this.f33725c = (SimpleDraweeView) aVar.internalFindViewById(R.id.sdv_image);
        this.f33726d = (TextView) aVar.internalFindViewById(R.id.tv_name);
        this.f33727e = (TextView) aVar.internalFindViewById(R.id.tv_loading_progress);
        this.f33728f = (TextView) aVar.internalFindViewById(R.id.tv_speed);
        this.f33729g = (TextView) aVar.internalFindViewById(R.id.tv_cancel);
        this.f33730h = (PictureHProgress) aVar.internalFindViewById(R.id.pb_progress);
        this.f33731i = (LinearLayout) aVar.internalFindViewById(R.id.ll_back);
        TextView textView = this.f33729g;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        LinearLayout linearLayout = this.f33731i;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33735l.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33734k.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33734k.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33734k.a(this);
    }
}
