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
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class DownloadSettingActivity_ extends DownloadSettingActivity implements g3.a, i3.a, i3.b {

    /* renamed from: y  reason: collision with root package name */
    private final i3.c f29670y = new i3.c();

    /* renamed from: z  reason: collision with root package name */
    private final Map<Class<?>, Object> f29671z = new HashMap();
    private final IntentFilter A = new IntentFilter();
    private final BroadcastReceiver B = new j();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29676a;

        e(String str) {
            this.f29676a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadSettingActivity_.super.showToast(this.f29676a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29678a;

        f(String str) {
            this.f29678a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadSettingActivity_.super.error(this.f29678a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VersionDto f29680a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29681b;

        g(VersionDto versionDto, boolean z3) {
            this.f29680a = versionDto;
            this.f29681b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadSettingActivity_.super.showVersionDownLoadHint(this.f29680a, this.f29681b);
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadSettingActivity_.super.R0();
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
                DownloadSettingActivity_.super.J0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends BroadcastReceiver {
        j() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadSettingActivity_.this.Q0(intent);
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    public static class s extends org.androidannotations.api.builder.a<s> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29694a;

        public s(Context context) {
            super(context, DownloadSettingActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29694a;
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
            super(fragment.getActivity(), DownloadSettingActivity_.class);
            this.f29694a = fragment;
        }
    }

    public static s Z0(Context context) {
        return new s(context);
    }

    public static s a1(Fragment fragment) {
        return new s(fragment);
    }

    private void init_(Bundle bundle) {
        this.f29657p = new PrefDef_(this);
        i3.c.b(this);
        this.A.addAction(f1.a.f65498r);
        registerReceiver(this.B, this.A);
    }

    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void J0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void R0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29671z.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29670y);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.download_setting_activity);
    }

    @Override // com.join.mgps.activity.DownloadSettingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.B);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29642a = (RelativeLayout) aVar.internalFindViewById(R.id.gprsNotice);
        this.f29643b = (RelativeLayout) aVar.internalFindViewById(R.id.downloadPath);
        this.f29644c = (ImageView) aVar.internalFindViewById(R.id.imageGprsNote);
        this.f29645d = (ImageView) aVar.internalFindViewById(R.id.imageViewWifi);
        this.f29646e = (ImageView) aVar.internalFindViewById(R.id.autoDownImageViewWifi);
        this.f29647f = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f29648g = (TextView) aVar.internalFindViewById(R.id.textWifi);
        this.f29649h = (TextView) aVar.internalFindViewById(R.id.nowPathInfo);
        this.f29650i = (TextView) aVar.internalFindViewById(R.id.textGprs);
        this.f29651j = (TextView) aVar.internalFindViewById(R.id.papaVer);
        this.f29652k = aVar.internalFindViewById(R.id.exitLogin);
        this.f29653l = aVar.internalFindViewById(R.id.accountManager);
        this.f29654m = (ImageView) aVar.internalFindViewById(R.id.autoPlayVideoWifi);
        this.f29655n = (RelativeLayout) aVar.internalFindViewById(R.id.rl_developer);
        View internalFindViewById = aVar.internalFindViewById(R.id.videoPlaySetting);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.pushLayout);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.autoDownLayoutWifi);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.checkVerLayout);
        View view = this.f29653l;
        if (view != null) {
            view.setOnClickListener(new k());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new l());
        }
        ImageView imageView = this.f29654m;
        if (imageView != null) {
            imageView.setOnClickListener(new m());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new n());
        }
        View view2 = this.f29652k;
        if (view2 != null) {
            view2.setOnClickListener(new o());
        }
        ImageView imageView2 = this.f29646e;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new p());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new q());
        }
        RelativeLayout relativeLayout = this.f29642a;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new r());
        }
        RelativeLayout relativeLayout2 = this.f29643b;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new a());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new b());
        }
        RelativeLayout relativeLayout3 = this.f29655n;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnClickListener(new c());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new d());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29671z.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29670y.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new e(str), 0L);
    }

    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void showVersionDownLoadHint(VersionDto versionDto, boolean z3) {
        org.androidannotations.api.b.e("", new g(versionDto, z3), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29670y.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29670y.a(this);
    }
}
