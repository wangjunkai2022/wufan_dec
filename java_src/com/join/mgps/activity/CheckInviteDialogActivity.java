package com.join.mgps.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArenaInviteBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.socket.fight.arena.a;
import com.join.mgps.socket.fight.arena.b;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.net_whole_invite_dialog)
/* loaded from: classes3.dex */
public class CheckInviteDialogActivity extends BaseActivity {

    /* renamed from: o0  reason: collision with root package name */
    public static String f28449o0 = null;

    /* renamed from: p0  reason: collision with root package name */
    public static String f28450p0 = null;

    /* renamed from: q0  reason: collision with root package name */
    public static String f28451q0 = null;

    /* renamed from: r0  reason: collision with root package name */
    public static String f28452r0 = null;

    /* renamed from: s0  reason: collision with root package name */
    public static final int f28453s0 = 0;

    /* renamed from: t0  reason: collision with root package name */
    public static final int f28454t0 = 1;

    /* renamed from: u0  reason: collision with root package name */
    public static final int f28455u0 = 2;

    /* renamed from: v0  reason: collision with root package name */
    public static ArenaInviteBean f28456v0;
    @ViewById
    LinearLayout A;
    private int E;
    private com.join.mgps.dialog.v0 F;
    private com.join.mgps.socket.fight.arena.a H;
    private com.join.mgps.socket.fight.arena.b I;
    com.join.mgps.rpc.d K;
    @Extra

    /* renamed from: a  reason: collision with root package name */
    String f28457a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f28458b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f28459c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Button f28460d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    SimpleDraweeView f28461e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f28462f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f28463g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    SimpleDraweeView f28464h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f28465i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f28466j;

    /* renamed from: k  reason: collision with root package name */
    private String f28467k;

    /* renamed from: l  reason: collision with root package name */
    private String f28468l;

    /* renamed from: m  reason: collision with root package name */
    private String f28469m;

    /* renamed from: n  reason: collision with root package name */
    private String f28470n;

    /* renamed from: n0  reason: collision with root package name */
    DetailResultBean f28471n0;

    /* renamed from: o  reason: collision with root package name */
    private String f28472o;

    /* renamed from: p  reason: collision with root package name */
    private String f28473p;

    /* renamed from: q  reason: collision with root package name */
    private String f28474q;

    /* renamed from: r  reason: collision with root package name */
    private String f28475r;

