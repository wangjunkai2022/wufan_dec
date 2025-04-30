package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.BattleChallengeConfig;
import com.papa91.battle.protocol.BattleServerAddr;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.KickInfo;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameRoomActivity_ extends GameRoomActivity implements g3.a, i3.a, i3.b {
    public static final String A2 = "copper";

    /* renamed from: p2  reason: collision with root package name */
    public static final String f36424p2 = "battleChallengeConfig";

    /* renamed from: q2  reason: collision with root package name */
    public static final String f36425q2 = "roomLive";

    /* renamed from: r2  reason: collision with root package name */
    public static final String f36426r2 = "mGameRoom";

    /* renamed from: s2  reason: collision with root package name */
    public static final String f36427s2 = "joinSpectatorReason";

    /* renamed from: t2  reason: collision with root package name */
    public static final String f36428t2 = "gameName";

    /* renamed from: u2  reason: collision with root package name */
    public static final String f36429u2 = "isFastJoinRoom";

    /* renamed from: v2  reason: collision with root package name */
    public static final String f36430v2 = "isCreateRoom";

    /* renamed from: w2  reason: collision with root package name */
    public static final String f36431w2 = "isAllowPcJoin";

    /* renamed from: x2  reason: collision with root package name */
    public static final String f36432x2 = "from";

    /* renamed from: y2  reason: collision with root package name */
    public static final String f36433y2 = "password";

    /* renamed from: z2  reason: collision with root package name */
    public static final String f36434z2 = "position";

    /* renamed from: n2  reason: collision with root package name */
    private final i3.c f36435n2 = new i3.c();

    /* renamed from: o2  reason: collision with root package name */
    private final Map<Class<?>, Object> f36436o2 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.p2();
        }
    }

    /* loaded from: classes3.dex */
    public static class a0 extends org.androidannotations.api.builder.a<a0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36438a;

        public a0(Context context) {
            super(context, GameRoomActivity_.class);
        }

        public a0 a(BattleChallengeConfig battleChallengeConfig) {
            return (a0) super.extra(GameRoomActivity_.f36424p2, battleChallengeConfig);
        }

        public a0 b(int i2) {
            return (a0) super.extra(GameRoomActivity_.A2, i2);
        }

        public a0 c(String str) {
            return (a0) super.extra("from", str);
        }

        public a0 d(String str) {
            return (a0) super.extra("gameName", str);
        }

        public a0 e(int i2) {
            return (a0) super.extra(GameRoomActivity_.f36431w2, i2);
        }

        public a0 f(boolean z3) {
            return (a0) super.extra(GameRoomActivity_.f36430v2, z3);
        }

        public a0 g(boolean z3) {
            return (a0) super.extra(GameRoomActivity_.f36429u2, z3);
        }

        public a0 h(String str) {
            return (a0) super.extra(GameRoomActivity_.f36427s2, str);
        }

        public a0 i(GameRoom gameRoom) {
            return (a0) super.extra(GameRoomActivity_.f36426r2, gameRoom);
        }

        public a0 j(String str) {
            return (a0) super.extra(GameRoomActivity_.f36433y2, str);
        }

        public a0 k(int i2) {
            return (a0) super.extra("position", i2);
        }

        public a0 l(int i2) {
            return (a0) super.extra(GameRoomActivity_.f36425q2, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36438a;
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
            super(fragment.getActivity(), GameRoomActivity_.class);
            this.f36438a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.c2();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.H2();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36441a;

        d(String str) {
            this.f36441a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.showToast(this.f36441a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.N2();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BattleServerAddr f36444a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f36445b;

        f(BattleServerAddr battleServerAddr, String str) {
            this.f36444a = battleServerAddr;
            this.f36445b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.O2(this.f36444a, this.f36445b);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.R2();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.m2();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36449a;

        i(int i2) {
            this.f36449a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.A2(this.f36449a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.y2();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomActivity_.this.iv_back();
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
                GameRoomActivity_.super.z2();
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
                GameRoomActivity_.super.S2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {
        n(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.k2();
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
                GameRoomActivity_.super.B2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36457a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f36457a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.l2(this.f36457a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36459a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f36459a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.j2(this.f36459a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f36461a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String str, long j4, String str2, GameRoom gameRoom) {
            super(str, j4, str2);
            this.f36461a = gameRoom;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.x2(this.f36461a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36463a;

        s(String str) {
            this.f36463a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.D2(this.f36463a);
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.J2();
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.F2();
        }
    }

    /* loaded from: classes3.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.I2();
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ KickInfo f36468a;

        w(KickInfo kickInfo) {
            this.f36468a = kickInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.o2(this.f36468a);
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f36470a;

        x(ArenaResponse arenaResponse) {
            this.f36470a = arenaResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.n2(this.f36470a);
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.i2();
        }
    }

    /* loaded from: classes3.dex */
    class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameRoom f36473a;

        z(GameRoom gameRoom) {
            this.f36473a = gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.U2(this.f36473a);
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f36374p0 = AccountUtil_.getInstance_(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(f36424p2)) {
                this.f36372o0 = (BattleChallengeConfig) extras.getSerializable(f36424p2);
            }
            if (extras.containsKey(f36425q2)) {
                this.f36376q0 = extras.getInt(f36425q2);
            }
            if (extras.containsKey(f36426r2)) {
                this.f36378r0 = (GameRoom) extras.getSerializable(f36426r2);
            }
            if (extras.containsKey(f36427s2)) {
                this.f36380s0 = extras.getString(f36427s2);
            }
            if (extras.containsKey("gameName")) {
                this.f36382t0 = extras.getString("gameName");
            }
            if (extras.containsKey(f36429u2)) {
                this.f36384u0 = extras.getBoolean(f36429u2);
            }
            if (extras.containsKey(f36430v2)) {
                this.f36386v0 = extras.getBoolean(f36430v2);
            }
            if (extras.containsKey(f36431w2)) {
                this.f36388w0 = extras.getInt(f36431w2);
            }
            if (extras.containsKey("from")) {
                this.f36390x0 = extras.getString("from");
            }
            if (extras.containsKey(f36433y2)) {
                this.f36392y0 = extras.getString(f36433y2);
            }
            if (extras.containsKey("position")) {
                this.f36394z0 = extras.getInt("position");
            }
            if (extras.containsKey(A2)) {
                this.A0 = extras.getInt(A2);
            }
        }
    }

    public static a0 u3(Context context) {
        return new a0(context);
    }

    public static a0 v3(Fragment fragment) {
        return new a0(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void A2(int i2) {
        org.androidannotations.api.b.e("", new i(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void B2() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void D2(String str) {
        org.androidannotations.api.b.e("", new s(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void F2() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void H2() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void I2() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void J2() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void N2() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void O2(BattleServerAddr battleServerAddr, String str) {
        org.androidannotations.api.b.e("", new f(battleServerAddr, str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void R2() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void S2() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void U2(GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new z(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void c2() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36436o2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void i2() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void j2(int i2) {
        org.androidannotations.api.a.l(new q("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void k2() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void l2(String str) {
        org.androidannotations.api.a.l(new p("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void m2() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void n2(ArenaResponse arenaResponse) {
        org.androidannotations.api.b.e("", new x(arenaResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void o2(KickInfo kickInfo) {
        org.androidannotations.api.b.e("", new w(kickInfo), 0L);
    }

    @Override // com.join.mgps.activity.arena.GameRoomActivity, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36435n2);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_room);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.B0 = (TextView) aVar.internalFindViewById(R.id.txtHint);
        this.C0 = (TextView) aVar.internalFindViewById(R.id.showTitleMessage);
        this.D0 = (TextView) aVar.internalFindViewById(R.id.txtCopper);
        this.E0 = (LinearLayout) aVar.internalFindViewById(R.id.llCopper);
        this.F0 = (TextView) aVar.internalFindViewById(R.id.tv_gold_info);
        this.G0 = (TextView) aVar.internalFindViewById(R.id.tv_game_name);
        this.H0 = (TextView) aVar.internalFindViewById(R.id.tv_roomNum);
        this.I0 = (TextView) aVar.internalFindViewById(R.id.tv_game_time_state);
        this.J0 = (LinearLayout) aVar.internalFindViewById(R.id.ll_set_challenge_gold);
        this.K0 = (TextView) aVar.internalFindViewById(R.id.tv_copper_plate_count);
        this.L0 = (ImageView) aVar.internalFindViewById(R.id.iv_elite);
        this.M0 = (ImageView) aVar.internalFindViewById(R.id.iv_challenge_gold_arrow);
        this.N0 = (ImageView) aVar.internalFindViewById(R.id.iv_switch_outdevice_in);
        this.O0 = aVar.internalFindViewById(R.id.rlRoomType);
        this.P0 = (TextView) aVar.internalFindViewById(R.id.tvRoomType);
        this.Q0 = (RelativeLayout) aVar.internalFindViewById(R.id.rl_net_archive);
        this.R0 = (TextView) aVar.internalFindViewById(R.id.tv_archive_name);
        this.S0 = (ImageView) aVar.internalFindViewById(R.id.iv_arrow_net_archive);
        this.T0 = (LinearLayout) aVar.internalFindViewById(R.id.rl_audience_1);
        this.U0 = (RelativeLayout) aVar.internalFindViewById(R.id.rl_audience_2);
        this.V0 = aVar.internalFindViewById(R.id.linesee);
        this.W0 = (TextView) aVar.internalFindViewById(R.id.tv_audience);
        this.X0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_audience);
        this.Y0 = (LinearLayout) aVar.internalFindViewById(R.id.llPlayMode);
        this.Z0 = (RadioButton) aVar.internalFindViewById(R.id.ivPlayModeSwitcher);
        this.f36353a1 = (RadioGroup) aVar.internalFindViewById(R.id.radioGroup);
        this.f36355b1 = aVar.internalFindViewById(R.id.ivPlayModeSwitcherlayout);
        this.f36357c1 = (TextView) aVar.internalFindViewById(R.id.tv_info_audience);
        this.f36361e1 = aVar.internalFindViewById(R.id.btnEntranceGame);
        this.f36363f1 = (ImageView) aVar.internalFindViewById(R.id.btnEntranceGameI);
        this.f36364g1 = (TextView) aVar.internalFindViewById(R.id.btnEntranceGameM);
        this.f36365h1 = (TextView) aVar.internalFindViewById(R.id.tv_invite_fight);
        this.D1 = (TextView) aVar.internalFindViewById(R.id.tv_audience_name);
        View internalFindViewById = aVar.internalFindViewById(R.id.iv_back);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void p2() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36436o2.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36435n2.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void x2(GameRoom gameRoom) {
        org.androidannotations.api.a.l(new r("", 0L, "", gameRoom));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void y2() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void z2() {
        org.androidannotations.api.a.l(new l("", 3000L, ""));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36435n2.a(this);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36435n2.a(this);
    }
}
