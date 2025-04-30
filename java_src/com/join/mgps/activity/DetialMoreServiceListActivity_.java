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
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.ServiceState;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class DetialMoreServiceListActivity_ extends DetialMoreServiceListActivity implements g3.a, i3.a, i3.b {

    /* renamed from: t  reason: collision with root package name */
    public static final String f29466t = "gameId";

    /* renamed from: r  reason: collision with root package name */
    private final i3.c f29467r = new i3.c();

    /* renamed from: s  reason: collision with root package name */
    private final Map<Class<?>, Object> f29468s = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f29474a;

        f(List list) {
            this.f29474a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.H0(this.f29474a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.I0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.G0();
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
                DetialMoreServiceListActivity_.super.E0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29479a;

        public j(Context context) {
            super(context, DetialMoreServiceListActivity_.class);
        }

        public j a(String str) {
            return (j) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29479a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), DetialMoreServiceListActivity_.class);
            this.f29479a = fragment;
        }
    }

    public static j P0(Context context) {
        return new j(context);
    }

    public static j Q0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f29457j = resources.getString(R.string.net_excption);
        this.f29458k = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.f29459l = extras.getString("gameId");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void E0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void G0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void H0(List<ServiceState> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void I0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29468s.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29467r);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.gamedetial_more_service_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29448a = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f29449b = (XListView) aVar.internalFindViewById(R.id.rankListView);
        this.f29450c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f29451d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f29452e = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f29453f = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f29454g = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f29455h = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        ImageView imageView = this.f29452e;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        ImageView imageView2 = this.f29453f;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new b());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29468s.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29467r.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29467r.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29467r.a(this);
    }
}
