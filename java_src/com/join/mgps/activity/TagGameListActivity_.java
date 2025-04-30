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
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class TagGameListActivity_ extends TagGameListActivity implements g3.a, i3.a, i3.b {

    /* renamed from: o0  reason: collision with root package name */
    public static final String f35883o0 = "from";

    /* renamed from: p0  reason: collision with root package name */
    public static final String f35884p0 = "tagId";

    /* renamed from: q0  reason: collision with root package name */
    public static final String f35885q0 = "tag";

    /* renamed from: r0  reason: collision with root package name */
    public static final String f35886r0 = "tagType";

    /* renamed from: s0  reason: collision with root package name */
    public static final String f35887s0 = "companyName";

    /* renamed from: t0  reason: collision with root package name */
    public static final String f35888t0 = "isSingle";
    private final i3.c I = new i3.c();
    private final Map<Class<?>, Object> J = new HashMap();
    private final IntentFilter K = new IntentFilter();

    /* renamed from: n0  reason: collision with root package name */
    private final BroadcastReceiver f35889n0 = new i();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f35890a;

        a(List list) {
            this.f35890a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.N0(this.f35890a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.S0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f35894a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f35895b;

        d(DownloadTask downloadTask, int i2) {
            this.f35894a = downloadTask;
            this.f35895b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.updateUI(this.f35894a, this.f35895b);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35898a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f35899b;

        f(int i2, int i4) {
            this.f35898a = i2;
            this.f35899b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.O0(this.f35898a, this.f35899b);
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
                TagGameListActivity_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                TagGameListActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f35903b = "gameData";

        i() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            TagGameListActivity_.this.M0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    public static class r extends org.androidannotations.api.builder.a<r> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35913a;

        public r(Context context) {
            super(context, TagGameListActivity_.class);
        }

        public r a(String str) {
            return (r) super.extra(TagGameListActivity_.f35887s0, str);
        }

        public r b(int i2) {
            return (r) super.extra("from", i2);
        }

        public r c(boolean z3) {
            return (r) super.extra("isSingle", z3);
        }

        public r d(String str) {
            return (r) super.extra(TagGameListActivity_.f35885q0, str);
        }

        public r e(int i2) {
            return (r) super.extra("tagId", i2);
        }

        public r f(String str) {
            return (r) super.extra(TagGameListActivity_.f35886r0, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35913a;
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

        public r(Fragment fragment) {
            super(fragment.getActivity(), TagGameListActivity_.class);
            this.f35913a = fragment;
        }
    }

    public static r d1(Context context) {
        return new r(context);
    }

    public static r e1(Fragment fragment) {
        return new r(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f35868o = resources.getString(R.string.net_excption);
        this.f35869p = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.K.addAction(f1.a.H);
        this.K.addAction(f1.a.F);
        registerReceiver(this.f35889n0, this.K);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("from")) {
                this.f35871r = extras.getInt("from");
            }
            if (extras.containsKey("tagId")) {
                this.f35872s = extras.getInt("tagId");
            }
            if (extras.containsKey(f35885q0)) {
                this.f35873t = extras.getString(f35885q0);
            }
            if (extras.containsKey(f35886r0)) {
                this.f35874u = extras.getString(f35886r0);
            }
            if (extras.containsKey(f35887s0)) {
                this.f35875v = extras.getString(f35887s0);
            }
            if (extras.containsKey("isSingle")) {
                this.f35876w = extras.getBoolean("isSingle");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void I0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void L0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void N0(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void O0(int i2, int i4) {
        org.androidannotations.api.b.e("", new f(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void S0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.J.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.I);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.category_collection_rank);
    }

    @Override // com.join.mgps.activity.TagGameListActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f35889n0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35857d = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f35858e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f35859f = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        this.f35860g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f35861h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f35862i = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f35863j = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f35864k = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f35865l = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.F = (RelativeLayout) aVar.internalFindViewById(R.id.commentParent);
        this.G = (ImageView) aVar.internalFindViewById(R.id.comment);
        this.H = (TextView) aVar.internalFindViewById(R.id.roundMessage);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f35862i;
        if (imageView != null) {
            imageView.setOnClickListener(new j());
        }
        ImageView imageView2 = this.f35863j;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new k());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new l());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new m());
        }
        ImageView imageView3 = this.f35864k;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new n());
        }
        CustomerDownloadView customerDownloadView = this.f35865l;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new o());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.J.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.I.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void updateUI(DownloadTask downloadTask, int i2) {
        org.androidannotations.api.b.e("", new d(downloadTask, i2), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.I.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.I.a(this);
    }
}
