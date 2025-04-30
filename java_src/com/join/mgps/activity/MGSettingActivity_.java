package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MGSettingActivity_ extends MGSettingActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p  reason: collision with root package name */
    private final i3.c f33535p = new i3.c();

    /* renamed from: q  reason: collision with root package name */
    private final Map<Class<?>, Object> f33536q = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGSettingActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33543a;

        g(String str) {
            this.f33543a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGSettingActivity_.super.error(this.f33543a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VersionDto f33545a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f33546b;

        h(VersionDto versionDto, boolean z3) {
            this.f33545a = versionDto;
            this.f33546b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGSettingActivity_.super.showVersionDownLoadHint(this.f33545a, this.f33546b);
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGSettingActivity_.super.F0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33549a;

        public j(Context context) {
            super(context, MGSettingActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33549a;
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
            super(fragment.getActivity(), MGSettingActivity_.class);
            this.f33549a = fragment;
        }
    }

    public static j O0(Context context) {
        return new j(context);
    }

    public static j P0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        this.f33531l = new PrefDef_(this);
        i3.c.b(this);
    }

    @Override // com.join.mgps.activity.MGSettingActivity
    public void F0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGSettingActivity
    public void J0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGSettingActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33536q.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33535p);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.setting_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33524e = (RelativeLayout) aVar.internalFindViewById(R.id.checkVerLayout);
        this.f33525f = (RelativeLayout) aVar.internalFindViewById(R.id.responsibility);
        this.f33526g = (RelativeLayout) aVar.internalFindViewById(R.id.papaAboutLayout);
        this.f33527h = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f33528i = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f33529j = (TextView) aVar.internalFindViewById(R.id.papaVer);
        this.f33530k = (TextView) aVar.internalFindViewById(R.id.about);
        View internalFindViewById = aVar.internalFindViewById(R.id.shareToFrendsLayout);
        ImageView imageView = this.f33528i;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        RelativeLayout relativeLayout = this.f33524e;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new c());
        }
        RelativeLayout relativeLayout2 = this.f33526g;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new d());
        }
        RelativeLayout relativeLayout3 = this.f33525f;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnClickListener(new e());
        }
        D0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33536q.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33535p.a(this);
    }

    @Override // com.join.mgps.activity.MGSettingActivity
    public void showVersionDownLoadHint(VersionDto versionDto, boolean z3) {
        org.androidannotations.api.b.e("", new h(versionDto, z3), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33535p.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33535p.a(this);
    }
}
