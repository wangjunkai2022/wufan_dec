package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class PapaPlugGuideActivity_ extends PapaPlugGuideActivity implements g3.a, i3.a, i3.b {

    /* renamed from: k  reason: collision with root package name */
    public static final String f34824k = "from";

    /* renamed from: l  reason: collision with root package name */
    public static final String f34825l = "gameId";

    /* renamed from: i  reason: collision with root package name */
    private final i3.c f34826i = new i3.c();

    /* renamed from: j  reason: collision with root package name */
    private final Map<Class<?>, Object> f34827j = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaPlugGuideActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaPlugGuideActivity_.super.G0();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34830a;

        public c(Context context) {
            super(context, PapaPlugGuideActivity_.class);
        }

        public c a(int i2) {
            return (c) super.extra("from", i2);
        }

        public c b(String str) {
            return (c) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34830a;
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
            super(fragment.getActivity(), PapaPlugGuideActivity_.class);
            this.f34830a = fragment;
        }
    }

    public static c I0(Context context) {
        return new c(context);
    }

    public static c J0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        this.f34820e = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("from")) {
                this.f34821f = extras.getInt("from");
            }
            if (extras.containsKey("gameId")) {
                this.f34822g = extras.getString("gameId");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaPlugGuideActivity
    public void G0() {
        org.androidannotations.api.b.e("", new b(), 1000L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34827j.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34826i);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.papa_plug_guide_notice_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34816a = (SimpleDraweeView) aVar.internalFindViewById(R.id.guideImage);
        this.f34817b = (TextView) aVar.internalFindViewById(R.id.iKnow);
        this.f34818c = (TextView) aVar.internalFindViewById(R.id.describe);
        this.f34819d = (TextView) aVar.internalFindViewById(R.id.describe2);
        TextView textView = this.f34817b;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34827j.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34826i.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34826i.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34826i.a(this);
    }
}
