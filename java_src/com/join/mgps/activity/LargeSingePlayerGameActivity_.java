package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.TabPageIndicator;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class LargeSingePlayerGameActivity_ extends LargeSingePlayerGameActivity implements g3.a, i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    public static final String f32893m = "toLargeGameOrGameOL";

    /* renamed from: k  reason: collision with root package name */
    private final i3.c f32894k = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f32895l = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LargeSingePlayerGameActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LargeSingePlayerGameActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LargeSingePlayerGameActivity_.this.D0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LargeSingePlayerGameActivity_.super.C0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LargeSingePlayerGameActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                LargeSingePlayerGameActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class g extends org.androidannotations.api.builder.a<g> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32902a;

        public g(Context context) {
            super(context, LargeSingePlayerGameActivity_.class);
        }

        public g a(int i2) {
            return (g) super.extra(LargeSingePlayerGameActivity_.f32893m, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32902a;
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

        public g(Fragment fragment) {
            super(fragment.getActivity(), LargeSingePlayerGameActivity_.class);
            this.f32902a = fragment;
        }
    }

    public static g I0(Context context) {
        return new g(context);
    }

    public static g J0(Fragment fragment) {
        return new g(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(f32893m)) {
            return;
        }
        this.f32889f = extras.getInt(f32893m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LargeSingePlayerGameActivity
    public void C0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32895l.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LargeSingePlayerGameActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32894k);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.large_singe_game_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32884a = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f32885b = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f32886c = (TabPageIndicator) aVar.internalFindViewById(R.id.pageIndicator);
        this.f32887d = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f32888e = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        ImageView imageView = this.f32887d;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        CustomerDownloadView customerDownloadView = this.f32888e;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32895l.put(cls, t3);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32894k.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LargeSingePlayerGameActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32894k.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32894k.a(this);
    }
}
