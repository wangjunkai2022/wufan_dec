package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class UpdateLodingActivity_ extends UpdateLodingActivity implements g3.a, i3.a, i3.b {

    /* renamed from: z  reason: collision with root package name */
    public static final String f35992z = "updateIntentDataBean";

    /* renamed from: x  reason: collision with root package name */
    private final i3.c f35993x = new i3.c();

    /* renamed from: y  reason: collision with root package name */
    private final Map<Class<?>, Object> f35994y = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UpdateLodingActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    public static class b extends org.androidannotations.api.builder.a<b> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35996a;

        public b(Context context) {
            super(context, UpdateLodingActivity_.class);
        }

        public b a(UpdateIntentDataBean updateIntentDataBean) {
            return (b) super.extra("updateIntentDataBean", updateIntentDataBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35996a;
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
            super(fragment.getActivity(), UpdateLodingActivity_.class);
            this.f35996a = fragment;
        }
    }

    public static b M0(Context context) {
        return new b(context);
    }

    public static b N0(Fragment fragment) {
        return new b(fragment);
    }

    private void init_(Bundle bundle) {
        this.f35956e = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("updateIntentDataBean")) {
            return;
        }
        this.f35957f = (UpdateIntentDataBean) extras.getSerializable("updateIntentDataBean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UpdateLodingActivity
    public void J0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35994y.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35993x);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.update_loding_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35952a = (ImageView) aVar.internalFindViewById(R.id.lodingBackImage);
        this.f35953b = (ProgressBar) aVar.internalFindViewById(R.id.progressBar);
        this.f35954c = (TextView) aVar.internalFindViewById(R.id.progressmessage);
        this.f35955d = (ProgressBar) aVar.internalFindViewById(R.id.uZIPLoading);
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35994y.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35993x.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35993x.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35993x.a(this);
    }
}
