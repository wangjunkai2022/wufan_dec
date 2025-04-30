package com.join.mgps.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.adapter.w1;
import com.join.mgps.adapter.w2;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.DynamicEntranceBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameMainCommunityBean;
import com.join.mgps.dto.GameMainDataBean;
import com.join.mgps.dto.GameMainNetBattle;
import com.join.mgps.dto.GameMainV3DataBean;
import com.join.mgps.dto.GameMainachieve;
import com.join.mgps.dto.GameMaingameinfo;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.MulPostData;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.socket.fight.arena.a;
import com.join.mgps.socket.fight.arena.b;
import com.papa.sim.statistic.Event;
import com.papa91.battle.protocol.GameRoom;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.sharedpreferences.Pref;
@WindowFeature({1})
@EActivity(R.layout.activity_game_main_new)
@Fullscreen
/* loaded from: classes3.dex */
public class GameMainNewActivity extends Activity implements w1.a {
    @ViewById
    RelativeLayout A;
    com.join.mgps.rpc.e A0;
    @ViewById
    LinearLayout B;
    private String B0;
    @Extra
    String C;
    @Extra
    String D;
    private String D0;
    private Context E;
    List<PlayGameTimeTable> F;
    private DownloadTask G;
    @Pref
    PrefDef_ G0;
    com.join.mgps.rpc.h H0;
    List<PspBattleServer> I;
    int I0;
    g J;
    com.join.mgps.rpc.k K;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    View f31788a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f31789b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f31790c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f31791d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f31792e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f31793f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f31794g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RecyclerView f31795h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    RelativeLayout f31796i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f31797j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f31798k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f31799l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f31800m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f31801n;

    /* renamed from: n0  reason: collision with root package name */
    GameMainV3DataBean f31802n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    View f31803o;

    /* renamed from: o0  reason: collision with root package name */
    private String f31804o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f31805p;

    /* renamed from: p0  reason: collision with root package name */
    AccountBean f31806p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    View f31807q;

    /* renamed from: q0  reason: collision with root package name */
    com.join.mgps.rpc.d f31808q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    RecyclerView f31809r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    GridView f31811s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    SimpleDraweeView f31813t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    SimpleDraweeView f31815u;

    /* renamed from: u0  reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b f31816u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    RelativeLayout f31817v;

    /* renamed from: v0  reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.a f31818v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    LinearLayout f31819w;

    /* renamed from: w0  reason: collision with root package name */
    private com.join.mgps.adapter.w1 f31820w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    RelativeLayout f31821x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    RelativeLayout f31823y;

    /* renamed from: y0  reason: collision with root package name */
    private w2 f31824y0;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    SimpleDraweeView f31825z;

    /* renamed from: z0  reason: collision with root package name */
    private com.join.mgps.adapter.b2 f31826z0;
    private String H = "";

    /* renamed from: r0  reason: collision with root package name */
    private String f31810r0 = "";

    /* renamed from: s0  reason: collision with root package name */
    private int f31812s0 = 0;

    /* renamed from: t0  reason: collision with root package name */
    private String f31814t0 = "";

    /* renamed from: x0  reason: collision with root package name */
    private List<DynamicEntranceBean> f31822x0 = new ArrayList();
    private Bitmap C0 = null;
    private boolean E0 = false;
    private List<CommentAllListBean.GeneralCommentBean> F0 = new ArrayList();
    List<GameMainCommunityBean.PostsBean> J0 = new ArrayList();
    private CountDownTimer K0 = new d(com.join.mgps.data.c.f47286a, 1000);
    private final b.InterfaceC0228b L0 = new e();
    private final SocketListener.NotifyObserver M0 = new f();

    /* loaded from: classes3.dex */
    class a extends a.b0 {
        a() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void w0(int i2, int i4, Object obj) {
            super.w0(i2, i4, obj);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity.this.z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameMainV3DataBean f31829a;

        c(GameMainV3DataBean gameMainV3DataBean) {
            this.f31829a = gameMainV3DataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity.this.I(this.f31829a.getSurface_bottom_ad().getTpl_type(), Integer.valueOf(this.f31829a.getSurface_bottom_ad().getLink_type()).intValue(), Integer.valueOf(this.f31829a.getSurface_bottom_ad().getJump_type()).intValue(), this.f31829a.getSurface_bottom_ad().getCrc_link_type_val(), this.f31829a.getSurface_bottom_ad().getLink_type_val());
        }
    }

    /* loaded from: classes3.dex */
    class d extends CountDownTimer {
        d(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            GameMainNewActivity.this.K();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
        }
    }

    /* loaded from: classes3.dex */
    class e extends b.c {
        e() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void a() {
            super.a();
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
            super.c();
            if (GameMainNewActivity.this.f31816u0 == null || GameMainNewActivity.this.f31816u0.d() == null) {
                return;
            }
            GameMainNewActivity.this.f31816u0.d().z(GameMainNewActivity.this.M0);
        }
    }

