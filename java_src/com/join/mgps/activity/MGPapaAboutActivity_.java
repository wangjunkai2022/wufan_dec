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
public final class MGPapaAboutActivity_ extends MGPapaAboutActivity implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    private final i3.c f33508g = new i3.c();

    /* renamed from: h  reason: collision with root package name */
    private final Map<Class<?>, Object> f33509h = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGPapaAboutActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGPapaAboutActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGPapaAboutActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGPapaAboutActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGPapaAboutActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGPapaAboutActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGPapaAboutActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGPapaAboutActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGPapaAboutActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33519a;

        public j(Context context) {
            super(context, MGPapaAboutActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33519a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), MGPapaAboutActivity_.class);
            this.f33519a = fragment;
        }
    }

    public static j N0(Context context) {
        return new j(context);
    }

    public static j O0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGPapaAboutActivity
    public void J0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33509h.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33508g);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.about_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33506e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f33507f = (ImageView) aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById = aVar.internalFindViewById(R.id.papaLayout);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.papaNetLayout);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.papaWeibo);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.papaStatementLayout);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.yszc);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.syxy);
        View internalFindViewById7 = aVar.internalFindViewById(R.id.mzsm);
        ImageView imageView = this.f33507f;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
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
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new e());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new f());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new g());
        }
        if (internalFindViewById7 != null) {
            internalFindViewById7.setOnClickListener(new h());
        }
        D0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33509h.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33508g.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33508g.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33508g.a(this);
    }
}
