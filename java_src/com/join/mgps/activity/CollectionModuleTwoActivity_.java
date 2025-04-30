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
public final class CollectionModuleTwoActivity_ extends CollectionModuleTwoActivity implements g3.a, i3.a, i3.b {

    /* renamed from: s0  reason: collision with root package name */
    public static final String f29020s0 = "collection_id";

    /* renamed from: t0  reason: collision with root package name */
    public static final String f29021t0 = "extBean";

    /* renamed from: o0  reason: collision with root package name */
    private final i3.c f29022o0 = new i3.c();

    /* renamed from: p0  reason: collision with root package name */
    private final Map<Class<?>, Object> f29023p0 = new HashMap();

    /* renamed from: q0  reason: collision with root package name */
    private final IntentFilter f29024q0 = new IntentFilter();

    /* renamed from: r0  reason: collision with root package name */
    private final BroadcastReceiver f29025r0 = new j();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f29026a;

        a(List list) {
            this.f29026a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.N0(this.f29026a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.S0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.serverConnectionException();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29033a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29034b;

        g(int i2, int i4) {
            this.f29033a = i2;
            this.f29034b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.O0(this.f29033a, this.f29034b);
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
                CollectionModuleTwoActivity_.super.I0();
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
                CollectionModuleTwoActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f29038b = "gameData";

        j() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CollectionModuleTwoActivity_.this.M0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleTwoActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleTwoActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleTwoActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleTwoActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleTwoActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleTwoActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    public static class s extends org.androidannotations.api.builder.a<s> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29048a;

        public s(Context context) {
            super(context, CollectionModuleTwoActivity_.class);
        }

        public s a(String str) {
            return (s) super.extra("collection_id", str);
        }

        public s b(ExtBean extBean) {
            return (s) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29048a;
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
            super(fragment.getActivity(), CollectionModuleTwoActivity_.class);
            this.f29048a = fragment;
        }
    }

    public static s e1(Context context) {
        return new s(context);
    }

    public static s f1(Fragment fragment) {
        return new s(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f29009s = resources.getString(R.string.net_excption);
        this.f29010t = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.f29024q0.addAction(f1.a.H);
        this.f29024q0.addAction(f1.a.F);
        registerReceiver(this.f29025r0, this.f29024q0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("collection_id")) {
                this.f29013w = extras.getString("collection_id");
            }
            if (extras.containsKey("extBean")) {
                this.f29014x = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void I0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void K0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void L0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void N0(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void O0(int i2, int i4) {
        org.androidannotations.api.b.e("", new g(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void S0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29023p0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29022o0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.category_collection_break);
    }

    @Override // com.join.mgps.activity.CollectionModuleTwoActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f29025r0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28992b = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f28993c = (XListView2) aVar.internalFindViewById(R.id.breakListView);
        this.f28994d = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f28995e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f28996f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f28997g = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f28998h = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f28999i = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f29000j = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.I = (RelativeLayout) aVar.internalFindViewById(R.id.commentParent);
        this.J = (ImageView) aVar.internalFindViewById(R.id.comment);
        this.K = (TextView) aVar.internalFindViewById(R.id.roundMessage);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f28997g;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new l());
        }
        ImageView imageView2 = this.f28998h;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new m());
        }
        ImageView imageView3 = this.f28999i;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new n());
        }
        CustomerDownloadView customerDownloadView = this.f29000j;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new o());
        }
        ImageView imageView4 = this.J;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new p());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29023p0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29022o0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleTwoActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29022o0.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29022o0.a(this);
    }
}
