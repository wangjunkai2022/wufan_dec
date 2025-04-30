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
import com.join.mgps.customview.CopyTextViewNew;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class ForumPostsCopyActivity_ extends ForumPostsCopyActivity implements g3.a, i3.a, i3.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f30310f = "extBean";

    /* renamed from: d  reason: collision with root package name */
    private final i3.c f30311d = new i3.c();

    /* renamed from: e  reason: collision with root package name */
    private final Map<Class<?>, Object> f30312e = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsCopyActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    public static class b extends org.androidannotations.api.builder.a<b> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30314a;

        public b(Context context) {
            super(context, ForumPostsCopyActivity_.class);
        }

        public b a(String str) {
            return (b) super.extra("extBean", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30314a;
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
            super(fragment.getActivity(), ForumPostsCopyActivity_.class);
            this.f30314a = fragment;
        }
    }

    public static b D0(Context context) {
        return new b(context);
    }

    public static b E0(Fragment fragment) {
        return new b(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        supportRequestWindowFeature(10);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.f30309c = extras.getString("extBean");
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f30312e.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f30311d);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_post_copy_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30307a = (CopyTextViewNew) aVar.internalFindViewById(R.id.forum_post_message);
        this.f30308b = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f30312e.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f30311d.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f30311d.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f30311d.a(this);
    }
}
