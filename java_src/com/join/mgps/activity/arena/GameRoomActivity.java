package com.join.mgps.activity.arena;

import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentManager;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.RoomSeatState;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import app.mgsim.arena.UserType;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.tencent.qq.QQ;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.b2;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.z;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.customview.PlayerInfoContainerView;
import com.join.mgps.dialog.o;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.ArchiveBean;
import com.join.mgps.dto.ArenaGameInfo;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.socket.fight.arena.ArenaService_;
import com.join.mgps.socket.fight.arena.a;
import com.join.mgps.socket.fight.arena.b;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.BattleServerAddr;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.KickInfo;
import com.papa91.battle.protocol.RoomPosition;
import com.papa91.battle.protocol.RoomState;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_game_room)
/* loaded from: classes.dex */
public class GameRoomActivity extends FriendActivity implements a.y {

    /* renamed from: f2  reason: collision with root package name */
    private static final int f36346f2 = 1000;

    /* renamed from: g2  reason: collision with root package name */
    private static final int f36347g2 = -1;

    /* renamed from: h2  reason: collision with root package name */
    private static final int f36348h2 = Color.parseColor("#47817e");
    private static final int i2 = 100;

    /* renamed from: j2  reason: collision with root package name */
    private static final int f36349j2 = 102;

    /* renamed from: k2  reason: collision with root package name */
    private static final int f36350k2 = 1000;

    /* renamed from: l2  reason: collision with root package name */
    private static final int f36351l2 = 9;

    /* renamed from: m2  reason: collision with root package name */
    private static final int f36352m2 = 1000;
    @Extra
    int A0;
    @ViewById
    TextView B0;
    private boolean B1;
    @ViewById
    TextView C0;
    @ViewById
    TextView D0;
    @ViewById
    TextView D1;
    @ViewById
    LinearLayout E0;
    @ViewById
    TextView F0;
    private int F1;
    @ViewById
    TextView G0;
    @ViewById
    TextView H0;
    private com.join.mgps.socket.fight.arena.a H1;
    @ViewById
    TextView I0;
    private x0 I1;
    @ViewById
    LinearLayout J0;
    private Drawable J1;
    @ViewById
    TextView K0;
    private Drawable K1;
    @ViewById
    ImageView L0;
    @ViewById
    ImageView M0;
    private FragmentManager M1;
    @ViewById
    ImageView N0;
    private com.join.mgps.customview.input.a N1;
    @ViewById
    View O0;
    com.join.mgps.rpc.k O1;
    @ViewById
    TextView P0;
    @ViewById
    RelativeLayout Q0;
    @ViewById
    TextView R0;
    private ArchiveBean R1;
    @ViewById
    ImageView S0;
    ClipboardManager S1;
    @ViewById
    LinearLayout T0;
    @ViewById
    RelativeLayout U0;
    private String U1;
    @ViewById
    View V0;
    private int V1;
    @ViewById
    TextView W0;
    private int W1;
    @ViewById
    SimpleDraweeView X0;
    private int X1;
    @ViewById
    LinearLayout Y0;
    private int Y1;
    @ViewById
    RadioButton Z0;
    @ViewById

    /* renamed from: a1  reason: collision with root package name */
    RadioGroup f36353a1;
    @ViewById

    /* renamed from: b1  reason: collision with root package name */
    View f36355b1;

    /* renamed from: b2  reason: collision with root package name */
    com.join.mgps.rpc.k f36356b2;
    @ViewById

    /* renamed from: c1  reason: collision with root package name */
    TextView f36357c1;

    /* renamed from: c2  reason: collision with root package name */
    com.join.mgps.rpc.k f36358c2;

    /* renamed from: d1  reason: collision with root package name */
    private PlayerInfoContainerView f36359d1;

    /* renamed from: d2  reason: collision with root package name */
    private String f36360d2;
    @ViewById

    /* renamed from: e1  reason: collision with root package name */
    View f36361e1;
    @ViewById

    /* renamed from: f1  reason: collision with root package name */
    ImageView f36363f1;
    @ViewById

    /* renamed from: g1  reason: collision with root package name */
    TextView f36364g1;
    @ViewById

    /* renamed from: h1  reason: collision with root package name */
    TextView f36365h1;

    /* renamed from: i1  reason: collision with root package name */
    private String f36366i1;

    /* renamed from: n1  reason: collision with root package name */
    Context f36371n1;
    @Extra

    /* renamed from: o0  reason: collision with root package name */
    BattleChallengeConfig f36372o0;

    /* renamed from: o1  reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b f36373o1;
    @Bean

    /* renamed from: p0  reason: collision with root package name */
    com.join.mgps.Util.b f36374p0;
    @Extra

    /* renamed from: q0  reason: collision with root package name */
    int f36376q0;
    @Extra

    /* renamed from: r0  reason: collision with root package name */
    volatile GameRoom f36378r0;

    /* renamed from: r1  reason: collision with root package name */
    private int f36379r1;
    @Extra

    /* renamed from: s0  reason: collision with root package name */
    String f36380s0;
    @Extra

    /* renamed from: t0  reason: collision with root package name */
    String f36382t0;
    @Extra

    /* renamed from: u0  reason: collision with root package name */
    boolean f36384u0;

    /* renamed from: u1  reason: collision with root package name */
    private BTN_STATE f36385u1;
    @Extra

    /* renamed from: v0  reason: collision with root package name */
    boolean f36386v0;
    @Extra

    /* renamed from: x0  reason: collision with root package name */
    String f36390x0;

    /* renamed from: x1  reason: collision with root package name */
    private int f36391x1;
    @Extra

    /* renamed from: y0  reason: collision with root package name */
    String f36392y0;

    /* renamed from: z1  reason: collision with root package name */
    private UserType f36395z1;
    @Extra

    /* renamed from: w0  reason: collision with root package name */
    int f36388w0 = -1;
    @Extra

    /* renamed from: z0  reason: collision with root package name */
    int f36394z0 = -1;

    /* renamed from: j1  reason: collision with root package name */
    private boolean f36367j1 = true;

    /* renamed from: k1  reason: collision with root package name */
    private boolean f36368k1 = true;

    /* renamed from: l1  reason: collision with root package name */
    private boolean f36369l1 = false;

    /* renamed from: m1  reason: collision with root package name */
    private boolean f36370m1 = false;

    /* renamed from: p1  reason: collision with root package name */
    private final b.InterfaceC0228b f36375p1 = new p();

    /* renamed from: q1  reason: collision with root package name */
    private final SocketListener.NotifyObserver f36377q1 = new r();

    /* renamed from: s1  reason: collision with root package name */
    private Handler f36381s1 = new Handler();

    /* renamed from: t1  reason: collision with root package name */
    private Runnable f36383t1 = new t();

    /* renamed from: v1  reason: collision with root package name */
    private boolean f36387v1 = false;

    /* renamed from: w1  reason: collision with root package name */
    private final Handler f36389w1 = new u();

    /* renamed from: y1  reason: collision with root package name */
    private Handler f36393y1 = new v();
    private final Object A1 = new Object();
    private boolean C1 = false;
    boolean E1 = false;
    private final PlayerInfoContainerView.a G1 = new b();
    private boolean L1 = false;
    com.join.mgps.dialog.o P1 = null;
    long Q1 = 0;
    private CountDownTimer T1 = new m(com.join.mgps.data.c.f47286a, 1000);
    private int Z1 = -1;

    /* renamed from: a2  reason: collision with root package name */
    private ArenaGameInfo f36354a2 = null;

