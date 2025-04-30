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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.customview.LJWebView;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.pref.PrefDef_;
import com.papa91.battle.protocol.GameRoom;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ShareWebActivity_ extends ShareWebActivity implements g3.a, i3.a, i3.b {

    /* renamed from: l1  reason: collision with root package name */
    public static final String f35577l1 = "intentdate";

    /* renamed from: m1  reason: collision with root package name */
    public static final String f35578m1 = "intentDataMain";

    /* renamed from: h1  reason: collision with root package name */
    private final i3.c f35579h1 = new i3.c();

    /* renamed from: i1  reason: collision with root package name */
    private final Map<Class<?>, Object> f35580i1 = new HashMap();

    /* renamed from: j1  reason: collision with root package name */
    private final IntentFilter f35581j1 = new IntentFilter();

    /* renamed from: k1  reason: collision with root package name */
    private final BroadcastReceiver f35582k1 = new k();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.r1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.h2();
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.search();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35589a;

        d(String str) {
            this.f35589a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.i2(this.f35589a);
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.B1();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f35592a;

        e(DetailResultBean detailResultBean) {
            this.f35592a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.startDown(this.f35592a);
        }
    }

    /* loaded from: classes3.dex */
    class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35594a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f35595b;

        e0(String str, IntentDateBean intentDateBean) {
            this.f35594a = str;
            this.f35595b = intentDateBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.A1(this.f35594a, this.f35595b);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f35597a;

        f(DetailResultBean detailResultBean) {
            this.f35597a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.k2(this.f35597a);
        }
    }

    /* loaded from: classes3.dex */
    public static class f0 extends org.androidannotations.api.builder.a<f0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35599a;

        public f0(Context context) {
            super(context, ShareWebActivity_.class);
        }

        public f0 a(IntentDataMain intentDataMain) {
            return (f0) super.extra("intentDataMain", intentDataMain);
        }

        public f0 b(IntentDateBean intentDateBean) {
            return (f0) super.extra("intentdate", intentDateBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35599a;
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

        public f0(Fragment fragment) {
            super(fragment.getActivity(), ShareWebActivity_.class);
            this.f35599a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35600a;

        g(String str) {
            this.f35600a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.T1(this.f35600a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f35602a;

        h(boolean z3) {
            this.f35602a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.P1(this.f35602a);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35604a;

        i(String str) {
            this.f35604a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.z1(this.f35604a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SocketError f35606a;

        j(SocketError socketError) {
            this.f35606a = socketError;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.W1(this.f35606a);
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ShareWebActivity_.this.D1(intent);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f35609a;

        l(GameRoom gameRoom) {
            this.f35609a = gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.M1(this.f35609a);
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f35611a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f35612b;

        m(GameRoom gameRoom, String str) {
            this.f35611a = gameRoom;
            this.f35612b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.y1(this.f35611a, this.f35612b);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f35614a;

        n(GameRoom gameRoom) {
            this.f35614a = gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.e2(this.f35614a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f35616a;

        o(ArenaResponse arenaResponse) {
            this.f35616a = arenaResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.handleFailure(this.f35616a);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.g2();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.dismissLoadingDialog();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CreateVipData f35620a;

        r(CreateVipData createVipData) {
            this.f35620a = createVipData;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.n2(this.f35620a);
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.x1();
        }
    }

    /* loaded from: classes3.dex */
    class t extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35623a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f35624b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(String str, long j4, String str2, String str3, String str4) {
            super(str, j4, str2);
            this.f35623a = str3;
            this.f35624b = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareWebActivity_.super.F1(this.f35623a, this.f35624b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class u extends a.c {
        u(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareWebActivity_.super.I1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.a2();
        }
    }

    /* loaded from: classes3.dex */
    class w extends a.c {
        w(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareWebActivity_.super.checkToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class x extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35629a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f35629a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareWebActivity_.super.w1(this.f35629a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.V1();
        }
    }

    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.s1();
        }
    }

    public static f0 O2(Context context) {
        return new f0(context);
    }

    public static f0 P2(Fragment fragment) {
        return new f0(fragment);
    }

    private void init_(Bundle bundle) {
        this.H = new PrefDef_(this);
        i3.c.b(this);
        this.f35422x0 = AccountUtil_.getInstance_(this);
        injectExtras_();
        this.f35581j1.addAction(f1.a.f65475f0);
        registerReceiver(this.f35582k1, this.f35581j1);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentdate")) {
                this.B = (IntentDateBean) extras.getSerializable("intentdate");
            }
            if (extras.containsKey("intentDataMain")) {
                this.C = (IntentDataMain) extras.getSerializable("intentDataMain");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void A1(String str, IntentDateBean intentDateBean) {
        org.androidannotations.api.b.e("", new e0(str, intentDateBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void F1(String str, String str2) {
        org.androidannotations.api.a.l(new t("", 0L, "", str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void I1() {
        org.androidannotations.api.a.l(new u("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void M1(GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new l(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void P1(boolean z3) {
        org.androidannotations.api.b.e("", new h(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void T1(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void W1(SocketError socketError) {
        org.androidannotations.api.b.e("", new j(socketError), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void checkToken() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void dismissLoadingDialog() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void e2(GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new n(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void g2() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35580i1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void h2() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void handleFailure(ArenaResponse arenaResponse) {
        org.androidannotations.api.b.e("", new o(arenaResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void i2(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void k2(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new f(detailResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void n2(CreateVipData createVipData) {
        org.androidannotations.api.b.e("", new r(createVipData), 0L);
    }

    @Override // com.join.mgps.activity.ShareWebActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35579h1);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.share_activity_layout);
    }

    @Override // com.join.mgps.activity.ShareWebActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f35582k1);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35391d = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f35392e = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f35393f = (RelativeLayout) aVar.internalFindViewById(R.id.title);
        this.f35394g = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f35395h = (TextView) aVar.internalFindViewById(R.id.failedMessage);
        this.f35396i = (LinearLayout) aVar.internalFindViewById(R.id.layout_share);
        this.f35397j = (FrameLayout) aVar.internalFindViewById(R.id.video_view);
        this.f35398k = (RelativeLayout) aVar.internalFindViewById(R.id.weblayout);
        this.f35399l = (LJWebView) aVar.internalFindViewById(R.id.web);
        this.f35400m = (ImageView) aVar.internalFindViewById(R.id.refresh);
        this.f35401n = (ImageView) aVar.internalFindViewById(R.id.search);
        this.f35403o = (ImageView) aVar.internalFindViewById(R.id.backNew);
        this.f35405p = (ImageView) aVar.internalFindViewById(R.id.back_imag);
        this.f35407q = (ImageView) aVar.internalFindViewById(R.id.download);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f35400m;
        if (imageView != null) {
            imageView.setOnClickListener(new v());
        }
        LinearLayout linearLayout = this.f35392e;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new y());
        }
        ImageView imageView2 = this.f35405p;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new z());
        }
        ImageView imageView3 = this.f35403o;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new a0());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b0());
        }
        ImageView imageView4 = this.f35401n;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new c0());
        }
        ImageView imageView5 = this.f35407q;
        if (imageView5 != null) {
            imageView5.setOnClickListener(new d0());
        }
        this.f35409r = this.f35397j;
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35580i1.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35579h1.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void startDown(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new e(detailResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void w1(int i2) {
        org.androidannotations.api.a.l(new x("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void x1() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void y1(GameRoom gameRoom, String str) {
        org.androidannotations.api.b.e("", new m(gameRoom, str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void z1(String str) {
        org.androidannotations.api.b.e("", new i(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35579h1.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35579h1.a(this);
    }
}
