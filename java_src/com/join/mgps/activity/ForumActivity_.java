package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumGroupHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.dto.ForumData;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
import ru.noties.scrollable.ScrollableLayout;
/* loaded from: classes3.dex */
public final class ForumActivity_ extends ForumActivity implements g3.a, i3.a, i3.b {
    public static final String G = "fid";
    public static final String H = "from";
    private final i3.c E = new i3.c();
    private final Map<Class<?>, Object> F = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.b1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.d1();
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
                ForumActivity_.super.Q0();
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
                ForumActivity_.super.W0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {
        g(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumActivity_.super.M0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.f1();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.c1();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29825a;

        m(boolean z3) {
            this.f29825a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.K0(this.f29825a);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumData.ForumGroupIndex f29827a;

        n(ForumData.ForumGroupIndex forumGroupIndex) {
            this.f29827a = forumGroupIndex;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.e1(this.f29827a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29829a;

        o(String str) {
            this.f29829a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.D0(this.f29829a);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29831a;

        p(int i2) {
            this.f29831a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.L0(this.f29831a);
        }
    }

    /* loaded from: classes3.dex */
    public static class q extends org.androidannotations.api.builder.a<q> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29833a;

        public q(Context context) {
            super(context, ForumActivity_.class);
        }

        public q a(int i2) {
            return (q) super.extra("fid", i2);
        }

        public q b(String str) {
            return (q) super.extra("from", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29833a;
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

        public q(Fragment fragment) {
            super(fragment.getActivity(), ForumActivity_.class);
            this.f29833a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("fid")) {
                this.f29791o = extras.getInt("fid");
            }
            if (extras.containsKey("from")) {
                this.f29792p = extras.getString("from");
            }
        }
    }

    public static q s1(Context context) {
        return new q(context);
    }

    public static q t1(Fragment fragment) {
        return new q(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void D0(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void K0(boolean z3) {
        org.androidannotations.api.b.e("", new m(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void L0(int i2) {
        org.androidannotations.api.b.e("", new p(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void M0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void Q0() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void R0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void W0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void Z0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void b1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void d1() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void e1(ForumData.ForumGroupIndex forumGroupIndex) {
        org.androidannotations.api.b.e("", new n(forumGroupIndex), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.F.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.E);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_group_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29777a = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f29778b = (ImageView) aVar.internalFindViewById(R.id.sreach_image);
        this.f29779c = (Button) aVar.internalFindViewById(R.id.forum_post);
        this.f29780d = aVar.internalFindViewById(R.id.bottom);
        this.f29781e = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f29782f = (ScrollableLayout) aVar.internalFindViewById(R.id.scrollableLayout);
        this.f29783g = (ForumGroupHeaderView) aVar.internalFindViewById(R.id.headerView);
        this.f29784h = (SlidingTabLayout4) aVar.internalFindViewById(R.id.tabsLayout);
        this.f29785i = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f29786j = (RelativeLayout) aVar.internalFindViewById(R.id.rlOrderBy);
        this.f29787k = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.btnSendPosts);
        ImageView imageView = this.f29778b;
        if (imageView != null) {
            imageView.setOnClickListener(new h());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new i());
        }
        RelativeLayout relativeLayout = this.f29786j;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new j());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new k());
        }
        Button button = this.f29779c;
        if (button != null) {
            button.setOnClickListener(new l());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.F.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.E.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.E.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.E.a(this);
    }
}
