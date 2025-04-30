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
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class WebViewSearchActivity_ extends WebViewSearchActivity implements g3.a, i3.a, i3.b {

    /* renamed from: r0  reason: collision with root package name */
    public static final String f36159r0 = "url";

    /* renamed from: s0  reason: collision with root package name */
    public static final String f36160s0 = "downloadTask";

    /* renamed from: p0  reason: collision with root package name */
    private final i3.c f36161p0 = new i3.c();

    /* renamed from: q0  reason: collision with root package name */
    private final Map<Class<?>, Object> f36162q0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.c1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.N0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.f1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36166a;

        d(int i2) {
            this.f36166a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.updateLine(this.f36166a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36168a;

        e(int i2) {
            this.f36168a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.updateDownloadingPoint(this.f36168a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.updateNoOpenPoint();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.updateHidePoint();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f36172a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36173b;

        h(DownloadTask downloadTask, int i2) {
            this.f36172a = downloadTask;
            this.f36173b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.receiveStart(this.f36172a, this.f36173b);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f36175a;

        i(DownloadTask downloadTask) {
            this.f36175a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.receiveSuccess(this.f36175a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f36177a;

        j(DownloadTask downloadTask) {
            this.f36177a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.receiveDelete(this.f36177a);
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.a1();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36180a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f36180a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.L0(this.f36180a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36182a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f36182a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.K0(this.f36182a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36184a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f36184a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.J0(this.f36184a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36186a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f36186a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.M0(this.f36186a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {
        p(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.checkDownlodingNumber();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q extends a.c {
        q(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.getdownloadTask();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.b1();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.X0();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.g1();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.close();
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.showLoading();
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.e1();
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.d1();
        }
    }

    /* loaded from: classes3.dex */
    public static class z extends org.androidannotations.api.builder.a<z> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36198a;

        public z(Context context) {
            super(context, WebViewSearchActivity_.class);
        }

        public z a(DownloadTask downloadTask) {
            return (z) super.extra("downloadTask", downloadTask);
        }

        public z b(String str) {
            return (z) super.extra("url", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36198a;
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

        public z(Fragment fragment) {
            super(fragment.getActivity(), WebViewSearchActivity_.class);
            this.f36198a = fragment;
        }
    }

    public static z A1(Context context) {
        return new z(context);
    }

    public static z B1(Fragment fragment) {
        return new z(fragment);
    }

    private void init_(Bundle bundle) {
        this.f36129h = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("url")) {
                this.f36142s = extras.getString("url");
            }
            if (extras.containsKey("downloadTask")) {
                this.f36143t = (DownloadTask) extras.getSerializable("downloadTask");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void J0(String str) {
        org.androidannotations.api.a.l(new n("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void K0(String str) {
        org.androidannotations.api.a.l(new m("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void L0(String str) {
        org.androidannotations.api.a.l(new l("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void M0(String str) {
        org.androidannotations.api.a.l(new o("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void N0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void c1() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void checkDownlodingNumber() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void d1() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void e1() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void f1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36162q0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void getdownloadTask() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36161p0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_web_view_search);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36125d = (BottomSheetLayout) aVar.internalFindViewById(R.id.bottomSheetLayout);
        this.f36126e = aVar.internalFindViewById(R.id.close);
        this.f36127f = (TextView) aVar.internalFindViewById(R.id.inputUrl);
        this.f36128g = aVar.internalFindViewById(R.id.downloadCenter);
        this.f36130i = (LJWebView) aVar.internalFindViewById(R.id.web);
        this.f36131j = aVar.internalFindViewById(R.id.layoutFail);
        this.f36132k = aVar.internalFindViewById(R.id.layoutLoading);
        this.f36133l = aVar.internalFindViewById(R.id.prev);
        this.f36134m = aVar.internalFindViewById(R.id.next);
        this.f36135n = (ImageView) aVar.internalFindViewById(R.id.prevImg);
        this.f36137o = (ImageView) aVar.internalFindViewById(R.id.nextImg);
        this.f36139p = aVar.internalFindViewById(R.id.refresh);
        this.f36140q = aVar.internalFindViewById(R.id.sniffer);
        this.f36141r = (TextView) aVar.internalFindViewById(R.id.tipSniffing);
        View view = this.f36133l;
        if (view != null) {
            view.setOnClickListener(new k());
        }
        View view2 = this.f36134m;
        if (view2 != null) {
            view2.setOnClickListener(new r());
        }
        View view3 = this.f36139p;
        if (view3 != null) {
            view3.setOnClickListener(new s());
        }
        View view4 = this.f36131j;
        if (view4 != null) {
            view4.setOnClickListener(new t());
        }
        View view5 = this.f36140q;
        if (view5 != null) {
            view5.setOnClickListener(new u());
        }
        View view6 = this.f36126e;
        if (view6 != null) {
            view6.setOnClickListener(new v());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36162q0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void receiveDelete(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new j(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void receiveStart(DownloadTask downloadTask, int i2) {
        org.androidannotations.api.b.e("", new h(downloadTask, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void receiveSuccess(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new i(downloadTask), 0L);
    }

    @Override // com.join.mgps.activity.WebViewSearchActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36161p0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void updateDownloadingPoint(int i2) {
        org.androidannotations.api.b.e("", new e(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void updateHidePoint() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void updateLine(int i2) {
        org.androidannotations.api.b.e("", new d(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void updateNoOpenPoint() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36161p0.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36161p0.a(this);
    }
}
