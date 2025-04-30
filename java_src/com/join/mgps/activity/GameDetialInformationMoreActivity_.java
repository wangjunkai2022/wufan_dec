package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
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
import com.join.mgps.dto.DetialIntentBean;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameDetialInformationMoreActivity_ extends GameDetialInformationMoreActivity implements g3.a, i3.a, i3.b {
    public static final String F = "detialIntentBean";
    private final i3.c D = new i3.c();
    private final Map<Class<?>, Object> E = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f31283a;

        a(List list) {
            this.f31283a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialInformationMoreActivity_.super.O0(this.f31283a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialInformationMoreActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialInformationMoreActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialInformationMoreActivity_.super.J0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialInformationMoreActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialInformationMoreActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialInformationMoreActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialInformationMoreActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialInformationMoreActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialInformationMoreActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialInformationMoreActivity_.super.I0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialInformationMoreActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialInformationMoreActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    public static class n extends org.androidannotations.api.builder.a<n> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31297a;

        public n(Context context) {
            super(context, GameDetialInformationMoreActivity_.class);
        }

        public n a(DetialIntentBean detialIntentBean) {
            return (n) super.extra(GameDetialInformationMoreActivity_.F, detialIntentBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31297a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), GameDetialInformationMoreActivity_.class);
            this.f31297a = fragment;
        }
    }

    public static n Z0(Context context) {
        return new n(context);
    }

    public static n a1(Fragment fragment) {
        return new n(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f31267p = resources.getString(R.string.net_excption);
        this.f31268q = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(F)) {
            return;
        }
        this.f31270s = (DetialIntentBean) extras.getSerializable(F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialInformationMoreActivity
    public void I0() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialInformationMoreActivity
    public void J0() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialInformationMoreActivity
    public void M0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialInformationMoreActivity
    public void O0(List<RecommendInfomationBean> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialInformationMoreActivity
    public void R0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.E.get(cls);
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
        setContentView(R.layout.detial_more_imformation_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31255d = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f31256e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f31257f = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        this.f31258g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f31259h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f31260i = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f31261j = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f31262k = (LinearLayout) aVar.internalFindViewById(R.id.tabs);
        this.f31263l = (LinearLayout) aVar.internalFindViewById(R.id.group);
        this.f31264m = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f31265n = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f31260i;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        ImageView imageView2 = this.f31261j;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new f());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new g());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new h());
        }
        ImageView imageView3 = this.f31264m;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new i());
        }
        CustomerDownloadView customerDownloadView = this.f31265n;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new j());
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
    @Override // com.join.mgps.activity.GameDetialInformationMoreActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialInformationMoreActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new m(), 0L);
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
