package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.adapter.EverydayNewGameAdapter;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView4NewGame;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class PapaEverydayNewGameActivity_ extends PapaEverydayNewGameActivity implements g3.a, i3.a, i3.b {

    /* renamed from: z  reason: collision with root package name */
    public static final String f34623z = "extBean";

    /* renamed from: v  reason: collision with root package name */
    private final i3.c f34624v = new i3.c();

    /* renamed from: w  reason: collision with root package name */
    private final Map<Class<?>, Object> f34625w = new HashMap();

    /* renamed from: x  reason: collision with root package name */
    private final IntentFilter f34626x = new IntentFilter();

    /* renamed from: y  reason: collision with root package name */
    private final BroadcastReceiver f34627y = new b();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaEverydayNewGameActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f34629b = "gameData";

        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PapaEverydayNewGameActivity_.this.U0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaEverydayNewGameActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaEverydayNewGameActivity_.this.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaEverydayNewGameActivity_.this.X0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f34634a;

        f(List list) {
            this.f34634a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaEverydayNewGameActivity_.super.P0(this.f34634a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34636a;

        g(String str) {
            this.f34636a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaEverydayNewGameActivity_.super.showToast(this.f34636a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34638a;

        h(int i2) {
            this.f34638a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaEverydayNewGameActivity_.super.G0(this.f34638a);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaEverydayNewGameActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34641a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f34641a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaEverydayNewGameActivity_.super.M0(this.f34641a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class k extends org.androidannotations.api.builder.a<k> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34643a;

        public k(Context context) {
            super(context, PapaEverydayNewGameActivity_.class);
        }

        public k a(ExtBean extBean) {
            return (k) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34643a;
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

        public k(Fragment fragment) {
            super(fragment.getActivity(), PapaEverydayNewGameActivity_.class);
            this.f34643a = fragment;
        }
    }

    public static k h1(Context context) {
        return new k(context);
    }

    public static k i1(Fragment fragment) {
        return new k(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.f34626x.addAction(f1.a.H);
        this.f34626x.addAction(f1.a.F);
        registerReceiver(this.f34627y, this.f34626x);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.f34610o = (ExtBean) extras.getSerializable("extBean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaEverydayNewGameActivity
    public void G0(int i2) {
        org.androidannotations.api.b.e("", new h(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaEverydayNewGameActivity
    public void M0(int i2) {
        org.androidannotations.api.a.l(new j("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaEverydayNewGameActivity
    public void P0(List<EverydayNewGameAdapter.l> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34625w.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaEverydayNewGameActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34624v);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_everyday_new_game);
    }

    @Override // com.join.mgps.activity.PapaEverydayNewGameActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f34627y);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34596a = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f34597b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f34598c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34599d = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f34600e = (XListView4NewGame) aVar.internalFindViewById(R.id.listView);
        this.f34601f = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f34602g = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f34603h = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        ImageView imageView = this.f34597b;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        ImageView imageView2 = this.f34602g;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new d());
        }
        CustomerDownloadView customerDownloadView = this.f34603h;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34625w.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34624v.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaEverydayNewGameActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaEverydayNewGameActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34624v.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34624v.a(this);
    }
}
