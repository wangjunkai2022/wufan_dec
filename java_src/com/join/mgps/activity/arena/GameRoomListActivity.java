package com.join.mgps.activity.arena;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.b0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.f1;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.p2;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u0;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.adapter.t1;
import com.join.mgps.customview.AlwaysMarqueeTextView;
import com.join.mgps.customview.g0;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dialog.h0;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArenaAdData;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.ArenaPopupInfoBean;
import com.join.mgps.dto.ArenaPopupInfoShareBean;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.fragment.roomlist.c;
import com.join.mgps.fragment.u1;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.socket.fight.arena.ArenaService_;
import com.join.mgps.socket.fight.arena.a;
import com.join.mgps.socket.fight.arena.b;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.Notification;
import com.papa91.battle.protocol.RoomCategory;
import com.papa91.battle.protocol.RoomCounter;
import com.papa91.battle.protocol.RoomState;
import com.papa91.battle.protocol.SimpleRoom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EActivity(R.layout.activity_game_room_list)
/* loaded from: classes3.dex */
public class GameRoomListActivity extends FriendActivity {

    /* renamed from: c2  reason: collision with root package name */
    private static final String f36475c2 = "GameRoomListActivity";

    /* renamed from: d2  reason: collision with root package name */
    private static final int f36476d2 = 1;

    /* renamed from: e2  reason: collision with root package name */
    private static final int f36477e2 = 2;

    /* renamed from: f2  reason: collision with root package name */
    private static final int f36478f2 = 3;

    /* renamed from: g2  reason: collision with root package name */
    private static boolean f36479g2 = false;

    /* renamed from: h2  reason: collision with root package name */
    private static final int f36480h2 = Color.parseColor("#ffffff");
    private static final int i2 = Color.parseColor("#ffffff");

    /* renamed from: j2  reason: collision with root package name */
    private static final int f36481j2 = 1;

    /* renamed from: k2  reason: collision with root package name */
    private static final int f36482k2 = 1000;
    @ViewById
    LinearLayout A0;
    private String A1;
    @ViewById
    TextView B0;
    private String B1;
    @ViewById
    TextView C0;
    @ViewById
    TextView D0;
    @ViewById
    ProgressBar E0;
    private x0 E1;
    @ViewById
    LinearLayout F0;
    @ViewById
    ImageView F1;
    @ViewById
    ImageView G0;
    @ViewById
    ImageView G1;
    @ViewById
    View H0;
    @ViewById
    LinearLayout H1;
    @Extra
    boolean I0;
    @ViewById
    AlwaysMarqueeTextView J0;
    @Bean
    com.join.mgps.Util.b J1;
    @ViewById
    ViewPager K0;
    com.join.mgps.rpc.d K1;
    @Pref
    PrefDef_ L0;
    GameConfig M0;
    private BattleChallengeConfig M1;
    com.join.mgps.rpc.k N1;
    p2.a O1;
    private int P1;
    private com.join.mgps.socket.fight.arena.b Q0;
    @ViewById
    RecyclerView Q1;
    private BattleArea R0;
    @ViewById
    RecyclerView R1;
    @ViewById
    View S1;
    Context T1;
    z U1;
    int V0;
    t1 V1;
    List<GameInfoBean> W1;
    FriendBean Z1;
    @ViewById

    /* renamed from: a1  reason: collision with root package name */
    RelativeLayout f36483a1;

    /* renamed from: a2  reason: collision with root package name */
    Dialog f36484a2;
    @ViewById

    /* renamed from: b1  reason: collision with root package name */
    LinearLayout f36485b1;

    /* renamed from: h1  reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.a f36492h1;

    /* renamed from: i1  reason: collision with root package name */
    private FragmentManager f36493i1;
    @ViewById

    /* renamed from: j1  reason: collision with root package name */
    LinearLayout f36494j1;
    @ViewById

    /* renamed from: k1  reason: collision with root package name */
    ImageView f36495k1;

    /* renamed from: l1  reason: collision with root package name */
    private g0 f36496l1;

    /* renamed from: n1  reason: collision with root package name */
    private BattleArea f36498n1;
    @Extra

    /* renamed from: o0  reason: collision with root package name */
    GameInfoBean f36499o0;
    @Extra

    /* renamed from: p0  reason: collision with root package name */
    boolean f36501p0;

    /* renamed from: p1  reason: collision with root package name */
    private ArenaGameRoomListConfig f36502p1;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    TextView f36503q0;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    TextView f36505r0;

    /* renamed from: r1  reason: collision with root package name */
    x f36506r1;
    @ViewById

    /* renamed from: s0  reason: collision with root package name */
    View f36507s0;
    @ViewById

    /* renamed from: s1  reason: collision with root package name */
    LinearLayout f36508s1;
    @ViewById

    /* renamed from: t0  reason: collision with root package name */
    LinearLayout f36509t0;
    @ViewById

    /* renamed from: t1  reason: collision with root package name */
    LinearLayout f36510t1;
    @ViewById

    /* renamed from: u0  reason: collision with root package name */
    LinearLayout f36511u0;
    @ViewById

    /* renamed from: v0  reason: collision with root package name */
    TextView f36513v0;

    /* renamed from: v1  reason: collision with root package name */
    private Dialog f36514v1;
    @ViewById

    /* renamed from: w0  reason: collision with root package name */
    TextView f36515w0;

    /* renamed from: w1  reason: collision with root package name */
    private TextView f36516w1;
    @ViewById

    /* renamed from: x0  reason: collision with root package name */
    LinearLayout f36517x0;

    /* renamed from: x1  reason: collision with root package name */
    private Animation f36518x1;
    @ViewById

    /* renamed from: y0  reason: collision with root package name */
    TextView f36519y0;
    @ViewById

    /* renamed from: z0  reason: collision with root package name */
    TextView f36521z0;

    /* renamed from: z1  reason: collision with root package name */
    private GameRoom f36522z1;
    private com.join.mgps.fragment.roomlist.d N0 = null;
    private com.join.mgps.fragment.roomlist.d O0 = null;
    private com.join.mgps.fragment.roomlist.b P0 = null;
    private final b.InterfaceC0228b S0 = new k();
    private volatile boolean T0 = false;
    private volatile boolean U0 = false;
    private final SocketListener.NotifyObserver W0 = new o();
    private volatile boolean X0 = false;
    private volatile boolean Y0 = false;
    private final Object Z0 = new Object();

    /* renamed from: c1  reason: collision with root package name */
    int f36487c1 = 0;

    /* renamed from: d1  reason: collision with root package name */
    HashMap<String, Integer> f36488d1 = new HashMap<>();

    /* renamed from: e1  reason: collision with root package name */
    LinkedHashMap<String, SimpleRoom> f36489e1 = new LinkedHashMap<>();

    /* renamed from: f1  reason: collision with root package name */
    private boolean f36490f1 = false;

    /* renamed from: g1  reason: collision with root package name */
    private boolean f36491g1 = false;

    /* renamed from: m1  reason: collision with root package name */
    boolean f36497m1 = false;

    /* renamed from: o1  reason: collision with root package name */
    private final g0.e f36500o1 = new v();

    /* renamed from: q1  reason: collision with root package name */
    boolean f36504q1 = true;

    /* renamed from: u1  reason: collision with root package name */
    boolean f36512u1 = false;

    /* renamed from: y1  reason: collision with root package name */
    private int f36520y1 = 3;
    private Handler C1 = new d();
    private final c.n D1 = new e();
    long I1 = 0;
    private CountDownTimer L1 = new f(com.join.mgps.data.c.f47286a, 1000);
    List<GameInfoBean> X1 = new ArrayList();
    private int Y1 = -1024;

