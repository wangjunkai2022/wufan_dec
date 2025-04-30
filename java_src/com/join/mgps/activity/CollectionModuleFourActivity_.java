package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CollectionModuleFourActivity_ extends CollectionModuleFourActivity implements g3.a, i3.a, i3.b {
    public static final String H = "collection_id";
    public static final String I = "extBean";
    private final i3.c D = new i3.c();
    private final Map<Class<?>, Object> E = new HashMap();
    private final IntentFilter F = new IntentFilter();
    private final BroadcastReceiver G = new j();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f28860a;

        b(List list) {
            this.f28860a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.N0(this.f28860a);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f28864a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f28865b;

        e(DownloadTask downloadTask, int i2) {
            this.f28864a = downloadTask;
            this.f28865b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.updateUI(this.f28864a, this.f28865b);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28868a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f28869b;

        g(int i2, int i4) {
            this.f28868a = i2;
            this.f28869b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.O0(this.f28868a, this.f28869b);
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleFourActivity_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                CollectionModuleFourActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f28873b = "gameData";

        j() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CollectionModuleFourActivity_.this.M0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    public static class s extends org.androidannotations.api.builder.a<s> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28883a;

        public s(Context context) {
            super(context, CollectionModuleFourActivity_.class);
        }

        public s a(String str) {
            return (s) super.extra("collection_id", str);
        }

        public s b(ExtBean extBean) {
            return (s) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28883a;
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

        public s(Fragment fragment) {
            super(fragment.getActivity(), CollectionModuleFourActivity_.class);
            this.f28883a = fragment;
        }
    }

    public static s c1(Context context) {
        return new s(context);
    }

    public static s d1(Fragment fragment) {
        return new s(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f28843n = resources.getString(R.string.net_excption);
        this.f28844o = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.F.addAction(f1.a.H);
        this.F.addAction(f1.a.F);
        registerReceiver(this.G, this.F);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("collection_id")) {
                this.f28846q = extras.getString("collection_id");
            }
            if (extras.containsKey("extBean")) {
                this.f28847r = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void I0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void L0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void N0(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new b(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void O0(int i2, int i4) {
        org.androidannotations.api.b.e("", new g(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void R0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.E.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.D);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.category_collection_rank);
    }

    @Override // com.join.mgps.activity.CollectionModuleFourActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.G);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28833d = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f28834e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f28835f = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        this.f28836g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f28837h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f28838i = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f28839j = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f28840k = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f28841l = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.A = (RelativeLayout) aVar.internalFindViewById(R.id.commentParent);
        this.B = (ImageView) aVar.internalFindViewById(R.id.comment);
        this.C = (TextView) aVar.internalFindViewById(R.id.roundMessage);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f28838i;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        ImageView imageView2 = this.f28839j;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new l());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new m());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new n());
        }
        ImageView imageView3 = this.f28840k;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new o());
        }
        CustomerDownloadView customerDownloadView = this.f28841l;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new p());
        }
        ImageView imageView4 = this.B;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new q());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.E.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.D.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void updateUI(DownloadTask downloadTask, int i2) {
        org.androidannotations.api.b.e("", new e(downloadTask, i2), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.D.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.D.a(this);
    }
}