    /* renamed from: s  reason: collision with root package name */
    private Long f28476s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    LinearLayout f28477t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    LinearLayout f28478u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    LinearLayout f28479v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    LinearLayout f28480w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    TextView f28481x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f28482y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f28483z;
    Handler B = new Handler();
    Runnable C = new a();
    Runnable D = new b();
    private final SocketListener.NotifyObserver G = new f();
    com.join.mgps.customview.t J = null;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(CheckInviteDialogActivity.this).flags(268435456)).start();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity.this.H0(null);
        }
    }

    /* loaded from: classes3.dex */
    class c extends b.c {
        c() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
            super.c();
            CheckInviteDialogActivity.this.I.d().z(CheckInviteDialogActivity.this.G);
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.b0 {
        d() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void w0(int i2, int i4, Object obj) {
            super.w0(i2, i4, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements DialogInterface.OnDismissListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            CheckInviteDialogActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class f implements SocketListener.NotifyObserver {
        f() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            CheckInviteDialogActivity.this.showToast("网络异常！");
            CheckInviteDialogActivity.this.finish();
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            if (CheckInviteDialogActivity.this.T0()) {
                return;
            }
            if (arenaResponse.responseCode == 0) {
                CheckInviteDialogActivity.this.P0(arenaResponse);
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                CheckInviteDialogActivity.this.R0();
            } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SHARE_JOIN_ROOM)) {
                GameRoom gameRoom = (GameRoom) arenaResponse.data;
                if (gameRoom.getBattleArea().getNumber() == BattleArea.ALL.getNumber() || gameRoom.getBattleArea().getNumber() == CheckInviteDialogActivity.this.I.d().n().getNumber()) {
                    CheckInviteDialogActivity.this.I.d().E(null);
                    g1.f G = g1.f.G();
                    GameRoomActivity_.u3(CheckInviteDialogActivity.this).h(arenaResponse.joinSpectatorReason).d(G.B("" + gameRoom.getGameId()).getShowName()).i(gameRoom).start();
                    com.papa.sim.statistic.p.l(CheckInviteDialogActivity.this).w(AccountUtil_.getInstance_(CheckInviteDialogActivity.this).getUid(), gameRoom.getRoomId(), CheckInviteDialogActivity.f28450p0);
                    CheckInviteDialogActivity.this.finish();
                    return;
                }
                CheckInviteDialogActivity.this.V0(gameRoom);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements DialogInterface.OnDismissListener {
        g() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            CheckInviteDialogActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity.this.finish();
        }
    }

    private void J0() {
        com.join.mgps.customview.t tVar = this.J;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.J.dismiss();
    }

    private void Q0() {
        if (this.I.d().s()) {
            R0();
        } else {
            this.I.f(ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_SHARE_JOIN_ROOM));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean T0() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    private boolean U0(String str) {
        try {
            getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0(DetailResultBean detailResultBean) {
        if (detailResultBean == null) {
            g1.f G = g1.f.G();
            DownloadTask B = G.B(this.f28476s + "");
            if (B != null && B.getStatus() == 5) {
                this.f28482y = true;
                EMUApkTable n4 = n1.o.o().n(B.getPlugin_num());
                if (n4 != null) {
                    if (com.join.android.app.common.utils.h.t(this, n4, false, new String[0])) {
                        if (UtilsMy.q0(this, n4)) {
                            this.f28483z = false;
                            this.f28470n = n4.getLogo();
                            this.f28472o = n4.getApk_name();
                            this.f28473p = n4.getSize();
                        } else {
                            this.f28483z = true;
                        }
                    } else {
                        this.f28483z = false;
                        this.f28470n = n4.getLogo();
                        this.f28472o = n4.getApk_name();
                        this.f28473p = n4.getSize();
                    }
                } else {
                    this.f28483z = true;
                }
                W0();
                return;
            }
            this.f28482y = false;
            getData();
            return;
        }
        this.f28468l = detailResultBean.getGame_name();
        this.f28467k = detailResultBean.getIco_remote();
        this.f28469m = detailResultBean.getSize();
        this.f28482y = false;
        EMUApkTable n5 = n1.p.o().n(detailResultBean.getPlugin_num());
        if (n5 != null) {
            if (com.join.android.app.common.utils.h.t(this, n5, false, new String[0])) {
                if (UtilsMy.q0(this, n5)) {
                    this.f28483z = false;
                    this.f28470n = n5.getLogo();
                    this.f28472o = n5.getApk_name();
                    this.f28473p = n5.getSize();
                } else {
                    this.f28483z = true;
                }
            } else {
                this.f28483z = false;
                this.f28470n = n5.getLogo();
                this.f28472o = n5.getApk_name();
                this.f28473p = n5.getSize();
            }
        }
        W0();
    }

    void I0() {
        this.H.x().setOnDismissListener(new g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        this.B.removeCallbacks(this.C);
        this.B.removeCallbacks(this.D);
        f28449o0 = "";
        f28450p0 = "";
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        f28450p0 = "";
        this.f28459c.setText("我知道了");
        this.f28460d.setVisibility(8);
        this.f28477t.setVisibility(8);
        boolean z3 = this.f28482y;
        if (!z3 && !this.f28483z) {
            TextView textView = this.f28458b;
            textView.setText("正在下载" + this.f28468l + "、" + this.f28472o);
        } else if (!z3) {
            TextView textView2 = this.f28458b;
            textView2.setText("正在下载" + this.f28468l + "...");
        } else if (!this.f28483z) {
            TextView textView3 = this.f28458b;
            textView3.setText("正在下载" + this.f28472o);
        }
        this.f28481x.setVisibility(0);
        this.f28481x.setText("下载完成后，请再次复制\"约战口令\"即可快速加入约战~");
        if (!this.f28483z && this.f28482y) {
            g1.f G = g1.f.G();
            DownloadTask B = G.B(this.f28476s + "");
            if (B != null) {
                UtilsMy.V0(n1.o.o().n(B.getPlugin_num()), this);
            }
        } else if (UtilsMy.T0(this, this.f28471n0.getDownloadtaskDown())) {
        } else {
            if (this.f28471n0.getDown_status() == 5) {
                UtilsMy.R0(this, this.f28471n0.getDownloadtaskDown());
            } else {
                com.php25.PDownload.d.c(this.f28471n0.getDownloadtaskDown(), this);
            }
        }
    }

    public String M0(int i2) {
        return String.valueOf(Character.toChars(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        if (this.f28457a.contains("大厅对战")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(3);
            intentDateBean.setJump_type(3);
            intentDateBean.setObject(f28456v0);
            IntentUtil.getInstance().intentActivity(this, intentDateBean);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0() {
        f28449o0 = "";
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.I.e()) {
                Q0();
                return;
            } else {
                this.I.bindService();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(ArenaResponse arenaResponse) {
        showToast(com.join.mgps.socket.fight.arena.c.g(arenaResponse));
        int i2 = arenaResponse.errorType;
        if (i2 == 8) {
            this.H.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间已经被解散!", "确定");
            I0();
        } else if (i2 == 9) {
            this.H.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "房间已满，无法加入!", "确定");
            I0();
        } else if (i2 == 13) {
            this.H.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "铜板不足，无法加入房间", "确定");
            I0();
        } else if (i2 == 16) {
            this.H.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "无法加入，你被禁止加入该房间", "确定");
            I0();
        } else if (i2 != 17) {
            showToast(com.join.mgps.socket.fight.arena.c.g(arenaResponse));
            new Handler().postDelayed(new h(), 2000L);
        } else {
            this.H.D(com.join.mgps.socket.fight.arena.a.f52159j, 257, Integer.valueOf(arenaResponse.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "确定");
            I0();
        }
    }

    void R0() {
        this.I.d().C(ArenaRequestFactory.shareJoinRoom(ArenaConstants.REGISTER_TYPE_SHARE_JOIN_ROOM, Long.valueOf(f28450p0).longValue(), this.E, this.f28476s.longValue(), f28452r0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0(int i2) {
        this.f28458b.setText("正在进入【" + this.f28475r + "】挑战好友" + M0(9786) + this.f28474q + M0(9786));
        this.f28458b.setVisibility(0);
        this.f28477t.setVisibility(8);
        this.f28481x.setVisibility(8);
        this.A.setVisibility(8);
        this.f28460d.setVisibility(8);
        this.f28480w.setVisibility(0);
        if (AccountUtil_.getInstance_(this).getAccountData() == null) {
            this.B.postDelayed(this.C, i2);
        } else {
            this.B.postDelayed(this.D, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0(GameRoom gameRoom) {
        com.join.mgps.dialog.v0 v0Var = this.F;
        if (v0Var != null) {
            v0Var.a();
        }
        com.join.mgps.dialog.v0 v0Var2 = new com.join.mgps.dialog.v0(this);
        this.F = v0Var2;
        v0Var2.d("加入失败，您与" + gameRoom.getRoomId() + "房间不在同一战区\n请进入该游戏房间列表，并切换至【" + com.join.mgps.socket.fight.arena.c.d(gameRoom.getBattleArea()) + "】后再查找房间号进入");
        this.F.e();
        this.F.b().setOnDismissListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        if (this.f28483z && this.f28482y) {
            O0();
            return;
        }
        this.A.setVisibility(8);
        if (!this.f28482y) {
            this.f28460d.setVisibility(0);
            this.f28477t.setVisibility(0);
            this.f28480w.setVisibility(8);
            this.f28478u.setVisibility(0);
            UtilsMy.G2(this, this.f28467k, this.f28461e);
            this.f28462f.setText(this.f28468l);
            TextView textView = this.f28463g;
            textView.setText(this.f28469m + "M");
        }
        if (!this.f28483z) {
            this.f28460d.setVisibility(0);
            this.f28477t.setVisibility(0);
            this.f28480w.setVisibility(8);
            this.f28479v.setVisibility(0);
            UtilsMy.G2(this, this.f28470n, this.f28464h);
            this.f28465i.setText(this.f28472o);
            TextView textView2 = this.f28466j;
            textView2.setText(this.f28473p + "M");
        }
        boolean z3 = this.f28482y;
        if (!z3 && !this.f28483z) {
            TextView textView3 = this.f28458b;
            textView3.setText("你需要先下载游戏<" + this.f28468l + ">和" + this.f28472o);
            this.f28458b.setGravity(3);
        } else if (!z3) {
            TextView textView4 = this.f28458b;
            textView4.setText("你需要先下载游戏<" + this.f28468l + SimpleComparison.GREATER_THAN_OPERATION);
            this.f28458b.setGravity(17);
        } else if (this.f28483z) {
        } else {
            TextView textView5 = this.f28458b;
            textView5.setText("你需要先下载" + this.f28472o);
            this.f28458b.setGravity(17);
        }
    }

    boolean X0() {
        return (accountBean(this) == null || AccountUtil_.getInstance_(this).isTourist()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.K = com.join.mgps.rpc.impl.c.P1();
        setFinishOnTouchOutside(false);
        String str = this.f28457a;
        f28449o0 = str;
        try {
            this.f28475r = str.substring(str.indexOf("【") + 1, this.f28457a.indexOf("】"));
            int indexOf = this.f28457a.indexOf(M0(9786));
            this.f28474q = this.f28457a.substring(indexOf + 1, this.f28457a.lastIndexOf(M0(9786)));
            int indexOf2 = this.f28457a.indexOf("$");
            int lastIndexOf = this.f28457a.lastIndexOf("$");
            if (lastIndexOf < 0) {
                finish();
                return;
            }
            this.E = Integer.valueOf(this.f28457a.substring(indexOf2 + 3, lastIndexOf)).intValue();
            int indexOf3 = this.f28457a.indexOf(m.a.f72566d);
            int lastIndexOf2 = this.f28457a.lastIndexOf(m.a.f72566d);
            if (indexOf3 > 0) {
                f28452r0 = this.f28457a.substring(indexOf3 + 4, lastIndexOf2);
            }
            int indexOf4 = this.f28457a.indexOf("#");
            int lastIndexOf3 = this.f28457a.lastIndexOf("#");
            if (lastIndexOf3 < 0) {
                finish();
            }
            f28450p0 = this.f28457a.substring(indexOf4 + 3, lastIndexOf3);
            String str2 = this.f28457a;
            this.f28476s = Long.valueOf(str2.substring(str2.indexOf("￥") + 1, this.f28457a.lastIndexOf("￥")));
            ArenaInviteBean arenaInviteBean = new ArenaInviteBean();
            f28456v0 = arenaInviteBean;
            arenaInviteBean.setGameId(this.f28476s);
            f28456v0.setGroupId(f28450p0);
            f28456v0.setNo(f28451q0);
            f28456v0.setPassword(f28452r0);
            if (this.E > 0 && !TextUtils.isEmpty(f28450p0) && this.f28476s.longValue() > 0) {
                com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, new c());
                this.I = bVar;
                bVar.bindService();
                this.H = new com.join.mgps.socket.fight.arena.a(this, new d());
                S0(3000);
                return;
            }
            finish();
        } catch (Exception unused) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                int uid = accountData != null ? accountData.getUid() : 0;
                RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this);
                ResultMainBean<List<DetailResultBean>> R = this.K.R(requestBeanUtil.getAppDetialBean(this.f28476s + "", uid, null));
                if (R != null && R.getFlag() != 0) {
                    List<DetailResultBean> data = R.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        this.f28471n0 = detailResultBean;
                        H0(detailResultBean);
                        return;
                    }
                    return;
                } else if (R != null && R.getFlag() != 0) {
                    showLodingFailed();
                    return;
                } else {
                    showLodingFailed();
                    return;
                }
            } catch (Exception unused) {
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.socket.fight.arena.b bVar = this.I;
        if (bVar != null) {
            if (bVar.d() != null) {
                this.I.d().z(this.G);
            }
            this.I.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        S0(500);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.f28459c.setText("我知道了");
        this.f28460d.setVisibility(8);
        this.f28458b.setVisibility(8);
        this.f28477t.setVisibility(8);
        this.f28481x.setVisibility(8);
        this.f28480w.setVisibility(8);
        this.A.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (T0()) {
            return;
        }
        com.join.mgps.Util.i2.a(this).b(str);
    }
}
