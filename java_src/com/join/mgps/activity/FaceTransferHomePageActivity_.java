package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
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
public final class FaceTransferHomePageActivity_ extends FaceTransferHomePageActivity implements g3.a, i3.a, i3.b {

    /* renamed from: v  reason: collision with root package name */
    private final i3.c f29726v = new i3.c();

    /* renamed from: w  reason: collision with root package name */
    private final Map<Class<?>, Object> f29727w = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferHomePageActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferHomePageActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferHomePageActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferHomePageActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class e extends org.androidannotations.api.builder.a<e> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29732a;

        public e(Context context) {
            super(context, FaceTransferHomePageActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29732a;
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

        public e(Fragment fragment) {
            super(fragment.getActivity(), FaceTransferHomePageActivity_.class);
            this.f29732a = fragment;
        }
    }

    public static e R0(Context context) {
        return new e(context);
    }

    public static e S0(Fragment fragment) {
        return new e(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f29697b = resources.getString(R.string.title_face_transfer_homepage);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29727w.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29726v);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.face_transfer_homepage_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29696a = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f29699d = (TextView) aVar.internalFindViewById(R.id.nopapaTip);
        View internalFindViewById = aVar.internalFindViewById(R.id.face_transfer_rel_create_hotspot);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.face_transfer_rel_join_hotspot);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.back_image);
        TextView textView = this.f29699d;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new c());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new d());
        }
        L0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29727w.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29726v.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29726v.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29726v.a(this);
    }
}
