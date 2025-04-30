package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class VideoSettingActivity_ extends VideoSettingActivity implements g3.a, i3.a, i3.b {

    /* renamed from: n  reason: collision with root package name */
    private final i3.c f36094n = new i3.c();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Class<?>, Object> f36095o = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    public static class h extends org.androidannotations.api.builder.a<h> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36103a;

        public h(Context context) {
            super(context, VideoSettingActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36103a;
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
            super(fragment.getActivity(), VideoSettingActivity_.class);
            this.f36103a = fragment;
        }
    }

    public static h L0(Context context) {
        return new h(context);
    }

    public static h M0(Fragment fragment) {
        return new h(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36095o.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36094n);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.video_setting_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36081a = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f36082b = aVar.internalFindViewById(R.id.videoAllNet);
        this.f36083c = aVar.internalFindViewById(R.id.videoOnlyWifi);
        this.f36084d = aVar.internalFindViewById(R.id.videoNotPlay);
        this.f36085e = (ImageView) aVar.internalFindViewById(R.id.videoAllNetSwitch);
        this.f36086f = (ImageView) aVar.internalFindViewById(R.id.videoOnlyWifiSwitch);
        this.f36087g = (ImageView) aVar.internalFindViewById(R.id.videoNotPlaySwitch);
        this.f36088h = aVar.internalFindViewById(R.id.homevideoAllNet);
        this.f36089i = aVar.internalFindViewById(R.id.homevideoOnlyWifi);
        this.f36090j = aVar.internalFindViewById(R.id.homevideoNotPlay);
        this.f36091k = (ImageView) aVar.internalFindViewById(R.id.homevideoAllNetSwitch);
        this.f36092l = (ImageView) aVar.internalFindViewById(R.id.homevideoOnlyWifiSwitch);
        this.f36093m = (ImageView) aVar.internalFindViewById(R.id.homevideoNotPlaySwitch);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View view = this.f36082b;
        if (view != null) {
            view.setOnClickListener(new a());
        }
        View view2 = this.f36083c;
        if (view2 != null) {
            view2.setOnClickListener(new b());
        }
        View view3 = this.f36084d;
        if (view3 != null) {
            view3.setOnClickListener(new c());
        }
        View view4 = this.f36088h;
        if (view4 != null) {
            view4.setOnClickListener(new d());
        }
        View view5 = this.f36089i;
        if (view5 != null) {
            view5.setOnClickListener(new e());
        }
        View view6 = this.f36090j;
        if (view6 != null) {
            view6.setOnClickListener(new f());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new g());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36095o.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36094n.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36094n.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36094n.a(this);
    }
}
