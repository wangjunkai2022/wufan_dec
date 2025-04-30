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
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.MustPlayAd;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MustPlayActivity_ extends MustPlayActivity implements g3.a, i3.a, i3.b {
    private final i3.c A = new i3.c();
    private final Map<Class<?>, Object> B = new HashMap();
    private final IntentFilter C = new IntentFilter();
    private final BroadcastReceiver D = new j();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33894a;

        c(List list) {
            this.f33894a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.J0(this.f33894a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33896a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33897b;

        d(List list, int i2) {
            this.f33896a = list;
            this.f33897b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.K0(this.f33896a, this.f33897b);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.H0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33902a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f33902a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MustPlayActivity_.super.loadData(this.f33902a);
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
                MustPlayActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f33905b = "gameData";

        j() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MustPlayActivity_.this.I0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class s extends org.androidannotations.api.builder.a<s> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33915a;

        public s(Context context) {
            super(context, MustPlayActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33915a;
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
            super(fragment.getActivity(), MustPlayActivity_.class);
            this.f33915a = fragment;
        }
    }

    public static s V0(Context context) {
        return new s(context);
    }

    public static s W0(Fragment fragment) {
        return new s(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.C.addAction(f1.a.H);
        this.C.addAction(f1.a.F);
        registerReceiver(this.D, this.C);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void H0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void J0(List<MustPlayAd> list) {
        org.androidannotations.api.b.e("", new c(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void K0(List<k1.c> list, int i2) {
        org.androidannotations.api.b.e("", new d(list, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void L0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.B.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void loadData(int i2) {
        org.androidannotations.api.a.l(new h("", 0L, "", i2));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.A);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.must_play_layout);
    }

    @Override // com.join.mgps.activity.MustPlayActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.D);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33866b = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f33867c = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f33868d = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f33869e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f33870f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f33871g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f33872h = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f33873i = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f33874j = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.playLeft);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.playRight);
        ImageView imageView = this.f33872h;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        ImageView imageView2 = this.f33868d;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new l());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new m());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new n());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new o());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new p());
        }
        ImageView imageView3 = this.f33873i;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new q());
        }
        CustomerDownloadView customerDownloadView = this.f33874j;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new r());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.B.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.A.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.A.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.A.a(this);
    }
}
