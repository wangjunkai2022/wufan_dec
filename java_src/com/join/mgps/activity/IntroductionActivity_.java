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
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.IntroductionCommentDetailParamsBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class IntroductionActivity_ extends IntroductionActivity implements g3.a, i3.a, i3.b {
    public static final String C0 = "intentDataMain";
    public static final String D0 = "postId";
    public static final String E0 = "tagId";
    public static final String F0 = "gameId";
    public static final String G0 = "params";

    /* renamed from: y0  reason: collision with root package name */
    private final i3.c f32852y0 = new i3.c();

    /* renamed from: z0  reason: collision with root package name */
    private final Map<Class<?>, Object> f32853z0 = new HashMap();
    private final IntentFilter A0 = new IntentFilter();
    private final BroadcastReceiver B0 = new k();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.g1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.i1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BbsDetailBean f32858a;

        e(BbsDetailBean bbsDetailBean) {
            this.f32858a = bbsDetailBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.p1(this.f32858a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.T0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32861a;

        g(String str) {
            this.f32861a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.q1(this.f32861a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.dismissLoadingDialog();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f32865a;

        j(boolean z3) {
            this.f32865a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.s1(this.f32865a);
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            IntroductionActivity_.this.M0(intent);
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {
        l(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                IntroductionActivity_.super.W0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32869a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Integer f32870b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String str, long j4, String str2, String str3, Integer num) {
            super(str, j4, str2);
            this.f32869a = str3;
            this.f32870b = num;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                IntroductionActivity_.super.c1(this.f32869a, this.f32870b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Integer f32872a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, Integer num) {
            super(str, j4, str2);
            this.f32872a = num;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                IntroductionActivity_.super.b1(this.f32872a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.l1();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.a1();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.d1();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.h1();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.e1();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.f1();
        }
    }

    /* loaded from: classes3.dex */
    public static class w extends org.androidannotations.api.builder.a<w> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32882a;

        public w(Context context) {
            super(context, IntroductionActivity_.class);
        }

        public w a(String str) {
            return (w) super.extra("gameId", str);
        }

        public w b(IntentDataMain intentDataMain) {
            return (w) super.extra("intentDataMain", intentDataMain);
        }

        public w c(IntroductionCommentDetailParamsBean introductionCommentDetailParamsBean) {
            return (w) super.extra("params", introductionCommentDetailParamsBean);
        }

        public w d(int i2) {
            return (w) super.extra(IntroductionActivity_.D0, i2);
        }

        public w e(int i2) {
            return (w) super.extra("tagId", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32882a;
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

        public w(Fragment fragment) {
            super(fragment.getActivity(), IntroductionActivity_.class);
            this.f32882a = fragment;
        }
    }

    public static w F1(Context context) {
        return new w(context);
    }

    public static w G1(Fragment fragment) {
        return new w(fragment);
    }

    private void init_(Bundle bundle) {
        this.f32842y = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        this.A0.addAction(f1.a.f65475f0);
        registerReceiver(this.B0, this.A0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentDataMain")) {
                this.f32832t = (IntentDataMain) extras.getSerializable("intentDataMain");
            }
            if (extras.containsKey(D0)) {
                this.f32840x = extras.getInt(D0);
            }
            if (extras.containsKey("tagId")) {
                this.f32843z = extras.getInt("tagId");
            }
            if (extras.containsKey("gameId")) {
                this.D = extras.getString("gameId");
            }
            if (extras.containsKey("params")) {
                this.E = (IntroductionCommentDetailParamsBean) extras.getSerializable("params");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void L0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void T0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void W0() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void b1(Integer num) {
        org.androidannotations.api.a.l(new n("", 0L, "", num));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void c1(String str, Integer num) {
        org.androidannotations.api.a.l(new m("", 0L, "", str, num));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void dismissLoadingDialog() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32853z0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.activity.IntroductionActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32852y0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.introduction_activity_layout);
    }

    @Override // com.join.mgps.activity.IntroductionActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.B0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32809c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f32810d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f32813g = (TextView) aVar.internalFindViewById(R.id.failedMessage);
        this.f32814h = (LinearLayout) aVar.internalFindViewById(R.id.layout_share);
        this.f32815i = (FrameLayout) aVar.internalFindViewById(R.id.video_view);
        this.f32816j = (RelativeLayout) aVar.internalFindViewById(R.id.weblayout);
        this.f32817k = (FrameLayout) aVar.internalFindViewById(R.id.fl_front_view);
        this.f32818l = (ImageView) aVar.internalFindViewById(R.id.iv_praise);
        this.f32819m = (TextView) aVar.internalFindViewById(R.id.tv_praise_num);
        this.f32820n = (TextView) aVar.internalFindViewById(R.id.tv_comment_num);
        this.f32824p = (ProgressBar) aVar.internalFindViewById(R.id.pb_progress);
        this.f32826q = (FrameLayout) aVar.internalFindViewById(R.id.fl_content);
        this.f32828r = (TextView) aVar.internalFindViewById(R.id.tv_type);
        this.f32830s = (LinearLayout) aVar.internalFindViewById(R.id.ll_progress);
        View internalFindViewById = aVar.internalFindViewById(R.id.refresh);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.ll_more);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.ll_recommend);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.ll_close_drawer);
        View internalFindViewById7 = aVar.internalFindViewById(R.id.ll_comment);
        View internalFindViewById8 = aVar.internalFindViewById(R.id.ll_praise);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new o());
        }
        LinearLayout linearLayout = this.f32810d;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new p());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new q());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new r());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new s());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new t());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new u());
        }
        if (internalFindViewById7 != null) {
            internalFindViewById7.setOnClickListener(new v());
        }
        LinearLayout linearLayout2 = this.f32830s;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new a());
        }
        if (internalFindViewById8 != null) {
            internalFindViewById8.setOnClickListener(new b());
        }
        afterview();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void p1(BbsDetailBean bbsDetailBean) {
        org.androidannotations.api.b.e("", new e(bbsDetailBean), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32853z0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void q1(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void s1(boolean z3) {
        org.androidannotations.api.b.e("", new j(z3), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32852y0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32852y0.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32852y0.a(this);
    }
}
