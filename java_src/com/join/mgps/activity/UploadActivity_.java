package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.UpLoadGameConfig;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class UploadActivity_ extends UploadActivity implements g3.a, i3.a, i3.b {

    /* renamed from: u0  reason: collision with root package name */
    public static final String f36052u0 = "accountBean";

    /* renamed from: q0  reason: collision with root package name */
    private final i3.c f36053q0 = new i3.c();

    /* renamed from: r0  reason: collision with root package name */
    private final Map<Class<?>, Object> f36054r0 = new HashMap();

    /* renamed from: s0  reason: collision with root package name */
    private final IntentFilter f36055s0 = new IntentFilter();

    /* renamed from: t0  reason: collision with root package name */
    private final BroadcastReceiver f36056t0 = new k();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.W0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.X0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadActivity_.super.b1();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadActivity_.super.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadActivity_.super.g1();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadActivity_.super.f1();
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
                UploadActivity_.super.h1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f36066a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UpLoadGameConfig f36067b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ File f36068c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, Context context, UpLoadGameConfig upLoadGameConfig, File file) {
            super(str, j4, str2);
            this.f36066a = context;
            this.f36067b = upLoadGameConfig;
            this.f36068c = file;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UploadActivity_.super.a1(this.f36066a, this.f36067b, this.f36068c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f36070b = "upload_result";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UploadActivity_.this.c1((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getInt("upload_result"));
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.e1();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.d1();
        }
    }

    /* loaded from: classes3.dex */
    public static class t extends org.androidannotations.api.builder.a<t> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36080a;

        public t(Context context) {
            super(context, UploadActivity_.class);
        }

        public t a(AccountBean accountBean) {
            return (t) super.extra("accountBean", accountBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36080a;
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

        public t(Fragment fragment) {
            super(fragment.getActivity(), UploadActivity_.class);
            this.f36080a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        UploadActivity.I = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        this.f36055s0.addAction(UploadActivity.f36007o0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("accountBean")) {
            return;
        }
        this.f36033y = (AccountBean) extras.getSerializable("accountBean");
    }

    public static t o1(Context context) {
        return new t(context);
    }

    public static t p1(Fragment fragment) {
        return new t(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void Y0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // com.join.mgps.activity.UploadActivity
    public void a1(Context context, UpLoadGameConfig upLoadGameConfig, File file) {
        org.androidannotations.api.a.l(new j("", 0L, "", context, upLoadGameConfig, file));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void b1() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void f1() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void g1() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36054r0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void h1() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36053q0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.upload_layout);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        unregisterReceiver(this.f36056t0);
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        registerReceiver(this.f36056t0, this.f36055s0);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36016h = (TextView) aVar.internalFindViewById(R.id.gameType);
        this.f36017i = (TextView) aVar.internalFindViewById(R.id.platformType);
        this.f36023o = (TextView) aVar.internalFindViewById(R.id.fileName);
        this.f36024p = (TextView) aVar.internalFindViewById(R.id.gameIcon);
        this.f36025q = (SimpleDraweeView) aVar.internalFindViewById(R.id.img_1);
        this.f36026r = (SimpleDraweeView) aVar.internalFindViewById(R.id.img_2);
        this.f36027s = (SimpleDraweeView) aVar.internalFindViewById(R.id.img_3);
        this.f36031w = (EditText) aVar.internalFindViewById(R.id.gameName);
        this.f36032x = (EditText) aVar.internalFindViewById(R.id.gameDsc);
        this.f36034z = (ScrollView) aVar.internalFindViewById(R.id.lay_1);
        this.A = (LinearLayout) aVar.internalFindViewById(R.id.lay_2);
        this.B = (LinearLayout) aVar.internalFindViewById(R.id.lay_3);
        this.C = (LinearLayout) aVar.internalFindViewById(R.id.lay_4);
        this.D = (TextView) aVar.internalFindViewById(R.id.dscIngTxt);
        this.E = (TextView) aVar.internalFindViewById(R.id.dscFaildTxt);
        this.F = (TextView) aVar.internalFindViewById(R.id.dscSuccessTxt);
        View internalFindViewById = aVar.internalFindViewById(R.id.gameType_lay);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.platformType_lay);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.file_lay);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.gameIcon_lay);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.img_lay);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.backImage);
        View internalFindViewById7 = aVar.internalFindViewById(R.id.uploadDsc);
        View internalFindViewById8 = aVar.internalFindViewById(R.id.uploadBtn);
        View internalFindViewById9 = aVar.internalFindViewById(R.id.stopupload);
        View internalFindViewById10 = aVar.internalFindViewById(R.id.re_continue_upload);
        View internalFindViewById11 = aVar.internalFindViewById(R.id.continue_upload);
        View internalFindViewById12 = aVar.internalFindViewById(R.id.reupload);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new l());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new m());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new n());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new o());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new p());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new q());
        }
        if (internalFindViewById7 != null) {
            internalFindViewById7.setOnClickListener(new r());
        }
        if (internalFindViewById8 != null) {
            internalFindViewById8.setOnClickListener(new s());
        }
        if (internalFindViewById9 != null) {
            internalFindViewById9.setOnClickListener(new a());
        }
        if (internalFindViewById10 != null) {
            internalFindViewById10.setOnClickListener(new b());
        }
        if (internalFindViewById11 != null) {
            internalFindViewById11.setOnClickListener(new c());
        }
        if (internalFindViewById12 != null) {
            internalFindViewById12.setOnClickListener(new d());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36054r0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36053q0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36053q0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36053q0.a(this);
    }
}
