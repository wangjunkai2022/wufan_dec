package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class RankingHomeActivity_ extends RankingHomeActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p  reason: collision with root package name */
    public static final String f34979p = "rankType";

    /* renamed from: q  reason: collision with root package name */
    public static final String f34980q = "title";

    /* renamed from: r  reason: collision with root package name */
    public static final String f34981r = "rankTag";

    /* renamed from: s  reason: collision with root package name */
    public static final String f34982s = "dimensionId";

    /* renamed from: n  reason: collision with root package name */
    private final i3.c f34983n = new i3.c();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Class<?>, Object> f34984o = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingHomeActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingHomeActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingHomeActivity_.this.D0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingHomeActivity_.super.updateDownloadView();
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
                RankingHomeActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34990a;

        public f(Context context) {
            super(context, RankingHomeActivity_.class);
        }

        public f a(String str) {
            return (f) super.extra(RankingHomeActivity_.f34982s, str);
        }

        public f b(String str) {
            return (f) super.extra(RankingHomeActivity_.f34981r, str);
        }

        public f c(int i2) {
            return (f) super.extra(RankingHomeActivity_.f34979p, i2);
        }

        public f d(String str) {
            return (f) super.extra("title", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34990a;
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

        public f(Fragment fragment) {
            super(fragment.getActivity(), RankingHomeActivity_.class);
            this.f34990a = fragment;
        }
    }

    public static f H0(Context context) {
        return new f(context);
    }

    public static f I0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(f34979p)) {
                this.f34970d = extras.getInt(f34979p);
            }
            if (extras.containsKey("title")) {
                this.f34971e = extras.getString("title");
            }
            if (extras.containsKey(f34981r)) {
                this.f34972f = extras.getString(f34981r);
            }
            if (extras.containsKey(f34982s)) {
                this.f34973g = extras.getString(f34982s);
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34984o.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.RankingHomeActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34983n);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.rannking_home_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34967a = (FrameLayout) aVar.internalFindViewById(R.id.fragment);
        this.f34968b = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34969c = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f34974h = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f34975i = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        ImageView imageView = this.f34969c;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        ImageView imageView2 = this.f34974h;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new b());
        }
        CustomerDownloadView customerDownloadView = this.f34975i;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new c());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34984o.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34983n.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.RankingHomeActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34983n.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34983n.a(this);
    }
}
