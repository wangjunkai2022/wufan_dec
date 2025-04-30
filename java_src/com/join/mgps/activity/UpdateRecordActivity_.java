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
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class UpdateRecordActivity_ extends UpdateRecordActivity implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    public static final String f36001g = "updateRecord";

    /* renamed from: e  reason: collision with root package name */
    private final i3.c f36002e = new i3.c();

    /* renamed from: f  reason: collision with root package name */
    private final Map<Class<?>, Object> f36003f = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UpdateRecordActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    public static class b extends org.androidannotations.api.builder.a<b> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36005a;

        public b(Context context) {
            super(context, UpdateRecordActivity_.class);
        }

        public b a(String str) {
            return (b) super.extra(UpdateRecordActivity_.f36001g, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36005a;
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
            super(fragment.getActivity(), UpdateRecordActivity_.class);
            this.f36005a = fragment;
        }
    }

    public static b E0(Context context) {
        return new b(context);
    }

    public static b F0(Fragment fragment) {
        return new b(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(f36001g)) {
            return;
        }
        this.f36000c = extras.getString(f36001g);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36003f.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36002e);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.update_record_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35998a = (TextView) aVar.internalFindViewById(R.id.webView);
        this.f35999b = (TextView) aVar.internalFindViewById(R.id.title_textview);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36003f.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36002e.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36002e.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36002e.a(this);
    }
}
