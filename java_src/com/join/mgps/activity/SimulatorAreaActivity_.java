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
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.SimulatorAreaDataBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class SimulatorAreaActivity_ extends SimulatorAreaActivity implements g3.a, i3.a, i3.b {
    public static final String D = "simulatorType";
    public static final String E = "simulatorTitle";

    /* renamed from: z  reason: collision with root package name */
    private final i3.c f35660z = new i3.c();
    private final Map<Class<?>, Object> A = new HashMap();
    private final IntentFilter B = new IntentFilter();
    private final BroadcastReceiver C = new e();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f35662a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f35663b;

        b(DownloadTask downloadTask, int i2) {
            this.f35662a = downloadTask;
            this.f35663b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.updateUI(this.f35662a, this.f35663b);
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35665a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f35666b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f35665a = str3;
            this.f35666b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorAreaActivity_.super.I0(this.f35665a, this.f35666b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                SimulatorAreaActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f35669b = "gameData";

        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SimulatorAreaActivity_.this.K0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimulatorAreaDataBean f35676a;

        k(SimulatorAreaDataBean simulatorAreaDataBean) {
            this.f35676a = simulatorAreaDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.M0(this.f35676a);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f35679a;

        m(boolean z3) {
            this.f35679a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.Q0(this.f35679a);
        }
    }

    /* loaded from: classes3.dex */
    public static class n extends org.androidannotations.api.builder.a<n> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35681a;

        public n(Context context) {
            super(context, SimulatorAreaActivity_.class);
        }

        public n a(String str) {
            return (n) super.extra(SimulatorAreaActivity_.E, str);
        }

        public n b(int i2) {
            return (n) super.extra(SimulatorAreaActivity_.D, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35681a;
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
            super(fragment.getActivity(), SimulatorAreaActivity_.class);
            this.f35681a = fragment;
        }
    }

    public static n Y0(Context context) {
        return new n(context);
    }

    public static n Z0(Fragment fragment) {
        return new n(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.B.addAction(f1.a.H);
        this.B.addAction(f1.a.F);
        registerReceiver(this.C, this.B);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(D)) {
                this.f35640h = extras.getInt(D);
            }
            if (extras.containsKey(E)) {
                this.f35641i = extras.getString(E);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void I0(String str, int i2) {
        org.androidannotations.api.a.l(new c("", 0L, "", str, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void L0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void M0(SimulatorAreaDataBean simulatorAreaDataBean) {
        org.androidannotations.api.b.e("", new k(simulatorAreaDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void Q0(boolean z3) {
        org.androidannotations.api.b.e("", new m(z3), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35660z);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_simulator_area);
    }

    @Override // com.join.mgps.activity.SimulatorAreaActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.C);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35634b = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f35635c = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f35636d = (XListView2) aVar.internalFindViewById(R.id.simulator_listview);
        this.f35637e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f35638f = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f35639g = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.back_image);
        LinearLayout linearLayout = this.f35635c;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new f());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new g());
        }
        ImageView imageView = this.f35638f;
        if (imageView != null) {
            imageView.setOnClickListener(new h());
        }
        CustomerDownloadView customerDownloadView = this.f35639g;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new i());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new j());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35660z.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void updateUI(DownloadTask downloadTask, int i2) {
        org.androidannotations.api.b.e("", new b(downloadTask, i2), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35660z.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35660z.a(this);
    }
}
