package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayoutDownloadCenter;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class DownloadCenterActivity_ extends DownloadCenterActivity implements g3.a, i3.a, i3.b {
    private final i3.c C = new i3.c();
    private final Map<Class<?>, Object> D = new HashMap();
    private final IntentFilter E = new IntentFilter();
    private final BroadcastReceiver F = new g();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadCenterActivity_.super.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadCenterActivity_.super.L0();
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
                DownloadCenterActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f29625a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29626b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, Context context, String str3) {
            super(str, j4, str2);
            this.f29625a = context;
            this.f29626b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadCenterActivity_.super.S0(this.f29625a, this.f29626b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                DownloadCenterActivity_.super.updateAndroidApp();
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
                DownloadCenterActivity_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f29630b = "gameData";

        g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadCenterActivity_.this.N0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadCenterActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadCenterActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadCenterActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadCenterActivity_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadCenterActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadCenterActivity_.super.H0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29638a;

        n(String str) {
            this.f29638a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadCenterActivity_.super.T0(this.f29638a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadCenterActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    public static class p extends org.androidannotations.api.builder.a<p> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29641a;

        public p(Context context) {
            super(context, DownloadCenterActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29641a;
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

        public p(Fragment fragment) {
            super(fragment.getActivity(), DownloadCenterActivity_.class);
            this.f29641a = fragment;
        }
    }

    public static p d1(Context context) {
        return new p(context);
    }

    public static p e1(Fragment fragment) {
        return new p(fragment);
    }

    private void init_(Bundle bundle) {
        this.f29599d = new PrefDef_(this);
        i3.c.b(this);
        this.E.addAction(f1.a.H);
        this.E.addAction(f1.a.F);
        registerReceiver(this.F, this.E);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void E0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void H0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void I0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void L0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void M0() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void S0(Context context, String str) {
        org.androidannotations.api.a.l(new d("", 0L, "", context, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void T0(String str) {
        org.androidannotations.api.b.e("", new n(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.D.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void getData() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.C);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.download_center_layout);
    }

    @Override // com.join.mgps.activity.DownloadCenterActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.F);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29600e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f29601f = (ImageView) aVar.internalFindViewById(R.id.setting);
        this.f29602g = (LinearLayout) aVar.internalFindViewById(R.id.notVip);
        this.f29603h = (LinearLayout) aVar.internalFindViewById(R.id.isVip);
        this.f29604i = (TextView) aVar.internalFindViewById(R.id.notMessage);
        this.f29605j = (TextView) aVar.internalFindViewById(R.id.goVip);
        this.f29606k = (TextView) aVar.internalFindViewById(R.id.downMessage);
        this.f29607l = (TextView) aVar.internalFindViewById(R.id.speedText);
        this.f29608m = (ViewPager) aVar.internalFindViewById(R.id.mViewpagerV4);
        this.f29609n = (SlidingTabLayoutDownloadCenter) aVar.internalFindViewById(R.id.pageIndicator);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.topTipClose);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        TextView textView = this.f29605j;
        if (textView != null) {
            textView.setOnClickListener(new h());
        }
        ImageView imageView = this.f29601f;
        if (imageView != null) {
            imageView.setOnClickListener(new i());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new j());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new k());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new l());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.D.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.C.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadCenterActivity
    public void updateAndroidApp() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.C.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.C.a(this);
    }
}
