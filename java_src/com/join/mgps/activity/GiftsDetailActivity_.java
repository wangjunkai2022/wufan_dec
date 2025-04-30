package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GiftsDetailActivity_ extends GiftsDetailActivity implements g3.a, i3.a, i3.b {
    public static final String B = "gameId";
    public static final String C = "Uid";
    public static final String D = "giftPackageDataInfoBean";

    /* renamed from: z  reason: collision with root package name */
    private final i3.c f32088z = new i3.c();
    private final Map<Class<?>, Object> A = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.X0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.P0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GiftsDetailActivity_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                GiftsDetailActivity_.super.L0();
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
                GiftsDetailActivity_.super.M0();
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
            GiftsDetailActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GiftsDetailActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GiftsDetailActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32099a;

        k(String str) {
            this.f32099a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.showToast(this.f32099a);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f32101a;

        l(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f32101a = giftPackageDataOperationBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.U0(this.f32101a);
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.V0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32105a;

        o(String str) {
            this.f32105a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.R0(this.f32105a);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.W0();
        }
    }

    /* loaded from: classes3.dex */
    public static class q extends org.androidannotations.api.builder.a<q> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32108a;

        public q(Context context) {
            super(context, GiftsDetailActivity_.class);
        }

        public q a(int i2) {
            return (q) super.extra("Uid", i2);
        }

        public q b(String str) {
            return (q) super.extra("gameId", str);
        }

        public q c(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            return (q) super.extra(GiftsDetailActivity_.D, giftPackageDataInfoBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32108a;
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
            super(fragment.getActivity(), GiftsDetailActivity_.class);
            this.f32108a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.f32071m = extras.getString("gameId");
            }
            if (extras.containsKey("Uid")) {
                this.f32072n = extras.getInt("Uid");
            }
            if (extras.containsKey(D)) {
                this.f32073o = (GiftPackageDataInfoBean) extras.getSerializable(D);
            }
        }
    }

    public static q n1(Context context) {
        return new q(context);
    }

    public static q o1(Fragment fragment) {
        return new q(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void K0() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void L0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void M0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void O0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void P0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void R0(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void U0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        org.androidannotations.api.b.e("", new l(giftPackageDataOperationBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void V0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void W0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void X0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void Y0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void Z0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32088z);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.gift_detail_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32060b = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f32061c = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f32062d = (ScrollView) aVar.internalFindViewById(R.id.scrollView);
        this.f32063e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f32064f = (SimpleDraweeView) aVar.internalFindViewById(R.id.giftIcon);
        this.f32065g = (TextView) aVar.internalFindViewById(R.id.giftNameTv);
        this.f32066h = (TextView) aVar.internalFindViewById(R.id.saveCodeTv);
        this.f32067i = (TextView) aVar.internalFindViewById(R.id.saveCodeContent);
        this.f32068j = (TextView) aVar.internalFindViewById(R.id.giftContent);
        this.f32069k = (TextView) aVar.internalFindViewById(R.id.giftTime);
        this.f32070l = (TextView) aVar.internalFindViewById(R.id.giftMethod);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new h());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new i());
        }
        TextView textView = this.f32066h;
        if (textView != null) {
            textView.setOnClickListener(new j());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32088z.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new k(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32088z.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32088z.a(this);
    }
}
