package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.JsonObject;
import com.join.android.app.common.http.d;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.GamePaiWeiAdapter;
import com.join.mgps.adapter.v4;
import com.join.mgps.customview.AutoScrollViewPager;
import com.join.mgps.db.tables.GamePaiWeiUpTaskTable;
import com.join.mgps.dialog.b;
import com.join.mgps.dialog.t1;
import com.join.mgps.dialog.w1;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.GetPaiWeiPlayCodeBean;
import com.join.mgps.dto.PaiWeiUploadFileBean;
import com.join.mgps.dto.PaiWeiUploadFileNewBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.bean.PaiWeiDataBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.common.constants.IntentKeys;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arc.util.SignUtils;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.Request;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activty_game_paiwei)
/* loaded from: classes3.dex */
public class GamePaiWeiActivty extends Activity implements GamePaiWeiAdapter.b {
    @Extra
    int A;
    @Extra
    int B;
    int C;
    int D;
    int E;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f31868a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f31869b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f31870c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f31871d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f31872e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f31873f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f31874g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f31875h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f31876i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f31877j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f31878k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f31879l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f31880m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ListView f31881n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    ListView f31883o;

    /* renamed from: o0  reason: collision with root package name */
    private DownloadTask f31884o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    RelativeLayout f31885p;

    /* renamed from: p0  reason: collision with root package name */
    private v4 f31886p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    AutoScrollViewPager<PaiWeiDataBean.AdListBean> f31887q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    SimpleDraweeView f31889r;

    /* renamed from: s  reason: collision with root package name */
    private Context f31891s;

    /* renamed from: t  reason: collision with root package name */
    private GamePaiWeiAdapter f31893t;

    /* renamed from: u  reason: collision with root package name */
    private List<GamePaiWeiAdapter.d> f31895u;

    /* renamed from: u0  reason: collision with root package name */
    PrefDef_ f31896u0;

    /* renamed from: v0  reason: collision with root package name */
    RankRecordReceiver f31898v0;

    /* renamed from: w  reason: collision with root package name */
    com.join.mgps.rpc.k f31899w;

    /* renamed from: w0  reason: collision with root package name */
    com.join.mgps.dialog.t1 f31900w0;

    /* renamed from: x  reason: collision with root package name */
    com.join.mgps.rpc.k f31901x;
    @Bean

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.Util.b f31903y;
    @Extra

    /* renamed from: z  reason: collision with root package name */
    String f31905z;

    /* renamed from: v  reason: collision with root package name */
    private String f31897v = "币";
    private com.join.mgps.dialog.x0 F = null;
    private String G = "";
    private String H = "";
    private String I = "";
    private String J = "";
    private String K = "";

    /* renamed from: n0  reason: collision with root package name */
    private String f31882n0 = "";

    /* renamed from: q0  reason: collision with root package name */
    private int f31888q0 = 0;

    /* renamed from: r0  reason: collision with root package name */
    private final String f31890r0 = com.join.mgps.rpc.g.f51530m + "/lobby/game_rank/fileUpload";

    /* renamed from: s0  reason: collision with root package name */
    private final String f31892s0 = com.join.mgps.rpc.g.f51533n + "/v2/game/ranking/submitUpload";

    /* renamed from: t0  reason: collision with root package name */
    private final String f31894t0 = com.join.mgps.rpc.g.f51533n + "/v2/game/ranking/addPlayTimes";

    /* renamed from: x0  reason: collision with root package name */
    private List<GamePaiWeiUpTaskTable> f31902x0 = null;

    /* renamed from: y0  reason: collision with root package name */
    private int f31904y0 = 0;

    /* renamed from: z0  reason: collision with root package name */
    private int f31906z0 = 1;
    long A0 = 0;
    private GamePaiWeiUpTaskTable B0 = null;
    private List<PaiWeiDataBean.RankListBean> C0 = new ArrayList();
    private List<PaiWeiDataBean.RankListBean> D0 = new ArrayList();
    private List<PaiWeiDataBean.RolesBean> E0 = new ArrayList();
    private List<PaiWeiDataBean.RolesBean> F0 = new ArrayList();
    private List<PaiWeiDataBean.AdListBean> G0 = new ArrayList();

