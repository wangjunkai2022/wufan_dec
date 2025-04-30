package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.SlidingTabLayoutNoViewPager;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
import com.join.mgps.dto.ClassifyGameTagBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ClassifyGameActivity_ extends ClassifyGameActivity implements g3.a, i3.a, i3.b {

    /* renamed from: q0  reason: collision with root package name */
    public static final String f28614q0 = "gameTypeId";

    /* renamed from: r0  reason: collision with root package name */
    public static final String f28615r0 = "romTypeId";

    /* renamed from: s0  reason: collision with root package name */
    public static final String f28616s0 = "title";

    /* renamed from: t0  reason: collision with root package name */
    public static final String f28617t0 = "topTitle";

    /* renamed from: o0  reason: collision with root package name */
    private final i3.c f28618o0 = new i3.c();

    /* renamed from: p0  reason: collision with root package name */
    private final Map<Class<?>, Object> f28619p0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ClassifyGameActivity_.super.J0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ClassifyGameActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SlidingTabLayoutNoViewPager f28629a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f28630b;

        j(SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager, int i2) {
            this.f28629a = slidingTabLayoutNoViewPager;
            this.f28630b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.V0(this.f28629a, this.f28630b);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClassifyGameTagBean f28632a;

        k(ClassifyGameTagBean classifyGameTagBean) {
            this.f28632a = classifyGameTagBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.O0(this.f28632a);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.F0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    public static class n extends org.androidannotations.api.builder.a<n> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28636a;

        public n(Context context) {
            super(context, ClassifyGameActivity_.class);
        }

        public n a(int i2) {
            return (n) super.extra(ClassifyGameActivity_.f28614q0, i2);
        }

        public n b(int i2) {
            return (n) super.extra(ClassifyGameActivity_.f28615r0, i2);
        }

        public n c(String str) {
            return (n) super.extra("title", str);
        }

        public n d(String str) {
            return (n) super.extra(ClassifyGameActivity_.f28617t0, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28636a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), ClassifyGameActivity_.class);
            this.f28636a = fragment;
        }
    }

    public static n e1(Context context) {
        return new n(context);
    }

    public static n f1(Fragment fragment) {
        return new n(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(f28614q0)) {
                this.f28600u = extras.getInt(f28614q0);
            }
            if (extras.containsKey(f28615r0)) {
                this.f28601v = extras.getInt(f28615r0);
            }
            if (extras.containsKey("title")) {
                this.f28602w = extras.getString("title");
            }
            if (extras.containsKey(f28617t0)) {
                this.f28603x = extras.getString(f28617t0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void F0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void J0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void K0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void O0(ClassifyGameTagBean classifyGameTagBean) {
        org.androidannotations.api.b.e("", new k(classifyGameTagBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void R0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void V0(SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager, int i2) {
        org.androidannotations.api.b.e("", new j(slidingTabLayoutNoViewPager, i2), 500L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28619p0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28618o0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_classify_game);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28580a = (LinearLayout) aVar.internalFindViewById(R.id.loading_none);
        this.f28581b = (SwipeRefresh) aVar.internalFindViewById(R.id.refreshx);
        this.f28582c = (AppBarLayout) aVar.internalFindViewById(R.id.appbar);
        this.f28583d = (Toolbar) aVar.internalFindViewById(R.id.toolbar);
        this.f28584e = (SlidingTabLayoutNoViewPager) aVar.internalFindViewById(R.id.table1);
        this.f28585f = (SlidingTabLayoutNoViewPager) aVar.internalFindViewById(R.id.table2);
        this.f28586g = (SlidingTabLayoutNoViewPager) aVar.internalFindViewById(R.id.table3);
        this.f28587h = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.f28588i = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f28589j = (FrameLayout) aVar.internalFindViewById(R.id.mViewpagerV4);
        this.f28598s = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f28599t = (TextView) aVar.internalFindViewById(R.id.selectedType);
        View internalFindViewById = aVar.internalFindViewById(R.id.setAll);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.back_image);
        TextView textView = this.f28599t;
        if (textView != null) {
            textView.setOnClickListener(new e());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new f());
        }
        ImageView imageView = this.f28588i;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        CustomerDownloadView customerDownloadView = this.f28587h;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new h());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new i());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28619p0.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28618o0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28618o0.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28618o0.a(this);
    }
}