    /* renamed from: b2  reason: collision with root package name */
    Handler f36486b2 = new Handler(new m());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            gameRoomListActivity.F3(gameRoomListActivity.f36483a1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaGameRoomListConfig f36525a;

        c(ArenaGameRoomListConfig arenaGameRoomListConfig) {
            this.f36525a = arenaGameRoomListConfig;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            gameRoomListActivity.h3("addOnPageChangeListener onPageSelected position:" + i2);
            if (i2 == 0) {
                GameRoomListActivity.this.f36511u0.setBackgroundResource(R.drawable.bg_gamelist_tab_pressed);
                GameRoomListActivity.this.f36517x0.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.A0.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.z3(true);
                GameRoomListActivity.this.F1.setVisibility(0);
                GameRoomListActivity.this.f36509t0.setVisibility(0);
                GameRoomListActivity.this.f36515w0.setTextColor(GameRoomListActivity.i2);
                GameRoomListActivity.this.f36513v0.setTextColor(GameRoomListActivity.i2);
                GameRoomListActivity.this.f36519y0.setTextColor(GameRoomListActivity.f36480h2);
                GameRoomListActivity.this.f36521z0.setTextColor(GameRoomListActivity.f36480h2);
                GameRoomListActivity.this.B0.setTextColor(GameRoomListActivity.f36480h2);
                GameRoomListActivity.this.C0.setTextColor(GameRoomListActivity.f36480h2);
                if (!GameRoomListActivity.this.f36490f1) {
                    if (com.join.android.app.common.utils.f.j(GameRoomListActivity.this)) {
                        if (!GameRoomListActivity.this.Q0.e()) {
                            GameRoomListActivity.this.Q0.bindService();
                        } else {
                            GameRoomListActivity.this.S2();
                        }
                        GameRoomListActivity.this.C3();
                    } else {
                        GameRoomListActivity.this.showToast("当前网络不可用，请检查网络!");
                        GameRoomListActivity.this.x3();
                    }
                }
            } else if (i2 == 1) {
                ((com.join.mgps.fragment.roomlist.c) GameRoomListActivity.this.f36506r1.getItem(0)).U0();
                GameRoomListActivity.this.z3(true);
                GameRoomListActivity.this.F1.setVisibility(8);
                GameRoomListActivity.this.f36511u0.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.f36515w0.setTextColor(GameRoomListActivity.f36480h2);
                GameRoomListActivity.this.f36513v0.setTextColor(GameRoomListActivity.f36480h2);
                if (this.f36525a.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                    GameRoomListActivity.this.f36509t0.setVisibility(0);
                    GameRoomListActivity.this.A0.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                    GameRoomListActivity.this.f36517x0.setBackgroundResource(R.drawable.bg_gamelist_tab_pressed);
                    GameRoomListActivity.this.f36519y0.setTextColor(GameRoomListActivity.i2);
                    GameRoomListActivity.this.f36521z0.setTextColor(GameRoomListActivity.i2);
                    GameRoomListActivity.this.C0.setTextColor(GameRoomListActivity.f36480h2);
                    GameRoomListActivity.this.B0.setTextColor(GameRoomListActivity.f36480h2);
                    if (!GameRoomListActivity.this.f36491g1) {
                        if (com.join.android.app.common.utils.f.j(GameRoomListActivity.this)) {
                            if (!GameRoomListActivity.this.Q0.e()) {
                                GameRoomListActivity.this.Q0.bindService();
                            } else {
                                GameRoomListActivity.this.S2();
                            }
                            GameRoomListActivity.this.C3();
                        } else {
                            GameRoomListActivity.this.showToast("当前网络不可用，请检查网络!");
                            GameRoomListActivity.this.x3();
                        }
                    }
                } else {
                    GameRoomListActivity.this.f36509t0.setVisibility(8);
                    GameRoomListActivity.this.A0.setBackgroundResource(R.drawable.bg_gamelist_tab_pressed);
                    GameRoomListActivity.this.f36517x0.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                    GameRoomListActivity.this.f36519y0.setTextColor(GameRoomListActivity.f36480h2);
                    GameRoomListActivity.this.f36521z0.setTextColor(GameRoomListActivity.f36480h2);
                    GameRoomListActivity.this.C0.setTextColor(GameRoomListActivity.i2);
                    GameRoomListActivity.this.B0.setTextColor(GameRoomListActivity.i2);
                }
            } else if (i2 == 2) {
                GameRoomListActivity.this.f36511u0.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.f36517x0.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.A0.setBackgroundResource(R.drawable.bg_gamelist_tab_pressed);
                GameRoomListActivity.this.z3(false);
                GameRoomListActivity.this.f36509t0.setVisibility(0);
                GameRoomListActivity.this.f36515w0.setTextColor(GameRoomListActivity.f36480h2);
                GameRoomListActivity.this.f36513v0.setTextColor(GameRoomListActivity.f36480h2);
                GameRoomListActivity.this.f36519y0.setTextColor(GameRoomListActivity.f36480h2);
                GameRoomListActivity.this.f36521z0.setTextColor(GameRoomListActivity.f36480h2);
                GameRoomListActivity.this.C0.setTextColor(GameRoomListActivity.i2);
                GameRoomListActivity.this.B0.setTextColor(GameRoomListActivity.i2);
            }
            Fragment item = GameRoomListActivity.this.f36506r1.getItem(i2);
            if (item != null) {
                item.setUserVisibleHint(true);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            GameRoomListActivity.Q1(GameRoomListActivity.this);
            if (GameRoomListActivity.this.f36520y1 >= 1) {
                TextView textView = GameRoomListActivity.this.f36516w1;
                textView.setText("" + GameRoomListActivity.this.f36520y1);
                GameRoomListActivity.this.C1.sendEmptyMessageDelayed(1, 1000L);
                GameRoomListActivity.this.G3();
                return;
            }
            GameRoomListActivity.this.z2();
            if (GameRoomListActivity.this.N0 == null) {
                return;
            }
            if (GameRoomListActivity.this.f36522z1 != null) {
                com.join.mgps.fragment.roomlist.d dVar = GameRoomListActivity.this.N0;
                if (!dVar.t0("" + GameRoomListActivity.this.f36522z1.getGameId())) {
                    com.join.mgps.fragment.roomlist.d dVar2 = GameRoomListActivity.this.N0;
                    if (!dVar2.f0("" + GameRoomListActivity.this.f36522z1.getGameId())) {
                        com.join.mgps.fragment.roomlist.d dVar3 = GameRoomListActivity.this.N0;
                        dVar3.P0("" + GameRoomListActivity.this.f36522z1.getGameId(), 1015);
                        return;
                    }
                    com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(GameRoomListActivity.this.T1);
                    Event event = Event.JoinLobbyroom;
                    Ext uid = new Ext().setUid(AccountUtil_.getInstance_(GameRoomListActivity.this.T1).getAccountData().getUid());
                    l4.K1(event, uid.setGameId(GameRoomListActivity.this.f36522z1.getGameId() + "").setPosition("1"));
                    GameRoomActivity_.u3(GameRoomListActivity.this).g(true).h(GameRoomListActivity.this.A1).d(GameRoomListActivity.this.f36522z1.getGameName()).i(GameRoomListActivity.this.f36522z1).start();
                    return;
                }
                g1.f G = g1.f.G();
                DownloadTask B = G.B("" + GameRoomListActivity.this.f36522z1.getGameId());
                PlugInstallDialog_.I0(GameRoomListActivity.this).c(n1.o.o().n(B.getPlugin_num())).a(B).b(2).start();
            } else if (!TextUtils.isEmpty(GameRoomListActivity.this.B1)) {
                GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                gameRoomListActivity.showToast(gameRoomListActivity.B1);
            } else {
                GameRoomListActivity.this.showToast("快速加入房间失败，请重试！");
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements c.n {
        e() {
        }

        @Override // com.join.mgps.fragment.roomlist.c.n
        public void a(int i2, boolean z3) {
            GameRoomListActivity.this.O3(i2, z3);
            GameRoomListActivity.this.M3();
        }

        @Override // com.join.mgps.fragment.roomlist.c.n
        public void b(boolean z3) {
            GameRoomListActivity.this.U2();
        }
    }

    /* loaded from: classes3.dex */
    class f extends CountDownTimer {
        f(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            GameRoomListActivity.this.h3("mCreateGameCountDowner onFinish---");
            if (GameRoomListActivity.this.E1 == null || !GameRoomListActivity.this.E1.isShowing()) {
                return;
            }
            GameRoomListActivity.this.E1.dismiss();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            gameRoomListActivity.h3("mCreateGameCountDowner millisUntilFinished:" + j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements w {
        g() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomListActivity.w
        public void onItemClick(int i2) {
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            gameRoomListActivity.f36499o0 = gameRoomListActivity.X1.get(i2);
            GameRoomListActivity.this.U0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements t1.e {
        h() {
        }

        @Override // com.join.mgps.adapter.t1.e
        public void a(int i2) {
            GameInfoBean gameInfoBean = GameRoomListActivity.this.W1.get(i2);
            if (gameInfoBean.getGame_id().equals(GameRoomListActivity.this.f36499o0.getGame_id())) {
                GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                gameRoomListActivity.f36499o0 = gameInfoBean;
                try {
                    if (gameRoomListActivity.N0 != null) {
                        GameRoomListActivity.this.N0.v0(GameRoomListActivity.this.f36499o0.getGame_id());
                    }
                    if (GameRoomListActivity.this.O0 != null) {
                        GameRoomListActivity.this.O0.v0(GameRoomListActivity.this.f36499o0.getGame_id());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } else {
                GameRoomListActivity gameRoomListActivity2 = GameRoomListActivity.this;
                gameRoomListActivity2.f36499o0 = gameInfoBean;
                try {
                    if (gameRoomListActivity2.N0 != null) {
                        GameRoomListActivity.this.N0.v0(GameRoomListActivity.this.f36499o0.getGame_id());
                        GameRoomListActivity.this.N0.x0(GameRoomListActivity.this.f36499o0.getCollection_id());
                    }
                    if (GameRoomListActivity.this.O0 != null) {
                        GameRoomListActivity.this.O0.v0(GameRoomListActivity.this.f36499o0.getGame_id());
                        GameRoomListActivity.this.O0.x0(GameRoomListActivity.this.f36499o0.getCollection_id());
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                GameRoomListActivity.this.F2();
            }
            GameRoomListActivity.this.V2();
            GameRoomListActivity.this.e3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements Callback<ResultMainBean<ArenaGameRoomListConfig>> {
        i() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Response<ResultMainBean<ArenaGameRoomListConfig>> response) {
            ResultMainBean<ArenaGameRoomListConfig> body = response.body();
            if (body != null && body.getMessages().getData() != null) {
                if (body.getMessages().getData().getCurrent_collection_cfg() == null) {
                    GameRoomListActivity.this.D2();
                    return;
                }
                String collection_id = body.getMessages().getData().getCurrent_collection_cfg().getCollection_id();
                if (!TextUtils.isEmpty(collection_id) && Integer.parseInt(collection_id) > 0) {
                    if (body.getMessages().getData().getGame_list() != null && body.getMessages().getData().getGame_list().size() > 0) {
                        List<GameConfig> game_list = body.getMessages().getData().getGame_list();
                        ArrayList arrayList = new ArrayList();
                        for (GameConfig gameConfig : game_list) {
                            GameInfoBean gameInfoBean = new GameInfoBean();
                            gameInfoBean.setCollection_id(gameConfig.getCollection_id());
                            gameInfoBean.setPic_remote(gameConfig.getGame_ico());
                            gameInfoBean.setGame_ico(gameConfig.getGame_ico());
                            gameInfoBean.setGame_id(gameConfig.getGame_id());
                            gameInfoBean.setGame_name(gameConfig.getGame_name());
                            gameInfoBean.setRoom_count(gameConfig.getRoom_count());
                            gameInfoBean.setTitle(gameConfig.getTitle());
                            gameInfoBean.setPic_cover(gameConfig.getPic_cover());
                            arrayList.add(gameInfoBean);
                        }
                        GameRoomListActivity.this.W1.clear();
                        GameRoomListActivity.this.W1.addAll(arrayList);
                        GameRoomListActivity.this.V1.notifyDataSetChanged();
                        return;
                    }
                    GameRoomListActivity.this.D2();
                    return;
                }
                GameRoomListActivity.this.D2();
                return;
            }
            GameRoomListActivity.this.showToast("获取游戏配置信息失败！");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements Callback<ResultResMainBean<GameListBannerBean>> {
        j() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultResMainBean<GameListBannerBean>> call, Throwable th) {
            GameRoomListActivity.this.V2();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultResMainBean<GameListBannerBean>> call, Response<ResultResMainBean<GameListBannerBean>> response) {
            ResultResMainBean<GameListBannerBean> body = response.body();
            if (body != null) {
                try {
                    List<GameInfoBean> game_list = body.getData().getGame_list();
                    if (game_list == null || game_list.size() <= 0) {
                        GameRoomListActivity.this.V2();
                    } else {
                        GameRoomListActivity.this.X1.addAll(game_list);
                        GameRoomListActivity.this.f36506r1.notifyDataSetChanged();
                        GameRoomListActivity.this.e3();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    GameRoomListActivity.this.V2();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class k extends b.c {
        k() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void a() {
            super.a();
            GameRoomListActivity.this.k3(2);
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
            super.c();
            GameRoomListActivity.this.Q0.d().z(GameRoomListActivity.this.W0);
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            gameRoomListActivity.R0 = gameRoomListActivity.Q0.d().n();
            GameRoomListActivity gameRoomListActivity2 = GameRoomListActivity.this;
            gameRoomListActivity2.w3(gameRoomListActivity2.R0);
            GameRoomListActivity.this.S2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements Callback<ResultMainBean<ArenaAdData>> {
        l() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaAdData>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaAdData>> call, Response<ResultMainBean<ArenaAdData>> response) {
            View view;
            if (response != null) {
                try {
                    if (response.body() != null) {
                        ResultMainBean<ArenaAdData> body = response.body();
                        if (body.getCode() == 600) {
                            ArenaAdData data = body.getMessages().getData();
                            if (data.isC_has_not_read() && (view = GameRoomListActivity.this.f36507s0) != null) {
                                view.setVisibility(0);
                            }
                            List<ArenaPopupInfoShareBean> list = null;
                            String d4 = GameRoomListActivity.this.L0.arenaDialogAdData().d();
                            if (d2.i(d4)) {
                                list = (List) JsonMapper.getInstance().fromJson(d4, JsonMapper.getInstance().createCollectionType(List.class, ArenaPopupInfoShareBean.class));
                                ArrayList<ArenaPopupInfoShareBean> arrayList = new ArrayList();
                                for (ArenaPopupInfoShareBean arenaPopupInfoShareBean : list) {
                                    if (!com.join.mgps.Util.x.t(arenaPopupInfoShareBean.getLastShowTime())) {
                                        arrayList.add(arenaPopupInfoShareBean);
                                    }
                                }
                                for (ArenaPopupInfoShareBean arenaPopupInfoShareBean2 : arrayList) {
                                    list.remove(arenaPopupInfoShareBean2);
                                }
                            }
                            Iterator<ArenaPopupInfoBean> it2 = data.getPopup_info().iterator();
                            while (it2.hasNext() && !GameRoomListActivity.this.t2(it2.next(), list)) {
                            }
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class m implements Handler.Callback {
        m() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            Dialog dialog = gameRoomListActivity.f36484a2;
            if (dialog == null || gameRoomListActivity.f36512u1) {
                return false;
            }
            dialog.dismiss();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements h0.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaPopupInfoBean f36537a;

        n(ArenaPopupInfoBean arenaPopupInfoBean) {
            this.f36537a = arenaPopupInfoBean;
        }

        @Override // com.join.mgps.dialog.h0.c
        public void a(h0 h0Var) {
            h0Var.dismiss();
        }

        @Override // com.join.mgps.dialog.h0.c
        public void b(h0 h0Var) {
            h0Var.dismiss();
            IntentUtil.getInstance().intentActivity(GameRoomListActivity.this.T1, this.f36537a.getJump_info().getIntentDataBean());
            com.papa.sim.statistic.p.l(GameRoomListActivity.this.T1).f2(AccountUtil_.getInstance_(GameRoomListActivity.this.T1).getUid(), "vsButton");
        }
    }

    /* loaded from: classes3.dex */
    class o implements SocketListener.NotifyObserver {
        o() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (GameRoomListActivity.this.Z2()) {
                return;
            }
            GameRoomListActivity.this.k3(3);
            int i2 = socketError.errorType;
            if (i2 == 6 || i2 == 2) {
                GameRoomListActivity.this.showToast(socketError.errorInfo);
                GameRoomListActivity.this.C2();
            } else if (i2 == 5) {
                GameRoomListActivity.this.o3();
            } else if (i2 == 3 || i2 == 4) {
                GameRoomListActivity.this.showToast(socketError.errorInfo);
                GameRoomListActivity.this.D3();
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            int i2;
            if (GameRoomListActivity.this.Z2()) {
                return;
            }
            if (arenaResponse.responseCode == 0) {
                GameRoomListActivity.this.handleFailure(arenaResponse);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                gameRoomListActivity.R0 = gameRoomListActivity.Q0.d().n();
                GameRoomListActivity gameRoomListActivity2 = GameRoomListActivity.this;
                gameRoomListActivity2.w3(gameRoomListActivity2.R0);
                GameRoomListActivity gameRoomListActivity3 = GameRoomListActivity.this;
                ArenaRequest arenaRequest = arenaResponse.request;
                gameRoomListActivity3.y2(arenaRequest.isElite, arenaRequest.isRefreshing);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_UPDATE_AREA_ONLINE_PEOPLE_BROADCAST)) {
                GameRoomListActivity.this.K3((AreaOnlinePeopleCount) arenaResponse.data);
            } else {
                if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_BATTLE_AREA)) {
                    GameRoomListActivity.this.Q0.d().D(GameRoomListActivity.this.f36498n1);
                    GameRoomListActivity.this.k3(1);
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM)) {
                    GameRoomListActivity.this.Q0.d().E(null);
                    GameRoomListActivity.this.A1 = arenaResponse.joinSpectatorReason;
                    GameRoomListActivity.this.f36522z1 = (GameRoom) arenaResponse.data;
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_GLOBAL_BROADCAST_ALL)) {
                    GameRoomListActivity.this.O2((Notification) arenaResponse.data);
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_UPDATE)) {
                    GameRoomListActivity.this.h3(ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_UPDATE);
                    GameRoomListActivity.this.R2((List) arenaResponse.data);
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_DISSOLVE)) {
                    GameRoomListActivity.this.h3(ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_DISSOLVE);
                    GameRoomListActivity.this.Q2((List) arenaResponse.data);
                } else {
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_ING)) {
                        GameRoomListActivity.this.h3(ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_ING);
                        GameRoomListActivity.this.P2(arenaResponse, false);
                    } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_FINISH)) {
                        GameRoomListActivity.this.h3(ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_FINISH);
                        if (arenaResponse.request.roomType == 1) {
                            GameRoomListActivity.this.T0 = true;
                            GameRoomListActivity.this.N3(arenaResponse, false);
                        } else {
                            GameRoomListActivity.this.N3(arenaResponse, true);
                            GameRoomListActivity.this.U0 = true;
                        }
                        GameRoomListActivity.this.P2(arenaResponse, true);
                    } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM) || arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                        GameRoomListActivity.this.T2();
                        GameRoom gameRoom = (GameRoom) arenaResponse.data;
                        GameRoomListActivity.this.Q0.d().E(null);
                        if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                            i2 = 2;
                        } else {
                            i2 = gameRoom.getRoomCategory() == RoomCategory.TOURNAMENT ? 1 : 0;
                        }
                        if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(GameRoomListActivity.this.T1);
                            Event event = Event.JoinLobbyroom;
                            Ext ext = new Ext();
                            l4.K1(event, ext.setGameId(gameRoom.getGameId() + "").setUid(AccountUtil_.getInstance_(GameRoomListActivity.this.T1).getAccountData().getUid()).setPosition("0"));
                            GameRoomListActivity.this.p2();
                            int i4 = -1;
                            if (gameRoom.getElite()) {
                                if (GameRoomListActivity.this.O0 != null) {
                                    i4 = GameRoomListActivity.this.O0.m0() != 2 ? 1 : 0;
                                }
                                GameRoomActivity_.u3(GameRoomListActivity.this).l(i2).a(GameRoomListActivity.this.M1).e(i4).d(gameRoom.getGameName()).f(true).i(gameRoom).start();
                                return;
                            }
                            if (GameRoomListActivity.this.N0 != null) {
                                i4 = GameRoomListActivity.this.N0.m0() == 2 ? 0 : 1;
                            }
                            GameRoomActivity_.u3(GameRoomListActivity.this).l(i2).d(gameRoom.getGameName()).e(i4).i(gameRoom).start();
                            return;
                        }
                        AccountBean accountData = AccountUtil_.getInstance_(GameRoomListActivity.this).getAccountData();
                        if (!d2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
                            com.papa.sim.statistic.p l5 = com.papa.sim.statistic.p.l(GameRoomListActivity.this.T1);
                            Event event2 = Event.JoinLobbyroom;
                            Ext uid = new Ext().setUid(AccountUtil_.getInstance_(GameRoomListActivity.this.T1).getAccountData().getUid());
                            l5.K1(event2, uid.setGameId(gameRoom.getGameId() + "").setPosition("1"));
                            GameRoomActivity_.u3(GameRoomListActivity.this).l(i2).h(arenaResponse.joinSpectatorReason).d(gameRoom.getGameName()).i(gameRoom).start();
                            return;
                        }
                        IntentUtil.getInstance().goChangeNickname(GameRoomListActivity.this);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Notification f36540a;

        p(Notification notification) {
            this.f36540a = notification;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                String jumpJSON = this.f36540a.getJumpJSON();
                GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                gameRoomListActivity.h3("handleMsgBroadcast jsonValue:" + jumpJSON);
                IntentUtil.getInstance().intentActivity(GameRoomListActivity.this, (IntentDateBean) JsonMapper.getInstance().fromJson(jumpJSON, IntentDateBean.class));
            } catch (Exception e4) {
                GameRoomListActivity gameRoomListActivity2 = GameRoomListActivity.this;
                gameRoomListActivity2.h3("fromJson exception:" + e4.getMessage());
            }
        }
    }

    /* loaded from: classes3.dex */
    class q extends a.b0 {
        q() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void t() {
            super.t();
            GameRoomListActivity.this.finish();
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void w0(int i2, int i4, Object obj) {
            super.w0(i2, i4, obj);
            if (i2 == 101 && i4 == 7) {
                GameRoomListActivity.this.A3((ArenaResponse) obj);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameRoomListActivity.this.K0.getCurrentItem() == 1) {
                GameRoomListActivity.this.K0.setCurrentItem(0);
            } else {
                GameRoomListActivity.this.K0.setCurrentItem(1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameRoomListActivity.this.K0.getCurrentItem() == 1) {
                GameRoomListActivity.this.K0.setCurrentItem(0);
            } else {
                GameRoomListActivity.this.K0.setCurrentItem(1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameRoomListActivity.this.f36502p1.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                GameRoomListActivity.this.K0.setCurrentItem(2);
            } else {
                GameRoomListActivity.this.K0.setCurrentItem(1);
            }
        }
    }

    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity.this.C3();
            if (GameRoomListActivity.this.f36502p1 != null) {
                if (!GameRoomListActivity.this.Q0.e()) {
                    GameRoomListActivity.this.Q0.bindService();
                    GameRoomListActivity.this.U2();
                    return;
                }
                GameRoomListActivity.this.S2();
                return;
            }
            GameRoomListActivity.this.F2();
        }
    }

    /* loaded from: classes3.dex */
    class v implements g0.e {
        v() {
        }

        @Override // com.join.mgps.customview.g0.e
        public void a(BattleArea battleArea) {
            GameRoomListActivity.this.f36498n1 = battleArea;
            int number = GameRoomListActivity.this.f36498n1.getNumber();
            BattleArea battleArea2 = BattleArea.BJ;
            if (number == battleArea2.getNumber()) {
                GameRoomListActivity.this.p3(battleArea2);
                return;
            }
            int number2 = GameRoomListActivity.this.f36498n1.getNumber();
            BattleArea battleArea3 = BattleArea.SH;
            if (number2 == battleArea3.getNumber()) {
                GameRoomListActivity.this.p3(battleArea3);
            } else {
                GameRoomListActivity.this.p3(BattleArea.GZ);
            }
        }

        @Override // com.join.mgps.customview.g0.e
        public void b(GameConfig gameConfig) {
            try {
                GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                gameRoomListActivity.M0 = gameConfig;
                if (gameRoomListActivity.N0 != null) {
                    GameRoomListActivity.this.N0.v0(gameConfig.getGame_id());
                }
                if (GameRoomListActivity.this.O0 != null) {
                    GameRoomListActivity.this.O0.v0(gameConfig.getGame_id());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface w {
        void onItemClick(int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class x extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private ArenaGameRoomListConfig f36548a;

        public x(ArenaGameRoomListConfig arenaGameRoomListConfig, FragmentManager fragmentManager) {
            super(fragmentManager);
            this.f36548a = arenaGameRoomListConfig;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return GameRoomListActivity.this.K2(this.f36548a);
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return GameRoomListActivity.this.q3(i2, this.f36548a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f36550a;

        /* renamed from: b  reason: collision with root package name */
        TextView f36551b;

        public y(@NonNull View view) {
            super(view);
            this.f36550a = view.findViewById(R.id.main);
            this.f36551b = (TextView) view.findViewById(R.id.name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z extends RecyclerView.Adapter<y> {

        /* renamed from: a  reason: collision with root package name */
        private w f36553a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f36555a;

            a(int i2) {
                this.f36555a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                z zVar = z.this;
                zVar.notifyItemChanged(GameRoomListActivity.this.Y1);
                GameRoomListActivity.this.Y1 = this.f36555a;
                z zVar2 = z.this;
                zVar2.notifyItemChanged(GameRoomListActivity.this.Y1);
                z.this.f36553a.onItemClick(this.f36555a);
            }
        }

        z() {
        }

        public GameInfoBean b() {
            List<GameInfoBean> list = GameRoomListActivity.this.X1;
            if (list != null && list.size() != 0) {
                if (GameRoomListActivity.this.Y1 < 0) {
                    return GameRoomListActivity.this.X1.get(0);
                }
                if (GameRoomListActivity.this.Y1 < getItemCount()) {
                    GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                    return gameRoomListActivity.X1.get(gameRoomListActivity.Y1);
                }
            }
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: c */
        public void onBindViewHolder(@NonNull y yVar, int i2) {
            GameInfoBean gameInfoBean = GameRoomListActivity.this.X1.get(i2);
            if (GameRoomListActivity.this.Y1 != -1024 || !gameInfoBean.getCollection_id().equals(GameRoomListActivity.this.f36499o0.getCollection_id())) {
                if (GameRoomListActivity.this.Y1 == i2) {
                    yVar.f36551b.setTextColor(-16777216);
                } else {
                    yVar.f36551b.setTextColor(Color.parseColor("#C3C3C3"));
                }
                yVar.f36550a.setSelected(GameRoomListActivity.this.Y1 == i2);
            } else {
                GameRoomListActivity.this.Y1 = i2;
                yVar.f36550a.setSelected(true);
                yVar.f36551b.setTextColor(-16777216);
            }
            yVar.f36551b.setText(gameInfoBean.getTitle());
            yVar.f36550a.setOnClickListener(new a(i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: d */
        public y onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            return new y(LayoutInflater.from(GameRoomListActivity.this.T1).inflate(R.layout.newarena_roomselecter_item, viewGroup, false));
        }

        public void e(w wVar) {
            this.f36553a = wVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameRoomListActivity.this.X1.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A3(ArenaResponse arenaResponse) {
        if (arenaResponse == null) {
            return;
        }
        synchronized (this.Z0) {
            if (arenaResponse.request.roomType == 2) {
                if (this.f36491g1 && this.O0 != null && this.U0) {
                    this.O0.J0(arenaResponse.request.roomId);
                }
            } else if (this.f36490f1 && this.N0 != null && this.T0) {
                this.N0.J0(arenaResponse.request.roomId);
            }
        }
    }

    private void B3(String str) {
        x0 x0Var = this.E1;
        if (x0Var != null && x0Var.isShowing()) {
            this.E1.dismiss();
        }
        x0 z3 = a0.c0(this).z(this, str, false);
        this.E1 = z3;
        z3.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G3() {
        this.f36518x1.reset();
        this.f36516w1.startAnimation(this.f36518x1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int K2(ArenaGameRoomListConfig arenaGameRoomListConfig) {
        int i4 = arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1 ? 2 : 1;
        return arenaGameRoomListConfig.getCurrent_collection_cfg().getGeneral_match_switch() == 1 ? i4 + 1 : i4;
    }

    static /* synthetic */ int Q1(GameRoomListActivity gameRoomListActivity) {
        int i4 = gameRoomListActivity.f36520y1;
        gameRoomListActivity.f36520y1 = i4 - 1;
        return i4;
    }

    private void V0() {
        com.join.mgps.rpc.impl.k.n0().m0().u(AccountUtil_.getInstance_(this.T1).getUid()).enqueue(new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V2() {
        this.S1.setVisibility(8);
    }

    private void W2() {
        this.R1.setLayoutManager(new LinearLayoutManager(this));
        z zVar = new z();
        this.U1 = zVar;
        zVar.e(new g());
        this.R1.setAdapter(this.U1);
        this.T1 = this;
        this.Q1.setLayoutManager(new GridLayoutManager(this.T1, ((double) com.join.android.app.common.utils.j.n(this).j(this)) >= 1.9d ? 3 : 2));
        t1 t1Var = new t1(this.T1, false);
        this.V1 = t1Var;
        t1Var.f(new h());
        this.W1 = this.V1.b();
        this.Q1.setAdapter(this.V1);
        V0();
        e3();
    }

    private void X2(ArenaGameRoomListConfig arenaGameRoomListConfig) {
        if (arenaGameRoomListConfig == null) {
            return;
        }
        if (arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
            this.f36504q1 = false;
            this.f36517x0.setVisibility(0);
        } else {
            this.f36517x0.setVisibility(8);
        }
        if (arenaGameRoomListConfig.getCurrent_collection_cfg().getGeneral_match_switch() == 1) {
            this.f36504q1 = false;
            this.A0.setVisibility(0);
        } else {
            this.A0.setVisibility(8);
        }
        if (this.f36504q1) {
            this.f36494j1.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Z2() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets c3(View view, WindowInsets windowInsets) {
        if (f1.b(this)) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.K0.getLayoutParams();
            layoutParams.leftMargin = (int) L2();
            this.K0.setLayoutParams(layoutParams);
        }
        return view.onApplyWindowInsets(windowInsets);
    }

    private void m3(ArenaResponse arenaResponse) {
        synchronized (this.Z0) {
            if (arenaResponse.request.roomType == 2) {
                if (this.f36491g1 && this.O0 != null && this.U0) {
                    this.O0.C0(arenaResponse.request.roomId);
                }
            } else if (this.f36490f1 && this.N0 != null && this.T0) {
                this.N0.C0(arenaResponse.request.roomId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o3() {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        h3("---retryLogin---");
        C3();
        ArenaRequest login = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMELIST);
        if (this.K0.getCurrentItem() == 1 && (arenaGameRoomListConfig = this.f36502p1) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
            login.isElite = true;
            login.isRefreshing = false;
            login.roomType = 2;
        } else {
            login.isElite = false;
            login.isRefreshing = false;
            login.roomType = 1;
        }
        this.Q0.f(login);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p2() {
        CountDownTimer countDownTimer = this.L1;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p3(BattleArea battleArea) {
        if (battleArea == null) {
            return;
        }
        this.Q0.f(ArenaRequestFactory.changeBattleArea(ArenaConstants.REGISTER_TYPE_GAMELIST, battleArea));
    }

    private boolean s2(PopupWindow popupWindow, MotionEvent motionEvent) {
        View contentView;
        if (popupWindow == null || motionEvent == null || (contentView = popupWindow.getContentView()) == null) {
            return false;
        }
        return !v2(contentView, motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t2(ArenaPopupInfoBean arenaPopupInfoBean, List<ArenaPopupInfoShareBean> list) {
        if (arenaPopupInfoBean != null && arenaPopupInfoBean.getJump_info() != null) {
            if (list != null) {
                boolean z3 = false;
                for (ArenaPopupInfoShareBean arenaPopupInfoShareBean : list) {
                    if (arenaPopupInfoShareBean.getId() == arenaPopupInfoBean.getId()) {
                        arenaPopupInfoShareBean.setDaily_count(arenaPopupInfoBean.getDaily_count());
                        if (com.join.mgps.Util.x.t(arenaPopupInfoShareBean.getLastShowTime())) {
                            if (arenaPopupInfoShareBean.getHasShowCount() < arenaPopupInfoShareBean.getDaily_count()) {
                                v3(arenaPopupInfoBean);
                                arenaPopupInfoShareBean.setHasShowCount(arenaPopupInfoShareBean.getHasShowCount() + 1);
                                arenaPopupInfoShareBean.setLastShowTime(System.currentTimeMillis());
                                this.L0.arenaDialogAdData().g(JsonMapper.getInstance().toJson(list));
                                return true;
                            }
                            z3 = true;
                        } else {
                            arenaPopupInfoShareBean.setHasShowCount(1);
                            arenaPopupInfoShareBean.setLastShowTime(System.currentTimeMillis());
                            v3(arenaPopupInfoBean);
                            this.L0.arenaDialogAdData().g(JsonMapper.getInstance().toJson(list));
                            t0.d("arenadialog", "22222222222222");
                            return true;
                        }
                    }
                }
                if (!z3) {
                    ArenaPopupInfoShareBean arenaPopupInfoShareBean2 = new ArenaPopupInfoShareBean();
                    arenaPopupInfoShareBean2.setId(arenaPopupInfoBean.getId());
                    arenaPopupInfoShareBean2.setDaily_count(arenaPopupInfoBean.getDaily_count());
                    arenaPopupInfoShareBean2.setLastShowTime(System.currentTimeMillis());
                    arenaPopupInfoShareBean2.setHasShowCount(1);
                    list.add(arenaPopupInfoShareBean2);
                    this.L0.arenaDialogAdData().g(JsonMapper.getInstance().toJson(list));
                    v3(arenaPopupInfoBean);
                    t0.d("arenadialog", "3333333333");
                    return true;
                }
            } else {
                ArenaPopupInfoShareBean arenaPopupInfoShareBean3 = new ArenaPopupInfoShareBean();
                arenaPopupInfoShareBean3.setId(arenaPopupInfoBean.getId());
                arenaPopupInfoShareBean3.setDaily_count(arenaPopupInfoBean.getDaily_count());
                arenaPopupInfoShareBean3.setLastShowTime(System.currentTimeMillis());
                arenaPopupInfoShareBean3.setHasShowCount(1);
                ArrayList arrayList = new ArrayList();
                arrayList.add(arenaPopupInfoShareBean3);
                this.L0.arenaDialogAdData().g(JsonMapper.getInstance().toJson(arrayList));
                v3(arenaPopupInfoBean);
                t0.d("arenadialog", "4444444444");
                return true;
            }
        }
        return false;
    }

    private boolean v2(View view, MotionEvent motionEvent) {
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        return iArr[0] < rawX && iArr[1] < rawY && rawX < iArr[0] + view.getWidth() && rawY < iArr[1] + view.getHeight();
    }

    private void v3(ArenaPopupInfoBean arenaPopupInfoBean) {
        try {
            Dialog dialog = this.f36484a2;
            if (dialog != null) {
                dialog.dismiss();
                this.f36484a2 = null;
            }
            Dialog P = a0.c0(this).P(this, arenaPopupInfoBean.getJump_info().getTitle(), arenaPopupInfoBean.getJump_info().getPic_remote(), new n(arenaPopupInfoBean));
            this.f36484a2 = P;
            P.show();
            this.f36484a2.setCancelable(false);
            this.f36486b2.sendEmptyMessageDelayed(1, arenaPopupInfoBean.getShow_time());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void y3() {
        if (r2()) {
            this.f36522z1 = null;
            this.B1 = null;
            this.A1 = "";
            this.f36520y1 = 3;
            this.f36518x1 = AnimationUtils.loadAnimation(this, R.anim.count_downer);
            this.f36514v1 = new Dialog(this, R.style.newtrans_no_floating_dialog);
            View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_fast_join_room, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R.id.tv_countDown);
            this.f36516w1 = textView;
            textView.setText("" + this.f36520y1);
            this.f36514v1.setContentView(inflate);
            Window window = this.f36514v1.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.height = b0.a(this, 130.0f);
            attributes.width = b0.a(this, 273.0f);
            window.setGravity(17);
            this.f36514v1.show();
            this.f36516w1.startAnimation(this.f36518x1);
            this.C1.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    public void A2(long j4) {
        if (r2() && this.f36502p1 != null && this.T0) {
            Dialog dialog = this.f36514v1;
            if (dialog != null && dialog.isShowing()) {
                this.f36514v1.dismiss();
            }
            y3();
            this.Q0.f(ArenaRequestFactory.fastJoinRoom(ArenaConstants.REGISTER_TYPE_GAMELIST, j4, Integer.parseInt(this.f36502p1.getCurrent_collection_cfg().getCollection_id())));
        }
    }

    public void B2() {
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.T1);
        Event event = Event.JoinLobbyroom;
        Ext uid = new Ext().setUid(AccountUtil_.getInstance_(this.T1).getAccountData().getUid());
        l4.K1(event, uid.setGameId(this.f36522z1.getGameId() + "").setPosition("1"));
        GameRoomActivity_.u3(this).g(true).h(this.A1).d(this.f36522z1.getGameName()).i(this.f36522z1).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C2() {
        p2();
        T2();
        com.join.mgps.socket.fight.arena.a aVar = this.f36492h1;
        if (aVar != null) {
            aVar.w();
        }
        z2();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C3() {
        this.F0.setVisibility(8);
        this.f36510t1.setVisibility(0);
        this.f36508s1.setVisibility(8);
        this.D0.setText("数据加载中...");
        this.E0.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D2() {
        showToast("获取游戏配置信息失败！");
        new Handler().postDelayed(new a(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D3() {
        IntentUtil.getInstance().goLoginBattle(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E2(String str) {
        try {
            ResultArenaBean<BattleChallengeConfig> E = this.N1.E(this.J1.getAccountData().getUid(), this.J1.getAccountData().getToken(), Long.parseLong(str));
            if (E != null && E.getData() != null) {
                this.M1 = E.getData();
                if (E.getError() == 701) {
                    u2();
                    return;
                } else if (this.M1.getIsBattle()) {
                    H3(str, 50);
                    return;
                } else {
                    H3(str, 500);
                    return;
                }
            }
            T2();
            p2();
            if (E != null && E.getError() == 701) {
                u2();
            } else {
                showToast("系统错误!");
            }
        } catch (Exception unused) {
            p2();
            T2();
            if (!com.join.android.app.common.utils.f.j(this)) {
                showToast("当前网络不可用，请检查网络!");
            } else {
                showToast("创建房间失败，请重试！");
            }
        }
    }

    @UiThread
    public void E3() {
        this.F0.setVisibility(8);
        this.f36510t1.setVisibility(0);
        this.f36508s1.setVisibility(8);
        this.D0.setText("暂无游戏房间");
        this.E0.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F2() {
        String collection_id;
        int i4;
        try {
            if (TextUtils.isEmpty(this.f36499o0.getCollection_id())) {
                collection_id = this.f36499o0.getGame_id();
                i4 = 1;
            } else {
                collection_id = this.f36499o0.getCollection_id();
                i4 = 2;
            }
            ResultMainBean<ArenaGameRoomListConfig> q3 = this.K1.q(RequestBeanUtil.getInstance(this).getRequestArenaRoomListArgs(collection_id, i4));
            if (q3 != null && q3.getMessages().getData() != null) {
                if (q3.getMessages().getData().getCurrent_collection_cfg() == null) {
                    D2();
                    return;
                }
                String collection_id2 = q3.getMessages().getData().getCurrent_collection_cfg().getCollection_id();
                if (!TextUtils.isEmpty(collection_id2) && Integer.parseInt(collection_id2) > 0) {
                    if (q3.getMessages().getData().getGame_list() != null && q3.getMessages().getData().getGame_list().size() > 0) {
                        this.f36499o0.setCollection_id(collection_id2);
                        ArenaGameRoomListConfig data = q3.getMessages().getData();
                        this.f36502p1 = data;
                        Y2(data);
                        return;
                    }
                    D2();
                    return;
                }
                D2();
                return;
            }
            showToast("获取游戏配置信息失败！");
            x3();
        } catch (Exception e4) {
            h3("get game config exception:" + e4.getMessage());
            D2();
        }
    }

    void F3(View view) {
        if (this.R0 == null) {
            return;
        }
        List<GameInfoBean> list = this.X1;
        if (list != null && list.size() > 0) {
            this.S1.setVisibility(0);
            try {
                if (this.X1 != null) {
                    int i4 = this.Y1;
                    if (i4 != -1024) {
                        this.R1.scrollToPosition(i4);
                    } else {
                        for (int i5 = 0; i5 < this.X1.size(); i5++) {
                            if (this.X1.get(i5).getCollection_id().equals(this.f36499o0.getCollection_id())) {
                                this.R1.scrollToPosition(i5);
                            }
                        }
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            U0();
            return;
        }
        V0();
    }

    public ArenaGameRoomListConfig G2() {
        return this.f36502p1;
    }

    public String H2() {
        z zVar = this.U1;
        GameInfoBean b4 = zVar != null ? zVar.b() : null;
        return b4 != null ? b4.getCollection_id() : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H3(String str, int i4) {
        h3("startCreateRoom gameId:" + str);
        this.Q0.f(ArenaRequestFactory.createRoom(ArenaConstants.REGISTER_TYPE_GAMELIST, str, i4, this.J1.getAccountData().getUid()));
    }

    public List<GameInfoBean> I2() {
        return this.W1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I3(boolean z3) {
        if (z3) {
            com.join.mgps.fragment.roomlist.d dVar = this.O0;
            if (dVar != null) {
                dVar.T0();
                return;
            }
            return;
        }
        com.join.mgps.fragment.roomlist.d dVar2 = this.N0;
        if (dVar2 != null) {
            dVar2.T0();
        }
    }

    public FriendBean J2() {
        return this.Z1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J3(int i4, boolean z3) {
        ArenaRequest subscribeRoomList = ArenaRequestFactory.subscribeRoomList(ArenaConstants.REGISTER_TYPE_GAMELIST, Integer.parseInt(this.f36502p1.getCurrent_collection_cfg().getCollection_id()), i4);
        subscribeRoomList.isRefreshing = z3;
        if (i4 == 1) {
            this.f36490f1 = true;
            subscribeRoomList.roomType = 1;
            subscribeRoomList.isElite = false;
        } else {
            this.f36491g1 = true;
            subscribeRoomList.roomType = 2;
            subscribeRoomList.isElite = true;
        }
        this.Q0.f(subscribeRoomList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K3(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        try {
            if (TextUtils.isEmpty(M2()) || TextUtils.isEmpty(this.f36503q0.getText()) || M2().equals(this.f36503q0.getText())) {
                return;
            }
            this.f36503q0.setText(M2());
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f36503q0.setText(M2());
        }
    }

    public float L2() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return getResources().getDimension(identifier);
        }
        return 0.0f;
    }

    void L3() {
        this.f36503q0.setText(M2());
        if (G2() != null && G2().getGame_list() != null && G2().getGame_list().size() > 0) {
            for (GameConfig gameConfig : G2().getGame_list()) {
                if (this.f36488d1.containsKey(gameConfig.getGame_id())) {
                    gameConfig.setRoom_count(this.f36488d1.get(gameConfig.getGame_id()).intValue());
                }
            }
            g0 g0Var = this.f36496l1;
            if (g0Var != null) {
                g0Var.c(G2().getGame_list());
                return;
            }
            return;
        }
        g0 g0Var2 = this.f36496l1;
        if (g0Var2 != null) {
            g0Var2.c(new ArrayList());
        }
    }

    public String M2() {
        com.join.mgps.socket.fight.arena.b bVar;
        ArenaGameRoomListConfig arenaGameRoomListConfig = this.f36502p1;
        String str = "";
        if (arenaGameRoomListConfig == null) {
            finish();
            return "";
        }
        boolean z3 = arenaGameRoomListConfig.getCurrent_collection_cfg().getBattle_area() == 0;
        if (this.f36498n1 != null && this.f36502p1 != null && !z3 && (bVar = this.Q0) != null && bVar.d() != null && this.Q0.d().s() && this.f36498n1 != BattleArea.ALL) {
            str = "" + com.join.mgps.socket.fight.arena.c.d(this.f36498n1);
        }
        if (G2() != null && G2().getGame_list() != null && G2().getGame_list().size() > 0) {
            if (this.f36502p1 != null && !z3) {
                str = str + ",";
            }
            str = str + G2().getGame_list().size() + "款游戏";
        }
        if (this.f36487c1 > 0) {
            return str + "," + this.f36487c1 + "个房间";
        }
        return str;
    }

    void M3() {
        ArrayList arrayList = new ArrayList();
        com.join.mgps.fragment.roomlist.d dVar = this.N0;
        if (dVar != null) {
            arrayList.addAll(dVar.l0());
        }
        com.join.mgps.fragment.roomlist.d dVar2 = this.O0;
        if (dVar2 != null) {
            arrayList.addAll(dVar2.l0());
        }
        this.f36487c1 = arrayList.size();
        L3();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void N2() {
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        CollectionCommentRequest collectionCommentRequest = new CollectionCommentRequest();
        collectionCommentRequest.setCollection_id(this.f36499o0.getCollection_id());
        collectionCommentRequest.setUid(accountData.getUid());
        com.join.mgps.rpc.impl.c.P1().O1().N1(RequestBeanUtil.getInstance(this).getDefalutRequestBean(collectionCommentRequest)).enqueue(new l());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N3(ArenaResponse arenaResponse, boolean z3) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        RoomCounter roomCounter = (RoomCounter) ((Object[]) arenaResponse.data)[0];
        if (z3 || this.f36491g1 || (arenaGameRoomListConfig = this.f36502p1) == null || arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() != 1) {
            return;
        }
        if (roomCounter.getElite() > 0) {
            TextView textView = this.f36519y0;
            textView.setText("（" + roomCounter.getElite() + "房）");
            return;
        }
        this.f36519y0.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O2(Notification notification) {
        if (notification != null) {
            this.F0.setVisibility(0);
            this.J0.setText(notification.getMessage());
            this.F0.setOnClickListener(new p(notification));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O3(int i4, boolean z3) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        try {
            if (z3) {
                if (i4 > 0) {
                    return;
                }
                this.f36519y0.setVisibility(8);
            } else if (i4 <= 0) {
                this.f36513v0.setVisibility(8);
            } else if (this.f36504q1 && (arenaGameRoomListConfig = this.f36502p1) != null) {
                this.f36505r0.setText(arenaGameRoomListConfig.getCurrent_collection_cfg().getTitle());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P2(ArenaResponse arenaResponse, boolean z3) {
        List<SimpleRoom> list;
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        if (arenaResponse == null) {
            return;
        }
        synchronized (this.Z0) {
            if (f36479g2) {
                ArrayList arrayList = new ArrayList();
                for (int i4 = 0; i4 < 20; i4++) {
                    int i5 = i4 + 100;
                    SimpleRoom.Builder challengeCoins = SimpleRoom.newBuilder().setAllowPeripheralJoin(true).setAllowSpectatorJoin(true).setCopper(i5).setPlaySeconds((i4 * 5) + 10).setState(RoomState.START).setHasPeripheralPlayer(true).setChallengeCoins(i5);
                    arrayList.add(challengeCoins.setNickname("hulaoda" + i4).build());
                }
                com.join.mgps.fragment.roomlist.d dVar = this.N0;
                if (dVar != null) {
                    dVar.e0(arrayList, true);
                }
                return;
            }
            if (z3) {
                list = (List) ((Object[]) arenaResponse.data)[1];
            } else {
                list = (List) arenaResponse.data;
            }
            h3("---handlePushRoomListData--data print  begin ");
            w2();
            for (SimpleRoom simpleRoom : list) {
                com.join.mgps.socket.fight.arena.c.r(f36475c2, simpleRoom);
                LinkedHashMap<String, SimpleRoom> linkedHashMap = this.f36489e1;
                linkedHashMap.put(simpleRoom.getRoomId() + "", simpleRoom);
                u3(simpleRoom.getGameId() + "", 1);
            }
            h3("---handlePushRoomListData--data print  end ");
            h3("handlePushRoomListData ---response.request: " + arenaResponse.request.toString());
            if (arenaResponse.request.roomType == 1) {
                if (this.N0 != null && this.f36490f1) {
                    if (this.X0) {
                        this.X0 = false;
                        this.N0.A0(list, this.T0);
                    } else {
                        this.N0.e0(list, this.T0);
                    }
                }
            } else if (this.O0 != null && this.f36491g1 && (arenaGameRoomListConfig = this.f36502p1) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                if (this.Y0) {
                    this.Y0 = false;
                    this.O0.A0(list, this.U0);
                } else {
                    this.O0.e0(list, this.U0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q2(List<SimpleRoom> list) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        com.join.mgps.fragment.roomlist.d dVar;
        com.join.mgps.fragment.roomlist.d dVar2;
        synchronized (this.Z0) {
            if (f36479g2) {
                return;
            }
            h3("---handleRoomListDelete--data print  begin ");
            for (SimpleRoom simpleRoom : list) {
                com.join.mgps.socket.fight.arena.c.r(f36475c2, simpleRoom);
            }
            h3("---handleRoomListDelete--data print  end ");
            ArrayList<SimpleRoom> arrayList = new ArrayList<>();
            ArrayList<SimpleRoom> arrayList2 = new ArrayList<>();
            for (SimpleRoom simpleRoom2 : list) {
                if (simpleRoom2.getElite()) {
                    arrayList2.add(simpleRoom2);
                } else {
                    arrayList.add(simpleRoom2);
                }
                synchronized (this.f36489e1) {
                    LinkedHashMap<String, SimpleRoom> linkedHashMap = this.f36489e1;
                    linkedHashMap.remove(simpleRoom2.getRoomId() + "");
                    u3(simpleRoom2.getGameId() + "", -1);
                }
            }
            L3();
            if (this.f36490f1 && this.T0 && (dVar2 = this.N0) != null) {
                dVar2.W0(arrayList);
            }
            if (this.f36491g1 && this.U0 && (arenaGameRoomListConfig = this.f36502p1) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1 && (dVar = this.O0) != null) {
                dVar.W0(arrayList2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R2(List<SimpleRoom> list) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        com.join.mgps.fragment.roomlist.d dVar;
        com.join.mgps.fragment.roomlist.d dVar2;
        synchronized (this.Z0) {
            if (f36479g2) {
                return;
            }
            h3("---handleRoomListUpdate--data print  begin ");
            for (SimpleRoom simpleRoom : list) {
                com.join.mgps.socket.fight.arena.c.r(f36475c2, simpleRoom);
            }
            h3("---handleRoomListUpdate--data print  end ");
            ArrayList<SimpleRoom> arrayList = new ArrayList<>();
            ArrayList<SimpleRoom> arrayList2 = new ArrayList<>();
            for (SimpleRoom simpleRoom2 : list) {
                if (simpleRoom2.getElite()) {
                    arrayList2.add(simpleRoom2);
                } else {
                    arrayList.add(simpleRoom2);
                }
            }
            synchronized (this.f36489e1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                int size = list.size();
                for (int i4 = 0; i4 < size; i4++) {
                    SimpleRoom simpleRoom3 = list.get(i4);
                    LinkedHashMap<String, SimpleRoom> linkedHashMap3 = this.f36489e1;
                    if (linkedHashMap3.containsKey(simpleRoom3.getRoomId() + "")) {
                        linkedHashMap2.put(simpleRoom3.getRoomId() + "", simpleRoom3);
                    } else {
                        linkedHashMap.put(simpleRoom3.getRoomId() + "", simpleRoom3);
                        u3(simpleRoom3.getGameId() + "", 1);
                    }
                }
                for (int i5 = 0; i5 < linkedHashMap2.size(); i5++) {
                    SimpleRoom simpleRoom4 = (SimpleRoom) linkedHashMap2.get(Integer.valueOf(i5));
                    if (simpleRoom4 != null) {
                        LinkedHashMap<String, SimpleRoom> linkedHashMap4 = this.f36489e1;
                        if (linkedHashMap4.containsKey(simpleRoom4.getRoomId() + "")) {
                            LinkedHashMap<String, SimpleRoom> linkedHashMap5 = this.f36489e1;
                            linkedHashMap5.put(simpleRoom4.getRoomId() + "", simpleRoom4);
                        }
                    }
                }
                if (linkedHashMap.size() > 0) {
                    this.f36489e1.putAll(linkedHashMap);
                }
            }
            if (this.f36490f1 && this.T0 && (dVar2 = this.N0) != null) {
                dVar2.X0(arrayList);
            }
            if (this.f36491g1 && this.U0 && (arenaGameRoomListConfig = this.f36502p1) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1 && (dVar = this.O0) != null) {
                dVar.X0(arrayList2);
            }
        }
    }

    void S2() {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        ArenaGameRoomListConfig arenaGameRoomListConfig2;
        com.join.mgps.socket.fight.arena.b bVar = this.Q0;
        if (bVar != null && bVar.d() != null && this.Q0.d().s()) {
            if (this.K0.getCurrentItem() == 1 && (arenaGameRoomListConfig2 = this.f36502p1) != null && arenaGameRoomListConfig2.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                y2(true, false);
                return;
            } else {
                y2(false, false);
                return;
            }
        }
        ArenaRequest login = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMELIST);
        login.isRefreshing = false;
        if (this.K0.getCurrentItem() == 1 && (arenaGameRoomListConfig = this.f36502p1) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
            login.isElite = true;
            login.roomType = 2;
        } else {
            login.isElite = false;
            login.roomType = 1;
        }
        this.Q0.f(login);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T2() {
        x0 x0Var = this.E1;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.E1.dismiss();
    }

    void U0() {
        String collection_id;
        int i4;
        try {
            if (TextUtils.isEmpty(this.f36499o0.getCollection_id())) {
                collection_id = this.f36499o0.getGame_id();
                i4 = 1;
            } else {
                collection_id = this.f36499o0.getCollection_id();
                i4 = 2;
            }
            com.join.mgps.rpc.impl.c.P1().O1().q(RequestBeanUtil.getInstance(this).getRequestArenaRoomListArgs(collection_id, i4)).enqueue(new i());
        } catch (Exception unused) {
            D2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U2() {
        this.F0.setVisibility(8);
        this.f36510t1.setVisibility(8);
        this.f36508s1.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y2(ArenaGameRoomListConfig arenaGameRoomListConfig) {
        this.f36505r0.setText(arenaGameRoomListConfig.getCurrent_collection_cfg().getTitle());
        s3(1);
        this.f36494j1.setVisibility(0);
        X2(arenaGameRoomListConfig);
        int K2 = K2(arenaGameRoomListConfig);
        x xVar = this.f36506r1;
        if (xVar != null) {
            xVar.f36548a = arenaGameRoomListConfig;
            this.f36506r1.notifyDataSetChanged();
        } else {
            this.f36506r1 = new x(arenaGameRoomListConfig, getSupportFragmentManager());
            this.K0.setOffscreenPageLimit(K2);
            this.K0.setAdapter(this.f36506r1);
            this.K0.setOnPageChangeListener(new c(arenaGameRoomListConfig));
        }
        this.K0.setCurrentItem(0);
        if (this.Q0.e()) {
            S2();
        } else {
            this.Q0.bindService();
        }
        ArenaGameRoomListConfig arenaGameRoomListConfig2 = this.f36502p1;
        if (arenaGameRoomListConfig2 == null || arenaGameRoomListConfig2.getCurrent_collection_cfg() == null) {
            return;
        }
        com.join.mgps.fragment.roomlist.d dVar = this.N0;
        if (dVar != null) {
            dVar.A = this.f36502p1.getCurrent_collection_cfg().getOnly_show_mobile_gamers_room() == 1 ? 2 : 1;
        }
        com.join.mgps.fragment.roomlist.d dVar2 = this.O0;
        if (dVar2 != null) {
            dVar2.A = this.f36502p1.getCurrent_collection_cfg().getOnly_show_mobile_gamers_room() == 1 ? 2 : 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a3() {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        if (r2()) {
            if (this.K0.getCurrentItem() == 0) {
                if (this.T0) {
                    this.N0.M0(this.f36500o1, this.Q0.d().m(), com.join.mgps.socket.fight.arena.c.b(this.R0), this.V0);
                } else {
                    showToast("正在加载数据，请稍等...");
                }
            } else if (this.K0.getCurrentItem() == 1 && (arenaGameRoomListConfig = this.f36502p1) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                if (this.U0) {
                    this.O0.M0(this.f36500o1, this.Q0.d().m(), com.join.mgps.socket.fight.arena.c.b(this.R0), this.V0);
                } else {
                    showToast("正在加载数据，请稍等...");
                }
            }
            if (this.L0.firstArenaFilterVisit().e(Boolean.TRUE).booleanValue()) {
                this.L0.firstArenaFilterVisit().g(Boolean.FALSE);
                this.G0.setImageDrawable(getResources().getDrawable(R.drawable.icon_list));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        if (this.f36499o0 == null) {
            finish();
            return;
        }
        this.K1 = com.join.mgps.rpc.impl.c.P1();
        this.N1 = com.join.mgps.rpc.impl.k.n0();
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        k2(this.H1);
        if (i4 >= 20) {
            try {
                getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.join.mgps.activity.arena.d
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        WindowInsets c32;
                        c32 = GameRoomListActivity.this.c3(view, windowInsets);
                        return c32;
                    }
                });
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        this.f36492h1 = new com.join.mgps.socket.fight.arena.a(this, new q());
        this.f36511u0.setOnClickListener(new r());
        this.f36517x0.setOnClickListener(new s());
        this.A0.setOnClickListener(new t());
        this.Q0 = new com.join.mgps.socket.fight.arena.b(this, this.S0);
        this.f36508s1.setOnClickListener(new u());
        this.f36513v0.setVisibility(8);
        this.f36519y0.setVisibility(8);
        this.C0.setVisibility(8);
        if (com.join.android.app.common.utils.f.j(this)) {
            C3();
            n3();
        } else {
            x3();
        }
        if (this.L0.firstArenaFilterVisit().e(Boolean.TRUE).booleanValue()) {
            this.G0.setImageDrawable(getResources().getDrawable(R.drawable.icon_list));
        }
        W2();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.f36493i1 = supportFragmentManager;
        try {
            supportFragmentManager.beginTransaction().commit();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        N2();
    }

    public void b3(int i4, String str, boolean z3) {
        if (r2()) {
            B3("正在加入房间...");
            this.Q0.f(ArenaRequestFactory.joinRoom(ArenaConstants.REGISTER_TYPE_GAMELIST, i4, str, z3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        V2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d3() {
        this.f36507s0.setVisibility(8);
        IntentUtil intentUtil = IntentUtil.getInstance();
        intentUtil.goShareWebActivity(this, com.join.mgps.rpc.g.f51563x + "/lobby_active/index/");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e3() {
        u1 u1Var;
        GameInfoBean gameInfoBean = this.f36499o0;
        if (gameInfoBean == null || (u1Var = this.f30853b) == null) {
            return;
        }
        u1Var.G0(gameInfoBean.getCollection_id(), this.W1);
    }

    public void f3(int i4) {
        if ((i4 > 0 && this.P1 < 0) || (i4 < 0 && this.P1 > 0)) {
            this.O1.g();
            this.P1 = 0;
        }
        int i5 = this.P1 + i4;
        this.P1 = i5;
        if (i5 > this.O1.h()) {
            this.O1.l(false);
        } else if (this.P1 < 0) {
            this.O1.l(true);
        }
    }

    public void g3(int i4) {
    }

    void h3(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleFailure(ArenaResponse arenaResponse) {
        T2();
        int i4 = arenaResponse.errorType;
        if (i4 == 16) {
            this.f36492h1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "无法加入，你被禁止加入该房间", "确定");
        } else if (i4 == 17) {
            this.f36492h1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "我知道了");
        } else if (i4 == 9) {
            this.f36492h1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间人数已满你无法加入房间!", "确定");
        } else if (i4 == 7) {
            this.f36492h1.D(com.join.mgps.socket.fight.arena.a.f52159j, 256, Integer.valueOf(arenaResponse.errorType), "密码输入错误，请重试!", "取消", "确定", arenaResponse);
        } else if (i4 == 8) {
            m3(arenaResponse);
            this.f36492h1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间已经被解散!", "确定");
        } else if (i4 == 11) {
            this.f36492h1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法创建房间!", "确定");
        } else if (i4 == 13) {
            this.f36492h1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法加入房间", "确定");
        } else if (i4 == 10) {
            A3(arenaResponse);
        } else if (i4 == 1001) {
            this.f36492h1.D(com.join.mgps.socket.fight.arena.a.f52159j, Integer.valueOf((int) com.join.mgps.socket.fight.arena.a.f52158i), Integer.valueOf(arenaResponse.errorType), arenaResponse.errorInfo, "确定");
        } else {
            String g4 = com.join.mgps.socket.fight.arena.c.g(arenaResponse);
            if (arenaResponse.responseType == ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM) {
                this.B1 = "快速加入房间失败 " + g4 + " , 请重试!";
                return;
            }
            showToast(g4);
            if (arenaResponse.responseType == ArenaConstants.ArenaCommand.CMD_SUBSCRIBE_GAME_ROOMLIST) {
                C2();
                return;
            }
            ArenaRequest arenaRequest = arenaResponse.request;
            if (arenaRequest == null || !arenaRequest.isRefreshing) {
                return;
            }
            I3(arenaRequest.isElite);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void i3() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51530m + "/static/match_v2/index.html");
        intentDateBean.setFrom("11");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        if (this.f36501p0) {
            finish();
            return;
        }
        NewArenaMainActivty_.F1(this).start();
        finish();
    }

    public boolean j3(boolean z3) {
        if (!z3) {
            this.X0 = true;
        } else {
            this.Y0 = true;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.Q0;
        if (bVar == null || bVar.d() == null || !this.Q0.d().s()) {
            ArenaRequest login = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMELIST);
            login.isRefreshing = true;
            login.isElite = z3;
            this.Q0.f(login);
        } else if (!z3) {
            J3(1, true);
        } else {
            J3(2, true);
        }
        return true;
    }

    void k2(View view) {
        this.O1 = new p2.a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k3(int i4) {
        this.X0 = true;
        this.Y0 = true;
        this.f36490f1 = false;
        this.f36491g1 = false;
        this.T0 = false;
        this.U0 = false;
        x0 x0Var = this.E1;
        if (x0Var != null && x0Var.isShowing()) {
            this.E1.dismiss();
        }
        com.join.mgps.fragment.roomlist.d dVar = this.O0;
        if (dVar != null) {
            dVar.T0();
        }
        com.join.mgps.fragment.roomlist.d dVar2 = this.N0;
        if (dVar2 != null) {
            dVar2.T0();
        }
        p2();
        this.C1.removeMessages(1);
        Dialog dialog = this.f36514v1;
        if (dialog != null && dialog.isShowing()) {
            this.f36514v1.dismiss();
        }
        com.join.mgps.socket.fight.arena.a aVar = this.f36492h1;
        if (aVar != null) {
            aVar.w();
        }
        if (i4 != 1) {
            if (i4 == 2) {
                this.f36502p1 = null;
                this.F0.setVisibility(8);
                this.f36510t1.setVisibility(8);
                this.f36508s1.setVisibility(0);
                return;
            } else if (i4 == 3) {
                this.F0.setVisibility(8);
                this.f36510t1.setVisibility(8);
                this.f36508s1.setVisibility(0);
                return;
            } else {
                return;
            }
        }
        com.join.mgps.fragment.roomlist.d dVar3 = this.O0;
        if (dVar3 != null) {
            dVar3.A0(new ArrayList(), true);
        }
        com.join.mgps.fragment.roomlist.d dVar4 = this.N0;
        if (dVar4 != null) {
            dVar4.A0(new ArrayList(), true);
        }
        BattleArea battleArea = this.f36498n1;
        if (battleArea != null) {
            this.R0 = battleArea;
        }
        S2();
        this.F0.setVisibility(8);
        this.f36510t1.setVisibility(0);
        this.f36508s1.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void l2() {
        ViewPager viewPager;
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (!d2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
            x xVar = this.f36506r1;
            if (xVar == null || (viewPager = this.K0) == null) {
                return;
            }
            Fragment item = xVar.getItem(viewPager.getCurrentItem());
            if (item instanceof com.join.mgps.fragment.roomlist.c) {
                ((com.join.mgps.fragment.roomlist.c) item).h0();
                return;
            }
            return;
        }
        IntentUtil.getInstance().goChangeNickname(this);
    }

    public void l3() {
        if (this.K0.getCurrentItem() == 0) {
            j3(false);
        } else if (this.K0.getCurrentItem() != 1 || this.O0 == null) {
        } else {
            j3(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void m2() {
        if (this.f36502p1 == null || !com.join.android.app.common.utils.f.j(this) || this.N0 == null) {
            return;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (!d2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
            if (this.I1 > 0 && System.currentTimeMillis() - this.I1 <= 1000) {
                h3("btnFastGame so fast ,waiting a moment!");
                return;
            }
            this.I1 = System.currentTimeMillis();
            this.N0.Q0();
            return;
        }
        IntentUtil.getInstance().goChangeNickname(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void n2() {
        x xVar = this.f36506r1;
        if (xVar == null) {
            return;
        }
        ((com.join.mgps.fragment.roomlist.c) xVar.getItem(this.K0.getCurrentItem())).z0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void n3() {
        try {
            String token = this.J1.getAccountData().getToken();
            ResultArenaBean<ArenaLobbyServer> P = this.N1.P(this.J1.getAccountData().getUid(), token);
            if (P != null && P.getError() == 0 && P.getData() != null && P.getData().getDisabled() != 0) {
                ArenaResponse arenaResponse = new ArenaResponse();
                arenaResponse.errorType = 1001;
                arenaResponse.errorInfo = P.getData().getDisabledMessage();
                handleFailure(arenaResponse);
                return;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        U2();
        F2();
    }

    @Override // com.join.mgps.activity.FriendActivity, com.join.mgps.adapter.l0.e
    public void o(FriendBean friendBean) {
        super.o(friendBean);
    }

    boolean o2(g0 g0Var, View view) {
        boolean booleanValue;
        u0.e("v.setOnClickListener");
        if (g0Var == null) {
            return true;
        }
        View view2 = g0Var.f46875t;
        if (view2 != null && view2 != view) {
            view2.setTag(Boolean.FALSE);
        }
        if (view.getTag() == null) {
            view.setTag(Boolean.TRUE);
            booleanValue = false;
        } else {
            booleanValue = ((Boolean) view.getTag()).booleanValue();
        }
        if (booleanValue && !this.f36497m1) {
            view.setTag(Boolean.FALSE);
            return false;
        }
        view.setTag(Boolean.TRUE);
        this.f36497m1 = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, Intent intent) {
        super.onActivityResult(i4, i5, intent);
        try {
            if (i5 == -1) {
                if (i4 == 1015) {
                    com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.T1);
                    Event event = Event.JoinLobbyroom;
                    Ext uid = new Ext().setUid(AccountUtil_.getInstance_(this.T1).getAccountData().getUid());
                    l4.K1(event, uid.setGameId(this.f36522z1.getGameId() + "").setPosition("1"));
                    GameRoomActivity_.u3(this).g(true).h(this.A1).d(this.f36522z1.getGameName()).i(this.f36522z1).start();
                } else if (i4 != 1014 || intent == null) {
                } else {
                    String stringExtra = intent.getStringExtra("gameId");
                    if (d2.i(stringExtra)) {
                        A2(Long.parseLong(stringExtra));
                    }
                }
            } else if (i4 != 10001 || intent == null) {
            } else {
                GameInfoBean gameInfoBean = (GameInfoBean) intent.getSerializableExtra("mGameInfo");
                if (gameInfoBean != null) {
                    this.f36499o0 = gameInfoBean;
                    F2();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f30860i = "BATTLE_ROOM_LIST";
        GameInfoBean gameInfoBean = this.f36499o0;
        if (gameInfoBean != null) {
            this.f30859h = gameInfoBean.getGame_id();
        }
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        p2();
        T2();
        com.join.mgps.socket.fight.arena.a aVar = this.f36492h1;
        if (aVar != null) {
            aVar.w();
        }
        z2();
        q2();
        com.join.mgps.socket.fight.arena.b bVar = this.Q0;
        if (bVar != null && bVar.d() != null) {
            this.Q0.d().A(this.W0);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.Q0;
        if (bVar2 != null) {
            bVar2.g();
        }
        super.onDestroy();
        this.f36512u1 = true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            iv_back();
            return true;
        }
        return super.onKeyDown(i4, keyEvent);
    }

    void q2() {
        Intent intent = new Intent(this, ArenaService_.class);
        intent.setAction(ArenaConstants.ACTION_CANCEL_SUBSCRIBE);
        startService(intent);
    }

    Fragment q3(int i4, ArenaGameRoomListConfig arenaGameRoomListConfig) {
        if (i4 == 0) {
            if (this.N0 == null) {
                com.join.mgps.fragment.roomlist.d dVar = new com.join.mgps.fragment.roomlist.d();
                this.N0 = dVar;
                dVar.G0(this.D1);
                Bundle bundle = new Bundle();
                bundle.putBoolean("isElite", false);
                if (this.I0) {
                    bundle.putString("filterGameId", this.f36499o0.getGame_id());
                }
                this.N0.setArguments(bundle);
            }
            return this.N0;
        } else if (i4 != 1) {
            if (i4 == 2) {
                if (this.P0 == null) {
                    this.P0 = new com.join.mgps.fragment.roomlist.b();
                }
                return this.P0;
            }
            return null;
        } else if (arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
            if (this.O0 == null) {
                com.join.mgps.fragment.roomlist.d dVar2 = new com.join.mgps.fragment.roomlist.d();
                this.O0 = dVar2;
                dVar2.G0(this.D1);
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("isElite", true);
                this.O0.setArguments(bundle2);
            }
            return this.O0;
        } else {
            if (this.P0 == null) {
                this.P0 = new com.join.mgps.fragment.roomlist.b();
            }
            return this.P0;
        }
    }

    boolean r2() {
        if (com.join.android.app.common.utils.f.j(this)) {
            return true;
        }
        showToast("当前网络不可用，请检查网络!");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void r3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s3(int i4) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f36483a1.getLayoutParams();
        if (i4 == 1) {
            this.f36485b1.setVisibility(8);
            findViewById(R.id.ll_title_content).setOnClickListener(new b());
        } else {
            this.f36485b1.setVisibility(8);
        }
        this.f36483a1.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (Z2()) {
            return;
        }
        i2.a(this).b(str);
    }

    public void t3(FriendBean friendBean) {
        this.Z1 = friendBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u2() {
        IntentUtil.getInstance().goLoginBattle(this);
    }

    void u3(String str, int i4) {
        int intValue = (this.f36488d1.containsKey(str) ? this.f36488d1.get(str).intValue() : 0) + i4;
        this.f36488d1.put(str, Integer.valueOf(intValue >= 0 ? intValue : 0));
    }

    void w2() {
        this.f36488d1.clear();
        this.f36489e1.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w3(BattleArea battleArea) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        if (battleArea == null) {
            return;
        }
        this.f36498n1 = battleArea;
        if (this.V0 == 0) {
            this.V0 = battleArea.getNumber();
        }
        com.join.mgps.socket.fight.arena.b bVar = this.Q0;
        if (bVar == null || bVar.d() == null || !this.Q0.d().s() || (arenaGameRoomListConfig = this.f36502p1) == null || arenaGameRoomListConfig.getCurrent_collection_cfg().getBattle_area() != 1) {
            return;
        }
        this.f36503q0.setText(M2());
    }

    public void x2(String str, boolean z3) {
        if (r2()) {
            if (z3) {
                if (!this.U0) {
                    return;
                }
            } else if (!this.T0) {
                return;
            }
            B3("正在创建房间...");
            p2();
            this.L1.start();
            if (z3) {
                E2(str);
            } else {
                H3(str, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x3() {
        this.F0.setVisibility(8);
        this.f36510t1.setVisibility(8);
        this.f36508s1.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y2(boolean z3, boolean z4) {
        if (!z3) {
            if (z4) {
                this.X0 = true;
            }
            J3(1, z4);
        } else {
            ArenaGameRoomListConfig arenaGameRoomListConfig = this.f36502p1;
            if (arenaGameRoomListConfig != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                if (z4) {
                    this.Y0 = true;
                }
                J3(2, z4);
            }
        }
        if (z4) {
            return;
        }
        C3();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z2() {
        this.C1.removeMessages(1);
        Dialog dialog = this.f36514v1;
        if (dialog == null || !dialog.isShowing() || this.f36512u1) {
            return;
        }
        this.f36514v1.dismiss();
    }

    public void z3(boolean z3) {
        p2.a aVar = this.O1;
        if (aVar != null) {
            aVar.l(z3);
        }
    }
}
