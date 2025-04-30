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
public final class CollectionModuleSixActivity_ extends CollectionModuleSixActivity implements g3.a, i3.a, i3.b {
    public static final String D0 = "collection_id";
    public static final String E0 = "extBean";

    /* renamed from: z0  reason: collision with root package name */
    private final i3.c f28926z0 = new i3.c();
    private final Map<Class<?>, Object> A0 = new HashMap();
    private final IntentFilter B0 = new IntentFilter();
    private final BroadcastReceiver C0 = new k();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f28931a;

        e(List list) {
            this.f28931a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.Q0(this.f28931a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.W0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.serverConnectionException();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.N0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f28938b = "gameData";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CollectionModuleSixActivity_.this.P0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28940a;

        l(int i2) {
            this.f28940a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.updateDownloadingPoint(this.f28940a);
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28942a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f28943b;

        m(int i2, int i4) {
            this.f28942a = i2;
            this.f28943b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.R0(this.f28942a, this.f28943b);
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {
        n(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleSixActivity_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {
        o(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleSixActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    public static class x extends org.androidannotations.api.builder.a<x> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28955a;

        public x(Context context) {
            super(context, CollectionModuleSixActivity_.class);
        }

        public x a(String str) {
            return (x) super.extra("collection_id", str);
        }

        public x b(ExtBean extBean) {
            return (x) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28955a;
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

        public x(Fragment fragment) {
            super(fragment.getActivity(), CollectionModuleSixActivity_.class);
            this.f28955a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f28921z = resources.getString(R.string.net_excption);
        this.A = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.B0.addAction(f1.a.H);
        this.B0.addAction(f1.a.F);
        registerReceiver(this.C0, this.B0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("collection_id")) {
                this.D = extras.getString("collection_id");
            }
            if (extras.containsKey("extBean")) {
                this.E = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    public static x j1(Context context) {
        return new x(context);
    }

    public static x k1(Fragment fragment) {
        return new x(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void K0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void N0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void O0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void Q0(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new e(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void R0(int i2, int i4) {
        org.androidannotations.api.b.e("", new m(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void W0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28926z0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_collection_module_six);
    }

    @Override // com.join.mgps.activity.CollectionModuleSixActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.C0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28886b = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f28887c = (XListView2) aVar.internalFindViewById(R.id.breakListView);
        this.f28888d = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f28889e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f28890f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f28891g = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f28892h = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f28893i = (ImageView) aVar.internalFindViewById(R.id.back_image_rl);
        this.f28894j = (RelativeLayout) aVar.internalFindViewById(R.id.module_six_rl);
        this.f28895k = (RelativeLayout) aVar.internalFindViewById(R.id.moduleSixTitleRl);
        this.f28896l = (RelativeLayout) aVar.internalFindViewById(R.id.title_bar_layout);
        this.f28897m = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f28898n = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img_rl);
        this.f28900o = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.f28902p = (RelativeLayout) aVar.internalFindViewById(R.id.downLayout);
        this.f28904q = (TextView) aVar.internalFindViewById(R.id.biground);
        this.f28915v0 = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
        this.f28917w0 = (ImageView) aVar.internalFindViewById(R.id.downloadLine);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.comment);
        LinearLayout linearLayout = this.f28890f;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new p());
        }
        ImageView imageView = this.f28891g;
        if (imageView != null) {
            imageView.setOnClickListener(new q());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new r());
        }
        ImageView imageView2 = this.f28892h;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new s());
        }
        ImageView imageView3 = this.f28893i;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new t());
        }
        ImageView imageView4 = this.f28897m;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new u());
        }
        ImageView imageView5 = this.f28898n;
        if (imageView5 != null) {
            imageView5.setOnClickListener(new v());
        }
        CustomerDownloadView customerDownloadView = this.f28900o;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new w());
        }
        RelativeLayout relativeLayout = this.f28902p;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28926z0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void updateDownloadingPoint(int i2) {
        org.androidannotations.api.b.e("", new l(i2), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28926z0.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28926z0.a(this);
    }
}
