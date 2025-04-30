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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class CloudBackupsDetialActivity_ extends CloudBackupsDetialActivity implements g3.a, i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    public static final String f28701m = "bean";

    /* renamed from: k  reason: collision with root package name */
    private final i3.c f28702k = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f28703l = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudBackupsDetialActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudBackupsDetialActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudBackupsDetialActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28707a;

        public d(Context context) {
            super(context, CloudBackupsDetialActivity_.class);
        }

        public d a(CloudBackupsCanUseBean cloudBackupsCanUseBean) {
            return (d) super.extra("bean", cloudBackupsCanUseBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28707a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), CloudBackupsDetialActivity_.class);
            this.f28707a = fragment;
        }
    }

    public static d G0(Context context) {
        return new d(context);
    }

    public static d H0(Fragment fragment) {
        return new d(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("bean")) {
            return;
        }
        this.f28691a = (CloudBackupsCanUseBean) extras.getSerializable("bean");
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28703l.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28702k);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.cloud_backups_detial_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28692b = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f28693c = (TextView) aVar.internalFindViewById(R.id.phoneType);
        this.f28694d = (TextView) aVar.internalFindViewById(R.id.timeText);
        this.f28695e = (TextView) aVar.internalFindViewById(R.id.gamelistnumber);
        this.f28696f = (TextView) aVar.internalFindViewById(R.id.gameHostoryNumber);
        this.f28697g = (TextView) aVar.internalFindViewById(R.id.gameKeySetNumber);
        View internalFindViewById = aVar.internalFindViewById(R.id.recoder);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.deletbutn);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new c());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28703l.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28702k.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28702k.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28702k.a(this);
    }
}
