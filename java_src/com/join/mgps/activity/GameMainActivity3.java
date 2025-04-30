package com.join.mgps.activity;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.github.snowdream.android.app.downloader.b;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.adapter.w1;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.dialog.x;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.CloudListDataBean;
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
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.GameMainachieve;
import com.join.mgps.dto.GameMaingameinfo;
import com.join.mgps.dto.GameMasteryLevel;
import com.join.mgps.dto.GameTimeLevel;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.MulPostData;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.socket.fight.arena.a;
import com.join.mgps.socket.fight.arena.b;
import com.papa.sim.statistic.Event;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.battle.protocol.GameRoom;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.sharedpreferences.Pref;
@WindowFeature({1})
@EActivity(R.layout.activity_game_main_3)
@Fullscreen
/* loaded from: classes3.dex */
public class GameMainActivity3 extends FriendActivity implements w1.a {
    List<PlayGameTimeTable> A0;
    private DownloadTask B0;
    List<PspBattleServer> D0;
    i E0;
    com.join.mgps.rpc.k F0;
    GameMainV4DataBean G0;
    private String H0;
    AccountBean I0;
    com.join.mgps.rpc.j J0;
    private com.join.mgps.socket.fight.arena.b N0;
    private com.join.mgps.socket.fight.arena.a O0;
    private com.join.mgps.adapter.w1 P0;
    com.join.mgps.rpc.e R0;
    com.join.mgps.rpc.c S0;
    private com.join.mgps.adapter.e2 T0;
    private EmuOutResultReceiver U0;
    com.github.snowdream.android.app.downloader.b V0;
    private b.InterfaceC0098b W0;
    com.join.mgps.dialog.x X0;
    @Pref

    /* renamed from: d1  reason: collision with root package name */
    PrefDef_ f31647d1;

    /* renamed from: e1  reason: collision with root package name */
    com.join.mgps.rpc.h f31648e1;

    /* renamed from: f1  reason: collision with root package name */
    int f31649f1;

    /* renamed from: l1  reason: collision with root package name */
    List<RomArchived> f31655l1;
    @Extra

    /* renamed from: o0  reason: collision with root package name */
    String f31658o0;

    /* renamed from: o1  reason: collision with root package name */
    ArchiveNumDataBean f31659o1;
    @Extra

    /* renamed from: p0  reason: collision with root package name */
    String f31660p0;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    View f31661q0;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    TextView f31662r0;
    @ViewById

    /* renamed from: s0  reason: collision with root package name */
    TextView f31663s0;
    @ViewById

    /* renamed from: t0  reason: collision with root package name */
    View f31664t0;

    /* renamed from: u0  reason: collision with root package name */
    View f31665u0;
    @ViewById

    /* renamed from: v0  reason: collision with root package name */
    GridView f31666v0;
    @ViewById

    /* renamed from: w0  reason: collision with root package name */
    SimpleDraweeView f31667w0;
    @ViewById

    /* renamed from: x0  reason: collision with root package name */
    View f31668x0;
    @ViewById

    /* renamed from: y0  reason: collision with root package name */
    RecyclerView f31669y0;

    /* renamed from: z0  reason: collision with root package name */
    private Context f31670z0;
    private String C0 = "";
    private String K0 = "";
    private int L0 = 0;
    private String M0 = "";
    private List<DynamicEntranceBean> Q0 = new ArrayList();
    Map<String, CloudListDataBean> Y0 = new HashMap();
    int Z0 = 1;

    /* renamed from: a1  reason: collision with root package name */
    int f31644a1 = 0;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f31645b1 = false;

    /* renamed from: c1  reason: collision with root package name */
    private List<CommentAllListBean.GeneralCommentBean> f31646c1 = new ArrayList();

    /* renamed from: g1  reason: collision with root package name */
    List<GameMainCommunityBean.PostsBean> f31650g1 = new ArrayList();

    /* renamed from: h1  reason: collision with root package name */
    private CountDownTimer f31651h1 = new e(com.join.mgps.data.c.f47286a, 1000);

    /* renamed from: i1  reason: collision with root package name */
    private final b.InterfaceC0228b f31652i1 = new f();

    /* renamed from: j1  reason: collision with root package name */
    private final SocketListener.NotifyObserver f31653j1 = new g();

    /* renamed from: k1  reason: collision with root package name */
    public boolean f31654k1 = false;

    /* renamed from: m1  reason: collision with root package name */
    public boolean f31656m1 = true;

    /* renamed from: n1  reason: collision with root package name */
    public boolean f31657n1 = true;

