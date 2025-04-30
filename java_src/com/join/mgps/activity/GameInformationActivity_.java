package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ObservableWebView;
import com.join.mgps.customview.SmartScrollView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.InformationCommentBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameInformationActivity_ extends GameInformationActivity implements g3.a, i3.a, i3.b {
    public static final String N0 = "info_id";
    public static final String O0 = "title";
    public static final String P0 = "extBean";
    public static final String Q0 = "defaultDown";
    private final i3.c J0 = new i3.c();
    private final Map<Class<?>, Object> K0 = new HashMap();
    private final IntentFilter L0 = new IntentFilter();
    private final BroadcastReceiver M0 = new k();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.b1();
        }
    }

    /* loaded from: classes3.dex */
    public static class a0 extends org.androidannotations.api.builder.a<a0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31541a;

        public a0(Context context) {
            super(context, GameInformationActivity_.class);
        }

        public a0 a(boolean z3) {
            return (a0) super.extra("defaultDown", z3);
        }

        public a0 b(ExtBean extBean) {
            return (a0) super.extra("extBean", extBean);
        }

        public a0 c(String str) {
            return (a0) super.extra("info_id", str);
        }

        public a0 d(String str) {
            return (a0) super.extra("title", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31541a;
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

        public a0(Fragment fragment) {
            super(fragment.getActivity(), GameInformationActivity_.class);
            this.f31541a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.U0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f31543a;

        c(List list) {
            this.f31543a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.Z0(this.f31543a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.e1();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f31547a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextView f31548b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f31549c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f31550d;

        f(ImageView imageView, TextView textView, boolean z3, String str) {
            this.f31547a = imageView;
            this.f31548b = textView;
            this.f31549c = z3;
            this.f31550d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.g1(this.f31547a, this.f31548b, this.f31549c, this.f31550d);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31552a;

        g(String str) {
            this.f31552a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showToast(this.f31552a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameInformationBean f31555a;

        i(GameInformationBean gameInformationBean) {
            this.f31555a = gameInformationBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.a1(this.f31555a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f31558b = "gameData";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameInformationActivity_.this.V0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31561a;

        m(String str) {
            this.f31561a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showMessage(this.f31561a);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {
        o(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivity_.super.R0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31565a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f31565a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivity_.super.Q0(this.f31565a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31567a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f31568b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f31569c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String str, long j4, String str2, InformationCommentBean informationCommentBean, ImageView imageView, TextView textView) {
            super(str, j4, str2);
            this.f31567a = informationCommentBean;
            this.f31568b = imageView;
            this.f31569c = textView;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivity_.super.W0(this.f31567a, this.f31568b, this.f31569c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r extends a.c {
        r(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.setNetwork();
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f31323b = resources.getString(R.string.net_excption);
        this.f31324c = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.L0.addAction(f1.a.H);
        this.L0.addAction(f1.a.F);
        registerReceiver(this.M0, this.L0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("info_id")) {
                this.C = extras.getString("info_id");
            }
            if (extras.containsKey("title")) {
                this.D = extras.getString("title");
            }
            if (extras.containsKey("extBean")) {
                this.E = (ExtBean) extras.getSerializable("extBean");
            }
            if (extras.containsKey("defaultDown")) {
                this.F = extras.getBoolean("defaultDown");
            }
        }
    }

    public static a0 y1(Context context) {
        return new a0(context);
    }

    public static a0 z1(Fragment fragment) {
        return new a0(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void M0() {
        org.androidannotations.api.b.e("", new j(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void Q0(String str) {
        org.androidannotations.api.a.l(new p("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void R0() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void U0() {
        org.androidannotations.api.b.e("", new b(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void W0(InformationCommentBean informationCommentBean, ImageView imageView, TextView textView) {
        org.androidannotations.api.a.l(new q("", 0L, "", informationCommentBean, imageView, textView));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void Y0() {
        org.androidannotations.api.b.e("", new l(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void Z0(List<InformationCommentBean> list) {
        org.androidannotations.api.b.e("", new c(list), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void a1(GameInformationBean gameInformationBean) {
        org.androidannotations.api.b.e("", new i(gameInformationBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void e1() {
        org.androidannotations.api.b.e("", new d(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void g1(ImageView imageView, TextView textView, boolean z3, String str) {
        org.androidannotations.api.b.e("", new f(imageView, textView, z3, str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new r("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.J0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.game_information_layout);
    }

    @Override // com.join.mgps.activity.GameInformationActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.M0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31325d = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f31326e = (SmartScrollView) aVar.internalFindViewById(R.id.scrollView);
        this.f31327f = (ObservableWebView) aVar.internalFindViewById(R.id.webView);
        this.f31328g = (RelativeLayout) aVar.internalFindViewById(R.id.applayout);
        this.f31329h = (RelativeLayout) aVar.internalFindViewById(R.id.gameCardLayout);
        this.f31330i = (RelativeLayout) aVar.internalFindViewById(R.id.relativeLayout);
        this.f31331j = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f31332k = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f31333l = (SimpleDraweeView) aVar.internalFindViewById(R.id.appIcon);
        this.f31334m = (SimpleDraweeView) aVar.internalFindViewById(R.id.cardIcon);
        this.f31335n = (TextView) aVar.internalFindViewById(R.id.textView69);
        this.f31337o = (TextView) aVar.internalFindViewById(R.id.appname);
        this.f31339p = (TextView) aVar.internalFindViewById(R.id.cardAppname);
        this.f31341q = (TextView) aVar.internalFindViewById(R.id.cardDownNumberText);
        this.f31343r = (TextView) aVar.internalFindViewById(R.id.cardAppSize);
        this.f31345s = (TextView) aVar.internalFindViewById(R.id.cardInfo);
        this.f31347t = (Button) aVar.internalFindViewById(R.id.cardDownButn);
        this.f31349u = (TextView) aVar.internalFindViewById(R.id.appsize);
        this.f31351v = (TextView) aVar.internalFindViewById(R.id.moneyText);
        this.f31353w = (TextView) aVar.internalFindViewById(R.id.moneyText2);
        this.f31355x = (Button) aVar.internalFindViewById(R.id.downloadImage);
        this.f31357y = (ImageView) aVar.internalFindViewById(R.id.shareImg);
        this.f31359z = (ImageView) aVar.internalFindViewById(R.id.comment);
        this.A = (LinearLayout) aVar.internalFindViewById(R.id.main);
        this.B = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.K = (TextView) aVar.internalFindViewById(R.id.content_title);
        this.f31336n0 = (TextView) aVar.internalFindViewById(R.id.contentName);
        this.f31338o0 = (TextView) aVar.internalFindViewById(R.id.contentTime);
        this.f31340p0 = (TextView) aVar.internalFindViewById(R.id.comment_number);
        this.f31342q0 = (TextView) aVar.internalFindViewById(R.id.more);
        this.f31344r0 = (LinearLayout) aVar.internalFindViewById(R.id.game_information_comment_top);
        this.f31346s0 = (LinearLayout) aVar.internalFindViewById(R.id.bottom_lay);
        this.f31348t0 = (LinearLayout) aVar.internalFindViewById(R.id.layout_share);
        this.f31350u0 = (TextView) aVar.internalFindViewById(R.id.roundMessage);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new s());
        }
        RelativeLayout relativeLayout = this.f31328g;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new t());
        }
        LinearLayout linearLayout = this.f31348t0;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new u());
        }
        ImageView imageView = this.f31359z;
        if (imageView != null) {
            imageView.setOnClickListener(new v());
        }
        Button button = this.f31355x;
        if (button != null) {
            button.setOnClickListener(new w());
        }
        Button button2 = this.f31347t;
        if (button2 != null) {
            button2.setOnClickListener(new x());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new y());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new z());
        }
        CustomerDownloadView customerDownloadView = this.B;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new a());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.K0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.J0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new m(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.J0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.J0.a(this);
    }
}
