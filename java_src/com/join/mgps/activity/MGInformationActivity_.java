package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.InformationListDataBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MGInformationActivity_ extends MGInformationActivity implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    public static final String f33202s = "extBean";

    /* renamed from: q  reason: collision with root package name */
    private final i3.c f33203q = new i3.c();

    /* renamed from: r  reason: collision with root package name */
    private final Map<Class<?>, Object> f33204r = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGInformationActivity_.super.H0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGInformationActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGInformationActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGInformationActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGInformationActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGInformationActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGInformationActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGInformationActivity_.super.showLoading();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGInformationActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33214a;

        j(List list) {
            this.f33214a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGInformationActivity_.super.K0(this.f33214a);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGInformationActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    public static class l extends org.androidannotations.api.builder.a<l> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33217a;

        public l(Context context) {
            super(context, MGInformationActivity_.class);
        }

        public l a(ExtBean extBean) {
            return (l) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33217a;
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

        public l(Fragment fragment) {
            super(fragment.getActivity(), MGInformationActivity_.class);
            this.f33217a = fragment;
        }
    }

    public static l T0(Context context) {
        return new l(context);
    }

    public static l U0(Fragment fragment) {
        return new l(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.f33194k = (ExtBean) extras.getSerializable("extBean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGInformationActivity
    public void H0() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGInformationActivity
    public void J0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGInformationActivity
    public void K0(List<InformationListDataBean> list) {
        org.androidannotations.api.b.e("", new j(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33204r.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGInformationActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33203q);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.information_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33186c = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f33187d = (XListView2) aVar.internalFindViewById(R.id.xListView);
        this.f33188e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f33189f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f33190g = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f33192i = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f33193j = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new e());
        }
        ImageView imageView = this.f33192i;
        if (imageView != null) {
            imageView.setOnClickListener(new f());
        }
        CustomerDownloadView customerDownloadView = this.f33193j;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new g());
        }
        D0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33204r.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33203q.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGInformationActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGInformationActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33203q.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33203q.a(this);
    }
}
