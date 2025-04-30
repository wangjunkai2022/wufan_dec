package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.GameDetailActivity;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ForumResponseGame;
import com.join.mgps.dto.GameListItemBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameDetailActivity_ extends GameDetailActivity implements g3.a, i3.a, i3.b {
    private final i3.c Y0 = new i3.c();
    private final Map<Class<?>, Object> Z0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.h1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.d1();
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.l1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31144a;

        d(int i2) {
            this.f31144a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.b1(this.f31144a);
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.m1();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.r1();
        }
    }

    /* loaded from: classes3.dex */
    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.k1();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumResponseGame f31151a;

        g(ForumResponseGame forumResponseGame) {
            this.f31151a = forumResponseGame;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.n1(this.f31151a);
        }
    }

    /* loaded from: classes3.dex */
    public static class g0 extends org.androidannotations.api.builder.a<g0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31153a;

        public g0(Context context) {
            super(context, GameDetailActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31153a;
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

        public g0(Fragment fragment) {
            super(fragment.getActivity(), GameDetailActivity_.class);
            this.f31153a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.o1();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31155a;

        i(int i2) {
            this.f31155a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.U0(this.f31155a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.c1();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f31159a;

        l(List list) {
            this.f31159a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.G0(this.f31159a);
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumResponseGame f31161a;

        m(ForumResponseGame forumResponseGame) {
            this.f31161a = forumResponseGame;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.I0(this.f31161a);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.T0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31164a;

        o(String str) {
            this.f31164a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.g1(this.f31164a);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31166a;

        p(int i2) {
            this.f31166a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.F0(this.f31166a);
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.X0();
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31170a;

        s(String str) {
            this.f31170a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.L0(this.f31170a);
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameDetailActivity.l f31173a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31174b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f31175c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ GameListItemBean f31176d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f31177e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f31178f;

        u(GameDetailActivity.l lVar, String str, String str2, GameListItemBean gameListItemBean, int i2, int i4) {
            this.f31173a = lVar;
            this.f31174b = str;
            this.f31175c = str2;
            this.f31176d = gameListItemBean;
            this.f31177e = i2;
            this.f31178f = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.f1(this.f31173a, this.f31174b, this.f31175c, this.f31176d, this.f31177e, this.f31178f);
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.S0();
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
                GameDetailActivity_.super.H0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class x extends a.c {
        x(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetailActivity_.super.a1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class y extends a.c {
        y(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetailActivity_.super.M0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.iv_back();
        }
    }

    public static g0 Q1(Context context) {
        return new g0(context);
    }

    public static g0 R1(Fragment fragment) {
        return new g0(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void F0(int i2) {
        org.androidannotations.api.b.e("", new p(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void G0(List<GameListItemBean> list) {
        org.androidannotations.api.b.e("", new l(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void H0() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void I0(ForumResponseGame forumResponseGame) {
        org.androidannotations.api.b.e("", new m(forumResponseGame), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void J0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void K0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void L0(String str) {
        org.androidannotations.api.b.e("", new s(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void M0() {
        org.androidannotations.api.a.l(new y("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void T0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void U0(int i2) {
        org.androidannotations.api.b.e("", new i(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void X0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void Z0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void a1() {
        org.androidannotations.api.a.l(new x("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void b1(int i2) {
        org.androidannotations.api.b.e("", new d(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void c1() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void d1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void f1(GameDetailActivity.l lVar, String str, String str2, GameListItemBean gameListItemBean, int i2, int i4) {
        org.androidannotations.api.b.e("", new u(lVar, str, str2, gameListItemBean, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void g1(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.Z0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void n1(ForumResponseGame forumResponseGame) {
        org.androidannotations.api.b.e("", new g(forumResponseGame), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void o1() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.Y0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_detail);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31010a = (LinearLayout) aVar.internalFindViewById(R.id.iv_nome);
        this.f31011b = (XRecyclerView) aVar.internalFindViewById(R.id.xrecycleview);
        this.f31012c = (LinearLayout) aVar.internalFindViewById(R.id.myswip);
        this.f31013d = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f31014e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f31015f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f31016g = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.f31017h = (RelativeLayout) aVar.internalFindViewById(R.id.iv_back);
        this.f31018i = (SimpleDraweeView) aVar.internalFindViewById(R.id.smv_icon);
        this.f31019j = (TextView) aVar.internalFindViewById(R.id.tv_name);
        this.f31020k = (TextView) aVar.internalFindViewById(R.id.tv_time);
        this.f31021l = (TextView) aVar.internalFindViewById(R.id.tv_btn);
        this.f31022m = (ImageView) aVar.internalFindViewById(R.id.iv_share);
        this.f31023n = (TextView) aVar.internalFindViewById(R.id.tv_game_title2);
        this.f31025o = (TextView) aVar.internalFindViewById(R.id.tv_modify2);
        this.f31027p = (LinearLayout) aVar.internalFindViewById(R.id.ll_gameform_title2);
        this.f31029q = (SimpleDraweeView) aVar.internalFindViewById(R.id.topBack);
        this.f31031r = (LinearLayout) aVar.internalFindViewById(R.id.main);
        this.f31033s = (RelativeLayout) aVar.internalFindViewById(R.id.rl_back_title);
        this.f31035t = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f31037u = (TextView) aVar.internalFindViewById(R.id.title);
        this.f31039v = (TextView) aVar.internalFindViewById(R.id.changeModle);
        this.f31041w = (TextView) aVar.internalFindViewById(R.id.textView2);
        this.f31043x = (TextView) aVar.internalFindViewById(R.id.failedMessage);
        ImageView imageView = this.f31035t;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        TextView textView = this.f31039v;
        if (textView != null) {
            textView.setOnClickListener(new v());
        }
        RelativeLayout relativeLayout = this.f31017h;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new z());
        }
        ImageView imageView2 = this.f31022m;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new a0());
        }
        SimpleDraweeView simpleDraweeView = this.f31018i;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new b0());
        }
        TextView textView2 = this.f31019j;
        if (textView2 != null) {
            textView2.setOnClickListener(new c0());
        }
        TextView textView3 = this.f31020k;
        if (textView3 != null) {
            textView3.setOnClickListener(new d0());
        }
        Button button = this.f31016g;
        if (button != null) {
            button.setOnClickListener(new e0());
        }
        TextView textView4 = this.f31021l;
        if (textView4 != null) {
            textView4.setOnClickListener(new f0());
        }
        E0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.Z0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void r1() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.Y0.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.Y0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.Y0.a(this);
    }
}
