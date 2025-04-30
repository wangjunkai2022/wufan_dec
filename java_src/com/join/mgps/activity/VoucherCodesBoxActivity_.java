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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class VoucherCodesBoxActivity_ extends VoucherCodesBoxActivity implements g3.a, i3.a, i3.b {

    /* renamed from: l  reason: collision with root package name */
    public static final String f36115l = "Uid";

    /* renamed from: m  reason: collision with root package name */
    public static final String f36116m = "index";

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f36117j = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f36118k = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VoucherCodesBoxActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VoucherCodesBoxActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36121a;

        public c(Context context) {
            super(context, VoucherCodesBoxActivity_.class);
        }

        public c a(int i2) {
            return (c) super.extra("Uid", i2);
        }

        public c b(int i2) {
            return (c) super.extra("index", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36121a;
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
            super(fragment.getActivity(), VoucherCodesBoxActivity_.class);
            this.f36121a = fragment;
        }
    }

    public static c G0(Context context) {
        return new c(context);
    }

    public static c H0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("Uid")) {
                this.f36105a = extras.getInt("Uid");
            }
            if (extras.containsKey("index")) {
                this.f36106b = extras.getInt("index");
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36118k.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36117j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_voucher_codesbox);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36107c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f36108d = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f36109e = (TabPageIndicator) aVar.internalFindViewById(R.id.pageIndicator);
        this.f36110f = (TextView) aVar.internalFindViewById(R.id.textTopRight);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        TextView textView = this.f36110f;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36118k.put(cls, t3);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36117j.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36117j.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36117j.a(this);
    }
}
