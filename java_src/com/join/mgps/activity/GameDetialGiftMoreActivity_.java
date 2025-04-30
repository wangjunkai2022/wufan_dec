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
import com.join.mgps.dto.GamedetialMoreGiftData;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameDetialGiftMoreActivity_ extends GameDetialGiftMoreActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p0  reason: collision with root package name */
    public static final String f31223p0 = "gameId";

    /* renamed from: n0  reason: collision with root package name */
    private final i3.c f31224n0 = new i3.c();

    /* renamed from: o0  reason: collision with root package name */
    private final Map<Class<?>, Object> f31225o0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.c1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.U0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f31229a;

        d(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f31229a = giftPackageDataInfoBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.V0(this.f31229a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31233a;

        g(String str) {
            this.f31233a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.showToast(this.f31233a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f31235a;

        h(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f31235a = giftPackageDataOperationBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.W0(this.f31235a);
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
                GameDetialGiftMoreActivity_.super.R0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {
        j(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialGiftMoreActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialGiftMoreActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f31240a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, GiftPackageDataInfoBean giftPackageDataInfoBean) {
            super(str, j4, str2);
            this.f31240a = giftPackageDataInfoBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialGiftMoreActivity_.super.Q0(this.f31240a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialGiftMoreActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialGiftMoreActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialGiftMoreActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialGiftMoreActivity_.this.b1();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialGiftMoreActivity_.this.a1();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GamedetialMoreGiftData f31249a;

        t(GamedetialMoreGiftData gamedetialMoreGiftData) {
            this.f31249a = gamedetialMoreGiftData;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialGiftMoreActivity_.super.X0(this.f31249a);
        }
    }

    /* loaded from: classes3.dex */
    public static class u extends org.androidannotations.api.builder.a<u> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31251a;

        public u(Context context) {
            super(context, GameDetialGiftMoreActivity_.class);
        }

        public u a(String str) {
            return (u) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31251a;
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

        public u(Fragment fragment) {
            super(fragment.getActivity(), GameDetialGiftMoreActivity_.class);
            this.f31251a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f31198n = resources.getString(R.string.net_excption);
        this.f31199o = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.f31201q = extras.getString("gameId");
    }

    public static u r1(Context context) {
        return new u(context);
    }

    public static u s1(Fragment fragment) {
        return new u(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void Q0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.a.l(new l("", 0L, "", giftPackageDataInfoBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void R0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void U0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void V0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        org.androidannotations.api.b.e("", new d(giftPackageDataInfoBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void W0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        org.androidannotations.api.b.e("", new h(giftPackageDataOperationBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void X0(GamedetialMoreGiftData gamedetialMoreGiftData) {
        org.androidannotations.api.b.e("", new t(gamedetialMoreGiftData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void Y0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void Z0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void c1() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f31225o0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f31224n0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.category_collection_rank);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31188d = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f31189e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f31190f = (XListView2) aVar.internalFindViewById(R.id.rankListView);
        this.f31191g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f31192h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f31193i = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f31194j = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f31195k = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f31196l = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f31193i;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        ImageView imageView2 = this.f31194j;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new m());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new n());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new o());
        }
        ImageView imageView3 = this.f31195k;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new p());
        }
        CustomerDownloadView customerDownloadView = this.f31196l;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new q());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f31225o0.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f31224n0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetialGiftMoreActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f31224n0.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f31224n0.a(this);
    }
}
