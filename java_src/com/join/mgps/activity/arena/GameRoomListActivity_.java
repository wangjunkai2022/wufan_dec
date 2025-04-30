package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import app.mgsim.arena.ArenaResponse;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.AlwaysMarqueeTextView;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.pref.PrefDef_;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.Notification;
import com.papa91.battle.protocol.SimpleRoom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameRoomListActivity_ extends GameRoomListActivity implements g3.a, i3.a, i3.b {

    /* renamed from: n2  reason: collision with root package name */
    public static final String f36557n2 = "mGameInfo";

    /* renamed from: o2  reason: collision with root package name */
    public static final String f36558o2 = "isFormHall";

    /* renamed from: p2  reason: collision with root package name */
    public static final String f36559p2 = "filterGame";

    /* renamed from: l2  reason: collision with root package name */
    private final i3.c f36560l2 = new i3.c();

    /* renamed from: m2  reason: collision with root package name */
    private final Map<Class<?>, Object> f36561m2 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36562a;

        a(int i2) {
            this.f36562a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.k3(this.f36562a);
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.u2();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AreaOnlinePeopleCount f36565a;

        b(AreaOnlinePeopleCount areaOnlinePeopleCount) {
            this.f36565a = areaOnlinePeopleCount;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.K3(this.f36565a);
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36567a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36568b;

        b0(String str, int i2) {
            this.f36567a = str;
            this.f36568b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.H3(this.f36567a, this.f36568b);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Notification f36570a;

        c(Notification notification) {
            this.f36570a = notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.O2(this.f36570a);
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.e3();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f36573a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f36574b;

        d(ArenaResponse arenaResponse, boolean z3) {
            this.f36573a = arenaResponse;
            this.f36574b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.N3(this.f36573a, this.f36574b);
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.N2();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.D3();
        }
    }

    /* loaded from: classes3.dex */
    class e0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36578a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f36579b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e0(String str, long j4, String str2, int i2, boolean z3) {
            super(str, j4, str2);
            this.f36578a = i2;
            this.f36579b = z3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomListActivity_.super.J3(this.f36578a, this.f36579b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.C2();
        }
    }

    /* loaded from: classes3.dex */
    class f0 extends a.c {
        f0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomListActivity_.super.n3();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36583a;

        g(boolean z3) {
            this.f36583a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.I3(this.f36583a);
        }
    }

    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.iv_back();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f36586a;

        h(ArenaResponse arenaResponse) {
            this.f36586a = arenaResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.handleFailure(this.f36586a);
        }
    }

    /* loaded from: classes3.dex */
    class h0 extends a.c {
        h0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomListActivity_.super.F2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BattleArea f36589a;

        i(BattleArea battleArea) {
            this.f36589a = battleArea;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.w3(this.f36589a);
        }
    }

    /* loaded from: classes3.dex */
    class i0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36591a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f36591a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomListActivity_.super.E2(this.f36591a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f36593a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f36594b;

        j(ArenaResponse arenaResponse, boolean z3) {
            this.f36593a = arenaResponse;
            this.f36594b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.P2(this.f36593a, this.f36594b);
        }
    }

    /* loaded from: classes3.dex */
    class j0 implements View.OnClickListener {
        j0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.a3();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.r3();
        }
    }

    /* loaded from: classes3.dex */
    class k0 implements View.OnClickListener {
        k0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.l2();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36599a;

        l(List list) {
            this.f36599a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.Q2(this.f36599a);
        }
    }

    /* loaded from: classes3.dex */
    class l0 implements View.OnClickListener {
        l0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.m2();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36602a;

        m(List list) {
            this.f36602a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.R2(this.f36602a);
        }
    }

    /* loaded from: classes3.dex */
    class m0 implements View.OnClickListener {
        m0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.close();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36605a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f36606b;

        n(boolean z3, boolean z4) {
            this.f36605a = z3;
            this.f36606b = z4;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.y2(this.f36605a, this.f36606b);
        }
    }

    /* loaded from: classes3.dex */
    class n0 implements View.OnClickListener {
        n0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.d3();
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.D2();
        }
    }

    /* loaded from: classes3.dex */
    class o0 implements View.OnClickListener {
        o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.i3();
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36611a;

        p(int i2) {
            this.f36611a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.s3(this.f36611a);
        }
    }

    /* loaded from: classes3.dex */
    public static class p0 extends org.androidannotations.api.builder.a<p0> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36613a;

        public p0(Context context) {
            super(context, GameRoomListActivity_.class);
        }

        public p0 a(boolean z3) {
            return (p0) super.extra(GameRoomListActivity_.f36559p2, z3);
        }

        public p0 b(boolean z3) {
            return (p0) super.extra(GameRoomListActivity_.f36558o2, z3);
        }

        public p0 c(GameInfoBean gameInfoBean) {
            return (p0) super.extra("mGameInfo", gameInfoBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36613a;
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

        public p0(Fragment fragment) {
            super(fragment.getActivity(), GameRoomListActivity_.class);
            this.f36613a = fragment;
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaGameRoomListConfig f36614a;

        q(ArenaGameRoomListConfig arenaGameRoomListConfig) {
            this.f36614a = arenaGameRoomListConfig;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.Y2(this.f36614a);
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.C3();
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.E3();
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.x3();
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.U2();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.n2();
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.z2();
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f36622a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f36623b;

        x(int i2, boolean z3) {
            this.f36622a = i2;
            this.f36623b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.O3(this.f36622a, this.f36623b);
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36625a;

        y(String str) {
            this.f36625a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.showToast(this.f36625a);
        }
    }

    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.T2();
        }
    }

    private void init_(Bundle bundle) {
        this.L0 = new PrefDef_(this);
        i3.c.b(this);
        this.J1 = AccountUtil_.getInstance_(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("mGameInfo")) {
                this.f36499o0 = (GameInfoBean) extras.getSerializable("mGameInfo");
            }
            if (extras.containsKey(f36558o2)) {
                this.f36501p0 = extras.getBoolean(f36558o2);
            }
            if (extras.containsKey(f36559p2)) {
                this.I0 = extras.getBoolean(f36559p2);
            }
        }
    }

    public static p0 v4(Context context) {
        return new p0(context);
    }

    public static p0 w4(Fragment fragment) {
        return new p0(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void C2() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void C3() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void D2() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void D3() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void E2(String str) {
        org.androidannotations.api.a.l(new i0("", 0L, "", str));
    }

    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void E3() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void F2() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void H3(String str, int i2) {
        org.androidannotations.api.b.e("", new b0(str, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void I3(boolean z3) {
        org.androidannotations.api.b.e("", new g(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void J3(int i2, boolean z3) {
        org.androidannotations.api.a.l(new e0("", 0L, "", i2, z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void K3(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        org.androidannotations.api.b.e("", new b(areaOnlinePeopleCount), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void N2() {
        org.androidannotations.api.b.e("", new d0(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void N3(ArenaResponse arenaResponse, boolean z3) {
        org.androidannotations.api.b.e("", new d(arenaResponse, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void O2(Notification notification) {
        org.androidannotations.api.b.e("", new c(notification), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void O3(int i2, boolean z3) {
        org.androidannotations.api.b.e("", new x(i2, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void P2(ArenaResponse arenaResponse, boolean z3) {
        org.androidannotations.api.b.e("", new j(arenaResponse, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void Q2(List<SimpleRoom> list) {
        org.androidannotations.api.b.e("", new l(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void R2(List<SimpleRoom> list) {
        org.androidannotations.api.b.e("", new m(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void T2() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void U2() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void Y2(ArenaGameRoomListConfig arenaGameRoomListConfig) {
        org.androidannotations.api.b.e("", new q(arenaGameRoomListConfig), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void e3() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36561m2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void handleFailure(ArenaResponse arenaResponse) {
        org.androidannotations.api.b.e("", new h(arenaResponse), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void k3(int i2) {
        org.androidannotations.api.b.e("", new a(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void n3() {
        org.androidannotations.api.a.l(new f0("", 0L, ""));
    }

    @Override // com.join.mgps.activity.arena.GameRoomListActivity, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36560l2);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_room_list);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36503q0 = (TextView) aVar.internalFindViewById(R.id.tv_area);
        this.f36505r0 = (TextView) aVar.internalFindViewById(R.id.tv_title);
        this.f36507s0 = aVar.internalFindViewById(R.id.redPoint);
        this.f36509t0 = (LinearLayout) aVar.internalFindViewById(R.id.iv_list);
        this.f36511u0 = (LinearLayout) aVar.internalFindViewById(R.id.ll_standard_room);
        this.f36513v0 = (TextView) aVar.internalFindViewById(R.id.tv_standard__room_count);
        this.f36515w0 = (TextView) aVar.internalFindViewById(R.id.tv_standard_room_name);
        this.f36517x0 = (LinearLayout) aVar.internalFindViewById(R.id.ll_elite_room);
        this.f36519y0 = (TextView) aVar.internalFindViewById(R.id.tv_elite_room_count);
        this.f36521z0 = (TextView) aVar.internalFindViewById(R.id.tv_elite_room_name);
        this.A0 = (LinearLayout) aVar.internalFindViewById(R.id.ll_race_room);
        this.B0 = (TextView) aVar.internalFindViewById(R.id.tv_race_room_name);
        this.C0 = (TextView) aVar.internalFindViewById(R.id.tv_race_room_info);
        this.D0 = (TextView) aVar.internalFindViewById(R.id.tv_loading_info);
        this.E0 = (ProgressBar) aVar.internalFindViewById(R.id.progressLoding);
        this.F0 = (LinearLayout) aVar.internalFindViewById(R.id.ll_broadcast);
        this.G0 = (ImageView) aVar.internalFindViewById(R.id.imgIconList);
        this.H0 = aVar.internalFindViewById(R.id.myDragImageView);
        this.J0 = (AlwaysMarqueeTextView) aVar.internalFindViewById(R.id.tv_broadcast);
        this.K0 = (ViewPager) aVar.internalFindViewById(R.id.mViewPager);
        this.f36483a1 = (RelativeLayout) aVar.internalFindViewById(R.id.rl_top);
        this.f36485b1 = (LinearLayout) aVar.internalFindViewById(R.id.ll_battle_area);
        this.f36494j1 = (LinearLayout) aVar.internalFindViewById(R.id.ll_tab);
        this.f36495k1 = (ImageView) aVar.internalFindViewById(R.id.iv_battle_area_arrow);
        this.f36508s1 = (LinearLayout) aVar.internalFindViewById(R.id.ll_error);
        this.f36510t1 = (LinearLayout) aVar.internalFindViewById(R.id.ll_loading);
        this.F1 = (ImageView) aVar.internalFindViewById(R.id.btnFastGame);
        this.G1 = (ImageView) aVar.internalFindViewById(R.id.btnCreateRoom);
        this.H1 = (LinearLayout) aVar.internalFindViewById(R.id.footer);
        this.Q1 = (RecyclerView) aVar.internalFindViewById(R.id.recyclerViewGamelist);
        this.R1 = (RecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        this.S1 = aVar.internalFindViewById(R.id.selecterLayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.btnRefresh);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.iv_back);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.btnFastGameM);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.close);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.quanmingxing);
        View view = this.S1;
        if (view != null) {
            view.setOnClickListener(new k());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new v());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new g0());
        }
        LinearLayout linearLayout = this.f36509t0;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new j0());
        }
        ImageView imageView = this.G1;
        if (imageView != null) {
            imageView.setOnClickListener(new k0());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new l0());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new m0());
        }
        View view2 = this.H0;
        if (view2 != null) {
            view2.setOnClickListener(new n0());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new o0());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36561m2.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void s3(int i2) {
        org.androidannotations.api.b.e("", new p(i2), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36560l2.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new y(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void u2() {
        org.androidannotations.api.b.e("", new a0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void w3(BattleArea battleArea) {
        org.androidannotations.api.b.e("", new i(battleArea), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void x3() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void y2(boolean z3, boolean z4) {
        org.androidannotations.api.b.e("", new n(z3, z4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void z2() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36560l2.a(this);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36560l2.a(this);
    }
}