    /* loaded from: classes3.dex */
    class f implements SocketListener.NotifyObserver {
        f() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (GameMainNewActivity.this.M()) {
                return;
            }
            int i2 = socketError.errorType;
            if (i2 == 6 || i2 == 2) {
                GameMainNewActivity.this.T();
            } else if (i2 == 5) {
                GameMainNewActivity.this.T();
            } else if (i2 == 3 || i2 == 4) {
                GameMainNewActivity.this.T();
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            if (GameMainNewActivity.this.M()) {
                return;
            }
            if (arenaResponse.responseCode == 0) {
                GameMainNewActivity.this.J(arenaResponse);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                GameMainNewActivity.this.w();
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM) || arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                GameMainNewActivity.this.K();
                GameRoom gameRoom = (GameRoom) arenaResponse.data;
                if (GameMainNewActivity.this.f31816u0 != null && GameMainNewActivity.this.f31816u0.d() != null) {
                    GameMainNewActivity.this.f31816u0.d().E(null);
                }
                if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                    GameMainNewActivity.this.k();
                    GameRoomActivity_.u3(GameMainNewActivity.this).d(gameRoom.getGameName()).i(gameRoom).c("game_main").start();
                }
            }
        }
    }

    private SimpleDraweeView G() {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        return simpleDraweeView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean M() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    private void R() {
        n1.d0 n4 = n1.d0.n();
        StringBuilder sb = new StringBuilder();
        sb.append(this.f31806p0.getUid());
        String str = "";
        sb.append("");
        List<PlayGameTimeTable> o3 = n4.o(sb.toString(), this.C);
        this.F = o3;
        if (o3 != null && o3.size() > 0) {
            this.f31793f.setVisibility(0);
            this.f31794g.setVisibility(0);
            this.f31791d.setVisibility(0);
            this.f31792e.setVisibility(0);
            long gamePlayTotalTime = this.F.get(0).getGamePlayTotalTime();
            int i2 = (int) (gamePlayTotalTime / 3600);
            long j4 = gamePlayTotalTime % 3600;
            int i4 = (int) (j4 / 60);
            long j5 = j4 % 60;
            if (i2 != 0) {
                str = "" + i2 + "小时";
            }
            if (i4 != 0) {
                str = str + i4 + "分钟";
            }
            this.f31792e.setText(com.join.mgps.Util.d2.h(str) ? "0分钟" : str);
            if (this.F.get(0).getGamePlayRecentlyTime() > 0) {
                this.f31794g.setText(com.join.android.app.common.utils.c.a(this.F.get(0).getGamePlayRecentlyTime() * 1000));
                return;
            } else {
                this.f31794g.setText("无");
                return;
            }
        }
        this.f31793f.setVisibility(4);
        this.f31794g.setVisibility(4);
        this.f31791d.setVisibility(4);
        this.f31792e.setVisibility(4);
        this.f31792e.setText("0分钟");
        this.f31794g.setText("未玩过");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        try {
            Toast.makeText(this, "网络不稳定，请重试", 0).show();
        } catch (Exception unused) {
        }
    }

    private void V(int i2) {
        if (this.F0.size() >= i2) {
            GameMaingameinfo game_info = this.f31802n0.getGame_info();
            CommentDetailActivity_.k2(this.E).d(this.C).b(this.F0.get(i2 - 1).getId()).f(game_info.getGame_plugin_num()).a(Integer.valueOf(game_info.getGame_bespeak_switch()).intValue()).e(game_info.getGame_is_started()).h(0).g(game_info.getGame_package()).c(game_info.getGame_comment_score_switch()).start();
        }
    }

    private void X(int i2) {
        if (this.J0.size() >= i2) {
            int pid = this.J0.get(i2 - 1).getPid();
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.i0.w0(this.E, forumPostsBean, new ExtBean("0", pid + "", "-1"));
        }
    }

    private void Y(boolean z3) {
        GameMainNetBattle net_battle;
        String str;
        char c4;
        char c5;
        String fight_fun = this.G.getFight_fun();
        if (com.join.mgps.Util.d2.i(fight_fun)) {
            this.f31822x0.clear();
            this.f31820w0.b();
            if (fight_fun.length() >= 2) {
                char charAt = fight_fun.charAt(1);
                if (fight_fun.length() >= 7) {
                    c4 = fight_fun.charAt(6);
                    if (fight_fun.charAt(5) == '1') {
                        c5 = '1';
                        if ('1' != charAt || '1' == c4) {
                            this.f31796i.setVisibility(0);
                        } else if ('0' == charAt && '0' == c4 && c5 == '1') {
                            this.f31796i.setVisibility(0);
                        } else {
                            this.f31796i.setVisibility(8);
                        }
                    }
                } else {
                    c4 = '0';
                }
                c5 = '0';
                if ('1' != charAt) {
                }
                this.f31796i.setVisibility(0);
            }
            if (fight_fun.length() > 12 && N(this, this.G) && fight_fun.charAt(12) == '1') {
                this.f31822x0.add(new DynamicEntranceBean("排位赛", "NEW", 1));
            }
            if (fight_fun.length() > 4 && fight_fun.charAt(4) == '1') {
                this.f31822x0.add(new DynamicEntranceBean("练习模式", "", 5));
            }
            if (fight_fun.length() >= 4 && fight_fun.charAt(3) == '1') {
                this.f31822x0.add(new DynamicEntranceBean("约战", "", 2));
            }
            if (fight_fun.length() >= 1 && '1' == fight_fun.charAt(0)) {
                this.f31822x0.add(new DynamicEntranceBean("本地对战", "", 3));
            }
        }
        if (this.f31802n0 != null) {
            this.f31821x.setVisibility(8);
            this.f31823y.setVisibility(0);
            GameMaingameinfo game_info = this.f31802n0.getGame_info();
            if (game_info != null) {
                String game_back_ground_img = game_info.getGame_back_ground_img();
                if (!com.join.mgps.Util.d2.h(game_back_ground_img)) {
                    this.f31813t.setImageURI(game_back_ground_img);
                }
                this.I0 = game_info.getCommunity_area_id();
                if (z3) {
                    if (!com.join.mgps.Util.d2.h(this.f31804o0)) {
                        E(this.f31804o0);
                    } else if (this.I0 != 0) {
                        B();
                    } else {
                        y();
                    }
                }
            }
            GameMainV3DataBean.MemberInfoBean member_info = this.f31802n0.getMember_info();
            if (member_info != null) {
                if (!com.join.mgps.Util.d2.h(member_info.getPic_remote())) {
                    this.f31815u.setImageURI(member_info.getPic_remote());
                }
                this.f31798k.setText(member_info.getTitle());
                this.f31799l.setText(Html.fromHtml(member_info.getSub_title()));
            }
            List<GameMainV3DataBean.MemberFunBean> member_fun = this.f31802n0.getMember_fun();
            if (member_fun != null && member_fun.size() > 0) {
                this.f31824y0.c(member_fun);
            }
            List<GameMainV3DataBean.GameRecommendInfoBean> game_recommend_info = this.f31802n0.getGame_recommend_info();
            if (game_recommend_info != null && game_recommend_info.size() > 0) {
                this.f31826z0.b(game_recommend_info);
            }
            if (this.f31802n0.getNet_battle() != null) {
                this.f31790c.setText(net_battle.getNumber() + "房");
            }
            GameMainV3DataBean.PlayGameInfoBean play_game_info = this.f31802n0.getPlay_game_info();
            this.f31793f.setVisibility(4);
            this.f31794g.setVisibility(4);
            this.f31791d.setVisibility(4);
            this.f31792e.setVisibility(4);
            if (play_game_info != null) {
                int file_save_count = play_game_info.getFile_save_count();
                if (play_game_info.getFile_save_switch() == 1) {
                    this.f31822x0.add(new DynamicEntranceBean("云存档", file_save_count + "", 4));
                }
                this.f31820w0.notifyDataSetChanged();
                long current_play_time = play_game_info.getCurrent_play_time();
                int i2 = (int) (current_play_time / 3600);
                long j4 = current_play_time % 3600;
                int i4 = (int) (j4 / 60);
                long j5 = j4 % 60;
                if (i2 != 0) {
                    str = "" + i2 + "小时";
                } else {
                    str = "";
                }
                if (i4 != 0) {
                    str = str + i4 + "分钟";
                }
                if (com.join.mgps.Util.d2.h(str)) {
                    str = "0分钟";
                }
                this.f31792e.setText(str);
                if (play_game_info.getCurrent_play_time() > 0) {
                    String a4 = com.join.android.app.common.utils.c.a(play_game_info.getLast_play_time() * 1000);
                    n1.d0.n().m(new PlayGameTimeTable(this.f31806p0.getUid() + "", this.C, current_play_time, play_game_info.getLast_play_time()));
                    this.f31794g.setText(a4);
                    this.f31793f.setVisibility(0);
                    this.f31794g.setVisibility(0);
                    this.f31791d.setVisibility(0);
                    this.f31792e.setVisibility(0);
                    return;
                }
                n1.d0.n().m(new PlayGameTimeTable(this.f31806p0.getUid() + "", this.C, current_play_time, 0L));
                this.f31793f.setVisibility(4);
                this.f31794g.setVisibility(4);
                this.f31791d.setVisibility(4);
                this.f31792e.setVisibility(4);
                return;
            }
            this.f31793f.setVisibility(4);
            this.f31794g.setVisibility(4);
            this.f31791d.setVisibility(4);
            this.f31792e.setVisibility(4);
            this.f31820w0.notifyDataSetChanged();
            return;
        }
        this.f31821x.setVisibility(0);
        this.f31823y.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        CountDownTimer countDownTimer = this.K0;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    private void q() {
        com.papa.sim.statistic.p.l(this).U0(Event.startArchiveManagement, AccountUtil_.getInstance_(this).getUid(), this.C, "1");
        DocumentManageActivity_.q1(this.E).a(1).b(this.C).start();
    }

    private void s() {
        ApFightActivity_.L0(this.E).a(this.C).start();
        com.papa.sim.statistic.p.l(this).v0(this.G.getCrc_link_type_val(), this.f31806p0.getUid());
    }

    private void u() {
        MobclickAgent.onEvent(this.E, "onEnterQualifying");
        if (com.join.android.app.common.utils.f.j(this)) {
            if (UtilsMy.P(this.E, this.G) == null) {
                Toast.makeText(this, "正在下载插件...", 1).show();
                K();
                return;
            } else if (this.f31802n0 == null) {
                return;
            } else {
                GamePaiWeiActivty_.o0(this.E).a(this.C).b(this.f31802n0.getGame_info().getMax_battle_count()).start();
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("无网络连接");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (!IntentUtil.getInstance().goLoginBattle(this)) {
                k();
                this.f31788a.setVisibility(0);
                this.K0.start();
                if (UtilsMy.P(this.E, this.G) == null) {
                    Toast.makeText(this, "正在下载插件...", 1).show();
                    K();
                    return;
                }
                com.join.mgps.socket.fight.arena.b bVar = this.f31816u0;
                if (bVar != null && bVar.d() != null) {
                    if (this.f31816u0.d().s()) {
                        this.f31816u0.f(ArenaRequestFactory.createRoom(ArenaConstants.REGISTER_TYPE_GAMEMAIN, this.C, 0, AccountUtil_.getInstance_(this).getAccountData().getUid(), true));
                    } else {
                        ArenaRequest login = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMEMAIN);
                        login.isRefreshing = true;
                        login.isElite = false;
                        this.f31816u0.f(login);
                    }
                }
            }
            com.papa.sim.statistic.p.l(this).K0(this.G.getCrc_link_type_val(), this.f31806p0.getUid());
            return;
        }
        com.join.mgps.Util.i2.a(this).b("无网络连接");
    }

    private void x() {
        UtilsMy.h(null, this.G, this, 3);
        com.papa.sim.statistic.p.l(this).Q0(this.G.getCrc_link_type_val(), this.f31806p0.getUid());
        com.papa.sim.statistic.p.l(this).x0(this.G.getCrc_link_type_val(), this.f31806p0.getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void A() {
        try {
            GameMainTable o3 = n1.u.n().o(this.C);
            if (o3 != null) {
                GameMainV3DataBean gameMainV3DataBean = (GameMainV3DataBean) JsonMapper.getInstance().fromJson(o3.getGame_main_data(), GameMainV3DataBean.class);
                if (gameMainV3DataBean != null && gameMainV3DataBean.getGame_info() != null) {
                    this.f31804o0 = gameMainV3DataBean.getGame_info().getCommunity_multi_posts_id();
                }
                if (gameMainV3DataBean != null) {
                    Z(gameMainV3DataBean, false);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void B() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ResultResMainBean<GameMainCommunityBean> n4 = this.H0.n(this.I0);
                if (n4 == null || n4.getError() != 0 || n4.getData() == null) {
                    return;
                }
                List<GameMainCommunityBean.PostsBean> posts = n4.getData().getPosts();
                this.J0.clear();
                if (posts != null && posts.size() > 0) {
                    String subject = posts.get(0).getSubject();
                    if (com.join.mgps.Util.d2.h(subject)) {
                        subject = posts.get(0).getMessage();
                    }
                    this.J0.add(new GameMainCommunityBean.PostsBean(subject, posts.get(0).getPid()));
                    if (posts.size() > 1) {
                        String subject2 = posts.get(1).getSubject();
                        if (com.join.mgps.Util.d2.h(subject2)) {
                            subject2 = posts.get(1).getMessage();
                        }
                        this.J0.add(new GameMainCommunityBean.PostsBean(subject2, posts.get(1).getPid()));
                    }
                }
                P();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public RequestCommentAllListArgs C() {
        this.f31806p0 = AccountUtil_.getInstance_(this.E).getAccountData();
        String d4 = this.G0.commentToken().d();
        AccountBean accountBean = this.f31806p0;
        return RequestBeanUtil.getInstance(this.E).getRequestCommentAllList(1, 10, this.C, accountBean != null ? accountBean.getUid() : 0, d4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void D() {
        if (com.join.android.app.common.utils.f.j(this.E)) {
            try {
                ForumResponse<ForumData.HomepageRecommendLabel> O = this.H0.O(0, 1, AccountUtil_.getInstance_(this.E).getUid(), AccountUtil_.getInstance_(this.E).getToken());
                if (O == null || O.getError() != 0 || O.getData() == null) {
                    return;
                }
                List<ForumBean.ForumPostsBean> post_list = O.getData().getPost_list();
                this.J0.clear();
                if (post_list != null && post_list.size() > 0) {
                    this.J0.add(new GameMainCommunityBean.PostsBean(post_list.get(0).getSubject(), post_list.get(0).getPid()));
                    if (post_list.size() > 0) {
                        this.J0.add(new GameMainCommunityBean.PostsBean(post_list.get(1).getSubject(), post_list.get(1).getPid()));
                    }
                }
                P();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<MulPostData> L = this.H0.L(str);
                if (L == null || L.getError() != 0 || L.getData() == null) {
                    return;
                }
                List<ForumBean.ForumPostsBean> posts_list = L.getData().getPosts_list();
                this.J0.clear();
                if (posts_list != null && posts_list.size() > 0) {
                    this.J0.add(new GameMainCommunityBean.PostsBean(posts_list.get(0).getSubject(), posts_list.get(0).getPid()));
                    if (posts_list.size() > 1) {
                        this.J0.add(new GameMainCommunityBean.PostsBean(posts_list.get(1).getSubject(), posts_list.get(1).getPid()));
                    }
                }
                P();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F() {
        try {
            GameWorldResponse<List<PspBattleServer>> v3 = this.K.v();
            if (v3.getError() == 701) {
                l();
            } else if (v3.getError() == 0) {
                this.I = v3.getData();
                S();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1500)
    public void H() {
    }

    void I(String str, int i2, int i4, String str2, String str3) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(str);
        intentDateBean.setLink_type(i2);
        intentDateBean.setJump_type(i4);
        intentDateBean.setCrc_link_type_val(str2);
        intentDateBean.setLink_type_val(str3);
        IntentUtil.getInstance().intentActivity(this.E, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J(ArenaResponse arenaResponse) {
        K();
        int i2 = arenaResponse.errorType;
        if (i2 == 16) {
            this.f31818v0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "无法加入，你被禁止加入该房间", "确定");
        } else if (i2 == 17) {
            this.f31818v0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "我知道了");
        } else if (i2 == 9) {
            this.f31818v0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间人数已满你无法加入房间!", "确定");
        } else if (i2 == 7) {
            this.f31818v0.D(com.join.mgps.socket.fight.arena.a.f52159j, 256, Integer.valueOf(arenaResponse.errorType), "密码输入错误，请重试!", "取消", "确定", arenaResponse);
        } else if (i2 == 8) {
            this.f31818v0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间已经被解散!", "确定");
        } else if (i2 == 11) {
            this.f31818v0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法创建房间!", "确定");
        } else if (i2 == 13) {
            this.f31818v0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法加入房间", "确定");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K() {
        this.f31788a.setVisibility(8);
    }

    void L() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.E).flags(268435456)).start();
    }

    boolean N(Context context, DownloadTask downloadTask) {
        int i2;
        try {
            i2 = Integer.parseInt(downloadTask.getPlugin_num());
        } catch (Exception unused) {
            i2 = 0;
        }
        try {
            if (i2 == ConstantIntEnum.FBA.value() || i2 == ConstantIntEnum.FC.value()) {
                EMUApkTable n4 = n1.o.o().n(downloadTask.getRomType());
                if (new APKUtils().c(context, n4.getPackage_name())) {
                    try {
                        try {
                            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(n4.getPackage_name(), 0);
                            if (packageInfo == null) {
                                return false;
                            }
                            try {
                                return packageInfo.versionCode > 330;
                            } catch (Exception unused2) {
                                return true;
                            }
                        } catch (Exception e4) {
                            e4.getLocalizedMessage();
                            return false;
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                        return false;
                    }
                } else if (n4.getDown_type() == 2 && n4.getDown_type() == 2) {
                    return com.join.android.app.common.utils.h.t(context, n4, false, new String[0]);
                } else {
                    return false;
                }
            }
            return true;
        } catch (Exception e6) {
            e6.printStackTrace();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O() {
        List<CommentAllListBean.GeneralCommentBean> list = this.F0;
        if (list == null) {
            this.f31821x.setVisibility(0);
            this.f31823y.setVisibility(8);
            return;
        }
        if (list.size() > 0) {
            this.f31801n.setText(this.F0.get(0).getContent());
            this.f31801n.setVisibility(0);
            this.f31803o.setVisibility(0);
        } else {
            this.f31801n.setVisibility(4);
            this.f31803o.setVisibility(4);
        }
        if (this.F0.size() > 1) {
            this.f31805p.setText(this.F0.get(1).getContent());
            this.f31805p.setVisibility(0);
            this.f31807q.setVisibility(0);
            return;
        }
        this.f31805p.setVisibility(4);
        this.f31807q.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
        if (this.J0 != null) {
            this.f31821x.setVisibility(8);
            this.f31823y.setVisibility(0);
            if (this.J0.size() > 0) {
                this.f31801n.setText(this.J0.get(0).getSubject());
                this.f31801n.setVisibility(0);
                this.f31803o.setVisibility(0);
            } else {
                this.f31801n.setVisibility(4);
                this.f31803o.setVisibility(4);
            }
            if (this.J0.size() > 1) {
                this.f31805p.setText(this.J0.get(1).getSubject());
                this.f31805p.setVisibility(0);
                this.f31807q.setVisibility(0);
                return;
            }
            this.f31805p.setVisibility(4);
            this.f31807q.setVisibility(4);
            return;
        }
        this.f31821x.setVisibility(0);
        this.f31823y.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q(GameMainV3DataBean gameMainV3DataBean) {
        try {
            if (gameMainV3DataBean.getSurface_bottom_ad() == null || gameMainV3DataBean.getSurface_bottom_ad().getAd_switch() != 1) {
                return;
            }
            this.A.setVisibility(8);
            this.f31825z.setVisibility(0);
            this.f31825z.setImageURI(gameMainV3DataBean.getSurface_bottom_ad().getPic_remote());
            this.f31825z.getHierarchy().x(r.c.f12139b);
            this.f31825z.setOnClickListener(new c(gameMainV3DataBean));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        g gVar = this.J;
        if (gVar != null && gVar.isShowing()) {
            this.J.dismiss();
        }
        g gVar2 = new g(this.E, R.style.HKDialogLoading);
        this.J = gVar2;
        gVar2.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U() {
        String str;
        GameMainV3DataBean gameMainV3DataBean = this.f31802n0;
        if (gameMainV3DataBean == null || gameMainV3DataBean.getMember_info() == null) {
            return;
        }
        GameMainV3DataBean.MemberInfoBean member_info = this.f31802n0.getMember_info();
        if (Integer.parseInt(member_info.getLink_type()) == 4 && member_info.getLink_type_val() != null && member_info.getLink_type_val().startsWith(com.facebook.common.util.f.f11765a)) {
            String link_type_val = member_info.getLink_type_val();
            if (link_type_val.contains("?")) {
                str = link_type_val + "&game_id=" + this.C;
            } else {
                str = link_type_val + "?game_id=" + this.C;
            }
            member_info.setLink_type_val(str);
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(Integer.valueOf(member_info.getLink_type()).intValue());
        intentDateBean.setJump_type(Integer.valueOf(member_info.getJump_type()).intValue());
        intentDateBean.setLink_type_val(member_info.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.E, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W() {
        GameMainV3DataBean gameMainV3DataBean = this.f31802n0;
        if (gameMainV3DataBean == null) {
            return;
        }
        GameMaingameinfo game_info = gameMainV3DataBean.getGame_info();
        if (game_info.getGame_comment_score_switch().equals("0")) {
            ForumIndexActivity_.G0(this).start();
        } else {
            CommentAllListActivity_.f1(this.E).f(this.C).i(game_info.getGame_package()).h(game_info.getGame_plugin_num()).a(Integer.valueOf(game_info.getGame_bespeak_switch()).intValue()).g(game_info.getGame_is_started()).j(0).d(game_info.getGame_comment_score_switch()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z(GameMainV3DataBean gameMainV3DataBean, boolean z3) {
        this.f31802n0 = gameMainV3DataBean;
        GameMaingameinfo game_info = gameMainV3DataBean.getGame_info();
        if (game_info != null) {
            this.f31789b.setText(game_info.getGame_name());
        }
        Y(z3);
    }

    @Override // com.join.mgps.adapter.w1.a
    public void f0(DynamicEntranceBean dynamicEntranceBean) {
        int typeId = dynamicEntranceBean.getTypeId();
        if (typeId == 1) {
            u();
        } else if (typeId == 2) {
            w();
        } else if (typeId == 3) {
            s();
        } else if (typeId == 4) {
            q();
        } else if (typeId != 5) {
        } else {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void j() {
        this.E = this;
        this.f31808q0 = com.join.mgps.rpc.impl.c.P1();
        this.K = com.join.mgps.rpc.impl.k.n0();
        this.H0 = com.join.mgps.rpc.impl.f.A0();
        this.A0 = com.join.mgps.rpc.impl.d.m();
        this.f31825z.setVisibility(8);
        this.G = g1.f.G().B(this.C);
        this.f31806p0 = AccountUtil_.getInstance_(this.E).getAccountData();
        DownloadTask downloadTask = this.G;
        if (downloadTask != null) {
            this.f31789b.setText(downloadTask.getShowName());
        }
        com.join.mgps.adapter.w1 w1Var = new com.join.mgps.adapter.w1(this, this.f31822x0, this);
        this.f31820w0 = w1Var;
        this.f31811s.setAdapter((ListAdapter) w1Var);
        this.f31811s.setOverScrollMode(2);
        int dimension = (int) getResources().getDimension(R.dimen.wdp916);
        int dimension2 = (int) getResources().getDimension(R.dimen.wdp667);
        int dimension3 = (int) getResources().getDimension(R.dimen.wdp27);
        int dimension4 = (int) getResources().getDimension(R.dimen.wdp343);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i2 = displayMetrics.heightPixels;
        if (Float.valueOf(displayMetrics.widthPixels).floatValue() / i2 > 1.7777778f) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimension4, -1);
            layoutParams.gravity = 1;
            this.f31819w.setLayoutParams(layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((dimension * (i2 - (dimension3 * 2))) / dimension2, -1);
        layoutParams2.leftMargin = dimension3;
        layoutParams2.topMargin = dimension3;
        layoutParams2.bottomMargin = dimension3;
        this.f31813t.setLayoutParams(layoutParams2);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.f31809r.setLayoutManager(linearLayoutManager);
        com.join.mgps.adapter.b2 b2Var = new com.join.mgps.adapter.b2(this);
        this.f31826z0 = b2Var;
        this.f31809r.setAdapter(b2Var);
        this.f31824y0 = new w2(this, this.C);
        this.f31795h.setLayoutManager(new GridLayoutManager(this.E, 4));
        this.f31795h.setAdapter(this.f31824y0);
        A();
        z();
        this.f31818v0 = new com.join.mgps.socket.fight.arena.a(this, new a());
        com.papa.sim.statistic.p.l(this).W0(Event.indexGameStart, AccountUtil_.getInstance_(this).getUid(), this.C, this.D, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l() {
        com.join.mgps.Util.i2.a(this).b("登录已失效请您重新登录");
        L();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void m() {
        W();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void n() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void o() {
        List<CommentAllListBean.GeneralCommentBean> list = this.F0;
        if (list != null && list.size() > 0) {
            V(1);
        } else {
            X(1);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        com.join.mgps.socket.fight.arena.a aVar = this.f31818v0;
        if (aVar != null) {
            aVar.w();
        }
        com.papa.sim.statistic.p.l(this).w0(this.G.getCrc_link_type_val(), this.f31806p0.getUid());
        com.join.mgps.socket.fight.arena.b bVar = this.f31816u0;
        if (bVar != null && bVar.d() != null) {
            this.f31816u0.d().A(this.M0);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.f31816u0;
        if (bVar2 != null) {
            bVar2.g();
            this.f31816u0.stopService();
            this.f31816u0 = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        K();
        this.f31806p0 = AccountUtil_.getInstance_(this).getAccountData();
        if (this.f31816u0 == null) {
            com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, this.L0);
            this.f31816u0 = bVar;
            bVar.bindService();
        }
        H();
        if (this.G != null) {
            com.papa.sim.statistic.p.l(this).d(g1.f.G().H(this.C, this), 0);
            com.papa.sim.statistic.p.l(this).d(g1.f.G().H(this.C, this), 1);
        }
        if (this.E0) {
            new Handler().postDelayed(new b(), 1500L);
        }
        com.join.mgps.adapter.b2 b2Var = this.f31826z0;
        if (b2Var != null) {
            b2Var.c();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.join.mgps.socket.fight.arena.b bVar = this.f31816u0;
        if (bVar != null && bVar.d() != null) {
            this.f31816u0.d().A(this.M0);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.f31816u0;
        if (bVar2 != null) {
            bVar2.g();
            this.f31816u0.stopService();
            this.f31816u0 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void p() {
        List<CommentAllListBean.GeneralCommentBean> list = this.F0;
        if (list != null && list.size() > 0) {
            V(2);
        } else {
            X(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void r() {
        char c4;
        char c5;
        com.papa.sim.statistic.p.l(this).Q(AccountUtil_.getInstance_(this).getUid());
        com.papa.sim.statistic.p.l(this).x(AccountUtil_.getInstance_(this).getUid(), this.C, "game_main");
        try {
            com.papa.sim.statistic.p.l(this).I0(this.C, Integer.parseInt(AccountUtil_.getInstance_(this).getUid()));
        } catch (Exception unused) {
        }
        GameInfoBean gameInfoBean = new GameInfoBean();
        gameInfoBean.setGame_id(this.C);
        GameMainV3DataBean gameMainV3DataBean = this.f31802n0;
        if (gameMainV3DataBean != null) {
            gameInfoBean.setGame_name(gameMainV3DataBean.getGame_info().getGame_name());
        }
        DownloadTask downloadTask = this.G;
        if (downloadTask != null && com.join.mgps.Util.d2.i(downloadTask.getFight_fun())) {
            String fight_fun = this.G.getFight_fun();
            char charAt = fight_fun.charAt(1);
            if (fight_fun.length() >= 7) {
                c5 = fight_fun.charAt(6);
                c4 = fight_fun.charAt(5) == '1' ? '1' : '0';
            } else {
                c4 = '0';
                c5 = '0';
            }
            if ('0' == charAt && '0' == c5 && c4 == '1') {
                F();
                return;
            }
        }
        GameRoomListActivity_.v4(this.E).b(true).c(gameInfoBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void t() {
        if (this.f31821x.getVisibility() != 0 && this.I0 != 0) {
            IntentUtil.getInstance().goForumGroupActivity(this, this.I0);
        } else {
            W();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void v() {
        int i2;
        int i4;
        GameMainV3DataBean gameMainV3DataBean = this.f31802n0;
        if (gameMainV3DataBean != null) {
            int silence_room_switch = gameMainV3DataBean.getNet_battle().getSilence_room_switch();
            if (silence_room_switch == 0) {
                UtilsMy.h(null, this.G, this.E, 0);
            } else {
                String fight_fun = this.G.getFight_fun();
                boolean z3 = com.join.mgps.Util.d2.i(fight_fun) && fight_fun.length() >= 7 && '1' == fight_fun.charAt(6);
                int max_battle_count = this.f31802n0.getGame_info() != null ? this.f31802n0.getGame_info().getMax_battle_count() : 0;
                if (silence_room_switch == 1) {
                    if (com.join.mgps.Util.d2.i(this.f31810r0) && (i4 = this.f31812s0) != 0) {
                        UtilsMy.j(this.G, this.E, 1, this.f31810r0, i4, this.f31814t0, max_battle_count);
                    } else {
                        UtilsMy.h(null, this.G, this.E, 0);
                    }
                } else if (silence_room_switch == 2 && z3) {
                    if (com.join.mgps.Util.d2.i(this.f31810r0) && (i2 = this.f31812s0) != 0) {
                        UtilsMy.j(this.G, this.E, 1, this.f31810r0, i2, this.f31814t0, max_battle_count);
                    } else {
                        UtilsMy.h(null, this.G, this.E, 0);
                    }
                } else {
                    UtilsMy.h(null, this.G, this.E, 0);
                }
            }
        } else {
            UtilsMy.h(null, this.G, this.E, 0);
        }
        com.papa.sim.statistic.p.l(this).F0(this.G.getCrc_link_type_val(), this.f31806p0.getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void y() {
        if (com.join.android.app.common.utils.f.j(this.E)) {
            CommentResponse<CommentAllListBean> b4 = this.A0.b(C());
            if (b4 != null) {
                this.F0 = b4.getData_info().getGeneral_comment();
                O();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void z() {
        ResultMessageBean<GameMainV3DataBean> messages;
        try {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this);
            String str = this.C;
            AccountBean accountBean = this.f31806p0;
            ResultMainBean<GameMainV3DataBean> G = this.f31808q0.G(requestBeanUtil.getGameMainData(str, accountBean != null ? accountBean.getUid() : 1));
            this.E0 = true;
            if (G == null || G.getFlag() != 1 || (messages = G.getMessages()) == null) {
                return;
            }
            GameMainV3DataBean data = messages.getData();
            Q(data);
            if (data.getGame_info() != null) {
                this.f31804o0 = data.getGame_info().getCommunity_multi_posts_id();
            }
            GameMainTable o3 = n1.u.n().o(this.C);
            if (o3 != null) {
                GameMainachieve achieve = data.getAchieve();
                GameMainDataBean gameMainDataBean = (GameMainDataBean) JsonMapper.getInstance().fromJson(o3.getGame_main_data(), GameMainDataBean.class);
                if (gameMainDataBean != null) {
                    GameMainachieve achieve2 = gameMainDataBean.getAchieve();
                    if (achieve != null && achieve2 != null) {
                        achieve.setLastShowVerTime(achieve2.getLastShowVerTime());
                    }
                }
                String json = JsonMapper.getInstance().toJson(data);
                o3.setGameid(this.C);
                o3.setGame_main_data(json);
                n1.u.n().update(o3);
            } else {
                GameMainTable gameMainTable = new GameMainTable();
                String json2 = JsonMapper.getInstance().toJson(data);
                gameMainTable.setGameid(this.C);
                gameMainTable.setGame_main_data(json2);
                n1.u.n().k(gameMainTable);
            }
            Z(data, true);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends Dialog {

        /* loaded from: classes3.dex */
        class a implements AdapterView.OnItemClickListener {
            a() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
                PspBattleServer pspBattleServer = GameMainNewActivity.this.I.get(i2);
                NetBattleStartGameDto netBattleStartGameDto = new NetBattleStartGameDto();
                netBattleStartGameDto.setServerIP(pspBattleServer.getIp());
                netBattleStartGameDto.setServerPort(pspBattleServer.getPort());
                netBattleStartGameDto.setGameID(GameMainNewActivity.this.C + "");
                netBattleStartGameDto.setUserID(AccountUtil_.getInstance_(GameMainNewActivity.this.E).getAccountData().getUid() + "");
                netBattleStartGameDto.setOldGame(0);
                netBattleStartGameDto.setClientIp(GameMainNewActivity.this.H);
                netBattleStartGameDto.setUserName(AccountUtil_.getInstance_(GameMainNewActivity.this.E).getAccountData().getNickname());
                netBattleStartGameDto.setUserIcon(AccountUtil_.getInstance_(GameMainNewActivity.this.E).getAccountData().getAvatarSrc());
                netBattleStartGameDto.setPorder(0);
                UtilsMy.k3(GameMainNewActivity.this.E, netBattleStartGameDto, GameMainNewActivity.this.G, 13);
            }
        }

        /* loaded from: classes3.dex */
        private class b extends BaseAdapter {
            private b() {
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return GameMainNewActivity.this.I.size();
            }

            @Override // android.widget.Adapter
            public Object getItem(int i2) {
                return GameMainNewActivity.this.I.get(i2);
            }

            @Override // android.widget.Adapter
            public long getItemId(int i2) {
                return i2;
            }

            @Override // android.widget.Adapter
            public View getView(int i2, View view, ViewGroup viewGroup) {
                if (view == null) {
                    view = LayoutInflater.from(GameMainNewActivity.this.E).inflate(R.layout.dialog_psp_item, (ViewGroup) null);
                }
                ((TextView) view.findViewById(R.id.name)).setText(GameMainNewActivity.this.I.get(i2).getServer_name());
                ((TextView) view.findViewById(R.id.count)).setText(GameMainNewActivity.this.I.get(i2).getPeople() + "人");
                return view;
            }

            /* synthetic */ b(g gVar, a aVar) {
                this();
            }
        }

        public g(Context context) {
            super(context);
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            requestWindowFeature(1);
            requestWindowFeature(-1);
            View inflate = LayoutInflater.from(GameMainNewActivity.this.E).inflate(R.layout.network_psp_dialog, (ViewGroup) null);
            ListView listView = (ListView) inflate.findViewById(R.id.listview);
            listView.setAdapter((ListAdapter) new b(this, null));
            listView.setOnItemClickListener(new a());
            setContentView(inflate);
        }

        protected g(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
            super(context, z3, onCancelListener);
        }

        public g(Context context, int i2) {
            super(context, i2);
        }
    }
}
