package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CollectionDataBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class PapaLookOtherActivity_ extends PapaLookOtherActivity implements g3.a, i3.a, i3.b {

    /* renamed from: u  reason: collision with root package name */
    private final i3.c f34664u = new i3.c();

    /* renamed from: v  reason: collision with root package name */
    private final Map<Class<?>, Object> f34665v = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.I0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34670a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f34671b;

        e(int i2, int i4) {
            this.f34670a = i2;
            this.f34671b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.J0(this.f34670a, this.f34671b);
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
                PapaLookOtherActivity_.super.E0();
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
                PapaLookOtherActivity_.super.getDownloadTaskInfo();
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
            PapaLookOtherActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.D0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34681a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CollectionDataBean f34682b;

        n(int i2, CollectionDataBean collectionDataBean) {
            this.f34681a = i2;
            this.f34682b = collectionDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.H0(this.f34681a, this.f34682b);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.serverConnectionException();
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.G0();
        }
    }

    /* loaded from: classes3.dex */
    public static class q extends org.androidannotations.api.builder.a<q> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34686a;

        public q(Context context) {
            super(context, PapaLookOtherActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34686a;
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
            super(fragment.getActivity(), PapaLookOtherActivity_.class);
            this.f34686a = fragment;
        }
    }

    public static q W0(Context context) {
        return new q(context);
    }

    public static q X0(Fragment fragment) {
        return new q(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f34648d = resources.getString(R.string.net_excption);
        this.f34649e = resources.getString(R.string.connect_server_excption);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void E0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void G0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void H0(int i2, CollectionDataBean collectionDataBean) {
        org.androidannotations.api.b.e("", new n(i2, collectionDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void I0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void J0(int i2, int i4) {
        org.androidannotations.api.b.e("", new e(i2, i4), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34665v.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34664u);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.papeverday_new_activity_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34650f = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34652h = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f34653i = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f34654j = (FrameLayout) aVar.internalFindViewById(R.id.fragment);
        this.f34655k = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f34656l = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.f34660p = (RelativeLayout) aVar.internalFindViewById(R.id.commentParent);
        this.f34661q = (ImageView) aVar.internalFindViewById(R.id.comment);
        this.f34662r = (TextView) aVar.internalFindViewById(R.id.roundMessage);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new h());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new i());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new j());
        }
        ImageView imageView = this.f34655k;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        CustomerDownloadView customerDownloadView = this.f34656l;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new l());
        }
        ImageView imageView2 = this.f34661q;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new m());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34665v.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34664u.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34664u.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34664u.a(this);
    }
}