    /* renamed from: e2  reason: collision with root package name */
    boolean f36362e2 = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum BTN_STATE {
        BTN_GOTO_GAME_NOW,
        BTN_STATE_START_GAME,
        BTN_STATE_WAITING_GAME,
        BTN_STATE_READY
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (GameRoomActivity.this.C1) {
                GameRoomActivity.this.H1.w();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements PlayerInfoContainerView.a {
        b() {
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public void a(RoomPosition roomPosition, int i2) {
            if (GameRoomActivity.this.f36378r0.getState() == RoomState.START || roomPosition.getUid() == Integer.parseInt(GameRoomActivity.this.f36374p0.getUid())) {
                return;
            }
            if (GameRoomActivity.this.f36395z1 == UserType.OWNER) {
                com.join.mgps.socket.fight.arena.a aVar = GameRoomActivity.this.H1;
                aVar.D(com.join.mgps.socket.fight.arena.a.f52166q, "位置：" + i2 + "P", RoomSeatState.REMOVE_AND_REPORT, Integer.valueOf(i2), roomPosition);
                return;
            }
            com.join.mgps.socket.fight.arena.a aVar2 = GameRoomActivity.this.H1;
            aVar2.D(com.join.mgps.socket.fight.arena.a.f52166q, "位置：" + i2 + "P", RoomSeatState.REPORT, Integer.valueOf(i2), roomPosition);
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public void b(int i2) {
            if (GameRoomActivity.this.f36378r0.getState() == RoomState.START) {
                GameRoomActivity.this.H1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, 0, "当前房间已开始，请先进入游戏后再坐下", "确定");
                return;
            }
            com.join.mgps.socket.fight.arena.a aVar = GameRoomActivity.this.H1;
            aVar.D(com.join.mgps.socket.fight.arena.a.f52166q, "位置：" + i2 + "P", RoomSeatState.SEAT, Integer.valueOf(i2));
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public boolean c() {
            return GameRoomActivity.this.f36395z1 == UserType.SPECTATOR;
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public void d() {
            if (!GameRoomActivity.this.f36378r0.getHasJoinPassword()) {
                com.join.mgps.socket.fight.arena.b bVar = GameRoomActivity.this.f36373o1;
                int roomId = GameRoomActivity.this.f36378r0.getRoomId();
                bVar.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, roomId, ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + ""));
            }
            if (GameRoomActivity.this.f36395z1 == UserType.OWNER) {
                Object[] objArr = {"", ""};
                try {
                    objArr = new String[]{GameRoomActivity.this.f36378r0.getGameId() + "", GameRoomActivity.this.f36378r0.getFightId() + ""};
                } catch (Exception unused) {
                }
                GameRoomActivity.this.H1.D(com.join.mgps.socket.fight.arena.a.f52168s, objArr);
            }
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public void e(RoomPosition roomPosition, boolean z3, int i2) {
            RoomState state = GameRoomActivity.this.f36378r0.getState();
            RoomState roomState = RoomState.START;
            if (state == roomState) {
                GameRoomActivity.this.H1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, 0, "当前房间已开始，请先进入游戏后再坐下", "确定");
            } else if (GameRoomActivity.this.f36395z1 != UserType.OWNER || GameRoomActivity.this.f36378r0.getState() == roomState) {
            } else {
                com.join.mgps.socket.fight.arena.a aVar = GameRoomActivity.this.H1;
                Object[] objArr = new Object[3];
                objArr[0] = "位置：" + i2 + "P";
                objArr[1] = z3 ? RoomSeatState.CLOSE : RoomSeatState.OPEN;
                objArr[2] = Integer.valueOf(i2);
                aVar.D(com.join.mgps.socket.fight.arena.a.f52166q, objArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomActivity gameRoomActivity = GameRoomActivity.this;
            if (gameRoomActivity.f36362e2) {
                return;
            }
            if (!gameRoomActivity.f36378r0.getHasJoinPassword()) {
                com.join.mgps.socket.fight.arena.b bVar = GameRoomActivity.this.f36373o1;
                int roomId = GameRoomActivity.this.f36378r0.getRoomId();
                bVar.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, roomId, ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + ""));
            }
            if (GameRoomActivity.this.f36395z1 == UserType.OWNER) {
                Object[] objArr = {"", ""};
                try {
                    objArr = new String[]{GameRoomActivity.this.f36378r0.getGameId() + "", GameRoomActivity.this.f36378r0.getFightId() + ""};
                } catch (Exception unused) {
                }
                GameRoomActivity.this.H1.D(com.join.mgps.socket.fight.arena.a.f52168s, objArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        boolean a() {
            return GameRoomActivity.this.f36378r0 != null && (GameRoomActivity.this.f36378r0.getP3().getUid() > 0 || GameRoomActivity.this.f36378r0.getP4().getUid() > 0);
        }

        public int b() {
            int i2 = (GameRoomActivity.this.f36378r0.getP1().getClosed() || GameRoomActivity.this.f36378r0.getP1().getUid() <= 0) ? 0 : 1;
            if (!GameRoomActivity.this.f36378r0.getP2().getClosed() && GameRoomActivity.this.f36378r0.getP2().getUid() > 0) {
                i2++;
            }
            if (!GameRoomActivity.this.f36378r0.getP3().getClosed() && GameRoomActivity.this.f36378r0.getP3().getUid() > 0) {
                i2++;
            }
            return (GameRoomActivity.this.f36378r0.getP4().getClosed() || GameRoomActivity.this.f36378r0.getP4().getUid() <= 0) ? i2 : i2 + 1;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameRoomActivity.this.f36395z1 != UserType.OWNER) {
                return;
            }
            if (GameRoomActivity.this.f36378r0.getState() == RoomState.START && GameRoomActivity.this.f36387v1) {
                GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置！");
            } else if (com.join.mgps.socket.fight.arena.c.a(GameRoomActivity.this.f36378r0, GameRoomActivity.this.f36374p0)) {
                GameRoomActivity.this.showToast("已有玩家进入，无法再设置!");
            } else if (b() <= 2 && !a()) {
                GameRoomActivity.this.J2();
            } else {
                GameRoomActivity.this.showToast("仅限2人对战时开启");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameRoomActivity.this.f36395z1 != UserType.OWNER) {
                return;
            }
            if (!GameRoomActivity.this.f36378r0.getElite()) {
                GameRoomActivity.this.showToast("普通场不可以设置挑战金，如需要设置，请进入精英场!");
            } else if (com.join.mgps.socket.fight.arena.c.a(GameRoomActivity.this.f36378r0, GameRoomActivity.this.f36374p0)) {
                GameRoomActivity.this.showToast("已有玩家进入，无法再设置挑战金!");
            } else if (GameRoomActivity.this.f36378r0.getState() != RoomState.START) {
                if (GameRoomActivity.this.f36387v1) {
                    GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置挑战金！");
                    return;
                }
                GameRoomActivity gameRoomActivity = GameRoomActivity.this;
                if (gameRoomActivity.f36372o0 == null) {
                    gameRoomActivity.E2("正在获取配置信息...");
                    GameRoomActivity.this.k2();
                    return;
                }
                gameRoomActivity.H2();
            } else {
                GameRoomActivity.this.showToast("游戏已经开始，无法设置挑战金!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameRoomActivity.this.f36395z1 != UserType.OWNER) {
                return;
            }
            if (GameRoomActivity.this.f36378r0.getState() != RoomState.START) {
                if (!GameRoomActivity.this.f36387v1) {
                    GameRoomActivity.this.H1.D(com.join.mgps.socket.fight.arena.a.f52163n, Long.valueOf(GameRoomActivity.this.f36378r0.getGameId()), GameRoomActivity.this.R1);
                    if (GameRoomActivity.this.H1.z()) {
                        GameRoomActivity.this.H1.C();
                        return;
                    } else {
                        GameRoomActivity.this.showToast("当前游戏暂无网络存档!");
                        return;
                    }
                }
                GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置网络存档！");
                return;
            }
            GameRoomActivity.this.showToast("游戏已经开始，无法设置存档!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements x {
            a() {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onFail(int i2) {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int i2, int i4) {
                if (i2 == 3) {
                    GameRoomActivity.this.v2(i4);
                }
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
            }
        }

        /* loaded from: classes3.dex */
        class b implements x {
            b() {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onFail(int i2) {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int i2, int i4) {
                if (i2 == 3) {
                    GameRoomActivity.this.v2(i4);
                }
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
            }
        }

        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!GameRoomActivity.this.f36378r0.getState().equals(RoomState.START)) {
                if (GameRoomActivity.this.f36395z1 == UserType.OWNER) {
                    if (GameRoomActivity.this.f36385u1 != BTN_STATE.BTN_GOTO_GAME_NOW && GameRoomActivity.this.f36385u1 != BTN_STATE.BTN_STATE_START_GAME) {
                        if (GameRoomActivity.this.f36385u1 == BTN_STATE.BTN_STATE_WAITING_GAME) {
                            GameRoomActivity.this.showToast("等待其他玩家准备!");
                        }
                    } else if (GameRoomActivity.this.Q1 > 0 && System.currentTimeMillis() - GameRoomActivity.this.Q1 < 1000) {
                        t0.b("GameRoomActivity", "start game so fast ,waiting a moment!");
                    } else {
                        GameRoomActivity gameRoomActivity = GameRoomActivity.this;
                        UtilsMy.p0(gameRoomActivity.f36371n1, 3, ((FriendActivity) gameRoomActivity).f30859h, "FIGHT_LOBBY", new a());
                    }
                } else if (GameRoomActivity.this.f36395z1 != UserType.TENANT) {
                    if (GameRoomActivity.this.f36395z1 == UserType.SPECTATOR) {
                        GameRoomActivity.this.showToast("等待游戏开始!");
                    }
                } else {
                    GameRoomActivity gameRoomActivity2 = GameRoomActivity.this;
                    UtilsMy.p0(gameRoomActivity2.f36371n1, 3, ((FriendActivity) gameRoomActivity2).f30859h, "FIGHT_LOBBY", new b());
                }
            } else if (GameRoomActivity.this.Q1 > 0 && System.currentTimeMillis() - GameRoomActivity.this.Q1 < 1000) {
                t0.b("GameRoomActivity", "start game so fast ,waiting a moment!");
            } else {
                GameRoomActivity.this.Q1 = System.currentTimeMillis();
                GameRoomActivity.this.M2();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameRoomActivity.this.f36395z1 != UserType.OWNER) {
                return;
            }
            if (GameRoomActivity.this.f36378r0.getState() != RoomState.START) {
                if (GameRoomActivity.this.f36387v1) {
                    GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置！");
                    return;
                } else if (!com.join.mgps.socket.fight.arena.c.a(GameRoomActivity.this.f36378r0, GameRoomActivity.this.f36374p0)) {
                    GameRoomActivity.this.f36373o1.f(ArenaRequestFactory.setRoomPeripheralJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.f36378r0.getRoomId(), GameRoomActivity.this.f36368k1));
                    return;
                } else {
                    GameRoomActivity.this.showToast("已有玩家进入，无法再设置!");
                    return;
                }
            }
            GameRoomActivity.this.showToast("游戏已经开始，无法设置外设!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomActivity.this.G2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements o.d {
        j() {
        }

        @Override // com.join.mgps.dialog.o.d
        public void a(int i2, boolean z3, boolean z4, String str) {
            UserType userType = GameRoomActivity.this.f36395z1;
            UserType userType2 = UserType.OWNER;
            if (userType != userType2) {
                return;
            }
            if (i2 != (GameRoomActivity.this.f36378r0.getAllowPCJoin() ? 2 : 1)) {
                if (GameRoomActivity.this.f36378r0.getState() != RoomState.START) {
                    if (GameRoomActivity.this.f36387v1) {
                        GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置！");
                    } else if (!com.join.mgps.socket.fight.arena.c.a(GameRoomActivity.this.f36378r0, GameRoomActivity.this.f36374p0)) {
                        GameRoomActivity.this.f36373o1.f(ArenaRequestFactory.setRoomPcJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.f36378r0.getRoomId(), i2 != 2));
                    } else {
                        GameRoomActivity.this.showToast("已有玩家进入，无法再设置!");
                    }
                } else {
                    GameRoomActivity.this.showToast("游戏已经开始，无法设置PC!");
                }
            }
            if (GameRoomActivity.this.f36395z1 == userType2) {
                if (GameRoomActivity.this.f36378r0.getState() != RoomState.START) {
                    if (GameRoomActivity.this.f36387v1) {
                        GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置！");
                    } else {
                        if (GameRoomActivity.this.f36378r0.getAllowSpectatorJoin()) {
                            GameRoomActivity.this.f36367j1 = true;
                        } else {
                            GameRoomActivity.this.f36367j1 = false;
                        }
                        if (GameRoomActivity.this.f36367j1 != z4) {
                            GameRoomActivity.this.f36373o1.f(ArenaRequestFactory.setRoomSpectatorJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.f36378r0.getRoomId(), GameRoomActivity.this.f36367j1));
                        }
                    }
                } else {
                    GameRoomActivity.this.showToast("游戏已经开始，无法设置旁观!");
                }
            }
            if (!z3) {
                if (GameRoomActivity.this.f36378r0.getHasJoinPassword()) {
                    return;
                }
                com.join.mgps.socket.fight.arena.b bVar = GameRoomActivity.this.f36373o1;
                int roomId = GameRoomActivity.this.f36378r0.getRoomId();
                bVar.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, roomId, "" + str));
            } else if (GameRoomActivity.this.f36378r0.getHasJoinPassword()) {
                GameRoomActivity.this.f36373o1.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.f36378r0.getRoomId(), ""));
            }
        }

        @Override // com.join.mgps.dialog.o.d
        public void b() {
            if (GameRoomActivity.this.f36395z1 != UserType.OWNER) {
                return;
            }
            if (GameRoomActivity.this.f36378r0.getState() != RoomState.START) {
                if (!GameRoomActivity.this.f36387v1) {
                    GameRoomActivity.this.H1.D(com.join.mgps.socket.fight.arena.a.f52163n, Long.valueOf(GameRoomActivity.this.f36378r0.getGameId()), GameRoomActivity.this.R1);
                    if (GameRoomActivity.this.H1.z()) {
                        GameRoomActivity.this.H1.C();
                        return;
                    } else {
                        GameRoomActivity.this.showToast("当前游戏暂无网络存档!");
                        return;
                    }
                }
                GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置网络存档！");
                return;
            }
            GameRoomActivity.this.showToast("游戏已经开始，无法设置存档!");
        }
    }

    /* loaded from: classes3.dex */
    class k implements x {
        k() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
            GameRoomActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class l implements PlatformActionListener {
        l() {
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onCancel(Platform platform, int i2) {
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onComplete(Platform platform, int i2, HashMap<String, Object> hashMap) {
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onError(Platform platform, int i2, Throwable th) {
            if (GameRoomActivity.this.s2()) {
                return;
            }
            GameRoomActivity.this.showToast("请先安装QQ");
        }
    }

    /* loaded from: classes3.dex */
    class m extends CountDownTimer {
        m(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            t0.b("GameRoomActivity", "mStartGameCountDowner onFinish---");
            GameRoomActivity.this.showToast("启动游戏超时！");
            GameRoomActivity.this.P();
            GameRoomActivity.this.i2();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            t0.b("GameRoomActivity", "mStartGameCountDowner millisUntilFinished:" + j4);
        }
    }

    /* loaded from: classes3.dex */
    class n implements x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendBean f36411a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameRoom f36412b;

        n(FriendBean friendBean, GameRoom gameRoom) {
            this.f36411a = friendBean;
            this.f36412b = gameRoom;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            com.wufan.friend.chat.c.u().n(this.f36411a.getUid(), this.f36412b.getRoomId(), this.f36412b.getPassword(), this.f36412b.getElite(), this.f36412b.getGameId());
            GameRoomActivity.this.showToast("已发送对战邀请！");
            com.wufan.friend.chat.c.u().e(this.f36411a);
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements z.n0 {
        o() {
        }

        @Override // com.join.mgps.Util.z.n0
        public boolean a(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            return false;
        }

        @Override // com.join.mgps.Util.z.n0
        public void onCancel() {
            GameRoomActivity.this.L(com.join.mgps.socket.fight.arena.a.f52164o);
        }

        @Override // com.join.mgps.Util.z.n0
        public void onDismiss() {
            GameRoomActivity.this.L(com.join.mgps.socket.fight.arena.a.f52164o);
        }
    }

    /* loaded from: classes3.dex */
    class p extends b.c {
        p() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
            super.c();
            if (GameRoomActivity.this.f36373o1.d().s()) {
                GameRoomActivity.this.f36373o1.d().z(GameRoomActivity.this.f36377q1);
                GameRoomActivity.this.S2();
                GameRoomActivity gameRoomActivity = GameRoomActivity.this;
                if (gameRoomActivity.f36386v0 && gameRoomActivity.f36378r0.getElite()) {
                    GameRoomActivity gameRoomActivity2 = GameRoomActivity.this;
                    if (gameRoomActivity2.f36372o0 != null) {
                        gameRoomActivity2.H2();
                    } else {
                        gameRoomActivity2.showToast("获取配置信息失败！");
                        GameRoomActivity.this.i2();
                    }
                } else {
                    String str = GameRoomActivity.this.f36390x0;
                    if (str != null && str.equals("game_main")) {
                        GameRoomActivity.this.f36365h1.performClick();
                    }
                }
                try {
                    GameRoomActivity gameRoomActivity3 = GameRoomActivity.this;
                    int i2 = gameRoomActivity3.f36388w0;
                    if (i2 == 0) {
                        gameRoomActivity3.f36373o1.f(ArenaRequestFactory.setRoomPcJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.f36378r0.getRoomId(), true));
                    } else if (i2 == 1) {
                        gameRoomActivity3.f36373o1.f(ArenaRequestFactory.setRoomPcJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.f36378r0.getRoomId(), false));
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (!d2.i(GameRoomActivity.this.f36392y0) || GameRoomActivity.this.f36378r0.getHasJoinPassword()) {
                    return;
                }
                com.join.mgps.socket.fight.arena.b bVar = GameRoomActivity.this.f36373o1;
                int roomId = GameRoomActivity.this.f36378r0.getRoomId();
                bVar.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, roomId, "" + GameRoomActivity.this.f36392y0));
                GameRoomActivity.this.f36392y0 = "";
                return;
            }
            GameRoomActivity.this.showToast("网络异常！");
            GameRoomActivity.this.i2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements DialogInterface.OnDismissListener {
        q() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            GameRoomActivity.this.i2();
        }
    }

    /* loaded from: classes3.dex */
    class r implements SocketListener.NotifyObserver {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f36417a = false;

        r() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (socketError.errorType == 2) {
                GameRoomActivity.this.showToast(socketError.errorInfo);
            } else {
                GameRoomActivity.this.showToast("网络异常!");
            }
            GameRoomActivity.this.i2();
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            if (GameRoomActivity.this.s2()) {
                return;
            }
            if (arenaResponse.responseCode == 0) {
                GameRoomActivity.this.n2(arenaResponse);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_ROOM_READY_TIMEOUT_KICKOUT)) {
                if (GameRoomActivity.this.f36378r0.getRoomId() == ((GameRoom) arenaResponse.data).getRoomId()) {
                    GameRoomActivity.this.F2();
                }
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_ROOM_START_TIMEOUT_KICKOUT)) {
                if (GameRoomActivity.this.f36378r0.getRoomId() == ((GameRoom) arenaResponse.data).getRoomId()) {
                    GameRoomActivity.this.I2();
                }
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PASSWORD_ATTR)) {
                GameRoomActivity.this.U2((GameRoom) arenaResponse.data);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CHALLENGE_COINS_ATTR)) {
                GameRoomActivity.this.showToast("挑战金设置成功");
                GameRoomActivity.this.U2((GameRoom) arenaResponse.data);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SPECTATOR_JOIN_ATTR)) {
                GameRoomActivity.this.showToast("旁观设置成功");
                GameRoomActivity.this.U2((GameRoom) arenaResponse.data);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PERIPHERAL_JOIN_ATTR)) {
                GameRoomActivity.this.showToast("设置成功");
                GameRoomActivity.this.U2((GameRoom) arenaResponse.data);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PC_JOIN_ALTR)) {
                GameRoomActivity.this.U2((GameRoom) arenaResponse.data);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SERVER_PLAY_MODE)) {
                GameRoomActivity.this.showToast("流畅模式设置成功");
                GameRoomActivity.this.U2((GameRoom) arenaResponse.data);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_GET_KICK_OUT_ROOM_POSITION_INFO)) {
                GameRoomActivity.this.o2((KickInfo) arenaResponse.data);
            } else if (!arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P1_POSITION) && !arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P2_POSITION) && !arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P3_POSITION) && !arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P4_POSITION) && !arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_KICK_OUT_ROOM_POSITION) && !arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_UPDATE_ROOM) && !arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_PLAYER_READY_GAME) && !arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SPECTATOR_SIT)) {
                if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_DISSOLVE_ROOM)) {
                    GameRoomActivity.this.showToast("房间已经被解散");
                    GameRoomActivity.this.Z1();
                    GameRoomActivity.this.i2();
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_KICK_ROOM_BROADCAST)) {
                    GameRoomActivity.this.Z1();
                    GameRoomActivity.this.D2("你已被踢出房间");
                } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_START_GAME_ROOM_BROADCAST) || arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOBBY_START_GAME)) {
                    GameRoomActivity.this.Z1();
                    if (!this.f36417a) {
                        this.f36417a = true;
                        GameRoom gameRoom = (GameRoom) arenaResponse.data;
                        if (GameRoomActivity.this.f36395z1 == UserType.OWNER) {
                            GameRoomActivity.this.f36394z0 = 0;
                        } else {
                            GameRoomActivity gameRoomActivity = GameRoomActivity.this;
                            if (gameRoomActivity.f36394z0 == -1) {
                                gameRoomActivity.f36394z0 = 1;
                            }
                        }
                        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(GameRoomActivity.this);
                        Event event = Event.PlayLobbyroom;
                        Ext ext = new Ext();
                        Ext uid = ext.setGameId(GameRoomActivity.this.f36378r0.getGameId() + "").setUid(AccountUtil_.getInstance_(GameRoomActivity.this).getAccountData().getUid());
                        l4.K1(event, uid.setPosition(GameRoomActivity.this.f36394z0 + ""));
                        GameRoomActivity.this.L2(gameRoom.getBattleServerAddr());
                        GameRoomActivity.this.p2();
                        return;
                    }
                    t0.b("GameRoomActivity", "the game have been started ,do not start again!");
                }
            } else {
                GameRoomActivity.this.U2((GameRoom) arenaResponse.data);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements DialogInterface.OnDismissListener {
        s() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            GameRoomActivity.this.i2();
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity.T1(GameRoomActivity.this);
            GameRoomActivity gameRoomActivity = GameRoomActivity.this;
            gameRoomActivity.I0.setText(com.join.mgps.Util.x.f(gameRoomActivity.f36379r1));
            GameRoomActivity.this.f36381s1.postDelayed(GameRoomActivity.this.f36383t1, 1000L);
        }
    }

    /* loaded from: classes3.dex */
    class u extends Handler {
        u() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            GameRoomActivity.this.u2();
        }
    }

    /* loaded from: classes3.dex */
    class v extends Handler {
        v() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (GameRoomActivity.this.s2()) {
                return;
            }
            GameRoomActivity.Y1(GameRoomActivity.this);
            if (GameRoomActivity.this.f36391x1 <= 0) {
                GameRoomActivity.this.H1.D(com.join.mgps.socket.fight.arena.a.f52162m, "对不起，您长时间未开始游戏，您已被踢出房间!");
                GameRoomActivity.this.f36389w1.sendEmptyMessageDelayed(102, 1000L);
            } else if (GameRoomActivity.this.f36395z1 == UserType.OWNER) {
                TextView textView = GameRoomActivity.this.C0;
                textView.setText("对方已准备，请开始游戏(" + GameRoomActivity.this.f36391x1 + ")");
                TextView textView2 = GameRoomActivity.this.f36364g1;
                textView2.setText("(" + GameRoomActivity.this.f36391x1 + "s)");
                GameRoomActivity.this.f36364g1.setVisibility(0);
                GameRoomActivity.this.f36363f1.setImageResource(R.drawable.newarena_start);
                GameRoomActivity.this.f36393y1.sendEmptyMessageDelayed(100, 1000L);
            } else {
                TextView textView3 = GameRoomActivity.this.f36364g1;
                textView3.setText("(" + GameRoomActivity.this.f36391x1 + "s)");
                GameRoomActivity.this.f36364g1.setVisibility(0);
                GameRoomActivity.this.f36363f1.setImageResource(R.drawable.newarena_reday);
                GameRoomActivity.this.f36393y1.sendEmptyMessageDelayed(100, 1000L);
            }
        }
    }

    /* loaded from: classes3.dex */
    class w implements x {
        w() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            if (i2 == 2) {
                GameRoomActivity.this.v2(i4);
            }
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* loaded from: classes3.dex */
    public interface x {
        void onFail(int i2);

        void onSuccess(int i2, int i4);

        void onSuccess(int i2, int i4, ButtonBean buttonBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E2(String str) {
        this.H1.w();
        x0 x0Var = this.I1;
        if (x0Var != null && x0Var.isShowing()) {
            try {
                this.I1.dismiss();
            } catch (Exception unused) {
            }
        }
        x0 z3 = a0.c0(this).z(this, str, false);
        this.I1 = z3;
        z3.show();
    }

    private void K2() {
        this.f36387v1 = true;
        this.f36391x1 = 9;
        this.f36393y1.removeMessages(100);
        this.f36393y1.sendEmptyMessageDelayed(100, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L2(BattleServerAddr battleServerAddr) {
        a2();
        if (this.f36378r0.getFastMode()) {
            if (TextUtils.isEmpty(this.f36360d2)) {
                O2(battleServerAddr, battleServerAddr.getHost());
                return;
            } else {
                O2(battleServerAddr, this.f36360d2);
                return;
            }
        }
        O2(battleServerAddr, battleServerAddr.getHost());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M2() {
        a2();
        this.T1.start();
        E2("正在启动游戏...");
        this.f36373o1.f(ArenaRequestFactory.startLobbyGame(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.f36378r0.getRoomId()));
    }

    private void Q2() {
        this.D0.setVisibility(0);
        this.f36364g1.setVisibility(8);
        if (this.f36378r0 != null && this.f36378r0.getElite()) {
            this.C0.setText("等待开始");
        } else if (AccountUtil_.getInstance_(this).getAccountData().getVip_level() == 0) {
            TextView textView = this.C0;
            textView.setText("等待开始，开始后将扣除你" + this.A0 + "铜板");
        } else {
            this.C0.setText("等待开始");
        }
        if (this.f36378r0.getState().equals(RoomState.START)) {
            this.f36385u1 = BTN_STATE.BTN_GOTO_GAME_NOW;
            Z1();
            this.f36364g1.setText("(免铜板)");
            this.C0.setText("游戏已开始，请点击观战加入游戏。");
            this.f36364g1.setVisibility(0);
            this.f36363f1.setImageResource(R.drawable.newarena_see);
            this.B0.setText("进入游戏并坐下,即可和其他玩家一起联机对战");
            this.D0.setVisibility(8);
            return;
        }
        if (com.join.mgps.socket.fight.arena.c.n(this.f36378r0)) {
            Z1();
            if (this.f36395z1 == UserType.SPECTATOR) {
                this.f36385u1 = BTN_STATE.BTN_STATE_WAITING_GAME;
                this.f36363f1.setImageResource(R.drawable.newarena_whait);
            } else {
                this.f36385u1 = BTN_STATE.BTN_STATE_START_GAME;
                this.f36363f1.setImageResource(R.drawable.newarena_start);
            }
            this.B0.setText("开始游戏后,将扣除您");
        } else if (this.f36378r0.getState().equals(RoomState.WAIT)) {
            UserType userType = this.f36395z1;
            if (userType == UserType.OWNER) {
                Z1();
                this.f36385u1 = BTN_STATE.BTN_STATE_WAITING_GAME;
                this.C0.setText("等待玩家准备后开始游戏");
                this.f36363f1.setImageResource(R.drawable.newarena_waitreday);
                this.B0.setText("开始游戏后,将扣除您");
            } else if (userType == UserType.TENANT) {
                if (com.join.mgps.socket.fight.arena.c.h(this.f36378r0, this.f36374p0.getAccountData().getUid()).getState() == RoomPosition.State.WAIT) {
                    this.f36385u1 = BTN_STATE.BTN_STATE_READY;
                    if (this.f36387v1) {
                        if (this.f36378r0.getHasJoinPassword()) {
                            Z1();
                        }
                    } else if (!this.f36378r0.getHasJoinPassword()) {
                        this.C0.setText("请准备后，等房主开始游戏");
                        this.f36364g1.setText("(倒计时9s)");
                        this.f36364g1.setVisibility(0);
                        this.f36363f1.setImageResource(R.drawable.newarena_reday);
                        K2();
                    } else {
                        Z1();
                        this.C0.setText("请准备后，等房主开始游戏");
                        this.f36363f1.setImageResource(R.drawable.newarena_reday);
                        this.B0.setText("开始游戏后,将扣除您");
                    }
                } else {
                    Z1();
                    this.f36385u1 = BTN_STATE.BTN_STATE_WAITING_GAME;
                    this.f36363f1.setImageResource(R.drawable.newarena_whait);
                    this.B0.setText("开始游戏后,将扣除您");
                }
            } else {
                Z1();
                this.f36385u1 = BTN_STATE.BTN_STATE_WAITING_GAME;
                this.f36363f1.setImageResource(R.drawable.newarena_whait);
                this.B0.setText("开始游戏后,将扣除您");
            }
        } else if (this.f36378r0.getState().equals(RoomState.READY)) {
            if (this.f36395z1 == UserType.OWNER) {
                this.f36385u1 = BTN_STATE.BTN_STATE_START_GAME;
                if (this.f36387v1) {
                    if (this.f36378r0.getHasJoinPassword()) {
                        Z1();
                    }
                } else if (!this.f36378r0.getHasJoinPassword()) {
                    this.C0.setText("对方已准备，请开始游戏(9s)");
                    this.f36364g1.setText("(9s)");
                    this.f36364g1.setVisibility(0);
                    this.f36363f1.setImageResource(R.drawable.newarena_start);
                    K2();
                } else {
                    Z1();
                    this.f36363f1.setImageResource(R.drawable.newarena_start);
                }
            } else {
                Z1();
                this.f36385u1 = BTN_STATE.BTN_STATE_WAITING_GAME;
                this.f36363f1.setImageResource(R.drawable.newarena_whait);
            }
        }
        t0.b("GameRoomActivity", "mBtnState-->" + this.f36385u1);
    }

    static /* synthetic */ int T1(GameRoomActivity gameRoomActivity) {
        int i4 = gameRoomActivity.f36379r1;
        gameRoomActivity.f36379r1 = i4 + 1;
        return i4;
    }

    private void T2() {
        this.f36381s1.removeCallbacks(this.f36383t1);
        if (this.f36378r0.getState() == RoomState.START) {
            int playerSeconds = this.f36378r0.getPlayerSeconds();
            this.f36379r1 = playerSeconds;
            this.I0.setText(com.join.mgps.Util.x.f(playerSeconds));
            this.f36381s1.postDelayed(this.f36383t1, 1000L);
            return;
        }
        this.I0.setText("等待开始");
    }

    static /* synthetic */ int Y1(GameRoomActivity gameRoomActivity) {
        int i4 = gameRoomActivity.f36391x1;
        gameRoomActivity.f36391x1 = i4 - 1;
        return i4;
    }

    private void a2() {
        CountDownTimer countDownTimer = this.T1;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    private void d2() {
        ((ClipboardManager) getSystemService("clipboard")).setText("");
    }

    private void e2(String str) {
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
        this.S1 = clipboardManager;
        clipboardManager.setText(str.trim());
    }

    private String f2() {
        g1.f G = g1.f.G();
        DownloadTask B = G.B("" + this.f36378r0.getGameId());
        if (TextUtils.isEmpty(this.f36366i1)) {
            return "复制这条信息，打开" + h2(128073) + com.join.android.app.mgsim.wufun.b.f17915i + h2(128072) + "即可在游戏【" + B.getShowName() + "】中【大厅对战】好友" + h2(9786) + this.f36374p0.getAccountData().getNickname() + h2(9786) + "￥" + this.f36378r0.getGameId() + "￥" + h2(128273) + "$房间" + this.f36378r0.getRoomId() + "$" + h2(128273) + "#对战" + this.f36378r0.getFightId() + "#" + h2(128273);
        }
        return "复制这条信息，打开" + h2(128073) + com.join.android.app.mgsim.wufun.b.f17915i + h2(128072) + "即可在游戏【" + B.getShowName() + "】中【大厅对战】好友" + h2(9786) + this.f36374p0.getAccountData().getNickname() + h2(9786) + "￥" + this.f36378r0.getGameId() + "￥" + h2(128273) + "$房间" + this.f36378r0.getRoomId() + "$" + h2(128273) + "#对战" + this.f36378r0.getFightId() + "#&密码:" + this.f36366i1 + m.a.f72566d;
    }

    private void g2(String str) throws Exception {
        PackageInfo packageInfo = getPackageManager().getPackageInfo(str, 0);
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(packageInfo.packageName);
        ResolveInfo next = getPackageManager().queryIntentActivities(intent, 0).iterator().next();
        if (next != null) {
            ActivityInfo activityInfo = next.activityInfo;
            String str2 = activityInfo.packageName;
            String str3 = activityInfo.name;
            Intent intent2 = new Intent("android.intent.action.MAIN");
            intent2.addFlags(268435456);
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.setComponent(new ComponentName(str2, str3));
            startActivity(intent2);
        }
    }

    private String h2(int i4) {
        return String.valueOf(Character.toChars(i4));
    }

    private void q2() {
        this.f36365h1.setOnClickListener(new c());
        this.f36355b1.setOnClickListener(new d());
        this.J0.setOnClickListener(new e());
        RelativeLayout relativeLayout = this.Q0;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new f());
        }
        this.f36361e1.setOnClickListener(new g());
        this.N0.setOnClickListener(new h());
        this.O0.setOnClickListener(new i());
    }

    private void r2() {
        RoomPosition p12 = this.f36378r0.getP1();
        if (p12.getUid() == 0) {
            this.V1 = 0;
        } else {
            if (p12.getUid() == this.f36374p0.getAccountData().getUid()) {
                this.Z1 = 0;
            }
            this.V1 = 1;
        }
        RoomPosition p22 = this.f36378r0.getP2();
        if (p22.getUid() == 0) {
            this.W1 = 0;
        } else {
            if (p22.getUid() == this.f36374p0.getAccountData().getUid()) {
                this.Z1 = 1;
            }
            this.W1 = 1;
        }
        RoomPosition p3 = this.f36378r0.getP3();
        if (p3.getUid() == 0) {
            this.X1 = 0;
        } else {
            if (p3.getUid() == this.f36374p0.getAccountData().getUid()) {
                this.Z1 = 2;
            }
            this.X1 = 1;
        }
        RoomPosition p4 = this.f36378r0.getP4();
        if (p4.getUid() == 0) {
            this.Y1 = 0;
            return;
        }
        if (p4.getUid() == this.f36374p0.getAccountData().getUid()) {
            this.Z1 = 3;
        }
        this.Y1 = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s2() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u2() {
        Intent intent = new Intent(this, ArenaService_.class);
        intent.setAction(ArenaConstants.ACTION_LEAVE_ROOM);
        intent.putExtra("gameId", this.f36378r0.getRoomId());
        startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v2(int i4) {
        UserType userType = this.f36395z1;
        if (userType == UserType.OWNER) {
            this.Q1 = System.currentTimeMillis();
            M2();
            if (i4 > 0) {
                z2();
            }
        } else if (userType == UserType.TENANT) {
            BTN_STATE btn_state = this.f36385u1;
            if (btn_state == BTN_STATE.BTN_STATE_READY) {
                w2();
            } else if (btn_state == BTN_STATE.BTN_STATE_WAITING_GAME) {
                showToast("等待游戏开始!");
            }
        }
    }

    private void w2() {
        this.f36373o1.f(ArenaRequestFactory.playerReadyGame(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.f36378r0.getRoomId()));
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void A0(int i4, String str) {
        if (i4 == 1) {
            N2();
        } else if (i4 != 2) {
        } else {
            e2(str);
            C2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A2(int i4) {
        this.f36353a1.clearCheck();
        if (i4 == 1) {
            this.Z0.setChecked(true);
        } else {
            this.Z0.setChecked(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void B2() {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(1);
        shareParams.setText(f2());
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        platform.setPlatformActionListener(new l());
        platform.share(shareParams);
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void C(int i4) {
        this.f36373o1.f(ArenaRequestFactory.setRoomServerPlayMode(i4, this.f36378r0.getRoomId()));
        A2(i4);
    }

    void C2() {
        try {
            g2("com.tencent.mm");
        } catch (Exception unused) {
            showToast("请先安装微信");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D2(String str) {
        this.f36370m1 = true;
        a0.c0(this).o(this, new o());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F2() {
        com.join.mgps.socket.fight.arena.a aVar = this.H1;
        if (aVar != null) {
            aVar.w();
        }
        this.H1.D(com.join.mgps.socket.fight.arena.a.f52162m, "对不起，您长时间未开始游戏，您已被踢出房间!");
    }

    void G2() {
        if (this.P1 == null) {
            this.P1 = new com.join.mgps.dialog.o(this);
        }
        this.P1.f(this.f36378r0, new j());
        if (this.P1.isShowing()) {
            return;
        }
        this.P1.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H2() {
        if (this.f36372o0.getIsBattle()) {
            this.H1.D(com.join.mgps.socket.fight.arena.a.f52167r, this.f36372o0, Integer.valueOf(this.f36378r0.getChallengeCoins()));
        } else {
            this.H1.D(com.join.mgps.socket.fight.arena.a.f52167r, this.f36372o0, this.f36382t0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I2() {
        this.H1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, 8, "你在2分钟内无开始，房间已被解散！", "确定");
        this.H1.x().setOnDismissListener(new q());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J2() {
        boolean isChecked = this.Z0.isChecked();
        com.join.mgps.socket.fight.arena.a aVar = this.H1;
        if (aVar != null) {
            aVar.w();
        }
        this.H1.D(com.join.mgps.socket.fight.arena.a.f52170u, Integer.valueOf(isChecked ? 1 : 0));
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void L(String str) {
        if (!str.equals(com.join.mgps.socket.fight.arena.a.f52164o) && !str.equals(com.join.mgps.socket.fight.arena.a.f52162m)) {
            if (str.equals(com.join.mgps.socket.fight.arena.a.f52161l)) {
                this.C1 = false;
                return;
            }
            return;
        }
        i2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N2() {
        if (b2(this, "com.tencent.mobileqq")) {
            P2(this);
        } else {
            Toast.makeText(this, "本机未安装QQ应用", 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O2(BattleServerAddr battleServerAddr, String str) {
        r2();
        int i4 = this.V1 + this.W1 + this.X1 + this.Y1;
        NetBattleStartGameDto netBattleStartGameDto = new NetBattleStartGameDto();
        netBattleStartGameDto.setGameID(this.f36378r0.getGameId() + "");
        netBattleStartGameDto.setRoomID(battleServerAddr.getBattleRoomId() + "");
        netBattleStartGameDto.setUserID(this.f36374p0.getAccountData().getUid() + "");
        netBattleStartGameDto.setServerIP(str);
        netBattleStartGameDto.setServerPort(battleServerAddr.getPort());
        int i5 = this.f36376q0;
        if (i5 == 2) {
            netBattleStartGameDto.setRoomMode(3);
        } else if (i5 == 1) {
            netBattleStartGameDto.setRoomMode(2);
        } else {
            netBattleStartGameDto.setRoomMode(this.f36378r0.getElite() ? 1 : 0);
        }
        netBattleStartGameDto.setAllowPeripheralJoin(this.f36368k1);
        netBattleStartGameDto.setAllowPCJoin(this.f36369l1);
        netBattleStartGameDto.setGameype(this.f36378r0.getGameType().getNumber());
        netBattleStartGameDto.setGroupId(this.f36378r0.getRoomId());
        netBattleStartGameDto.setP1Name("");
        netBattleStartGameDto.setP2Name("");
        netBattleStartGameDto.setOldGame(0);
        netBattleStartGameDto.setUserName(this.f36374p0.getAccountData().getNickname());
        netBattleStartGameDto.setUserIcon(this.f36374p0.getAccountData().getAvatarSrc());
        netBattleStartGameDto.setGamePlayers(this.f36378r0.getSeatsNumber());
        netBattleStartGameDto.setTcptype(1);
        netBattleStartGameDto.setPorder(this.Z1);
        netBattleStartGameDto.setNetPlayers(i4);
        ArenaGameInfo arenaGameInfo = this.f36354a2;
        if (arenaGameInfo != null) {
            netBattleStartGameDto.setResult_show_type(arenaGameInfo.getResult_show_type());
        }
        t0.b("GameRoomActivity", "start game params :" + netBattleStartGameDto.toString());
        g1.f G = g1.f.G();
        UtilsMy.Z2(this, netBattleStartGameDto, G.B(this.f36378r0.getGameId() + ""), this.U1, com.join.mgps.socket.fight.arena.c.i(this.f36378r0.getBattleArea(), this.f36384u0));
        i2();
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void P() {
        u2();
        i2();
    }

    void P2(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", f2());
        intent.setType(HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE);
        try {
            intent.setClassName("com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity");
            Intent createChooser = Intent.createChooser(intent, "选择分享途径");
            if (createChooser == null) {
                return;
            }
            context.startActivity(createChooser);
        } catch (Exception unused) {
            context.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R2() {
        TextView textView = this.D0;
        textView.setText(this.A0 + "铜板");
        if (this.f36378r0 != null && this.f36378r0.getElite()) {
            this.C0.setText("等待开始");
        } else if (AccountUtil_.getInstance_(this).getAccountData().getVip_level() == 0) {
            TextView textView2 = this.C0;
            textView2.setText("等待开始，开始后将扣除你" + this.A0 + "铜板");
        } else {
            this.C0.setText("等待开始");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S2() {
        ArenaResponse o3 = this.f36373o1.d().o(this.f36378r0.getRoomId());
        if (o3 != null) {
            Object obj = o3.data;
            if (obj instanceof GameRoom) {
                GameRoom gameRoom = (GameRoom) obj;
                t0.b("GameRoomActivity", "gameRoom:aaa game id  --...:" + gameRoom.getRoomId() + "----gameRoom  game room id : bbb:" + this.f36378r0.getRoomId());
                if (gameRoom.getRoomId() == this.f36378r0.getRoomId()) {
                    t0.b("GameRoomActivity", "updateGameRoomAsync---...");
                    this.f36377q1.onServerResponse(o3);
                    return;
                }
                return;
            }
            return;
        }
        t0.b("GameRoomActivity", "updateGameRoomAsync--- response is null...");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:56:0x023e A[Catch: all -> 0x0308, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000f, B:8:0x0011, B:10:0x0017, B:11:0x001f, B:13:0x0021, B:15:0x0053, B:17:0x0094, B:19:0x00a6, B:21:0x00b5, B:23:0x00c1, B:25:0x0109, B:27:0x0112, B:29:0x0137, B:31:0x013f, B:33:0x0152, B:35:0x0158, B:37:0x0163, B:39:0x016a, B:42:0x0170, B:44:0x019f, B:45:0x01bf, B:47:0x01c7, B:52:0x01f0, B:54:0x023a, B:56:0x023e, B:58:0x024d, B:59:0x0252, B:61:0x025a, B:63:0x0261, B:65:0x026f, B:67:0x0292, B:68:0x0298, B:70:0x02a0, B:72:0x02c1, B:73:0x02c7, B:84:0x0300, B:85:0x0306, B:62:0x025e, B:74:0x02cd, B:76:0x02d1, B:78:0x02d5, B:79:0x02d9, B:81:0x02e1, B:82:0x02e7, B:83:0x02ec, B:48:0x01d3, B:50:0x01e1, B:51:0x01e9, B:53:0x0200, B:36:0x015e, B:32:0x0149, B:28:0x0125, B:24:0x00f8, B:20:0x00ae, B:16:0x0074), top: B:90:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02cd A[Catch: all -> 0x0308, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000f, B:8:0x0011, B:10:0x0017, B:11:0x001f, B:13:0x0021, B:15:0x0053, B:17:0x0094, B:19:0x00a6, B:21:0x00b5, B:23:0x00c1, B:25:0x0109, B:27:0x0112, B:29:0x0137, B:31:0x013f, B:33:0x0152, B:35:0x0158, B:37:0x0163, B:39:0x016a, B:42:0x0170, B:44:0x019f, B:45:0x01bf, B:47:0x01c7, B:52:0x01f0, B:54:0x023a, B:56:0x023e, B:58:0x024d, B:59:0x0252, B:61:0x025a, B:63:0x0261, B:65:0x026f, B:67:0x0292, B:68:0x0298, B:70:0x02a0, B:72:0x02c1, B:73:0x02c7, B:84:0x0300, B:85:0x0306, B:62:0x025e, B:74:0x02cd, B:76:0x02d1, B:78:0x02d5, B:79:0x02d9, B:81:0x02e1, B:82:0x02e7, B:83:0x02ec, B:48:0x01d3, B:50:0x01e1, B:51:0x01e9, B:53:0x0200, B:36:0x015e, B:32:0x0149, B:28:0x0125, B:24:0x00f8, B:20:0x00ae, B:16:0x0074), top: B:90:0x0003 }] */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void U2(com.papa91.battle.protocol.GameRoom r11) {
        /*
            Method dump skipped, instructions count: 779
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.arena.GameRoomActivity.U2(com.papa91.battle.protocol.GameRoom):void");
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void W(int i4) {
        this.H1.D(com.join.mgps.socket.fight.arena.a.f52169t, f2(), Integer.valueOf(i4), Long.valueOf(this.f36378r0.getGameId()), Long.valueOf(this.f36378r0.getFightId()));
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void X(ArchiveBean archiveBean, String str) {
        if (this.f36378r0.getState() == RoomState.START) {
            showToast("游戏已经开始，无法设置存档！");
        } else if (this.f36387v1) {
            showToast("房间已经进入倒计时状态，无法再设置网络存档！");
        } else {
            this.R1 = archiveBean;
            this.U1 = str;
            if (archiveBean != null && !TextUtils.isEmpty(str)) {
                com.join.mgps.dialog.o oVar = this.P1;
                if (oVar != null) {
                    oVar.e(archiveBean.getShowName());
                }
                this.R0.setText(archiveBean.getShowName());
                return;
            }
            com.join.mgps.dialog.o oVar2 = this.P1;
            if (oVar2 != null) {
                oVar2.e("选择");
            }
            this.R0.setText("");
        }
    }

    void Z1() {
        t0.b("GameRoomActivity", "---cancelCountDowner---");
        this.f36391x1 = 0;
        this.f36387v1 = false;
        this.f36393y1.removeMessages(100);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        setSystemUiHide(true);
        this.f36356b2 = com.join.mgps.rpc.impl.k.n0();
        this.f36358c2 = com.join.mgps.rpc.impl.j.n0();
        this.C0.setText("等待开始，开始后将扣除你10铜板");
        if (!com.join.android.app.common.utils.f.j(this)) {
            showToast("当前网络不可用!");
            i2();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        this.O1 = com.join.mgps.rpc.impl.k.n0();
        if (this.f36378r0.getFastMode()) {
            j2(1);
        }
        if (this.f36378r0.getElite()) {
            this.E0.setVisibility(4);
        }
        if (AccountUtil_.getInstance_(this).getAccountData().getVip_level() > 0) {
            this.E0.setVisibility(4);
        }
        boolean openFastModeBtn = this.f36378r0.getOpenFastModeBtn();
        this.L1 = openFastModeBtn;
        if (openFastModeBtn) {
            this.Y0.setVisibility(0);
        }
        if (this.f36378r0.getBattleArea() == BattleArea.ALL) {
            A2(1);
        } else {
            A2(0);
        }
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#f47500"), Color.parseColor("#f47500"), Color.parseColor("#f47500"), Color.parseColor("#f47500")});
        gradientDrawable.setCornerRadius(8.0f);
        GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#FF8C00"), Color.parseColor("#FF8C00"), Color.parseColor("#FF8C00"), Color.parseColor("#FF8C00")});
        gradientDrawable2.setCornerRadius(8.0f);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        this.J1 = stateListDrawable;
        GradientDrawable gradientDrawable3 = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#F47500"), Color.parseColor("#F47500"), Color.parseColor("#F47500")});
        gradientDrawable.setCornerRadius(8.0f);
        this.K1 = gradientDrawable3;
        this.G0.setText(this.f36382t0);
        PlayerInfoContainerView playerInfoContainerView = (PlayerInfoContainerView) findViewById(R.id.mPlayerInfoContainerView);
        this.f36359d1 = playerInfoContainerView;
        playerInfoContainerView.setPlayerInfoCallback(this.G1);
        this.H1 = new com.join.mgps.socket.fight.arena.a(this, this);
        q2();
        l2("" + this.f36378r0.getGameId());
        U2(this.f36378r0);
        if (this.f36378r0 != null && this.f36378r0.getRoomId() != 0) {
            com.wufan.friend.chat.c.u().i(0, this.f36378r0.getRoomId());
        }
        com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, this.f36375p1);
        this.f36373o1 = bVar;
        bVar.bindService();
        x2(this.f36378r0);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.M1 = supportFragmentManager;
        try {
            supportFragmentManager.beginTransaction().commit();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        float j4 = com.join.android.app.common.utils.j.n(this).j(this);
        if (j4 > 1.9d) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f36359d1.getLayoutParams();
            layoutParams.rightMargin = getResources().getDimensionPixelOffset(R.dimen.wdp69);
            layoutParams.leftMargin = getResources().getDimensionPixelOffset(R.dimen.wdp65);
            this.f36359d1.setLayoutParams(layoutParams);
            return;
        }
        float f4 = (j4 * 9.0f) / 16.0f;
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f36359d1.getLayoutParams();
        layoutParams2.rightMargin = (int) (getResources().getDimensionPixelOffset(R.dimen.wdp43) * f4);
        layoutParams2.leftMargin = (int) (getResources().getDimensionPixelOffset(R.dimen.wdp43) * f4);
        this.f36359d1.setLayoutParams(layoutParams2);
    }

    public boolean b2(Context context, String str) {
        if (str != null && !"".equals(str)) {
            try {
                context.getPackageManager().getApplicationInfo(str, 8192);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c2() {
        IntentUtil.getInstance().goLoginBattle(this);
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void i0(RoomSeatState roomSeatState, int i4) {
        if (roomSeatState == RoomSeatState.OPEN) {
            if (this.f36378r0.getState() == RoomState.START) {
                showToast("游戏已经开始，无法开启座位!");
            } else {
                this.f36373o1.f(ArenaRequestFactory.openSit(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.f36378r0.getRoomId(), i4));
            }
        } else if (roomSeatState == RoomSeatState.CLOSE) {
            if (this.f36378r0.getState() == RoomState.START) {
                showToast("游戏已经开始，无法关闭座位!");
            } else {
                this.f36373o1.f(ArenaRequestFactory.closeSit(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.f36378r0.getRoomId(), i4));
            }
        } else if (roomSeatState == RoomSeatState.REMOVE) {
            if (this.f36378r0.getState() == RoomState.START) {
                showToast("游戏已经开始，无法踢人!");
            } else {
                this.f36373o1.f(ArenaRequestFactory.kickOutRoomPosition(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.f36378r0.getRoomId(), i4));
            }
        } else if (roomSeatState == RoomSeatState.SEAT) {
            if (this.f36378r0.getState() == RoomState.START) {
                showToast("游戏已经开始，你无法坐下！");
            } else {
                this.f36373o1.f(ArenaRequestFactory.spectatorSit(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.f36378r0.getRoomId(), i4));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i2() {
        ClipboardManager clipboardManager = this.S1;
        if (clipboardManager != null) {
            clipboardManager.setText("");
        }
        a2();
        Z1();
        p2();
        com.join.mgps.socket.fight.arena.a aVar = this.H1;
        if (aVar != null) {
            aVar.w();
        }
        this.f36381s1.removeCallbacks(this.f36383t1);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        if (this.f36370m1 && !com.join.android.app.common.utils.f.j(this)) {
            i2();
        } else {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void j2(int i4) {
        String e4 = com.join.mgps.socket.fight.arena.c.e(i4 == 1 ? ArenaConstants.NDS_SERVER_1 : ArenaConstants.NDS_SERVER_2);
        if (TextUtils.isEmpty(e4)) {
            if (i4 == 1) {
                j2(2);
                return;
            }
            return;
        }
        t0.b("GameRoomActivity", "get battle server id for http nds :" + e4);
        this.f36360d2 = e4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k2() {
        try {
            ResultArenaBean<BattleChallengeConfig> E = this.O1.E(this.f36374p0.getAccountData().getUid(), this.f36374p0.getAccountData().getToken(), this.f36378r0.getGameId());
            p2();
            if (E != null && E.getData() != null) {
                this.f36372o0 = E.getData();
                H2();
            } else if (E != null && E.getError() == 701) {
                c2();
            } else {
                showToast("获取配置信息失败，请重试！");
            }
        } catch (Exception unused) {
            p2();
            if (!com.join.android.app.common.utils.f.j(this)) {
                showToast("当前网络不可用，请检查网络!");
                i2();
                return;
            }
            showToast("获取配置信息失败，请重试！");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void l2(String str) {
        try {
            String token = this.f36374p0.getAccountData().getToken();
            ResultArenaBean<ArenaLobbyServer> P = this.f36358c2.P(this.f36374p0.getAccountData().getUid(), token);
            if (P != null) {
                if (P.getError() == 0) {
                    if (P.getData() != null) {
                        int startGameCopper = P.getData().getStartGameCopper();
                        this.A0 = startGameCopper;
                        if (startGameCopper == 0) {
                            this.A0 = 20;
                        }
                        R2();
                    }
                } else if (P.getError() == 701) {
                    showToast("你的手机登陆已经失效，请重新登陆!");
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            List<ArenaGameInfo> data = this.f36358c2.r(str).getData();
            for (int i4 = 0; i4 < data.size(); i4++) {
                ArenaGameInfo arenaGameInfo = data.get(i4);
                b2.l(this, arenaGameInfo.getId(), arenaGameInfo);
            }
            this.f36354a2 = (ArenaGameInfo) b2.b(this, this.f36378r0.getGameId() + "");
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m2() {
        if (s2()) {
            return;
        }
        p2();
        showToast("获取服务器ip失败");
        i2();
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void n0(RoomPosition roomPosition, int i4) {
        if (roomPosition.getVip()) {
            showToast("由于对方是悟饭VIP您无法将其踢出房间");
        } else if (roomPosition.getUid() == Integer.parseInt(this.f36374p0.getUid()) || this.f36395z1 != UserType.OWNER || this.f36378r0.getState() == RoomState.START) {
        } else {
            this.F1 = i4;
            this.f36373o1.f(ArenaRequestFactory.getKickOutRoomPositionInfo(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.f36378r0.getRoomId(), i4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n2(ArenaResponse arenaResponse) {
        x0 x0Var = this.I1;
        if (x0Var != null && x0Var.isShowing()) {
            try {
                this.I1.dismiss();
            } catch (Exception unused) {
            }
        }
        if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOBBY_START_GAME) || arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.PUSH_START_GAME_ROOM_BROADCAST)) {
            a2();
        }
        if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SERVER_PLAY_MODE)) {
            showToast("流畅模式设置失败");
            y2();
        }
        int i4 = arenaResponse.errorType;
        if (i4 == 12) {
            this.H1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法设置挑战金", "确定");
        } else if (i4 != 14) {
            showToast(com.join.mgps.socket.fight.arena.c.g(arenaResponse));
        } else {
            this.H1.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "该房间已经解散", "确定");
            this.H1.x().setOnDismissListener(new s());
        }
    }

    @Override // com.join.mgps.activity.FriendActivity, com.join.mgps.adapter.l0.e
    public void o(FriendBean friendBean) {
        GameRoom gameRoom = this.f36378r0;
        if (gameRoom == null) {
            return;
        }
        if (!t2(gameRoom.getP1(), friendBean.getUid()) && !t2(gameRoom.getP2(), friendBean.getUid()) && !t2(gameRoom.getP3(), friendBean.getUid()) && !t2(gameRoom.getP4(), friendBean.getUid())) {
            UtilsMy.p0(this, 3, this.f30859h, "FIGHT_LOBBY", new n(friendBean, gameRoom));
        } else {
            i2.a(this).b("用户已加入房间");
        }
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void o0(RoomPosition roomPosition) {
        if (roomPosition.getUid() != Integer.parseInt(this.f36374p0.getUid())) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(com.join.mgps.rpc.g.f51554u + "report_uid=" + this.f36374p0.getUid() + "&reported_uid=" + roomPosition.getUid());
            ShareWebActivity_.O2(this).b(intentDateBean).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o2(KickInfo kickInfo) {
        this.H1.D(com.join.mgps.socket.fight.arena.a.f52165p, kickInfo, Integer.valueOf(this.F1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f30860i = "BATTLE_ROOM";
        if (this.f36378r0 != null) {
            this.f30859h = this.f36378r0.getGameId() + "";
        }
        this.f36371n1 = this;
        UtilsMy.p0(this, 4, this.f30859h, "FIGHT_LOBBY", new k());
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.socket.fight.arena.b bVar = this.f36373o1;
        if (bVar != null) {
            if (bVar.d() != null) {
                t0.b("GameRoomActivity", "--onStop---removeObserver---");
                this.f36373o1.d().A(this.f36377q1);
            }
            this.f36373o1.g();
        }
        this.C1 = false;
        super.onDestroy();
        d2();
        t0.b("GameRoomActivity", "--onDestroy---");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.join.mgps.event.m mVar) {
        if (mVar == null || mVar.a() != 3 || this.f36378r0 == null || mVar.g() == this.f36378r0.getRoomId()) {
            return;
        }
        finish();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 4 && keyEvent.getAction() == 0) {
            if (this.f36370m1 && !com.join.android.app.common.utils.f.j(this)) {
                i2();
                return true;
            }
            P();
            return true;
        }
        return super.onKeyDown(i4, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.mgps.socket.fight.arena.b bVar = this.f36373o1;
        if (bVar == null || bVar.d() == null) {
            return;
        }
        t0.b("GameRoomActivity", "--onResume---registerObserver---");
        this.f36373o1.d().z(this.f36377q1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p2() {
        x0 x0Var = this.I1;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        try {
            this.I1.dismiss();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (s2()) {
            return;
        }
        i2.a(this).b(str);
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void t() {
        finish();
    }

    boolean t2(RoomPosition roomPosition, int i4) {
        return roomPosition != null && roomPosition.getUid() == i4;
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void w0(int i4, int i5, Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void x2(GameRoom gameRoom) {
        com.join.mgps.socket.fight.arena.c.q("GameRoomActivity", gameRoom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y2() {
        if (this.Z0.isChecked()) {
            A2(0);
        } else {
            A2(1);
        }
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void z(int i4) {
        if (com.join.mgps.socket.fight.arena.c.a(this.f36378r0, this.f36374p0)) {
            showToast("已有玩家进入，无法再设置挑战金!");
        } else if (this.f36387v1) {
            showToast("房间已经进入倒计时状态，无法再设置挑战金！");
        } else if (this.f36378r0.getState() == RoomState.START) {
            showToast("游戏已经开始，无法设置挑战金！");
        } else if (this.f36378r0.getChallengeCoins() == i4) {
        } else {
            this.f36373o1.f(ArenaRequestFactory.setChallengeGolden(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.f36378r0.getRoomId(), i4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 3000)
    public void z2() {
        sendBroadcast(new Intent("com.show.realname.check"));
    }
}
