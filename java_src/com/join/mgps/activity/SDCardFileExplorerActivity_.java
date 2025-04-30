package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class SDCardFileExplorerActivity_ extends SDCardFileExplorerActivity implements g3.a, i3.a, i3.b {

    /* renamed from: f  reason: collision with root package name */
    private final i3.c f35011f = new i3.c();

    /* renamed from: g  reason: collision with root package name */
    private final Map<Class<?>, Object> f35012g = new HashMap();

    /* loaded from: classes3.dex */
    public static class a extends org.androidannotations.api.builder.a<a> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35013a;

        public a(Context context) {
            super(context, SDCardFileExplorerActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35013a;
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

        public a(Fragment fragment) {
            super(fragment.getActivity(), SDCardFileExplorerActivity_.class);
            this.f35013a = fragment;
        }
    }

    public static a G0(Context context) {
        return new a(context);
    }

    public static a H0(Fragment fragment) {
        return new a(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35012g.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35011f);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.sdcard_lay);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35004a = (TextView) aVar.internalFindViewById(R.id.tvpath);
        this.f35005b = (ListView) aVar.internalFindViewById(R.id.lvFiles);
        this.f35006c = (Button) aVar.internalFindViewById(R.id.btnParent);
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35012g.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35011f.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35011f.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35011f.a(this);
    }
}