    /* loaded from: classes3.dex */
    public class RankRecordReceiver extends BroadcastReceiver {
        public RankRecordReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BAction.ACTION_RANK_RECORD_UPLOAD.equals(intent.getAction())) {
                GamePaiWeiActivty.this.C = intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_COIN, 1);
                GamePaiWeiActivty.this.E = intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_PLAY_TIME, 1);
                GamePaiWeiActivty.this.D = intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_ROLE_ID, 0);
                GamePaiWeiActivty.this.P();
                GamePaiWeiActivty.this.H(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements AutoScrollViewPager.e {
        a() {
        }

        @Override // com.join.mgps.customview.AutoScrollViewPager.e
        public View a(int i2) {
            GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
            return gamePaiWeiActivty.x(gamePaiWeiActivty.G0, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements w1.b {
        b() {
        }

        @Override // com.join.mgps.dialog.w1.b
        public void a(boolean z3) {
            GamePaiWeiActivty.this.f31896u0.rankNotify().g(Boolean.valueOf(!z3));
        }

        @Override // com.join.mgps.dialog.w1.b
        public void onClose() {
        }

        @Override // com.join.mgps.dialog.w1.b
        public void onConfirm() {
            GamePaiWeiActivty.this.B();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends d.p<String> {
        c() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
        }
    }

    /* loaded from: classes3.dex */
    class d extends d.p<String> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PaiWeiDataBean.RankListBean f31911b;

        d(PaiWeiDataBean.RankListBean rankListBean) {
            this.f31911b = rankListBean;
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
            Toast.makeText(GamePaiWeiActivty.this.f31891s, "回放失败！", 0).show();
            GamePaiWeiActivty.this.s();
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
            GamePaiWeiActivty.this.N(str);
            PaiWeiDataBean.RankListBean rankListBean = this.f31911b;
            if (rankListBean != null) {
                GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
                if (gamePaiWeiActivty.B == 14) {
                    gamePaiWeiActivty.o(rankListBean.getPlay_id());
                }
            }
            GamePaiWeiActivty.this.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements b.c {
        e() {
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            bVar.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            bVar.dismiss();
            GamePaiWeiActivty.this.f31904y0 = 0;
            GamePaiWeiActivty.this.f31906z0 = 1;
            GamePaiWeiActivty.this.F.b();
            GamePaiWeiActivty.this.R();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements t1.b {
        f() {
        }

        @Override // com.join.mgps.dialog.t1.b
        public void a(com.join.mgps.dialog.t1 t1Var) {
            t1Var.dismiss();
        }

        @Override // com.join.mgps.dialog.t1.b
        public void b(com.join.mgps.dialog.t1 t1Var) {
            t1Var.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends d.p<String> {
        g() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            GamePaiWeiActivty.this.y(false);
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
            GamePaiWeiActivty.this.y(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends d.p<String> {
        h() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            GamePaiWeiActivty.this.y(false);
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
            GamePaiWeiActivty.this.y(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends d.p<String> {
        i() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            GamePaiWeiActivty.this.O(exc.getMessage());
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
            GamePaiWeiActivty.this.T((PaiWeiUploadFileNewBean) JsonMapper.getInstance().fromJson(str, PaiWeiUploadFileNewBean.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends d.p<String> {
        j() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            GamePaiWeiActivty.this.O(exc.getMessage());
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
            GamePaiWeiActivty.this.S((PaiWeiUploadFileBean) JsonMapper.getInstance().fromJson(str, PaiWeiUploadFileBean.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements AdapterView.OnItemClickListener {
        k() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            GamePaiWeiActivty.this.f31886p0.a(i2);
            GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
            gamePaiWeiActivty.f31880m.setText(((PaiWeiDataBean.RolesBean) gamePaiWeiActivty.E0.get(i2)).getRole());
            GamePaiWeiActivty gamePaiWeiActivty2 = GamePaiWeiActivty.this;
            gamePaiWeiActivty2.q((PaiWeiDataBean.RolesBean) gamePaiWeiActivty2.E0.get(i2));
            GamePaiWeiActivty.this.G();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GamePaiWeiActivty.this.G0 == null || GamePaiWeiActivty.this.G0.size() <= 0) {
                return;
            }
            GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
            IntentUtil.getInstance().intentActivity(GamePaiWeiActivty.this.f31891s, gamePaiWeiActivty.u((PaiWeiDataBean.AdListBean) gamePaiWeiActivty.G0.get(0)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements AutoScrollViewPager.f {
        m() {
        }

        @Override // com.join.mgps.customview.AutoScrollViewPager.f
        public void a(View view, int i2) {
            if (GamePaiWeiActivty.this.G0 == null || GamePaiWeiActivty.this.G0.size() <= 0) {
                return;
            }
            GamePaiWeiActivty gamePaiWeiActivty = GamePaiWeiActivty.this;
            IntentUtil.getInstance().intentActivity(GamePaiWeiActivty.this.f31891s, gamePaiWeiActivty.u((PaiWeiDataBean.AdListBean) gamePaiWeiActivty.G0.get(i2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        this.F.b();
        w();
    }

    private void F(boolean z3) {
        if (this.B0 == null) {
            if (this.B == 14) {
                this.B0 = new GamePaiWeiUpTaskTable(this.f31903y.getUid(), this.G, this.f31905z, this.A, this.H, z3, System.currentTimeMillis(), this.C, this.D, this.B, this.E);
            } else {
                this.B0 = new GamePaiWeiUpTaskTable(this.f31903y.getUid(), this.G, this.f31905z, this.A, this.H, z3, System.currentTimeMillis());
            }
        } else {
            this.B0 = n1.v.n().g(Integer.valueOf(this.B0.getId()));
        }
        n1.v.n().m(this.B0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(int i2) {
        Intent intent = new Intent(BAction.ACTION_RANK_RECORD_UPLOAD_RESULT);
        intent.putExtra(IntentKeys.KEY_PARAMS_RANK_UPLOAD, i2);
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        if (System.currentTimeMillis() - this.A0 < 2000) {
            return;
        }
        this.A0 = System.currentTimeMillis();
        String str = this.K + this.I + ".rec";
        boolean x3 = com.join.mgps.Util.g0.x(str);
        if (!x3) {
            str = this.K + this.I + "_v2.rec";
            x3 = com.join.mgps.Util.g0.x(str);
        }
        if (!x3) {
            str = this.K + this.I + "_v3.rec";
            x3 = com.join.mgps.Util.g0.x(str);
        }
        if (x3) {
            this.H = str;
            File file = new File(str);
            String substring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            if (!com.join.android.app.common.utils.f.j(this)) {
                F(false);
                Toast.makeText(this.f31891s, "网络异常，无法上传排位数据！", 0).show();
                U();
                return;
            }
            this.F.b();
            Q(file, substring);
            return;
        }
        String str2 = this.I;
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        this.I = "";
        this.G = "";
        this.H = "";
        Toast.makeText(this.f31891s, "挑战失败！", 0).show();
    }

    private void U() {
        if (this.f31900w0 == null) {
            com.join.mgps.dialog.t1 i2 = new com.join.mgps.dialog.t1(this.f31891s, R.style.HKDialogLoading).g("网络不佳，上传失败。联网后再次进入此页面，可重新上传此排位赛记录").j("我知道了").k("提示").i(new f());
            this.f31900w0 = i2;
            i2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.join.mgps.activity.d0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    GamePaiWeiActivty.this.z(dialogInterface);
                }
            });
        }
        this.f31900w0.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(PaiWeiDataBean.RolesBean rolesBean) {
        this.f31895u.clear();
        int i2 = 0;
        if (!rolesBean.getRole_id().equals("-1")) {
            this.D0.clear();
            for (int i4 = 0; i4 < this.C0.size(); i4++) {
                if (this.C0.get(i4).getRole_id().equals(rolesBean.getRole_id())) {
                    this.D0.add(this.C0.get(i4));
                }
            }
            while (true) {
                List<PaiWeiDataBean.RankListBean> list = this.D0;
                if (list == null || i2 >= list.size()) {
                    break;
                }
                this.f31895u.add(new GamePaiWeiAdapter.d(GamePaiWeiAdapter.ViewType.RANK, new GamePaiWeiAdapter.d.a(this.D0.get(i2))));
                i2++;
            }
        } else {
            while (true) {
                List<PaiWeiDataBean.RankListBean> list2 = this.C0;
                if (list2 == null || i2 >= list2.size()) {
                    break;
                }
                this.f31895u.add(new GamePaiWeiAdapter.d(GamePaiWeiAdapter.ViewType.RANK, new GamePaiWeiAdapter.d.a(this.C0.get(i2))));
                i2++;
            }
        }
        this.f31893t.notifyDataSetChanged();
    }

    private void r(boolean z3) {
        String str;
        List<GamePaiWeiUpTaskTable> p3 = n1.v.n().p(this.f31903y.getUid());
        this.f31902x0 = p3;
        if (p3 == null || p3.size() <= 0) {
            return;
        }
        if (z3) {
            str = "你有" + this.f31902x0.size() + "个排位成绩未上传!";
        } else {
            str = "上传失败，你还有" + this.f31902x0.size() + "个历史排位成绩未上传!";
        }
        new com.join.mgps.dialog.b(this.f31891s, R.style.HKDialogLoading).g(str).j("立即上传").d("下次再说").k("提示").i(new e()).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SimpleDraweeView x(List<PaiWeiDataBean.AdListBean> list, int i2) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f31891s);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        RoundingParams roundingParams = new RoundingParams();
        roundingParams.s(0.0f);
        MyImageLoader.f(simpleDraweeView, R.drawable.iv_default_newarena_banner, list.get(i2).getPic_remote(), roundingParams);
        return simpleDraweeView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(DialogInterface dialogInterface) {
        this.f31900w0 = null;
    }

    public long A(byte[] bArr, int i2, boolean z3) {
        if (i2 < 0 || i2 + 8 > bArr.length) {
            throw new IllegalArgumentException(String.format("less than 8 bytes from index %d  is insufficient for long", Integer.valueOf(i2)));
        }
        long j4 = 0;
        for (int i4 = 0; i4 < 8; i4++) {
            int i5 = (z3 ? i4 : 7 - i4) << 3;
            j4 |= (255 << i5) & (bArr[i2 + i4] << i5);
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void C() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void D() {
        new com.join.mgps.dialog.p1(this.f31891s, R.style.HKDialogLoading).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E() {
        MobclickAgent.onEvent(this.f31891s, "onStartQualifying");
        if (IntentUtil.getInstance().isLogined(this.f31891s) && !IntentUtil.getInstance().isTourist(this.f31891s)) {
            if (this.B == 14) {
                if (this.f31896u0.rankNotify().d().booleanValue()) {
                    com.join.mgps.dialog.w1 w1Var = new com.join.mgps.dialog.w1(this);
                    w1Var.u(new b());
                    w1Var.w("系统提示");
                    w1Var.show();
                    return;
                }
                B();
                return;
            }
            B();
            return;
        }
        this.I = "";
        this.G = "";
        this.H = "";
        IntentUtil.getInstance().goLoginBattle(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G() {
        if (this.f31881n.getVisibility() == 0) {
            this.f31881n.setVisibility(8);
            this.f31870c.setImageResource(R.drawable.rank_down_ic);
            return;
        }
        this.f31881n.setVisibility(0);
        this.f31870c.setImageResource(R.drawable.rank_up_ic);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I(List<PaiWeiDataBean.AdListBean> list) {
        if (list != null) {
            this.G0.clear();
            this.G0.addAll(list);
            if (this.G0.size() == 1) {
                this.f31889r.setVisibility(0);
                this.f31887q.setVisibility(8);
                String pic_remote = this.G0.get(0).getPic_remote();
                if (com.join.mgps.Util.d2.i(pic_remote)) {
                    RoundingParams roundingParams = new RoundingParams();
                    roundingParams.s(0.0f);
                    MyImageLoader.f(this.f31889r, R.drawable.iv_default_newarena_banner, pic_remote, roundingParams);
                }
                this.f31889r.setOnClickListener(new l());
            } else if (list.size() > 0) {
                this.f31889r.setVisibility(8);
                this.f31887q.setVisibility(0);
                this.f31887q.setLoopTime(4000);
                this.f31887q.setOnItemClickListener(new m());
                this.f31887q.setOnCreateItemViewListener(new a());
                this.f31887q.l(com.join.mgps.Util.b0.a(this.f31891s, 0.0f), com.join.mgps.Util.b0.a(this.f31891s, 0.0f), this.G0);
                this.f31887q.m();
                if (list.size() <= 1) {
                    this.f31887q.n();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J(PaiWeiDataBean.MonthBestBean monthBestBean) {
        if (monthBestBean != null && monthBestBean.getRole() != null) {
            this.f31877j.setVisibility(0);
            this.f31878k.setVisibility(0);
            this.f31873f.setText(monthBestBean.getUse_time());
            TextView textView = this.f31874g;
            textView.setText(monthBestBean.getRank() + "");
            if (!monthBestBean.getRole().isEmpty()) {
                this.f31875h.setText(monthBestBean.getRole());
            } else {
                this.f31875h.setText("暂无数据");
            }
            if (this.f31897v.contains("命")) {
                TextView textView2 = this.f31879l;
                textView2.setText(monthBestBean.getCost_coin() + " 命");
                return;
            }
            TextView textView3 = this.f31879l;
            textView3.setText(monthBestBean.getCost_coin() + " 币");
            return;
        }
        this.f31877j.setVisibility(8);
        this.f31878k.setVisibility(8);
        this.f31873f.setText("暂无数据");
        this.f31874g.setText("暂无数据");
        this.f31875h.setText("暂无数据");
        this.f31879l.setText("暂无数据");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K() {
        List<PaiWeiDataBean.RankListBean> list = this.C0;
        int i2 = 0;
        if (list != null && list.size() != 0) {
            this.f31876i.setVisibility(8);
            this.f31883o.setVisibility(0);
            this.f31895u.clear();
            while (true) {
                List<PaiWeiDataBean.RankListBean> list2 = this.C0;
                if (list2 == null || i2 >= list2.size()) {
                    break;
                }
                this.f31895u.add(new GamePaiWeiAdapter.d(GamePaiWeiAdapter.ViewType.RANK, new GamePaiWeiAdapter.d.a(this.C0.get(i2))));
                i2++;
            }
            this.f31893t.d(this.f31897v);
            this.f31893t.notifyDataSetChanged();
            return;
        }
        this.f31876i.setVisibility(0);
        this.f31883o.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L() {
        List<PaiWeiDataBean.RolesBean> list = this.E0;
        if (list != null && list.size() > 0) {
            this.f31880m.setVisibility(0);
            this.f31870c.setVisibility(0);
            PaiWeiDataBean.RolesBean rolesBean = new PaiWeiDataBean.RolesBean();
            rolesBean.setRole("全部角色");
            rolesBean.setRole_id("-1");
            this.E0.add(0, rolesBean);
            if (this.f31886p0 == null) {
                this.f31886p0 = new v4(this.f31891s, this.E0);
            } else {
                this.f31893t.notifyDataSetChanged();
            }
            this.f31881n.setAdapter((ListAdapter) this.f31886p0);
            this.f31881n.setOnItemClickListener(new k());
            return;
        }
        this.f31880m.setVisibility(4);
        this.f31870c.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M(String str) {
        UtilsMy.l3(this.f31891s, this.f31903y.getUid(), this.f31884o0, 14, this.I, this.A, this.f31888q0, JsonMapper.toJsonString(this.F0), this.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N(String str) {
        UtilsMy.p3(this.f31891s, this.f31903y.getUid(), this.f31884o0, 15, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O(String str) {
        F(false);
        s();
        Toast.makeText(this.f31891s, str, 0).show();
        r(false);
        this.I = "";
        this.G = "";
        this.H = "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q(File file, String str) {
        if (this.B == 14) {
            HashMap hashMap = new HashMap();
            hashMap.put("costCoin", this.C + "");
            hashMap.put("fileName", str);
            hashMap.put("gameId", this.f31905z);
            hashMap.put("millisecond", this.E + "");
            hashMap.put("playId", this.G);
            hashMap.put("roleId", this.D + "");
            hashMap.put("uid", this.f31903y.getUid());
            hashMap.put("token", this.f31903y.getToken());
            d.q I = com.join.android.app.common.http.d.I();
            String str2 = this.f31892s0;
            I.f(str2, com.facebook.common.util.f.f11767c, file, new d.n[]{new d.n("fileName", str), new d.n("costCoin", this.C + ""), new d.n("gameId", this.f31905z), new d.n("millisecond", this.E + ""), new d.n("playId", this.G), new d.n("roleId", this.D + ""), new d.n("uid", this.f31903y.getUid()), new d.n("token", this.f31903y.getToken()), new d.n(Constant.MD5, SignUtils.buildRequestSign(hashMap))}, new i(), file.getName());
            return;
        }
        com.join.android.app.common.http.d.I().f(this.f31890r0, com.facebook.common.util.f.f11767c, file, new d.n[]{new d.n("file_name", str)}, new j(), file.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        String filePath = this.f31902x0.get(this.f31904y0).getFilePath();
        File file = new File(filePath);
        d.n nVar = new d.n("fileName", filePath.substring(filePath.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
        GamePaiWeiUpTaskTable gamePaiWeiUpTaskTable = this.f31902x0.get(this.f31904y0);
        if (gamePaiWeiUpTaskTable != null) {
            this.B = gamePaiWeiUpTaskTable.getRank_auto_upload();
        }
        if (this.B != 14) {
            com.join.android.app.common.http.d.I().f(this.f31890r0, com.facebook.common.util.f.f11767c, file, new d.n[]{nVar}, new h(), file.getName());
        } else if (gamePaiWeiUpTaskTable != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("costCoin", gamePaiWeiUpTaskTable.getCost_coin() + "");
            hashMap.put("fileName", filePath.substring(filePath.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
            hashMap.put("gameId", gamePaiWeiUpTaskTable.getGameId());
            hashMap.put("millisecond", gamePaiWeiUpTaskTable.getRank_play_time() + "");
            hashMap.put("playId", gamePaiWeiUpTaskTable.getPlayId());
            hashMap.put("roleId", gamePaiWeiUpTaskTable.getRole_id() + "");
            hashMap.put("uid", gamePaiWeiUpTaskTable.getUserId());
            hashMap.put("token", this.f31903y.getToken());
            d.q I = com.join.android.app.common.http.d.I();
            String str = this.f31892s0;
            I.f(str, com.facebook.common.util.f.f11767c, file, new d.n[]{nVar, new d.n("costCoin", gamePaiWeiUpTaskTable.getCost_coin() + ""), new d.n("gameId", gamePaiWeiUpTaskTable.getGameId()), new d.n("millisecond", gamePaiWeiUpTaskTable.getRank_play_time() + ""), new d.n("playId", gamePaiWeiUpTaskTable.getPlayId()), new d.n("roleId", gamePaiWeiUpTaskTable.getRole_id() + ""), new d.n("uid", gamePaiWeiUpTaskTable.getUserId()), new d.n("token", this.f31903y.getToken()), new d.n(Constant.MD5, SignUtils.buildRequestSign(hashMap))}, new g(), file.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S(PaiWeiUploadFileBean paiWeiUploadFileBean) {
        if (paiWeiUploadFileBean != null && "200".equals(paiWeiUploadFileBean.getData().getCode())) {
            Toast.makeText(this.f31891s, "数据更新成功！", 0).show();
            this.f31877j.setVisibility(0);
            this.f31878k.setVisibility(0);
            this.f31873f.setText(paiWeiUploadFileBean.getData().getInfo().getTime());
            this.f31874g.setText(paiWeiUploadFileBean.getData().getInfo().getCurrent_rank());
            this.f31875h.setText(paiWeiUploadFileBean.getData().getInfo().getRecplayer());
            if (this.f31897v.contains("命")) {
                TextView textView = this.f31879l;
                textView.setText(paiWeiUploadFileBean.getData().getInfo().getCoin() + " 命");
            } else {
                TextView textView2 = this.f31879l;
                textView2.setText(paiWeiUploadFileBean.getData().getInfo().getCoin() + " 币");
            }
            F(true);
            if (paiWeiUploadFileBean.getData().getInfo().getRefresh().equals("1")) {
                v("1");
            } else {
                s();
            }
        } else {
            s();
            F(false);
            r(false);
        }
        this.I = "";
        this.G = "";
        this.H = "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(PaiWeiUploadFileNewBean paiWeiUploadFileNewBean) {
        if (paiWeiUploadFileNewBean != null && paiWeiUploadFileNewBean.getCode() == 200) {
            Toast.makeText(this.f31891s, "数据更新成功！", 0).show();
            this.f31877j.setVisibility(0);
            this.f31878k.setVisibility(0);
            this.f31873f.setText(paiWeiUploadFileNewBean.getData().getTime());
            this.f31874g.setText(paiWeiUploadFileNewBean.getData().getCurrent_rank());
            this.f31875h.setText(paiWeiUploadFileNewBean.getData().getRecplayer());
            if (this.f31897v.contains("命")) {
                TextView textView = this.f31879l;
                textView.setText(paiWeiUploadFileNewBean.getData().getCoin() + " 命");
            } else {
                TextView textView2 = this.f31879l;
                textView2.setText(paiWeiUploadFileNewBean.getData().getCoin() + " 币");
            }
            F(true);
            if (paiWeiUploadFileNewBean.getData().getRefresh().equals("1")) {
                v("1");
            } else {
                s();
            }
        } else {
            s();
            F(false);
            r(false);
        }
        this.I = "";
        this.G = "";
        this.H = "";
    }

    @Override // com.join.mgps.adapter.GamePaiWeiAdapter.b
    public void a(int i2, String str) {
        if (str.isEmpty()) {
            Toast.makeText(this.f31891s, "回放失败！", 0).show();
            return;
        }
        String substring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        File file = new File(this.K + substring);
        PaiWeiDataBean.RankListBean rankListBean = this.C0.get(i2);
        if (file.exists()) {
            N(file.getPath());
            if (rankListBean == null || this.B != 14) {
                return;
            }
            o(rankListBean.getPlay_id());
            return;
        }
        this.F.b();
        com.join.android.app.common.http.d.B().a(str, this.K, new d(rankListBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void o(String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("play_id", str);
        jsonObject.addProperty("token", this.f31903y.getToken());
        jsonObject.addProperty("uid", this.f31903y.getUid());
        jsonObject.addProperty(Constant.MD5, SignUtils.buildRequestSign(jsonObject));
        com.join.android.app.common.http.d.G().H().n(this.f31894t0, jsonObject.toString(), new c());
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        RankRecordReceiver rankRecordReceiver = this.f31898v0;
        if (rankRecordReceiver != null) {
            unregisterReceiver(rankRecordReceiver);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if ("".equals(this.I)) {
            this.F.b();
            v("0");
            return;
        }
        P();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        AutoScrollViewPager<PaiWeiDataBean.AdListBean> autoScrollViewPager = this.f31887q;
        if (autoScrollViewPager != null) {
            autoScrollViewPager.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void p() {
        this.f31899w = com.join.mgps.rpc.impl.k.n0();
        this.f31901x = com.join.mgps.rpc.impl.k.o0();
        this.f31891s = this;
        this.f31895u = new ArrayList();
        this.F = com.join.mgps.Util.a0.c0(this.f31891s).x(this.f31891s);
        int width = ((getWindowManager().getDefaultDisplay().getWidth() * 58) / 100) - com.join.mgps.Util.b0.a(this.f31891s, 20.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(width, (width * 725) / 3344);
        layoutParams.leftMargin = com.join.mgps.Util.b0.a(this.f31891s, 10.0f);
        layoutParams.rightMargin = com.join.mgps.Util.b0.a(this.f31891s, 10.0f);
        layoutParams.topMargin = com.join.mgps.Util.b0.a(this.f31891s, 5.0f);
        layoutParams.gravity = 1;
        this.f31885p.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(width, (width * 44) / 335);
        layoutParams2.gravity = 1;
        this.f31872e.setLayoutParams(layoutParams2);
        DownloadTask B = g1.f.G().B(this.f31905z);
        this.f31884o0 = B;
        if (B != null && B.getStatus() == 5) {
            String gameZipPath = this.f31884o0.getGameZipPath();
            String substring = gameZipPath.substring(0, gameZipPath.lastIndexOf(net.lingala.zip4j.util.e.F0));
            this.J = substring;
            this.f31882n0 = substring.substring(substring.lastIndexOf(net.lingala.zip4j.util.e.F0), this.J.length());
            String w12 = !"".equals(this.f31884o0.getRomType()) ? UtilsMy.w1(Integer.parseInt(this.f31884o0.getRomType())) : "arc";
            String externalStorageDirectory = SDCardUtil.getExternalStorageDirectory(this);
            this.K = externalStorageDirectory + "/papa91/" + w12 + this.f31882n0 + net.lingala.zip4j.util.e.F0;
        } else {
            Toast.makeText(this.f31891s, "请先下载游戏！", 0).show();
        }
        GamePaiWeiAdapter gamePaiWeiAdapter = new GamePaiWeiAdapter(this.f31891s, this.f31895u, this);
        this.f31893t = gamePaiWeiAdapter;
        this.f31883o.setAdapter((ListAdapter) gamePaiWeiAdapter);
        this.f31896u0 = new PrefDef_(this);
        r(true);
        IntentFilter intentFilter = new IntentFilter(BAction.ACTION_RANK_RECORD_UPLOAD);
        RankRecordReceiver rankRecordReceiver = new RankRecordReceiver();
        this.f31898v0 = rankRecordReceiver;
        registerReceiver(rankRecordReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s() {
        try {
            com.join.mgps.dialog.x0 x0Var = this.F;
            if (x0Var == null || !x0Var.isShowing()) {
                return;
            }
            this.F.dismiss();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t() {
        Toast.makeText(this.f31891s, "网络错误，请稍候再试！", 0).show();
    }

    public IntentDateBean u(PaiWeiDataBean.AdListBean adListBean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(Integer.valueOf(adListBean.getJump_type()).intValue());
        intentDateBean.setLink_type(Integer.valueOf(adListBean.getLink_type()).intValue());
        intentDateBean.setLink_type_val(adListBean.getLink_type_val());
        if (Integer.valueOf(adListBean.getLink_type()).intValue() == 1) {
            intentDateBean.setTpl_type(String.valueOf(adListBean.getGame_info_tpl_type()));
        } else {
            intentDateBean.setTpl_type(String.valueOf(adListBean.getLink_type()));
        }
        intentDateBean.setCrc_link_type_val(adListBean.getCrc_link_type_val());
        if (com.join.mgps.Util.d2.i(adListBean.getTitle())) {
            intentDateBean.setObject(adListBean.getTitle());
        }
        return intentDateBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void v(String str) {
        ResultResMainBean<PaiWeiDataBean> n4;
        String uid = this.f31903y.getUid();
        String token = this.f31903y.getToken();
        try {
            try {
                if (this.B == 14) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("gameid", this.f31905z);
                    hashMap.put("refresh", str);
                    hashMap.put("uid", uid);
                    hashMap.put("token", token);
                    n4 = this.f31901x.l(uid, token, this.f31905z, str, SignUtils.buildRequestSign(hashMap));
                } else {
                    n4 = this.f31899w.n(uid, token, this.f31905z, str);
                }
                if (n4 != null) {
                    PaiWeiDataBean.MonthBestBean month_best = n4.getData().getMonth_best();
                    List<PaiWeiDataBean.AdListBean> ad_list = n4.getData().getAd_list();
                    this.C0 = n4.getData().getRank_list();
                    this.F0.clear();
                    this.F0.addAll(n4.getData().getRoles());
                    this.E0 = n4.getData().getRoles();
                    this.f31897v = n4.getData().getUnit();
                    this.f31888q0 = n4.getData().getMinimum_passing_time();
                    J(month_best);
                    I(ad_list);
                    K();
                    L();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void w() {
        ResultResMainBean<GetPaiWeiPlayCodeBean> W;
        String uid = this.f31903y.getUid();
        String token = this.f31903y.getToken();
        try {
            try {
                if (this.B == 14) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("gameid", this.f31905z);
                    hashMap.put("uid", uid);
                    hashMap.put("token", token);
                    W = this.f31901x.s(uid, this.f31905z, this.f31903y.getToken(), SignUtils.buildRequestSign(hashMap));
                } else {
                    W = this.f31899w.W(uid, this.f31905z);
                }
                if (W != null) {
                    String play_code = W.getData().getPlay_code();
                    if (!play_code.isEmpty()) {
                        this.G = play_code;
                        this.I = play_code;
                        M(play_code);
                    } else {
                        t();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                t();
            }
        } finally {
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y(boolean z3) {
        if (z3) {
            n1.v.n().delete((n1.v) this.f31902x0.get(this.f31904y0));
            this.f31906z0++;
        }
        int i2 = this.f31904y0 + 1;
        this.f31904y0 = i2;
        if (i2 < this.f31902x0.size()) {
            R();
            return;
        }
        s();
        if (this.f31906z0 == this.f31902x0.size()) {
            v("1");
        } else {
            r(false);
        }
    }
}
