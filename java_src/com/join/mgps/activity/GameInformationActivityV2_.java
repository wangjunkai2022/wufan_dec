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
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.InformationCommentBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameInformationActivityV2_ extends GameInformationActivityV2 implements g3.a, i3.a, i3.b {
    public static final String D0 = "info_id";
    public static final String E0 = "title";
    public static final String F0 = "extBean";
    public static final String G0 = "defaultDown";

    /* renamed from: z0  reason: collision with root package name */
    private final i3.c f31501z0 = new i3.c();
    private final Map<Class<?>, Object> A0 = new HashMap();
    private final IntentFilter B0 = new IntentFilter();
    private final BroadcastReceiver C0 = new k();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.e1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f31503a;

        b(List list) {
            this.f31503a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.o1(this.f31503a);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.t1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f31507a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextView f31508b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f31509c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f31510d;

        e(ImageView imageView, TextView textView, boolean z3, String str) {
            this.f31507a = imageView;
            this.f31508b = textView;
            this.f31509c = z3;
            this.f31510d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.v1(this.f31507a, this.f31508b, this.f31509c, this.f31510d);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31512a;

        f(String str) {
            this.f31512a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showToast(this.f31512a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameInformationBean f31515a;

        h(GameInformationBean gameInformationBean) {
            this.f31515a = gameInformationBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.p1(this.f31515a);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.n1();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31518a;

        j(String str) {
            this.f31518a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showMessage(this.f31518a);
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f31520b = "gameData";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameInformationActivityV2_.this.f1((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.updateDownloadView();
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {
        m(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivityV2_.super.Z0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31524a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f31524a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivityV2_.super.W0(this.f31524a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31526a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f31527b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f31528c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, InformationCommentBean informationCommentBean, ImageView imageView, TextView textView) {
            super(str, j4, str2);
            this.f31526a = informationCommentBean;
            this.f31527b = imageView;
            this.f31528c = textView;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivityV2_.super.h1(this.f31526a, this.f31527b, this.f31528c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {
        p(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivityV2_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.c1();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.q1();
        }
    }

    /* loaded from: classes3.dex */
    public static class y extends org.androidannotations.api.builder.a<y> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31539a;

        public y(Context context) {
            super(context, GameInformationActivityV2_.class);
        }

        public y a(boolean z3) {
            return (y) super.extra("defaultDown", z3);
        }

        public y b(ExtBean extBean) {
            return (y) super.extra("extBean", extBean);
        }

        public y c(String str) {
            return (y) super.extra("info_id", str);
        }

        public y d(String str) {
            return (y) super.extra("title", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31539a;
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

        public y(Fragment fragment) {
            super(fragment.getActivity(), GameInformationActivityV2_.class);
            this.f31539a = fragment;
        }
    }

    public static y M1(Context context) {
        return new y(context);
    }

    public static y N1(Fragment fragment) {
        return new y(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f31377b = resources.getString(R.string.net_excption);
        this.f31378c = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.B0.addAction(f1.a.H);
        this.B0.addAction(f1.a.F);
        registerReceiver(this.C0, this.B0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("info_id")) {
                this.f31399s = extras.getString("info_id");
            }
            if (extras.containsKey("title")) {
                this.f31401t = extras.getString("title");
            }
            if (extras.containsKey("extBean")) {
                this.f31403u = (ExtBean) extras.getSerializable("extBean");
            }
            if (extras.containsKey("defaultDown")) {
                this.f31405v = extras.getBoolean("defaultDown");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void W0(String str) {
        org.androidannotations.api.a.l(new n("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void Z0() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void e1() {
        org.androidannotations.api.b.e("", new a(), 400L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void h1(InformationCommentBean informationCommentBean, ImageView imageView, TextView textView) {
        org.androidannotations.api.a.l(new o("", 0L, "", informationCommentBean, imageView, textView));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void n1() {
        org.androidannotations.api.b.e("", new i(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void o1(List<InformationCommentBean> list) {
        org.androidannotations.api.b.e("", new b(list), 400L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f31501z0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.game_information_layoutv2);
    }

    @Override // com.join.mgps.activity.GameInformationActivityV2, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.C0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31379d = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f31380e = (RelativeLayout) aVar.internalFindViewById(R.id.applayout);
        this.f31381f = (RelativeLayout) aVar.internalFindViewById(R.id.relativeLayout);
        this.f31382g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f31383h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f31384i = (SimpleDraweeView) aVar.internalFindViewById(R.id.appIcon);
        this.f31385j = (SimpleDraweeView) aVar.internalFindViewById(R.id.usericonMe);
        this.f31386k = (TextView) aVar.internalFindViewById(R.id.appname);
        this.f31387l = (TextView) aVar.internalFindViewById(R.id.appsize);
        this.f31388m = (TextView) aVar.internalFindViewById(R.id.moneyText);
        this.f31389n = (TextView) aVar.internalFindViewById(R.id.moneyText2);
        this.f31391o = (Button) aVar.internalFindViewById(R.id.downloadImage);
        this.f31393p = (ImageView) aVar.internalFindViewById(R.id.shareImg);
        this.f31395q = (ImageView) aVar.internalFindViewById(R.id.comment);
        this.f31397r = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.A = (TextView) aVar.internalFindViewById(R.id.more);
        this.B = (LinearLayout) aVar.internalFindViewById(R.id.bottom_lay);
        this.C = (LinearLayout) aVar.internalFindViewById(R.id.layout_share);
        this.D = (TextView) aVar.internalFindViewById(R.id.roundMessage);
        this.E = (RecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new q());
        }
        RelativeLayout relativeLayout = this.f31380e;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new r());
        }
        LinearLayout linearLayout = this.C;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new s());
        }
        ImageView imageView = this.f31395q;
        if (imageView != null) {
            imageView.setOnClickListener(new t());
        }
        Button button = this.f31391o;
        if (button != null) {
            button.setOnClickListener(new u());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new v());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new w());
        }
        CustomerDownloadView customerDownloadView = this.f31397r;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new x());
        }
        afterview();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void p1(GameInformationBean gameInformationBean) {
        org.androidannotations.api.b.e("", new h(gameInformationBean), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f31501z0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void t1() {
        org.androidannotations.api.b.e("", new c(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void v1(ImageView imageView, TextView textView, boolean z3, String str) {
        org.androidannotations.api.b.e("", new e(imageView, textView, z3, str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f31501z0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f31501z0.a(this);
    }
}
