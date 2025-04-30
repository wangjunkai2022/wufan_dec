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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class LocalGameActivity_ extends LocalGameActivity implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    private final i3.c f32942s = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f32943t = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LocalGameActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LocalGameActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LocalGameActivity_.super.N0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LocalGameActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                LocalGameActivity_.super.H0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                LocalGameActivity_.super.J0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class g extends org.androidannotations.api.builder.a<g> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32950a;

        public g(Context context) {
            super(context, LocalGameActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32950a;
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
            super(fragment.getActivity(), LocalGameActivity_.class);
            this.f32950a = fragment;
        }
    }

    public static g T0(Context context) {
        return new g(context);
    }

    public static g U0(Fragment fragment) {
        return new g(fragment);
    }

    private void init_(Bundle bundle) {
        this.f32940m = new PrefDef_(this);
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LocalGameActivity
    public void H0() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.LocalGameActivity
    public void J0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LocalGameActivity
    public void K0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LocalGameActivity
    public void M0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LocalGameActivity
    public void N0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32943t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32942s);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_local);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32928a = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f32929b = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f32932e = (TabPageIndicator) aVar.internalFindViewById(R.id.pageIndicator);
        this.f32933f = (ViewPager) aVar.internalFindViewById(R.id.mViewpagerV4);
        ImageView imageView = this.f32928a;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32943t.put(cls, t3);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32942s.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32942s.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32942s.a(this);
    }
}
