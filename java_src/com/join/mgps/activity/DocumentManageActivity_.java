package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class DocumentManageActivity_ extends DocumentManageActivity implements g3.a, i3.a, i3.b {
    public static final String M0 = "from";
    public static final String N0 = "gameid";
    private final i3.c E0 = new i3.c();
    private final Map<Class<?>, Object> F0 = new HashMap();
    private final IntentFilter G0 = new IntentFilter();
    private final BroadcastReceiver H0 = new k();
    private final IntentFilter I0 = new IntentFilter();
    private final BroadcastReceiver J0 = new m();
    private final IntentFilter K0 = new IntentFilter();
    private final BroadcastReceiver L0 = new n();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArchiveNumDataBean f29554a;

        c(ArchiveNumDataBean archiveNumDataBean) {
            this.f29554a = archiveNumDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.e1(this.f29554a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.showRedPoint();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29557a;

        e(int i2) {
            this.f29557a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.f1(this.f29557a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29559a;

        f(int i2) {
            this.f29559a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.d1(this.f29559a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.hideRedPoint();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f29562a;

        h(CloudListDataBean cloudListDataBean) {
            this.f29562a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.g1(this.f29562a);
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
                DocumentManageActivity_.super.L0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f29565a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, CloudListDataBean cloudListDataBean) {
            super(str, j4, str2);
            this.f29565a = cloudListDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DocumentManageActivity_.super.I0(this.f29565a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DocumentManageActivity_.this.W0(intent);
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29568a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29569b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f29570c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, String str3, String str4, String str5) {
            super(str, j4, str2);
            this.f29568a = str3;
            this.f29569b = str4;
            this.f29570c = str5;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DocumentManageActivity_.super.J0(this.f29568a, this.f29569b, this.f29570c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends BroadcastReceiver {
        m() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DocumentManageActivity_.this.c1();
        }
    }

    /* loaded from: classes3.dex */
    class n extends BroadcastReceiver {
        n() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DocumentManageActivity_.this.X0(intent);
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.V0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    public static class u extends org.androidannotations.api.builder.a<u> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29580a;

        public u(Context context) {
            super(context, DocumentManageActivity_.class);
        }

        public u a(int i2) {
            return (u) super.extra("from", i2);
        }

        public u b(String str) {
            return (u) super.extra("gameid", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29580a;
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
            super(fragment.getActivity(), DocumentManageActivity_.class);
            this.f29580a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        this.f29535u = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        this.G0.addAction(f1.a.f65477g0);
        this.I0.addAction("com.wufun.cloud.showDownDialog");
        this.K0.addAction("com.cloud.downCloud.all");
        registerReceiver(this.H0, this.G0);
        registerReceiver(this.J0, this.I0);
        registerReceiver(this.L0, this.K0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("from")) {
                DocumentManageActivity.D0 = extras.getInt("from");
            }
            if (extras.containsKey("gameid")) {
                this.f29543y = extras.getString("gameid");
            }
        }
    }

    public static u q1(Context context) {
        return new u(context);
    }

    public static u r1(Fragment fragment) {
        return new u(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void I0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.a.l(new j("", 0L, "", cloudListDataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void J0(String str, String str2, String str3) {
        org.androidannotations.api.a.l(new l("", 0L, "", str, str2, str3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void L0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void d1(int i2) {
        org.androidannotations.api.b.e("", new f(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void e1(ArchiveNumDataBean archiveNumDataBean) {
        org.androidannotations.api.b.e("", new c(archiveNumDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void f1(int i2) {
        org.androidannotations.api.b.e("", new e(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void g1(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new h(cloudListDataBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.F0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void hideRedPoint() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.E0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_document_manage);
    }

    @Override // com.join.mgps.activity.DocumentManageActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.H0);
        unregisterReceiver(this.J0);
        unregisterReceiver(this.L0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29508a = (LinearLayout) aVar.internalFindViewById(R.id.archive_back);
        this.f29509b = (RelativeLayout) aVar.internalFindViewById(R.id.rl_myarchive);
        this.f29510c = (TextView) aVar.internalFindViewById(R.id.tv_myarchive_size);
        this.f29511d = (ImageView) aVar.internalFindViewById(R.id.iv_myarchive_open);
        this.f29512e = (RadioGroup) aVar.internalFindViewById(R.id.rg_myarchive);
        this.f29513f = (RadioButton) aVar.internalFindViewById(R.id.rb_local);
        this.f29514g = (RadioButton) aVar.internalFindViewById(R.id.rb_colud);
        this.f29515h = (RelativeLayout) aVar.internalFindViewById(R.id.rl_shop);
        this.f29516i = (TextView) aVar.internalFindViewById(R.id.tv_shop_size);
        this.f29517j = (ImageView) aVar.internalFindViewById(R.id.iv_shop_open);
        this.f29518k = (RadioGroup) aVar.internalFindViewById(R.id.rg_myshop);
        this.f29519l = (RadioButton) aVar.internalFindViewById(R.id.rb_remoned);
        this.f29520m = (RadioButton) aVar.internalFindViewById(R.id.rb_buy);
        this.f29521n = (LinearLayout) aVar.internalFindViewById(R.id.ll_manage);
        this.f29523o = (TextView) aVar.internalFindViewById(R.id.tv_manage);
        this.f29525p = (FrameLayout) aVar.internalFindViewById(R.id.frag);
        this.f29527q = (RelativeLayout) aVar.internalFindViewById(R.id.rl_bg);
        this.f29529r = (SimpleDraweeView) aVar.internalFindViewById(R.id.simdw);
        this.f29531s = (TextView) aVar.internalFindViewById(R.id.tv_red);
        RadioButton radioButton = this.f29513f;
        if (radioButton != null) {
            radioButton.setOnClickListener(new o());
        }
        RadioButton radioButton2 = this.f29514g;
        if (radioButton2 != null) {
            radioButton2.setOnClickListener(new p());
        }
        RadioButton radioButton3 = this.f29519l;
        if (radioButton3 != null) {
            radioButton3.setOnClickListener(new q());
        }
        RadioButton radioButton4 = this.f29520m;
        if (radioButton4 != null) {
            radioButton4.setOnClickListener(new r());
        }
        RelativeLayout relativeLayout = this.f29509b;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new s());
        }
        LinearLayout linearLayout = this.f29508a;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new t());
        }
        RelativeLayout relativeLayout2 = this.f29515h;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new a());
        }
        LinearLayout linearLayout2 = this.f29521n;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.F0.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.E0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void showRedPoint() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.E0.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.E0.a(this);
    }
}
