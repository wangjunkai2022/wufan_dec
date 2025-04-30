package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameMainV3DataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameMainNewActivity_ extends GameMainNewActivity implements g3.a, i3.a, i3.b {
    public static final String P0 = "gameId";
    public static final String Q0 = "from";
    private final i3.c N0 = new i3.c();
    private final Map<Class<?>, Object> O0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.W();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.O();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.P();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameMainV3DataBean f31840a;

        d(GameMainV3DataBean gameMainV3DataBean) {
            this.f31840a = gameMainV3DataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.Q(this.f31840a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.K();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.S();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.l();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f31845a;

        h(ArenaResponse arenaResponse) {
            this.f31845a = arenaResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.J(this.f31845a);
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
                GameMainNewActivity_.super.H();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {
        j(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainNewActivity_.super.A();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.m();
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
                GameMainNewActivity_.super.z();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                GameMainNewActivity_.super.y();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31852a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f31852a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainNewActivity_.super.E(this.f31852a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                GameMainNewActivity_.super.B();
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
                GameMainNewActivity_.super.D();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q extends a.c {
        q(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainNewActivity_.super.F();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.U();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.t();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.o();
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.p();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.n();
        }
    }

    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.r();
        }
    }

    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.v();
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameMainV3DataBean f31864a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f31865b;

        y(GameMainV3DataBean gameMainV3DataBean, boolean z3) {
            this.f31864a = gameMainV3DataBean;
            this.f31865b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.Z(this.f31864a, this.f31865b);
        }
    }

    /* loaded from: classes3.dex */
    public static class z extends org.androidannotations.api.builder.a<z> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31867a;

        public z(Context context) {
            super(context, GameMainNewActivity_.class);
        }

        public z a(String str) {
            return (z) super.extra("from", str);
        }

        public z b(String str) {
            return (z) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31867a;
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

        public z(Fragment fragment) {
            super(fragment.getActivity(), GameMainNewActivity_.class);
            this.f31867a = fragment;
        }
    }

    private void s0(Bundle bundle) {
        this.G0 = new PrefDef_(this);
        i3.c.b(this);
        getWindow().setFlags(1024, 1024);
        t0();
        requestWindowFeature(1);
    }

    private void t0() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.C = extras.getString("gameId");
            }
            if (extras.containsKey("from")) {
                this.D = extras.getString("from");
            }
        }
    }

    public static z u0(Context context) {
        return new z(context);
    }

    public static z v0(Fragment fragment) {
        return new z(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void A() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void B() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void D() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void E(String str) {
        org.androidannotations.api.a.l(new n("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void F() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void H() {
        org.androidannotations.api.a.l(new i("", 1500L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void J(ArenaResponse arenaResponse) {
        org.androidannotations.api.b.e("", new h(arenaResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void K() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void O() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void P() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void Q(GameMainV3DataBean gameMainV3DataBean) {
        org.androidannotations.api.b.e("", new d(gameMainV3DataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void S() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void W() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void Z(GameMainV3DataBean gameMainV3DataBean, boolean z3) {
        org.androidannotations.api.b.e("", new y(gameMainV3DataBean, z3), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.O0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void l() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.N0);
        s0(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_main_new);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31788a = aVar.internalFindViewById(R.id.ll_loading);
        this.f31789b = (TextView) aVar.internalFindViewById(R.id.gameMainNewNameTx);
        this.f31790c = (TextView) aVar.internalFindViewById(R.id.gameMainNewFightTx);
        this.f31791d = (TextView) aVar.internalFindViewById(R.id.gameMainNewPlayTimeFrontTx);
        this.f31792e = (TextView) aVar.internalFindViewById(R.id.gameMainNewPlayTimeTx);
        this.f31793f = (TextView) aVar.internalFindViewById(R.id.gameMainNewStartTimeFrontTx);
        this.f31794g = (TextView) aVar.internalFindViewById(R.id.gameMainNewStartTimeTx);
        this.f31795h = (RecyclerView) aVar.internalFindViewById(R.id.memberFunRc);
        this.f31796i = (RelativeLayout) aVar.internalFindViewById(R.id.gameMainNewFightRl);
        this.f31797j = (TextView) aVar.internalFindViewById(R.id.toBuyTx);
        this.f31798k = (TextView) aVar.internalFindViewById(R.id.gameMainNewVipTitleTx);
        this.f31799l = (TextView) aVar.internalFindViewById(R.id.gameMainNewVipSubTitleTx);
        this.f31800m = (TextView) aVar.internalFindViewById(R.id.gameMainNewMoreTx);
        this.f31801n = (TextView) aVar.internalFindViewById(R.id.gameMainNewCommunityOneTx);
        this.f31803o = aVar.internalFindViewById(R.id.line1);
        this.f31805p = (TextView) aVar.internalFindViewById(R.id.gameMainNewCommunityTwoTx);
        this.f31807q = aVar.internalFindViewById(R.id.line2);
        this.f31809r = (RecyclerView) aVar.internalFindViewById(R.id.gameMainNewRv);
        this.f31811s = (GridView) aVar.internalFindViewById(R.id.gameMainNewLeftGv);
        this.f31813t = (SimpleDraweeView) aVar.internalFindViewById(R.id.gameMainNewBgIv);
        this.f31815u = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv3);
        this.f31817v = (RelativeLayout) aVar.internalFindViewById(R.id.leftRl);
        this.f31819w = (LinearLayout) aVar.internalFindViewById(R.id.rightLl);
        this.f31821x = (RelativeLayout) aVar.internalFindViewById(R.id.discussNoContentRl);
        this.f31823y = (RelativeLayout) aVar.internalFindViewById(R.id.discussContentRl);
        this.f31825z = (SimpleDraweeView) aVar.internalFindViewById(R.id.sm_reply_img);
        this.A = (RelativeLayout) aVar.internalFindViewById(R.id.rl_reply_text);
        this.B = (LinearLayout) aVar.internalFindViewById(R.id.hit_temp_ll);
        View internalFindViewById = aVar.internalFindViewById(R.id.gameMainNewBackIv);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.gameMainNewStartGameRl);
        RelativeLayout relativeLayout = this.f31821x;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new k());
        }
        TextView textView = this.f31797j;
        if (textView != null) {
            textView.setOnClickListener(new r());
        }
        TextView textView2 = this.f31800m;
        if (textView2 != null) {
            textView2.setOnClickListener(new s());
        }
        TextView textView3 = this.f31801n;
        if (textView3 != null) {
            textView3.setOnClickListener(new t());
        }
        TextView textView4 = this.f31805p;
        if (textView4 != null) {
            textView4.setOnClickListener(new u());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new v());
        }
        RelativeLayout relativeLayout2 = this.f31796i;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new w());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new x());
        }
        j();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.O0.put(cls, t3);
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.N0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        t0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void y() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void z() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.N0.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.N0.a(this);
    }
}
