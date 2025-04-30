package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class BuildQRCodeActivity_ extends BuildQRCodeActivity implements g3.a, i3.a, i3.b {
    public static final String D = "ssid";
    private final i3.c B = new i3.c();
    private final Map<Class<?>, Object> C = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BuildQRCodeActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BuildQRCodeActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28448a;

        public c(Context context) {
            super(context, BuildQRCodeActivity_.class);
        }

        public c a(String str) {
            return (c) super.extra(BuildQRCodeActivity_.D, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28448a;
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
            super(fragment.getActivity(), BuildQRCodeActivity_.class);
            this.f28448a = fragment;
        }
    }

    public static c X0(Context context) {
        return new c(context);
    }

    public static c Y0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f28424f = resources.getString(R.string.title_build_qr_code);
        this.f28437s = resources.getString(R.string.hint_msg_creating_ap_wifi);
        this.f28438t = resources.getString(R.string.hint_msg_create_ap_wifi_failed);
        injectExtras_();
        P0();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(D)) {
            return;
        }
        this.f28441w = extras.getString(D);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.BuildQRCodeActivity
    public void L0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.C.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.B);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_build_qr_code);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28422d = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f28423e = (RelativeLayout) aVar.internalFindViewById(R.id.build_qr_code_title);
        this.f28425g = (ViewStub) aVar.internalFindViewById(R.id.qr_code_vstub);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        Q0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.C.put(cls, t3);
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.B.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.B.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.B.a(this);
    }
}