    /* loaded from: classes3.dex */
    public class EmuOutResultReceiver extends BroadcastReceiver {
        public EmuOutResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameMainActivity3.this.e2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends a.b0 {
        a() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void w0(int i2, int i4, Object obj) {
            super.w0(i2, i4, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements x.c {
        b() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x xVar) {
            xVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements x.c {
        c() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x xVar) {
            GameMainActivity3.this.V0.i();
            xVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GameRoomActivity.x {
        d() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
            GameMainActivity3.this.B2();
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            GameMainActivity3.this.B2();
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* loaded from: classes3.dex */
    class e extends CountDownTimer {
        e(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            GameMainActivity3.this.i2();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
        }
    }

    /* loaded from: classes3.dex */
    class f extends b.c {
        f() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void a() {
            super.a();
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
            super.c();
            if (GameMainActivity3.this.N0 == null || GameMainActivity3.this.N0.d() == null) {
                return;
            }
            GameMainActivity3.this.N0.d().z(GameMainActivity3.this.f31653j1);
        }
    }

    /* loaded from: classes3.dex */
    class g implements SocketListener.NotifyObserver {
        g() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (GameMainActivity3.this.l2()) {
                return;
            }
            int i2 = socketError.errorType;
            if (i2 == 6 || i2 == 2) {
                GameMainActivity3.this.z2();
            } else if (i2 == 5) {
                GameMainActivity3.this.z2();
            } else if (i2 == 3 || i2 == 4) {
                GameMainActivity3.this.z2();
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            if (GameMainActivity3.this.l2()) {
                return;
            }
            if (arenaResponse.responseCode == 0) {
                GameMainActivity3.this.handleFailure(arenaResponse);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                GameMainActivity3.this.T1();
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM) || arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                GameMainActivity3.this.i2();
                GameRoom gameRoom = (GameRoom) arenaResponse.data;
                if (GameMainActivity3.this.N0 != null && GameMainActivity3.this.N0.d() != null) {
                    GameMainActivity3.this.N0.d().E(null);
                }
                if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                    GameMainActivity3.this.J1();
                    GameRoomActivity_.u3(GameMainActivity3.this).d(gameRoom.getGameName()).i(gameRoom).c("game_main").start();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements b.InterfaceC0098b {
        h() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onError(String str) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            int i2 = gameMainActivity3.f31644a1 + 1;
            gameMainActivity3.f31644a1 = i2;
            if (gameMainActivity3.Z0 == i2) {
                gameMainActivity3.X0.dismiss();
            }
            GameMainActivity3.this.V0.l(str);
            CloudListDataBean cloudListDataBean = GameMainActivity3.this.Y0.get(str);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            cloudListDataBean.setStatus(6);
            eVar.f(cloudListDataBean);
            eVar.j(6);
            org.greenrobot.eventbus.c.f().o(eVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onFinish(String str) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            if (gameMainActivity3.Z0 == gameMainActivity3.f31644a1) {
                gameMainActivity3.X0.dismiss();
            }
            GameMainActivity3 gameMainActivity32 = GameMainActivity3.this;
            gameMainActivity32.f31644a1++;
            gameMainActivity32.V0.l(str);
            CloudListDataBean cloudListDataBean = GameMainActivity3.this.Y0.get(str);
            if (cloudListDataBean == null) {
                return;
            }
            if (cloudListDataBean.getArchiveFilePath().contains(com.join.mgps.Util.u.f27849h)) {
                GameMainActivity3.this.O1(cloudListDataBean);
                return;
            }
            CloudDownRecoderTable cloudDownRecoderTable = new CloudDownRecoderTable();
            cloudDownRecoderTable.setGameId(GameMainActivity3.this.f31658o0);
            cloudDownRecoderTable.setFilePath(cloudListDataBean.getArchiveFilePath());
            cloudDownRecoderTable.setFileName(cloudListDataBean.getArchiveFileName());
            cloudDownRecoderTable.setMd5(cloudListDataBean.getFileMd5());
            n1.i.o().k(cloudDownRecoderTable);
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            cloudListDataBean.setStatus(0);
            eVar.f(cloudListDataBean);
            eVar.j(0);
            org.greenrobot.eventbus.c.f().o(eVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onProgress(String str, int i2, String str2) {
            CloudListDataBean cloudListDataBean = GameMainActivity3.this.Y0.get(str);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            cloudListDataBean.setStatus(3);
            eVar.f(cloudListDataBean);
            eVar.j(3);
            eVar.g(str2);
            eVar.i(i2);
            eVar.h(UtilsMy.d((cloudListDataBean.getFileSize() * i2) / 100) + net.lingala.zip4j.util.e.F0 + UtilsMy.d(cloudListDataBean.getFileSize()) + "K");
            org.greenrobot.eventbus.c.f().o(eVar);
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            int i4 = gameMainActivity3.Z0;
            if (i4 > 1) {
                if (i4 != 0) {
                    gameMainActivity3.X0.c(GameMainActivity3.this.f31644a1 + net.lingala.zip4j.util.e.F0 + GameMainActivity3.this.Z0, eVar.b(), eVar.d());
                    return;
                }
                return;
            }
            com.join.mgps.dialog.x xVar = gameMainActivity3.X0;
            if (xVar != null) {
                xVar.c(eVar.c(), eVar.b() + "/S", eVar.d());
            }
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onStart(String str) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            int i2 = gameMainActivity3.Z0;
            if (i2 == 1 || i2 == 0) {
                return;
            }
            com.join.mgps.dialog.x xVar = gameMainActivity3.X0;
            xVar.c(GameMainActivity3.this.f31644a1 + net.lingala.zip4j.util.e.F0 + GameMainActivity3.this.Z0, "0K", 100 / GameMainActivity3.this.Z0);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onStop(String str) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            int i2 = gameMainActivity3.f31644a1 + 1;
            gameMainActivity3.f31644a1 = i2;
            if (gameMainActivity3.Z0 == i2) {
                gameMainActivity3.X0.dismiss();
            }
            GameMainActivity3.this.V0.l(str);
            CloudListDataBean cloudListDataBean = GameMainActivity3.this.Y0.get(str);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            cloudListDataBean.setStatus(6);
            eVar.f(cloudListDataBean);
            eVar.j(6);
            org.greenrobot.eventbus.c.f().o(eVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onWait(String str) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void updateSize(String str, long j4) {
        }
    }

    private void C2(int i2) {
        GameMaingameinfo gameInfo;
        if (this.f31646c1.size() < i2 || (gameInfo = this.G0.getGameInfo()) == null) {
            return;
        }
        CommentDetailActivity_.k2(this.f31670z0).d(this.f31658o0).b(this.f31646c1.get(i2 - 1).getId()).f(gameInfo.getGame_plugin_num()).a(Integer.valueOf(gameInfo.getGame_bespeak_switch()).intValue()).e(gameInfo.getGame_is_started()).h(0).g(gameInfo.getGame_package()).c(gameInfo.getGame_comment_score_switch()).start();
    }

    private void E2(int i2) {
        if (this.f31650g1.size() >= i2) {
            int pid = this.f31650g1.get(i2 - 1).getPid();
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.i0.w0(this.f31670z0, forumPostsBean, new ExtBean("0", pid + "", "-1"));
        }
    }

    private void G2(boolean z3) {
        char c4;
        char c5;
        String fight_fun = this.B0.getFight_fun();
        if (com.join.mgps.Util.d2.i(fight_fun)) {
            this.Q0.clear();
            this.P0.b();
            if (fight_fun.length() >= 2) {
                char charAt = fight_fun.charAt(1);
                if (fight_fun.length() >= 7) {
                    c4 = fight_fun.charAt(6);
                    if (fight_fun.charAt(5) == '1') {
                        c5 = '1';
                        if ('1' != charAt || '1' == c4) {
                            this.f31664t0.setVisibility(0);
                            this.f31663s0.setVisibility(0);
                        } else if ('0' == charAt && '0' == c4 && c5 == '1') {
                            this.f31664t0.setVisibility(0);
                            this.f31663s0.setVisibility(0);
                        } else {
                            this.f31664t0.setVisibility(0);
                            this.f31663s0.setVisibility(8);
                        }
                    }
                } else {
                    c4 = '0';
                }
                c5 = '0';
                if ('1' != charAt) {
                }
                this.f31664t0.setVisibility(0);
                this.f31663s0.setVisibility(0);
            }
            if (fight_fun.length() > 12 && n2(this, this.B0) && fight_fun.charAt(12) == '1') {
                this.Q0.add(new DynamicEntranceBean("排位赛", "NEW", 1));
            }
            if (fight_fun.length() > 14 && n2(this, this.B0) && fight_fun.charAt(14) == '1') {
                this.Q0.add(new DynamicEntranceBean("排位赛", "NEW", 14));
            }
            if (fight_fun.length() > 4 && fight_fun.charAt(4) == '1') {
                this.Q0.add(new DynamicEntranceBean("练习模式", "", 5));
            }
            if (fight_fun.length() >= 4 && fight_fun.charAt(3) == '1') {
                this.Q0.add(new DynamicEntranceBean("约战", "", 2));
            }
            if (fight_fun.length() >= 1 && '1' == fight_fun.charAt(0)) {
                this.Q0.add(new DynamicEntranceBean("本地对战", "", 3));
            }
        }
        if (this.G0 != null) {
            this.f31665u0.setVisibility(8);
            t2(true);
            GameMaingameinfo gameInfo = this.G0.getGameInfo();
            if (gameInfo != null) {
                String game_back_ground_img = gameInfo.getGame_back_ground_img();
                if (!com.join.mgps.Util.d2.h(game_back_ground_img)) {
                    this.f31667w0.setImageURI(game_back_ground_img);
                }
                this.f31649f1 = gameInfo.getCommunity_area_id();
                if (z3) {
                    if (!com.join.mgps.Util.d2.h(this.H0)) {
                        c2(this.H0);
                    } else if (this.f31649f1 != 0) {
                        Z1();
                    } else {
                        X1();
                    }
                }
            }
            if (this.T0 != null) {
                this.T0.n(this.G0.getMemberInfo());
                this.T0.m(this.G0.getMemberFun());
            }
            GameMainNetBattle netBattle = this.G0.getNetBattle();
            if (netBattle != null) {
                TextView textView = this.f31663s0;
                StringBuilder sb = new StringBuilder();
                sb.append(netBattle.getNumber() < 0 ? 0 : netBattle.getNumber());
                sb.append("房");
                textView.setText(sb.toString());
                DownloadTask downloadTask = this.B0;
                if (downloadTask != null && !downloadTask.isFightFun()) {
                    this.f31663s0.setVisibility(8);
                } else {
                    this.f31663s0.setVisibility(0);
                }
            } else {
                this.f31663s0.setVisibility(8);
            }
            GameMainV4DataBean.PlayGameInfoBean playGameInfo = this.G0.getPlayGameInfo();
            if (playGameInfo != null) {
                int file_save_count = playGameInfo.getFile_save_count();
                if (playGameInfo.getFile_save_switch() == 1) {
                    List<DynamicEntranceBean> list = this.Q0;
                    list.add(new DynamicEntranceBean("云存档", file_save_count + "", 4));
                }
            }
            this.T0.o(this.G0.getRecommendAdList());
            return;
        }
        this.f31665u0.setVisibility(0);
        t2(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J1() {
        CountDownTimer countDownTimer = this.f31651h1;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    public static long M1(String str, String str2) {
        try {
            return new SimpleDateFormat(str2).parse(str).getTime();
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0L;
        }
    }

    private void Q1() {
        com.papa.sim.statistic.p.l(this).U0(Event.startArchiveManagement, AccountUtil_.getInstance_(this).getUid(), this.f31658o0, "1");
        DocumentManageActivity_.q1(this.f31670z0).a(1).b(this.f31658o0).start();
    }

    private void R1() {
        ApFightActivity_.L0(this.f31670z0).a(this.f31658o0).start();
        com.papa.sim.statistic.p.l(this).v0(this.B0.getCrc_link_type_val(), this.I0.getUid());
    }

    private void S1(int i2) {
        MobclickAgent.onEvent(this.f31670z0, "onEnterQualifying");
        if (com.join.android.app.common.utils.f.j(this)) {
            if (UtilsMy.P(this.f31670z0, this.B0) == null) {
                Toast.makeText(this, "正在下载插件...", 1).show();
                i2();
                return;
            } else if (this.G0 == null) {
                return;
            } else {
                GamePaiWeiActivty_.o0(this.f31670z0).a(this.f31658o0).b(this.G0.getGameInfo().getMax_battle_count()).c(i2).start();
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("无网络连接");
    }

    private void V1() {
        UtilsMy.h(null, this.B0, this, 3);
        com.papa.sim.statistic.p.l(this).Q0(this.B0.getCrc_link_type_val(), this.I0.getUid());
        com.papa.sim.statistic.p.l(this).x0(this.B0.getCrc_link_type_val(), this.I0.getUid());
    }

    private ArchiveColudArgs W1() {
        if (this.I0 == null) {
            return RequestBeanUtil.getInstance(this.f31670z0).getArchiveNum("", "", this.f31658o0);
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this.f31670z0);
        return requestBeanUtil.getArchiveNum(this.I0.getUid() + "", this.I0.getToken(), this.f31658o0);
    }

    private void j2() {
        if (this.f30863l) {
            return;
        }
        this.V0 = com.github.snowdream.android.app.downloader.b.e();
        h hVar = new h();
        this.W0 = hVar;
        this.V0.m(hVar);
        this.V0.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l2() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    private boolean m2() {
        return getWindow().getDecorView().getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z2() {
        try {
            Toast.makeText(this, "网络不稳定，请重试", 0).show();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void A2() {
        if (UtilsMy.y1(this.B0.getRomType()).getDown_type() == 2) {
            B2();
        } else if (new PrefDef_(this.f31670z0).launch_game_switch().d().booleanValue()) {
            UtilsMy.p0(this.f31670z0, 1, this.f31658o0, "RAW_SIMULATOR", new d());
        } else {
            B2();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void B2() {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.GameMainActivity3.B2():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D2() {
        GameMainV4DataBean gameMainV4DataBean = this.G0;
        if (gameMainV4DataBean == null || gameMainV4DataBean.getGameInfo() == null) {
            return;
        }
        GameMaingameinfo gameInfo = this.G0.getGameInfo();
        if (!TextUtils.isEmpty(gameInfo.getGame_comment_score_switch()) && !gameInfo.getGame_comment_score_switch().equals("0")) {
            CommentAllListActivity_.f1(this.f31670z0).f(this.f31658o0).i(gameInfo.getGame_package()).h(gameInfo.getGame_plugin_num()).a(Integer.valueOf(gameInfo.getGame_bespeak_switch()).intValue()).g(gameInfo.getGame_is_started()).j(0).d(gameInfo.getGame_comment_score_switch()).start();
        } else {
            ForumIndexActivity_.G0(this).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F2(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G1() {
        char c4;
        char c5;
        com.papa.sim.statistic.p.l(this).Q(AccountUtil_.getInstance_(this).getUid());
        com.papa.sim.statistic.p.l(this).x(AccountUtil_.getInstance_(this).getUid(), this.f31658o0, "game_main");
        try {
            com.papa.sim.statistic.p.l(this).I0(this.f31658o0, Integer.parseInt(AccountUtil_.getInstance_(this).getUid()));
        } catch (Exception unused) {
        }
        GameInfoBean gameInfoBean = new GameInfoBean();
        gameInfoBean.setGame_id(this.f31658o0);
        GameMainV4DataBean gameMainV4DataBean = this.G0;
        if (gameMainV4DataBean != null && gameMainV4DataBean.getGameInfo() != null) {
            gameInfoBean.setGame_name(this.G0.getGameInfo().getGame_name());
        }
        DownloadTask downloadTask = this.B0;
        if (downloadTask != null && com.join.mgps.Util.d2.i(downloadTask.getFight_fun())) {
            String fight_fun = this.B0.getFight_fun();
            char charAt = fight_fun.charAt(1);
            if (fight_fun.length() >= 7) {
                c5 = fight_fun.charAt(6);
                c4 = fight_fun.charAt(5) == '1' ? '1' : '0';
            } else {
                c4 = '0';
                c5 = '0';
            }
            if ('0' == charAt && '0' == c5 && c4 == '1') {
                f2();
                return;
            }
        }
        DownloadTask downloadTask2 = this.B0;
        if (downloadTask2 != null && downloadTask2.isFightFun()) {
            K1();
            GameRoomListActivity_.v4(this.f31670z0).b(true).c(gameInfoBean).start();
            return;
        }
        NewArenaMainActivty_.F1(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H1() {
        String str;
        GameMainV4DataBean gameMainV4DataBean = this.G0;
        if (gameMainV4DataBean == null || gameMainV4DataBean.getMemberInfo() == null) {
            return;
        }
        GameMainV4DataBean.MemberInfoBean memberInfo = this.G0.getMemberInfo();
        if (Integer.parseInt(memberInfo.getLink_type()) == 4 && memberInfo.getLink_type_val() != null && memberInfo.getLink_type_val().startsWith(com.facebook.common.util.f.f11765a)) {
            String link_type_val = memberInfo.getLink_type_val();
            if (link_type_val.contains("?")) {
                str = link_type_val + "&game_id=" + this.f31658o0;
            } else {
                str = link_type_val + "?game_id=" + this.f31658o0;
            }
            memberInfo.setLink_type_val(str);
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(Integer.valueOf(memberInfo.getLink_type()).intValue());
        intentDateBean.setJump_type(Integer.valueOf(memberInfo.getJump_type()).intValue());
        intentDateBean.setLink_type_val(memberInfo.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.f31670z0, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H2(CloudListDataBean cloudListDataBean) {
        com.join.mgps.event.e eVar = new com.join.mgps.event.e();
        cloudListDataBean.setStatus(0);
        eVar.f(cloudListDataBean);
        eVar.j(0);
        org.greenrobot.eventbus.c.f().o(eVar);
    }

    void I1() {
        GameMainV4DataBean gameMainV4DataBean = this.G0;
        if (gameMainV4DataBean == null || gameMainV4DataBean.getGameMasteryLevel() == null) {
            return;
        }
        try {
            GameMasteryLevel gameMasteryLevel = this.G0.getGameMasteryLevel();
            int i2 = 0;
            int[] iArr = new int[0];
            int current_lv_times = gameMasteryLevel.getCurrent_lv_times();
            int next_lv_times = gameMasteryLevel.getNext_lv_times();
            if (!TextUtils.isEmpty(gameMasteryLevel.getLevel()) && !gameMasteryLevel.getLevel().equals("传说") && !gameMasteryLevel.getLevel().equals("宗师") && !gameMasteryLevel.getLevel().equals("精英")) {
                gameMasteryLevel.getLevel().equals("资深");
            }
            try {
                ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(this.f31647d1.gameTimeLvCfg().d(), JsonMapper.getInstance().createCollectionType(ArrayList.class, GameTimeLevel.class));
                if (arrayList != null) {
                    iArr = new int[arrayList.size()];
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        iArr[i4] = ((GameTimeLevel) arrayList.get(i4)).getVal();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            int i5 = current_lv_times + 0;
            int i6 = 0;
            while (i2 < iArr.length) {
                int i7 = i2 + 1;
                int i8 = iArr[i2] - i6;
                if (i5 > i8 && i2 != iArr.length - 1) {
                    i5 -= i8;
                    next_lv_times = i8;
                    i6 = iArr[i2];
                    i2 = i7;
                }
                next_lv_times = i8;
            }
            Math.min(i5, next_lv_times);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I2(GameMainV4DataBean gameMainV4DataBean, boolean z3) {
        this.G0 = gameMainV4DataBean;
        GameMaingameinfo gameInfo = gameMainV4DataBean.getGameInfo();
        if (gameInfo != null) {
            this.f31662r0.setText(gameInfo.getGame_name());
        }
        G2(z3);
    }

    void K1() {
        if (this.N0.d() != null) {
            this.N0.d().A(this.f31653j1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L1() {
        com.join.mgps.Util.i2.a(this).b("登录已失效请您重新登录");
        k2();
    }

    void N1() {
        if (this.f31665u0.getVisibility() != 0 && this.f31649f1 != 0) {
            IntentUtil.getInstance().goForumGroupActivity(this, this.f31649f1);
        } else {
            D2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O1(CloudListDataBean cloudListDataBean) {
        DownloadTask B = g1.f.G().B(this.f31658o0);
        String v3 = UtilsMy.v3(B.getGameZipPath());
        String w12 = UtilsMy.w1(Integer.parseInt(B.getPlugin_num()));
        File file = new File(com.join.mgps.Util.u.f27845d);
        StringBuilder sb = new StringBuilder();
        sb.append(file.getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append("papa91");
        sb.append(str);
        sb.append(w12);
        sb.append(str);
        String sb2 = sb.toString();
        String substring = v3.substring(v3.lastIndexOf(47) + 1, v3.length());
        File file2 = new File(sb2 + substring);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        String str2 = new String(sb2 + substring + str + cloudListDataBean.getArchiveFileName());
        if (new File(cloudListDataBean.getArchiveFilePath()).exists()) {
            boolean c4 = com.join.mgps.Util.g0.c(cloudListDataBean.getArchiveFilePath(), str2);
            P1(cloudListDataBean.getArchiveCover(), file2.getAbsolutePath() + str, cloudListDataBean.getArchiveFileName() + ".png");
            if (c4) {
                UtilsMy.delete(new File(cloudListDataBean.getArchiveFilePath()));
                cloudListDataBean.setArchiveFilePath(str2);
            }
            H2(cloudListDataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P1(String str, String str2, String str3) {
        File file;
        File file2 = null;
        try {
            File file3 = new File(str2);
            if (!file3.exists()) {
                file3.mkdirs();
            }
            file = new File(str2 + str3);
        } catch (Exception e4) {
            e = e4;
        }
        try {
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            file.createNewFile();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoInput(true);
            if (httpURLConnection.getResponseCode() == 200) {
                InputStream inputStream = httpURLConnection.getInputStream();
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        inputStream.close();
                        fileOutputStream.close();
                        return;
                    }
                }
            } else if (file.exists()) {
                UtilsMy.delete(file);
            }
        } catch (Exception e5) {
            e = e5;
            file2 = file;
            try {
                e.printStackTrace();
                if (file2 == null || !file2.exists()) {
                    return;
                }
                UtilsMy.delete(file2);
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T1() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData == null) {
                i2();
                return;
            }
            String token = accountData.getToken();
            ResultArenaBean<ArenaLobbyServer> P = com.join.mgps.rpc.impl.k.n0().P(accountData.getUid(), token);
            if (P == null || P.getError() != 0 || P.getData() == null) {
                return;
            }
            if (P.getData().getDisabled() != 0) {
                ArenaResponse arenaResponse = new ArenaResponse();
                arenaResponse.errorType = 1001;
                arenaResponse.errorInfo = "邀请失败：该玩家已被封禁！";
                handleFailure(arenaResponse);
                return;
            }
            U1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U1() {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (!IntentUtil.getInstance().goLoginBattle(this)) {
                J1();
                this.f31661q0.setVisibility(0);
                this.f31651h1.start();
                if (UtilsMy.P(this.f31670z0, this.B0) == null) {
                    Toast.makeText(this, "正在下载插件...", 1).show();
                    i2();
                    return;
                }
                com.join.mgps.socket.fight.arena.b bVar = this.N0;
                if (bVar != null && bVar.d() != null) {
                    if (this.N0.d().s()) {
                        com.wufan.friend.chat.c.u().V(null);
                        this.N0.f(ArenaRequestFactory.createRoom(ArenaConstants.REGISTER_TYPE_GAMEMAIN, this.f31658o0, 0, AccountUtil_.getInstance_(this).getAccountData().getUid(), true));
                    } else {
                        ArenaRequest login = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMEMAIN);
                        login.isRefreshing = true;
                        login.isElite = false;
                        this.N0.f(login);
                    }
                }
            }
            com.papa.sim.statistic.p.l(this).K0(this.B0.getCrc_link_type_val(), this.I0.getUid());
            return;
        }
        com.join.mgps.Util.i2.a(this).b("无网络连接");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X1() {
        if (com.join.android.app.common.utils.f.j(this.f31670z0)) {
            CommentResponse<CommentAllListBean> b4 = this.R0.b(a2());
            if (b4 != null) {
                this.f31646c1 = b4.getData_info().getGeneral_comment();
                r2();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Y1() {
        GameMainTable o3 = n1.u.n().o(this.f31658o0);
        if (o3 != null) {
            GameMainV4DataBean gameMainV4DataBean = (GameMainV4DataBean) JsonMapper.getInstance().fromJson(o3.getGame_main_data(), GameMainV4DataBean.class);
            if (gameMainV4DataBean != null && gameMainV4DataBean.getGameInfo() != null) {
                this.H0 = gameMainV4DataBean.getGameInfo().getCommunity_multi_posts_id();
            }
            if (gameMainV4DataBean != null) {
                I2(gameMainV4DataBean, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z1() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ResultResMainBean<GameMainCommunityBean> n4 = this.f31648e1.n(this.f31649f1);
                if (n4 == null || n4.getError() != 0 || n4.getData() == null) {
                    return;
                }
                List<GameMainCommunityBean.PostsBean> posts = n4.getData().getPosts();
                this.f31650g1.clear();
                if (posts != null && posts.size() > 0) {
                    String subject = posts.get(0).getSubject();
                    if (com.join.mgps.Util.d2.h(subject)) {
                        subject = posts.get(0).getMessage();
                    }
                    this.f31650g1.add(new GameMainCommunityBean.PostsBean(subject, posts.get(0).getPid()));
                    if (posts.size() > 1) {
                        String subject2 = posts.get(1).getSubject();
                        if (com.join.mgps.Util.d2.h(subject2)) {
                            subject2 = posts.get(1).getMessage();
                        }
                        this.f31650g1.add(new GameMainCommunityBean.PostsBean(subject2, posts.get(1).getPid()));
                    }
                }
                s2();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public RequestCommentAllListArgs a2() {
        this.I0 = AccountUtil_.getInstance_(this.f31670z0).getAccountData();
        String d4 = this.f31647d1.commentToken().d();
        AccountBean accountBean = this.I0;
        return RequestBeanUtil.getInstance(this.f31670z0).getRequestCommentAllList(1, 10, this.f31658o0, accountBean != null ? accountBean.getUid() : 0, d4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f31670z0 = this;
        setSystemUiHide(true);
        this.J0 = com.join.mgps.rpc.impl.h.L();
        this.F0 = com.join.mgps.rpc.impl.k.n0();
        this.f31648e1 = com.join.mgps.rpc.impl.f.A0();
        this.R0 = com.join.mgps.rpc.impl.d.m();
        this.S0 = com.join.mgps.rpc.impl.b.k();
        this.B0 = g1.f.G().B(this.f31658o0);
        this.I0 = AccountUtil_.getInstance_(this.f31670z0).getAccountData();
        DownloadTask downloadTask = this.B0;
        if (downloadTask != null) {
            this.f31662r0.setText(downloadTask.getShowName());
        }
        this.f31665u0 = new View(this);
        com.join.mgps.adapter.w1 w1Var = new com.join.mgps.adapter.w1(this, this.Q0, this);
        this.P0 = w1Var;
        this.f31666v0.setAdapter((ListAdapter) w1Var);
        this.f31666v0.setOverScrollMode(2);
        int dimension = (int) getResources().getDimension(R.dimen.wdp27);
        getResources().getDimension(R.dimen.wdp343);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams((((int) getResources().getDimension(R.dimen.wdp916)) * (getResources().getDisplayMetrics().heightPixels - (dimension * 2))) / ((int) getResources().getDimension(R.dimen.wdp667)), -1);
        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = dimension;
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = dimension;
        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = dimension;
        this.f31667w0.setLayoutParams(layoutParams);
        Y1();
        getData();
        this.O0 = new com.join.mgps.socket.fight.arena.a(this, new a());
        if (notchtools.geek.com.notchtools.b.o().c(getWindow())) {
            ((ConstraintLayout.LayoutParams) this.f31668x0.getLayoutParams()).setMarginStart(notchtools.geek.com.notchtools.b.o().e(getWindow()) + getResources().getDimensionPixelOffset(R.dimen.wdp10));
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.f31669y0.setLayoutManager(linearLayoutManager);
        com.join.mgps.adapter.e2 e2Var = new com.join.mgps.adapter.e2(this);
        this.T0 = e2Var;
        e2Var.setGameId(this.f31658o0);
        this.f31669y0.setAdapter(this.T0);
        com.papa.sim.statistic.p.l(this).W0(Event.indexGameStart, AccountUtil_.getInstance_(this).getUid(), this.f31658o0, this.f31660p0, 0);
        if (this.U0 == null) {
            this.U0 = new EmuOutResultReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(f1.a.U);
            registerReceiver(this.U0, intentFilter);
        }
        if (!this.f30863l) {
            j2();
            this.X0 = new com.join.mgps.dialog.x(this, R.style.HKDialogLoading).f("存档下载中").e("取消下载").b("后台运行").d(new c()).a(new b());
        }
        if (c1()) {
            return;
        }
        d2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b2() {
        if (com.join.android.app.common.utils.f.j(this.f31670z0)) {
            try {
                ForumResponse<ForumData.HomepageRecommendLabel> O = this.f31648e1.O(0, 1, AccountUtil_.getInstance_(this.f31670z0).getUid(), AccountUtil_.getInstance_(this.f31670z0).getToken());
                if (O == null || O.getError() != 0 || O.getData() == null) {
                    return;
                }
                List<ForumBean.ForumPostsBean> post_list = O.getData().getPost_list();
                this.f31650g1.clear();
                if (post_list != null && post_list.size() > 0) {
                    this.f31650g1.add(new GameMainCommunityBean.PostsBean(post_list.get(0).getSubject(), post_list.get(0).getPid()));
                    if (post_list.size() > 0) {
                        this.f31650g1.add(new GameMainCommunityBean.PostsBean(post_list.get(1).getSubject(), post_list.get(1).getPid()));
                    }
                }
                s2();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }

    @Override // com.join.mgps.activity.FriendActivity
    protected boolean c1() {
        DownloadTask B = g1.f.G().B(this.f31658o0);
        return B == null || !String.valueOf(ConstantIntEnum.GBA.value()).equals(B.getPlugin_num());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c2(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<MulPostData> L = this.f31648e1.L(str);
                if (L == null || L.getError() != 0 || L.getData() == null) {
                    return;
                }
                List<ForumBean.ForumPostsBean> posts_list = L.getData().getPosts_list();
                this.f31650g1.clear();
                if (posts_list != null && posts_list.size() > 0) {
                    this.f31650g1.add(new GameMainCommunityBean.PostsBean(posts_list.get(0).getSubject(), posts_list.get(0).getPid()));
                    if (posts_list.size() > 1) {
                        this.f31650g1.add(new GameMainCommunityBean.PostsBean(posts_list.get(1).getSubject(), posts_list.get(1).getPid()));
                    }
                }
                s2();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d2() {
        try {
            ArchiveNumDataBean f4 = this.S0.f(W1().getArgs());
            this.f31659o1 = f4;
            if (f4 == null || f4.getCode() != 600) {
                return;
            }
            this.f31647d1.getArchiveCoinPref().g(Integer.valueOf(this.f31659o1.getData_info().getArchiveCoin()));
            this.f31647d1.cloudVipLink().g(this.f31659o1.getData_info().getVipLink());
            DownloadTask B = g1.f.G().B(this.f31658o0);
            if (B != null) {
                this.f31655l1 = com.join.mgps.Util.f0.m(B.getPlugin_num(), B.getGameZipPath());
                if (B.getPlugin_num().equals("31")) {
                    boolean z3 = false;
                    boolean z4 = false;
                    for (RomArchived romArchived : this.f31655l1) {
                        if (romArchived.getFileName().contains("_v2")) {
                            z3 = true;
                        } else {
                            z4 = true;
                        }
                    }
                    Iterator<RomArchived> it2 = this.f31655l1.iterator();
                    while (it2.hasNext()) {
                        RomArchived next = it2.next();
                        if (z4 && !z3) {
                            this.f31656m1 = false;
                            if (!com.join.mgps.Util.j1.a(B.getPackageName())) {
                                it2.remove();
                            }
                        } else if (z4 && z3) {
                            if (com.join.mgps.Util.j1.a(B.getPackageName())) {
                                this.f31657n1 = false;
                                if (next.getFileName().contains("_v2")) {
                                    it2.remove();
                                }
                            } else if (!next.getFileName().contains("_v2")) {
                                it2.remove();
                            }
                        }
                    }
                }
                if (B.getPlugin_num().equals("33")) {
                    RomArchived romArchived2 = null;
                    long j4 = 0;
                    for (RomArchived romArchived3 : this.f31655l1) {
                        long M1 = M1(romArchived3.getArchivedTime(), "MM月dd日 HH:mm");
                        if (j4 == 0) {
                            romArchived2 = romArchived3;
                            j4 = M1;
                        }
                        if (j4 > M1) {
                            romArchived2 = romArchived3;
                            j4 = M1;
                        }
                    }
                    if (romArchived2 != null && romArchived2.getFileName().contains("vba")) {
                        u2(true);
                    }
                }
                List<RomArchived> list = this.f31655l1;
                if (list != null) {
                    F2(list.size());
                    return;
                } else {
                    F2(0);
                    return;
                }
            }
            F2(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e2() {
    }

    @Override // com.join.mgps.adapter.w1.a
    public void f0(DynamicEntranceBean dynamicEntranceBean) {
        int typeId = dynamicEntranceBean.getTypeId();
        if (typeId != 14) {
            switch (typeId) {
                case 1:
                    S1(1);
                    return;
                case 2:
                    T1();
                    return;
                case 3:
                    R1();
                    return;
                case 4:
                    Q1();
                    return;
                case 5:
                    V1();
                    return;
                case 6:
                    N1();
                    return;
                default:
                    return;
            }
        }
        S1(14);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f2() {
        try {
            GameWorldResponse<List<PspBattleServer>> v3 = this.F0.v();
            if (v3.getError() == 701) {
                L1();
            } else if (v3.getError() == 0) {
                this.D0 = v3.getData();
                y2();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1500)
    public void g2() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this);
            String str = this.f31658o0;
            AccountBean accountBean = this.I0;
            RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(str, 1, 1, accountBean != null ? accountBean.getUid() : 1);
            requestGameIdArgs.setGameId(this.f31658o0);
            requestGameIdArgs.setToken(AccountUtil_.getInstance_(this).getToken());
            requestModel.setArgs(requestGameIdArgs);
            ResponseModel<GameMainV4DataBean> D = this.J0.D(requestModel);
            this.f31645b1 = true;
            if (D == null || D.getFlag() != 1) {
                return;
            }
            GameMainV4DataBean data = D.getData();
            w2(data);
            if (data != null && data.getGameInfo() != null) {
                this.H0 = data.getGameInfo().getCommunity_multi_posts_id();
            }
            GameMainTable o3 = n1.u.n().o(this.f31658o0);
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
                o3.setGameid(this.f31658o0);
                o3.setGame_main_data(json);
                n1.u.n().update(o3);
            } else {
                GameMainTable gameMainTable = new GameMainTable();
                String json2 = JsonMapper.getInstance().toJson(data);
                gameMainTable.setGameid(this.f31658o0);
                gameMainTable.setGame_main_data(json2);
                n1.u.n().k(gameMainTable);
            }
            I2(data, true);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void h2(String str, int i2, int i4, String str2, String str3) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(str);
        intentDateBean.setLink_type(i2);
        intentDateBean.setJump_type(i4);
        intentDateBean.setCrc_link_type_val(str2);
        intentDateBean.setLink_type_val(str3);
        IntentUtil.getInstance().intentActivity(this.f31670z0, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleFailure(ArenaResponse arenaResponse) {
        i2();
        int i2 = arenaResponse.errorType;
        if (i2 == 16) {
            this.O0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "无法加入，你被禁止加入该房间", "确定");
        } else if (i2 == 17) {
            this.O0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "我知道了");
        } else if (i2 == 9) {
            this.O0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间人数已满你无法加入房间!", "确定");
        } else if (i2 == 7) {
            this.O0.D(com.join.mgps.socket.fight.arena.a.f52159j, 256, Integer.valueOf(arenaResponse.errorType), "密码输入错误，请重试!", "取消", "确定", arenaResponse);
        } else if (i2 == 8) {
            this.O0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间已经被解散!", "确定");
        } else if (i2 == 11) {
            this.O0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法创建房间!", "确定");
        } else if (i2 == 13) {
            this.O0.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法加入房间", "确定");
        } else if (i2 == 1001) {
            this.O0.D(com.join.mgps.socket.fight.arena.a.f52159j, Integer.valueOf((int) com.join.mgps.socket.fight.arena.a.f52158i), Integer.valueOf(arenaResponse.errorType), arenaResponse.errorInfo, "确定");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i2() {
        this.f31661q0.setVisibility(8);
    }

    void k2() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.f31670z0).flags(268435456)).start();
    }

    boolean n2(Context context, DownloadTask downloadTask) {
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

    void o2() {
        D2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f30860i = "GAME_HOME_PAGE";
        this.f30859h = this.f31658o0;
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        b.InterfaceC0098b interfaceC0098b;
        com.join.mgps.socket.fight.arena.a aVar = this.O0;
        if (aVar != null) {
            aVar.w();
        }
        if (this.B0 != null) {
            com.papa.sim.statistic.p.l(this).w0(this.B0.getCrc_link_type_val(), this.I0.getUid());
        }
        com.join.mgps.socket.fight.arena.b bVar = this.N0;
        if (bVar != null && bVar.d() != null) {
            this.N0.d().A(this.f31653j1);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.N0;
        if (bVar2 != null) {
            bVar2.g();
            this.N0.stopService();
            this.N0 = null;
        }
        EmuOutResultReceiver emuOutResultReceiver = this.U0;
        if (emuOutResultReceiver != null) {
            unregisterReceiver(emuOutResultReceiver);
        }
        super.onDestroy();
        com.github.snowdream.android.app.downloader.b bVar3 = this.V0;
        if (bVar3 == null || (interfaceC0098b = this.W0) == null) {
            return;
        }
        bVar3.j(interfaceC0098b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        if (TextUtils.isEmpty(intent.getStringExtra("gameId")) || TextUtils.equals(intent.getStringExtra("gameId"), this.f31658o0)) {
            return;
        }
        this.f31658o0 = intent.getStringExtra("gameId");
        this.f31660p0 = intent.getStringExtra("from");
        this.f30860i = "GAME_HOME_PAGE";
        this.f30859h = this.f31658o0;
        afterViews();
        super.onNewIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        i2();
        this.I0 = AccountUtil_.getInstance_(this).getAccountData();
        if (this.N0 == null) {
            com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, this.f31652i1);
            this.N0 = bVar;
            bVar.bindService();
        }
        g2();
        if (this.B0 != null) {
            com.papa.sim.statistic.p.l(this).d(g1.f.G().H(this.f31658o0, this), 0);
            com.papa.sim.statistic.p.l(this).d(g1.f.G().H(this.f31658o0, this), 1);
        }
        if (this.f30863l) {
            return;
        }
        j2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.join.mgps.socket.fight.arena.b bVar = this.N0;
        if (bVar != null && bVar.d() != null) {
            this.N0.d().A(this.f31653j1);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.N0;
        if (bVar2 != null) {
            bVar2.g();
            this.N0.stopService();
            this.N0 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65479h0})
    public void p2(Intent intent) {
        if (!this.f30863l && m2()) {
            this.Z0 = 1;
            this.f31644a1 = 1;
            CloudListDataBean cloudListDataBean = (CloudListDataBean) intent.getSerializableExtra("downCloud");
            this.Y0.put(cloudListDataBean.getArchiveFile(), cloudListDataBean);
            cloudListDataBean.setStatus(3);
            this.V0.b(new com.github.snowdream.android.app.downloader.c(cloudListDataBean.getArchiveFile(), cloudListDataBean.getArchiveFileName(), new File(cloudListDataBean.getArchiveFilePath()).getParent() + File.separator, cloudListDataBean.getFileSize()));
            org.greenrobot.eventbus.c.f().o(cloudListDataBean);
            this.X0.show();
            this.X0.c("1/" + UtilsMy.d(cloudListDataBean.getFileSize()) + "K", "0", 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.cloud.downCloud.all"})
    public void q2(Intent intent) {
        if (!this.f30863l && m2()) {
            List<CloudListDataBean> list = (List) intent.getSerializableExtra("downClouds");
            this.Z0 = list.size();
            com.join.mgps.dialog.x xVar = this.X0;
            if (xVar != null) {
                xVar.show();
                this.X0.c("1/" + list.size(), "0K", 1);
            }
            this.f31644a1 = 1;
            if (this.Z0 != 0) {
                this.X0.c("1/" + list.size(), "0K", 100 / this.Z0);
            }
            for (CloudListDataBean cloudListDataBean : list) {
                this.Y0.put(cloudListDataBean.getArchiveFile(), cloudListDataBean);
                String archiveFileName = cloudListDataBean.getArchiveFileName();
                StringBuilder sb = new StringBuilder();
                sb.append(com.join.mgps.Util.u.f27849h);
                String str = File.separator;
                sb.append(str);
                sb.append(cloudListDataBean.getArchiveFileName());
                cloudListDataBean.setArchiveFilePath(sb.toString());
                cloudListDataBean.setStatus(3);
                this.V0.b(new com.github.snowdream.android.app.downloader.c(cloudListDataBean.getArchiveFile(), archiveFileName, new File(cloudListDataBean.getArchiveFilePath()).getParent() + str, cloudListDataBean.getFileSize()));
                org.greenrobot.eventbus.c.f().o(cloudListDataBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r2() {
        if (this.f31646c1 == null) {
            this.f31665u0.setVisibility(0);
            t2(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s2() {
        if (this.f31650g1 != null) {
            this.f31665u0.setVisibility(8);
            t2(true);
            return;
        }
        this.f31665u0.setVisibility(0);
        t2(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t2(boolean z3) {
        int i2 = 0;
        while (true) {
            if (i2 >= this.Q0.size()) {
                break;
            }
            DynamicEntranceBean dynamicEntranceBean = this.Q0.get(i2);
            if (dynamicEntranceBean.getTypeId() == 6) {
                this.Q0.remove(dynamicEntranceBean);
                break;
            }
            i2++;
        }
        if (z3) {
            this.Q0.add(new DynamicEntranceBean("社区", "", 6));
        }
        this.P0.notifyDataSetChanged();
    }

    public void u2(boolean z3) {
        this.f31654k1 = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.wufun.cloud.game.main.showDownDialog"})
    public void v2() {
        if (!this.f30863l && this.V0.g() > 0) {
            this.X0.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w2(GameMainV4DataBean gameMainV4DataBean) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x2(OnlineCouponConfigBean onlineCouponConfigBean) {
        com.join.mgps.Util.a0.c0(this).U(this, onlineCouponConfigBean, 3);
        com.papa.sim.statistic.p.l(this).M1(Event.quitSingleSuccessUpRedBag, AccountUtil_.getInstance_(this).getAccountData().getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y2() {
        i iVar = this.E0;
        if (iVar != null && iVar.isShowing()) {
            this.E0.dismiss();
        }
        i iVar2 = new i(this.f31670z0, R.style.HKDialogLoading);
        this.E0 = iVar2;
        iVar2.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends Dialog {

        /* loaded from: classes3.dex */
        class a implements AdapterView.OnItemClickListener {
            a() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
                PspBattleServer pspBattleServer = GameMainActivity3.this.D0.get(i2);
                NetBattleStartGameDto netBattleStartGameDto = new NetBattleStartGameDto();
                netBattleStartGameDto.setServerIP(pspBattleServer.getIp());
                netBattleStartGameDto.setServerPort(pspBattleServer.getPort());
                netBattleStartGameDto.setGameID(GameMainActivity3.this.f31658o0 + "");
                netBattleStartGameDto.setUserID(AccountUtil_.getInstance_(GameMainActivity3.this.f31670z0).getAccountData().getUid() + "");
                netBattleStartGameDto.setOldGame(0);
                netBattleStartGameDto.setClientIp(GameMainActivity3.this.C0);
                netBattleStartGameDto.setUserName(AccountUtil_.getInstance_(GameMainActivity3.this.f31670z0).getAccountData().getNickname());
                netBattleStartGameDto.setUserIcon(AccountUtil_.getInstance_(GameMainActivity3.this.f31670z0).getAccountData().getAvatarSrc());
                netBattleStartGameDto.setPorder(0);
                UtilsMy.k3(GameMainActivity3.this.f31670z0, netBattleStartGameDto, GameMainActivity3.this.B0, 13);
            }
        }

        /* loaded from: classes3.dex */
        private class b extends BaseAdapter {
            private b() {
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return GameMainActivity3.this.D0.size();
            }

            @Override // android.widget.Adapter
            public Object getItem(int i2) {
                return GameMainActivity3.this.D0.get(i2);
            }

            @Override // android.widget.Adapter
            public long getItemId(int i2) {
                return i2;
            }

            @Override // android.widget.Adapter
            public View getView(int i2, View view, ViewGroup viewGroup) {
                if (view == null) {
                    view = LayoutInflater.from(GameMainActivity3.this.f31670z0).inflate(R.layout.dialog_psp_item, (ViewGroup) null);
                }
                ((TextView) view.findViewById(R.id.name)).setText(GameMainActivity3.this.D0.get(i2).getServer_name());
                ((TextView) view.findViewById(R.id.count)).setText(GameMainActivity3.this.D0.get(i2).getPeople() + "人");
                return view;
            }

            /* synthetic */ b(i iVar, a aVar) {
                this();
            }
        }

        public i(Context context) {
            super(context);
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            requestWindowFeature(1);
            requestWindowFeature(-1);
            View inflate = LayoutInflater.from(GameMainActivity3.this.f31670z0).inflate(R.layout.network_psp_dialog, (ViewGroup) null);
            ListView listView = (ListView) inflate.findViewById(R.id.listview);
            listView.setAdapter((ListAdapter) new b(this, null));
            listView.setOnItemClickListener(new a());
            setContentView(inflate);
        }

        protected i(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
            super(context, z3, onCancelListener);
        }

        public i(Context context, int i2) {
            super(context, i2);
        }
    }
}
