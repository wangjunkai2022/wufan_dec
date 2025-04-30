package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumProfileFavoritesActivity_ extends ForumProfileFavoritesActivity implements g3.a, i3.a, i3.b {
    public static final String O0 = "extBean";
    private final i3.c K0 = new i3.c();
    private final Map<Class<?>, Object> L0 = new HashMap();
    private final IntentFilter M0 = new IntentFilter();
    private final BroadcastReceiver N0 = new k();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30470a;

        a(String str) {
            this.f30470a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.showToast(this.f30470a);
        }
    }

    /* loaded from: classes3.dex */
    public static class a0 extends org.androidannotations.api.builder.a<a0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30472a;

        public a0(Context context) {
            super(context, ForumProfileFavoritesActivity_.class);
        }

        public a0 a(ExtBean extBean) {
            return (a0) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30472a;
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

        public a0(Fragment fragment) {
            super(fragment.getActivity(), ForumProfileFavoritesActivity_.class);
            this.f30472a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.I1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsListView f30474a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30475b;

        c(AbsListView absListView, int i2) {
            this.f30474a = absListView;
            this.f30475b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.V1(this.f30474a, this.f30475b);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsListView f30477a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30478b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f30479c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f30480d;

        d(AbsListView absListView, int i2, int i4, int i5) {
            this.f30477a = absListView;
            this.f30478b = i2;
            this.f30479c = i4;
            this.f30480d = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.U1(this.f30477a, this.f30478b, this.f30479c, this.f30480d);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.H1();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30483a;

        f(String str) {
            this.f30483a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.showMessage(this.f30483a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f30485a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30486b;

        g(DownloadTask downloadTask, int i2) {
            this.f30485a = downloadTask;
            this.f30486b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.updateUI(this.f30485a, this.f30486b);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f30489a;

        i(DetailResultBean detailResultBean) {
            this.f30489a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.startDown(this.f30489a);
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30491a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30492b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, int i2, String str3) {
            super(str, j4, str2);
            this.f30491a = i2;
            this.f30492b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.J0(this.f30491a, this.f30492b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f30494b = "gameData";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumProfileFavoritesActivity_.this.k1((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {
        l(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.Z0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {
        m(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.a1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30498a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30498a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.b1(this.f30498a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30500a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30500a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.p1(this.f30500a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f30502a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30503b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, Context context, int i2) {
            super(str, j4, str2);
            this.f30502a = context;
            this.f30503b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.N0(this.f30502a, this.f30503b);
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
                ForumProfileFavoritesActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30506a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f30506a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.P0(this.f30506a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileFavoritesActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMainBean f30509a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30510b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f30511c;

        t(ResultMainBean resultMainBean, int i2, String str) {
            this.f30509a = resultMainBean;
            this.f30510b = i2;
            this.f30511c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.R1(this.f30509a, this.f30510b, this.f30511c);
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f30513a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30514b;

        u(List list, int i2) {
            this.f30513a = list;
            this.f30514b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.r1(this.f30513a, this.f30514b);
        }
    }

    /* loaded from: classes3.dex */
    class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30516a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f30517b;

        v(int i2, boolean z3) {
            this.f30516a = i2;
            this.f30517b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.g1(this.f30516a, this.f30517b);
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.N1();
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30520a;

        x(int i2) {
            this.f30520a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.K0(this.f30520a);
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.e1();
        }
    }

    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.F1();
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.M0.addAction(f1.a.H);
        this.M0.addAction(f1.a.F);
        registerReceiver(this.N0, this.M0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.f30417l = (ExtBean) extras.getSerializable("extBean");
    }

    public static a0 u2(Context context) {
        return new a0(context);
    }

    public static a0 v2(Fragment fragment) {
        return new a0(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void F1() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void H1() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void I1() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void J0(int i2, String str) {
        org.androidannotations.api.a.l(new j("", 0L, "", i2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void K0(int i2) {
        org.androidannotations.api.b.e("", new x(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void N0(Context context, int i2) {
        org.androidannotations.api.a.l(new p("", 0L, "", context, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void N1() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void P0(String str) {
        org.androidannotations.api.a.l(new r("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void R1(ResultMainBean resultMainBean, int i2, String str) {
        org.androidannotations.api.b.e("", new t(resultMainBean, i2, str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void U1(AbsListView absListView, int i2, int i4, int i5) {
        org.androidannotations.api.b.e("", new d(absListView, i2, i4, i5), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void V1(AbsListView absListView, int i2) {
        org.androidannotations.api.b.e("", new c(absListView, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void Z0() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void a1() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void b1(int i2) {
        org.androidannotations.api.a.l(new n("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void e1() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void g1(int i2, boolean z3) {
        org.androidannotations.api.b.e("", new v(i2, z3), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.L0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.K0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_profile_favorites_activity);
    }

    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.N0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30406a = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f30407b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f30408c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f30409d = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f30413h = (XListView2) aVar.internalFindViewById(R.id.forum_posts_list);
        this.f30414i = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.F = (FrameLayout) aVar.internalFindViewById(R.id.videoContainer);
        this.G = (RelativeLayout) aVar.internalFindViewById(R.id.videoLayout);
        this.H = (MyVideoView) aVar.internalFindViewById(R.id.video);
        this.I = (SimpleDraweeView) aVar.internalFindViewById(R.id.cover);
        this.J = (ImageView) aVar.internalFindViewById(R.id.play);
        this.K = (LinearLayout) aVar.internalFindViewById(R.id.loadingLayout);
        ImageView imageView = this.f30407b;
        if (imageView != null) {
            imageView.setOnClickListener(new s());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void p1(int i2) {
        org.androidannotations.api.a.l(new o("", 0L, "", i2));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.L0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void r1(List<ForumData.ForumUserFavoritesData> list, int i2) {
        org.androidannotations.api.b.e("", new u(list, i2), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.K0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void startDown(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new i(detailResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void updateUI(DownloadTask downloadTask, int i2) {
        org.androidannotations.api.b.e("", new g(downloadTask, i2), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.K0.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.K0.a(this);
    }
}
