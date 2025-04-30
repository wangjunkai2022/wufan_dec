package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.style.AbsoluteSizeSpan;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.dingmouren.layoutmanagergroup.viewpager.ViewPagerLayoutManager;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentAllListActivity_;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.customview.GamelistExpandableTextView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ForumResponseGame;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameListItemBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.ShareToBaseBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.activity_game_detail)
/* loaded from: classes.dex */
public class GameDetailActivity extends BaseActivity implements AbsListView.OnScrollListener {
    TextView A;
    List<DownloadTask> A0;
    LinearLayout B;
    ForumResponseGame B0;
    SimpleDraweeView C;
    TextView D;
    TextView E;
    ViewPagerLayoutManager E0;
    Context F;
    n F0;
    k G;
    View G0;
    String H;
    int I;
    int J;
    int K;
    View K0;
    PopupWindow N0;
    InputFilter[] O0;
    View R0;
    View S0;
    EditText T0;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f31010a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XRecyclerView f31011b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f31012c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f31013d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f31014e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f31015f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f31016g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f31017h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    SimpleDraweeView f31018i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f31019j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f31020k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f31021l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f31022m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f31023n;

    /* renamed from: n0  reason: collision with root package name */
    String f31024n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f31025o;

    /* renamed from: o0  reason: collision with root package name */
    String f31026o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    LinearLayout f31027p;

    /* renamed from: p0  reason: collision with root package name */
    AccountBean f31028p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    SimpleDraweeView f31029q;

    /* renamed from: q0  reason: collision with root package name */
    com.join.mgps.rpc.b f31030q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f31031r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    RelativeLayout f31033s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    ImageView f31035t;

    /* renamed from: t0  reason: collision with root package name */
    ForumResponseGame.Datadetails f31036t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    TextView f31037u;

    /* renamed from: u0  reason: collision with root package name */
    String f31038u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    TextView f31039v;

    /* renamed from: v0  reason: collision with root package name */
    String f31040v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    TextView f31041w;

    /* renamed from: w0  reason: collision with root package name */
    List<String> f31042w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    TextView f31043x;

    /* renamed from: x0  reason: collision with root package name */
    List<String> f31044x0;

    /* renamed from: y  reason: collision with root package name */
    LinearLayout f31045y;

    /* renamed from: z  reason: collision with root package name */
    TextView f31047z;

    /* renamed from: r0  reason: collision with root package name */
    int f31032r0 = 1;

    /* renamed from: s0  reason: collision with root package name */
    private List<GameListItemBean> f31034s0 = new ArrayList();

    /* renamed from: y0  reason: collision with root package name */
    String f31046y0 = "";

    /* renamed from: z0  reason: collision with root package name */
    String f31048z0 = "";
    boolean C0 = true;
    boolean D0 = false;
    boolean H0 = false;
    String I0 = "";
    private boolean J0 = false;
    boolean L0 = true;
    String M0 = "";
    boolean P0 = false;
    boolean Q0 = true;
    private Map<String, DownloadTask> U0 = new ConcurrentHashMap();
    private int V0 = 0;
    private int W0 = 0;
    private int X0 = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            com.join.mgps.Util.t0.d("gamelist  ", "loadmore 11111");
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            if (gameDetailActivity.C0 && !gameDetailActivity.D0) {
                gameDetailActivity.J0();
                com.join.mgps.Util.t0.d("gamelist  ", "loadmore 2222");
                GameDetailActivity.this.H0();
                return;
            }
            gameDetailActivity.f31013d.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            gameDetailActivity.f1(null, gameDetailActivity.f31037u.getText().toString().trim(), "", null, 1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.dingmouren.layoutmanagergroup.viewpager.a {
        c() {
        }

        @Override // com.dingmouren.layoutmanagergroup.viewpager.a
        public void a(boolean z3, int i2) {
        }

        @Override // com.dingmouren.layoutmanagergroup.viewpager.a
        public void b() {
        }

        @Override // com.dingmouren.layoutmanagergroup.viewpager.a
        public void c(int i2, boolean z3) {
            com.join.mgps.Util.t0.c(" onPageSelected  " + i2 + "  " + z3);
            GameDetailActivity.this.p1(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements XRecyclerView.f {
        d() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            if (gameDetailActivity.C0) {
                gameDetailActivity.J0();
                GameDetailActivity.this.H0();
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PopupWindow popupWindow = GameDetailActivity.this.N0;
            if (popupWindow != null) {
                if (popupWindow.isShowing()) {
                    GameDetailActivity.this.N0.dismiss();
                    GameDetailActivity.this.Q0 = true;
                    return;
                }
                GameDetailActivity.this.g1("亲，请慢点");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements PopupWindow.OnDismissListener {
        f() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            GameDetailActivity.this.Q0 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31055a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31056b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f31057c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ l f31058d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ GameListItemBean f31059e;

        g(int i2, String str, String str2, l lVar, GameListItemBean gameListItemBean) {
            this.f31055a = i2;
            this.f31056b = str;
            this.f31057c = str2;
            this.f31058d = lVar;
            this.f31059e = gameListItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.mgps.Util.n.f(GameDetailActivity.this.T0.getText().toString().trim()) && !GameDetailActivity.this.T0.getText().toString().trim().equals("")) {
                GameDetailActivity.this.N0.dismiss();
                if (this.f31055a == 2) {
                    if (GameDetailActivity.this.T0.getText().toString().trim().equals(this.f31056b)) {
                        return;
                    }
                    List<String> list = GameDetailActivity.this.f31042w0;
                    list.add(this.f31057c + "|" + GameDetailActivity.this.T0.getText().toString().trim());
                    this.f31058d.f31104m.setText(GameDetailActivity.this.T0.getText().toString().trim());
                    this.f31059e.setInfo(GameDetailActivity.this.T0.getText().toString().trim());
                    this.f31059e.setCustomer_info(GameDetailActivity.this.T0.getText().toString().trim());
                    return;
                } else if (GameDetailActivity.this.T0.getText().toString().trim().equals(this.f31056b)) {
                    return;
                } else {
                    GameDetailActivity gameDetailActivity = GameDetailActivity.this;
                    gameDetailActivity.I0 = gameDetailActivity.T0.getText().toString().trim();
                    GameDetailActivity gameDetailActivity2 = GameDetailActivity.this;
                    gameDetailActivity2.f31037u.setText(gameDetailActivity2.I0);
                    GameDetailActivity gameDetailActivity3 = GameDetailActivity.this;
                    TextView textView = gameDetailActivity3.f31037u;
                    if (textView != null) {
                        textView.setText(gameDetailActivity3.I0);
                        return;
                    }
                    return;
                }
            }
            GameDetailActivity.this.g1("不能为空或者表情");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f31061a;

        h(View view) {
            this.f31061a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.f31061a.getWindowVisibleDisplayFrame(rect);
            if (rect.bottom - rect.top > (this.f31061a.getHeight() / 3) * 2) {
                GameDetailActivity gameDetailActivity = GameDetailActivity.this;
                if (gameDetailActivity.P0) {
                    gameDetailActivity.N0.dismiss();
                    GameDetailActivity.this.P0 = false;
                    return;
                }
                return;
            }
            GameDetailActivity.this.P0 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        GameListItemBean f31063a;

        /* renamed from: b  reason: collision with root package name */
        int f31064b;

        public i(GameListItemBean gameListItemBean, int i2) {
            this.f31063a = gameListItemBean;
            this.f31064b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f31063a.getDownloadTask();
            if (downloadTask == null) {
                if (this.f31063a.getMod_info() == null && UtilsMy.e0(this.f31063a.getTag_info())) {
                    if (this.f31063a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F).c(GameDetailActivity.this.F, this.f31063a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F).k(GameDetailActivity.this.F, this.f31063a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f31063a.getVer()) || k4.d() >= Integer.parseInt(this.f31063a.getVer())) {
                                com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F);
                                APKUtils.X(GameDetailActivity.this.F, this.f31063a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F).c(GameDetailActivity.this.F, this.f31063a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f31063a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F);
                            APKUtils.S(GameDetailActivity.this.F, this.f31063a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(GameDetailActivity.this.F, this.f31063a);
                return;
            }
            String plugin_num = this.f31063a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f31063a.getDown_url_remote());
                UtilsMy.h2(downloadTask, GameDetailActivity.this.F);
                IntentUtil.getInstance().intentActivity(GameDetailActivity.this.F, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f31063a.getPay_tag_info(), this.f31063a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status != 13) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(GameDetailActivity.this.F, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (!com.join.android.app.common.utils.f.j(GameDetailActivity.this.F)) {
                                            GameDetailActivity.this.g1("无网络连接");
                                            return;
                                        } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                            downloadTask.setVer(this.f31063a.getVer());
                                            downloadTask.setVer_name(this.f31063a.getVer_name());
                                            downloadTask.setUrl(this.f31063a.getDown_url_remote());
                                            UtilsMy.w3(GameDetailActivity.this.F, downloadTask);
                                            return;
                                        }
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(GameDetailActivity.this.F)) {
                                                    GameDetailActivity.this.g1("无网络连接");
                                                    return;
                                                } else if (this.f31063a.getDown_status() == 5) {
                                                    UtilsMy.R0(GameDetailActivity.this.F, downloadTask);
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(this.f31063a.getVer());
                                                    downloadTask.setVer_name(this.f31063a.getVer_name());
                                                    downloadTask.setUrl(this.f31063a.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, GameDetailActivity.this.F);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, GameDetailActivity.this.F);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, GameDetailActivity.this.F);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(GameDetailActivity.this.F, downloadTask);
                return;
            }
            if (UtilsMy.o0(this.f31063a.getPay_tag_info(), this.f31063a.getCrc_sign_id()) > 0) {
                UtilsMy.m3(GameDetailActivity.this.F, downloadTask.getCrc_link_type_val());
            } else if (this.f31063a.getDown_status() == 5) {
                UtilsMy.R0(GameDetailActivity.this.F, downloadTask);
            } else {
                UtilsMy.F0(GameDetailActivity.this.F, downloadTask, this.f31063a.getTp_down_url(), this.f31063a.getOther_down_switch(), this.f31063a.getCdn_down_switch());
            }
            Ext ext = new Ext();
            ext.setGameId(this.f31063a.getGame_id());
            if (this.f31064b == 1) {
                ext.setPosition("listMode");
            } else {
                ext.setPosition("defaultMode");
            }
            ext.setArticleId(GameDetailActivity.this.H);
            com.papa.sim.statistic.p.l(GameDetailActivity.this.F).K1(Event.downloadFromUserGameList, ext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<CommentBaseBean> f31066a;

        /* renamed from: b  reason: collision with root package name */
        int f31067b;

        /* renamed from: c  reason: collision with root package name */
        GameListItemBean f31068c;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CommentBaseBean f31070a;

            a(CommentBaseBean commentBaseBean) {
                this.f31070a = commentBaseBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Ext ext = new Ext();
                ext.setPosition("comments");
                ext.setGameId(j.this.f31068c.getCrc_sign_id());
                ext.setArticleId(GameDetailActivity.this.H);
                com.papa.sim.statistic.p.l(GameDetailActivity.this.F).K1(Event.clickFromUserGameList, ext);
                if (com.join.mgps.Util.d2.h(this.f31070a.getId())) {
                    IntentUtil intentUtil = IntentUtil.getInstance();
                    j jVar = j.this;
                    intentUtil.goGameDetialActivity(GameDetailActivity.this.F, jVar.f31068c.getCrc_sign_id(), j.this.f31068c.getGame_info_tpl_type(), j.this.f31068c.getSp_tpl_two_position(), GameDetailActivity.this.J);
                    return;
                }
                CommentAllListActivity_.p a4 = CommentAllListActivity_.f1(GameDetailActivity.this.F).f(this.f31070a.getGame_id()).i(j.this.f31068c.getPackageName()).h(j.this.f31068c.getPlugin_num()).g(1).j(j.this.f31068c.getGame_score() != null ? j.this.f31068c.getGame_score().getSgc_switch() : 0).a(0);
                a4.d(j.this.f31068c.getComment_score_switch() + "").start();
            }
        }

        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CommentBaseBean f31072a;

            b(CommentBaseBean commentBaseBean) {
                this.f31072a = commentBaseBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Ext ext = new Ext();
                ext.setPosition("comments");
                ext.setGameId(j.this.f31068c.getCrc_sign_id());
                ext.setArticleId(GameDetailActivity.this.H);
                com.papa.sim.statistic.p.l(GameDetailActivity.this.F).K1(Event.clickFromUserGameList, ext);
                if (com.join.mgps.Util.d2.h(this.f31072a.getId())) {
                    IntentUtil intentUtil = IntentUtil.getInstance();
                    j jVar = j.this;
                    intentUtil.goGameDetialActivity(GameDetailActivity.this.F, jVar.f31068c.getCrc_sign_id(), j.this.f31068c.getGame_info_tpl_type(), j.this.f31068c.getSp_tpl_two_position(), GameDetailActivity.this.J);
                    return;
                }
                CommentAllListActivity_.p a4 = CommentAllListActivity_.f1(GameDetailActivity.this.F).f(this.f31072a.getGame_id()).i(j.this.f31068c.getPackageName()).h(j.this.f31068c.getPlugin_num()).g(1).j(j.this.f31068c.getGame_score() != null ? j.this.f31068c.getGame_score().getSgc_switch() : 0).a(0);
                a4.d(j.this.f31068c.getComment_score_switch() + "").start();
            }
        }

        /* loaded from: classes3.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GamelistExpandableTextView f31074a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CommentBaseBean f31075b;

            c(GamelistExpandableTextView gamelistExpandableTextView, CommentBaseBean commentBaseBean) {
                this.f31074a = gamelistExpandableTextView;
                this.f31075b = commentBaseBean;
            }

            @Override // java.lang.Runnable
            public void run() {
                int height = this.f31074a.getHeight() / GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp37);
                this.f31074a.setMaxLines(height);
                this.f31074a.setMaxLinesOnShrink(height);
                this.f31074a.u(this.f31075b.getContent(), this.f31074a.getWidth(), 0);
            }
        }

        public j(List<CommentBaseBean> list, int i2, GameListItemBean gameListItemBean) {
            this.f31067b = 0;
            this.f31066a = list;
            this.f31067b = i2;
            this.f31068c = gameListItemBean;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f31066a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(GameDetailActivity.this.F).inflate(R.layout.gamelist_detial_comment_layout, (ViewGroup) null);
            }
            CommentBaseBean commentBaseBean = this.f31066a.get(i2);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp6));
            gradientDrawable.setStroke(GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp1), this.f31067b);
            MStarBar mStarBar = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            GamelistExpandableTextView gamelistExpandableTextView = (GamelistExpandableTextView) view.findViewById(R.id.content);
            TextView textView = (TextView) view.findViewById(R.id.more);
            View findViewById = view.findViewById(R.id.main);
            View findViewById2 = view.findViewById(R.id.usertag);
            findViewById.setBackground(gradientDrawable);
            MyImageLoader.w((SimpleDraweeView) view.findViewById(R.id.userIcon), commentBaseBean.getHead_portrait());
            ((TextView) view.findViewById(R.id.userName)).setText(commentBaseBean.getUser_name());
            if (commentBaseBean.getIs_old() != 1 && Float.valueOf(commentBaseBean.getStars_score()).floatValue() != 0.0f) {
                mStarBar.setVisibility(0);
                mStarBar.setStarMark(Double.parseDouble(commentBaseBean.getStars_score()));
            } else {
                mStarBar.setVisibility(8);
            }
            if (com.join.mgps.Util.d2.h(commentBaseBean.getId())) {
                findViewById2.setVisibility(0);
            } else {
                findViewById2.setVisibility(8);
            }
            gamelistExpandableTextView.setText(commentBaseBean.getContent());
            gamelistExpandableTextView.u(commentBaseBean.getContent(), gamelistExpandableTextView.getWidth(), 0);
            findViewById.setOnClickListener(new a(commentBaseBean));
            gamelistExpandableTextView.setOnClickListener(new b(commentBaseBean));
            gamelistExpandableTextView.post(new c(gamelistExpandableTextView, commentBaseBean));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends BaseAdapter {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements AdapterView.d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f31078a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ GameListItemBean f31079b;

            a(List list, GameListItemBean gameListItemBean) {
                this.f31078a = list;
                this.f31079b = gameListItemBean;
            }

            @Override // it.sephiroth.android.library.widget.AdapterView.d
            public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
                try {
                    Intent intent = new Intent(GameDetailActivity.this.F, ImagePagerActivity.class);
                    String[] strArr = new String[this.f31078a.size()];
                    for (int i4 = 0; i4 < this.f31078a.size(); i4++) {
                        strArr[i4] = (String) this.f31078a.get(i4);
                    }
                    if (com.join.mgps.Util.d2.i(this.f31079b.getVedio_url()) && i2 == 0) {
                        FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                        videoInfo.n(this.f31079b.getVedio_url());
                        videoInfo.h(strArr[0]);
                        FullScreenActivity_.G0(GameDetailActivity.this.F).a(videoInfo).start();
                        return;
                    }
                    intent.putExtra("image_urls", strArr);
                    intent.putExtra("image_index", i2);
                    GameDetailActivity.this.F.startActivity(intent);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameListItemBean f31081a;

            b(GameListItemBean gameListItemBean) {
                this.f31081a = gameListItemBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameDetailActivity gameDetailActivity = GameDetailActivity.this;
                if (gameDetailActivity.C0) {
                    Ext ext = new Ext();
                    ext.setPosition("brief");
                    ext.setGameId(this.f31081a.getCrc_sign_id());
                    ext.setArticleId(GameDetailActivity.this.H);
                    com.papa.sim.statistic.p.l(GameDetailActivity.this.F).K1(Event.clickFromUserGameList, ext);
                    IntentUtil.getInstance().goGameDetialActivity(GameDetailActivity.this.F, this.f31081a.getCrc_sign_id(), this.f31081a.getGame_info_tpl_type(), this.f31081a.getSp_tpl_two_position(), GameDetailActivity.this.J);
                    return;
                }
                gameDetailActivity.g1("请先点击完成");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameListItemBean f31083a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ l f31084b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f31085c;

            c(GameListItemBean gameListItemBean, l lVar, int i2) {
                this.f31083a = gameListItemBean;
                this.f31084b = lVar;
                this.f31085c = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (GameDetailActivity.this.f31036t0.getIs_self().equals("1") && GameDetailActivity.this.f31036t0.getTv_btn() == 0) {
                    if (this.f31083a.getCustomer_info() != null && !this.f31083a.getCustomer_info().equals("")) {
                        GameDetailActivity.this.M0 = this.f31083a.getCustomer_info();
                    } else {
                        GameDetailActivity.this.M0 = this.f31083a.getInfo();
                    }
                    GameDetailActivity gameDetailActivity = GameDetailActivity.this;
                    gameDetailActivity.f1(this.f31084b, gameDetailActivity.M0, this.f31083a.getGame_id(), this.f31083a, 2, this.f31085c);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class d implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameListItemBean f31087a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f31088b;

            d(GameListItemBean gameListItemBean, int i2) {
                this.f31087a = gameListItemBean;
                this.f31088b = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameDetailActivity.this.f31044x0.add(this.f31087a.getGame_id());
                GameDetailActivity.this.F0(this.f31088b);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class e {

            /* renamed from: a  reason: collision with root package name */
            HListView f31090a;

            public e(View view) {
                this.f31090a = (HListView) view.findViewById(R.id.screenListView);
            }
        }

        k() {
        }

        public View a(int i2, View view, ViewGroup viewGroup) {
            e eVar;
            boolean z3;
            if (view == null) {
                view = LayoutInflater.from(GameDetailActivity.this.F).inflate(R.layout.gamedetail_item_viewpage1, (ViewGroup) null);
                eVar = new e(view);
                view.setTag(eVar);
            } else {
                eVar = (e) view.getTag();
            }
            GameListItemBean gameListItemBean = (GameListItemBean) getItem(i2);
            ArrayList arrayList = new ArrayList();
            if (arrayList.size() == 0) {
                if (com.join.mgps.Util.d2.i(gameListItemBean.getVedio_cover_pic()) && com.join.mgps.Util.d2.i(gameListItemBean.getVedio_url())) {
                    arrayList.add(gameListItemBean.getVedio_cover_pic());
                    z3 = true;
                } else {
                    z3 = false;
                }
                List<DetialShowImageBean> pic_info = gameListItemBean.getPic_info();
                if (pic_info != null) {
                    for (int i4 = 0; i4 < pic_info.size(); i4++) {
                        arrayList.add(pic_info.get(i4).getRemote().getPath());
                    }
                }
                if (arrayList.size() == 0) {
                    eVar.f31090a.setVisibility(8);
                } else {
                    eVar.f31090a.setVisibility(0);
                    int pic_position = gameListItemBean.getPic_position();
                    eVar.f31090a.setAdapter((ListAdapter) new com.join.mgps.adapter.x0(GameDetailActivity.this.F, pic_position, arrayList, z3));
                    if (pic_position == 1) {
                        eVar.f31090a.setDividerWidth(GameDetailActivity.this.F.getResources().getDimensionPixelSize(R.dimen.wdp10));
                        eVar.f31090a.postInvalidate();
                    } else {
                        eVar.f31090a.setDividerWidth(GameDetailActivity.this.F.getResources().getDimensionPixelSize(R.dimen.wdp20));
                        eVar.f31090a.postInvalidate();
                    }
                    eVar.f31090a.setOnItemClickListener(new a(arrayList, gameListItemBean));
                }
            }
            return view;
        }

        View b(int i2, View view, ViewGroup viewGroup) {
            l lVar;
            View view2;
            GameListItemBean gameListItemBean = (GameListItemBean) GameDetailActivity.this.f31034s0.get(i2);
            DownloadTask downloadTask = gameListItemBean.getDownloadTask();
            if (view == null) {
                view2 = LayoutInflater.from(GameDetailActivity.this.F).inflate(R.layout.gamede_item, (ViewGroup) null);
                lVar = new l();
                lVar.f31092a = (SimpleDraweeView) view2.findViewById(R.id.mgListviewItemIcon);
                lVar.f31093b = (TextView) view2.findViewById(R.id.mgListviewItemAppname);
                lVar.f31094c = (ProgressBar) view2.findViewById(R.id.progressBarZip);
                lVar.f31095d = (ProgressBar) view2.findViewById(R.id.progressBar);
                lVar.f31097f = (LinearLayout) view2.findViewById(R.id.tipsLayout);
                lVar.f31096e = (TextView) view2.findViewById(R.id.privilege);
                lVar.f31098g = (RelativeLayout) view2.findViewById(R.id.rLayoutRight);
                lVar.f31099h = (RelativeLayout) view2.findViewById(R.id.rLayoutRight2);
                lVar.f31100i = (TextView) view2.findViewById(R.id.mgListviewItemInstall);
                lVar.f31101j = (LinearLayout) view2.findViewById(R.id.linearLayout2);
                lVar.f31103l = (TextView) view2.findViewById(R.id.appSize);
                lVar.f31104m = (TextView) view2.findViewById(R.id.tv_content);
                lVar.f31106o = (TextView) view2.findViewById(R.id.loding_info);
                lVar.f31107p = (TextView) view2.findViewById(R.id.tv_delect_game);
                lVar.f31102k = (LinearLayout) view2.findViewById(R.id.rl_item);
                lVar.f31105n = (TextView) view2.findViewById(R.id.mgListviewItemDescribe);
                view2.setTag(lVar);
            } else {
                lVar = (l) view.getTag();
                view2 = view;
            }
            if (GameDetailActivity.this.f31036t0.getTv_btn() == 0) {
                lVar.f31099h.setVisibility(0);
                lVar.f31098g.setVisibility(8);
            } else {
                lVar.f31099h.setVisibility(8);
                lVar.f31098g.setVisibility(0);
            }
            if (gameListItemBean.getCustomer_info() != null && !gameListItemBean.getCustomer_info().equals("")) {
                lVar.f31104m.setText(gameListItemBean.getCustomer_info());
            } else if (gameListItemBean.getInfo() != null && !gameListItemBean.getInfo().equals("")) {
                if (GameDetailActivity.this.f31036t0.getIs_self().equals("1") && GameDetailActivity.this.f31036t0.getTv_btn() == 0) {
                    lVar.f31104m.setText("在此输入推荐语.");
                } else {
                    lVar.f31104m.setText(gameListItemBean.getInfo());
                }
            } else if (GameDetailActivity.this.f31036t0.getIs_self().equals("1")) {
                lVar.f31104m.setText("在此输入推荐语");
            } else {
                lVar.f31104m.setText("不知道该说啥了");
            }
            lVar.f31102k.setOnClickListener(new b(gameListItemBean));
            lVar.f31104m.setOnClickListener(new c(gameListItemBean, lVar, i2));
            lVar.f31107p.setOnClickListener(new d(gameListItemBean, i2));
            lVar.f31093b.setText(gameListItemBean.getGame_name());
            lVar.f31105n.setText(gameListItemBean.getInfo());
            lVar.f31092a.setImageResource(R.drawable.main_normal_icon);
            gameListItemBean.getGift_package_switch();
            MyImageLoader.h(lVar.f31092a, gameListItemBean.getIco_remote());
            GameListItemBean gameListItemBean2 = (GameListItemBean) GameDetailActivity.this.f31034s0.get(i2);
            long parseDouble = (long) (Double.parseDouble(gameListItemBean2.getSize()) * 1024.0d * 1024.0d);
            UtilsMy.C(gameListItemBean.getScore(), gameListItemBean.getDown_count(), gameListItemBean.getSize(), gameListItemBean.getSp_tag_info(), gameListItemBean.getTag_info(), lVar.f31097f, GameDetailActivity.this.F);
            UtilsMy.v2(gameListItemBean.getSp_tag_info(), view2, downloadTask);
            String plugin_num = gameListItemBean2.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                lVar.f31100i.setBackgroundResource(R.drawable.recom_blue_butn);
                lVar.f31100i.setText("开始");
                lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_blue_color));
                lVar.f31097f.setVisibility(8);
            } else if (downloadTask == null) {
                GameDetailActivity.this.s1(lVar, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.e0(gameListItemBean2.getTag_info())) {
                    if (UtilsMy.m0(gameListItemBean2.getPay_tag_info(), gameListItemBean2.getCrc_sign_id()) <= 0 ? com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F).c(GameDetailActivity.this.F, gameListItemBean2.getPackage_name()) : false) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F).k(GameDetailActivity.this.F, gameListItemBean2.getPackage_name());
                        if (com.join.mgps.Util.d2.i(gameListItemBean2.getVer()) && k4.d() < Integer.parseInt(gameListItemBean2.getVer())) {
                            lVar.f31100i.setBackgroundResource(R.drawable.recom_green_butn);
                            lVar.f31100i.setText("更新");
                            lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_green_color));
                        } else {
                            lVar.f31100i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            lVar.f31100i.setText(GameDetailActivity.this.F.getResources().getString(R.string.download_status_finished));
                            lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_main_color));
                        }
                    } else {
                        lVar.f31100i.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.m0(gameListItemBean2.getPay_tag_info(), gameListItemBean2.getCrc_sign_id());
                        UtilsMy.n2(lVar.f31100i, lVar.f31098g, gameListItemBean2);
                    }
                } else {
                    lVar.f31100i.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(gameListItemBean2.getPay_tag_info(), gameListItemBean2.getCrc_sign_id());
                    UtilsMy.n2(lVar.f31100i, lVar.f31098g, gameListItemBean2);
                }
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.m0(gameListItemBean2.getPay_tag_info(), gameListItemBean2.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        lVar.f31100i.setText("暂停中");
                    } else if (status == 48) {
                        lVar.f31100i.setBackgroundResource(R.drawable.recom_blue_butn);
                        lVar.f31100i.setText("安装中");
                        lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_blue_color));
                        GameDetailActivity gameDetailActivity = GameDetailActivity.this;
                        Boolean bool = Boolean.FALSE;
                        gameDetailActivity.s1(lVar, bool, bool);
                    } else if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                if (status != 6) {
                                    if (status != 7) {
                                        if (status != 42) {
                                            if (status != 43) {
                                                switch (status) {
                                                    case 9:
                                                        lVar.f31100i.setBackgroundResource(R.drawable.recom_green_butn);
                                                        lVar.f31100i.setText("更新");
                                                        lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_green_color));
                                                        GameDetailActivity.this.s1(lVar, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 10:
                                                        lVar.f31100i.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        lVar.f31100i.setText("等待");
                                                        lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_blue_color));
                                                        GameDetailActivity gameDetailActivity2 = GameDetailActivity.this;
                                                        Boolean bool2 = Boolean.FALSE;
                                                        gameDetailActivity2.s1(lVar, bool2, bool2);
                                                        try {
                                                            TextView textView = lVar.f31103l;
                                                            textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            lVar.f31095d.setProgress((int) downloadTask.getProgress());
                                                        } catch (Exception e4) {
                                                            e4.printStackTrace();
                                                        }
                                                        lVar.f31106o.setText("等待中");
                                                        break;
                                                    case 11:
                                                        lVar.f31100i.setBackgroundResource(R.drawable.recom_green_butn);
                                                        lVar.f31100i.setText("安装");
                                                        lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_green_color));
                                                        GameDetailActivity.this.s1(lVar, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 12:
                                                        GameDetailActivity.this.s1(lVar, Boolean.FALSE, Boolean.TRUE);
                                                        TextView textView2 = lVar.f31103l;
                                                        textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        lVar.f31106o.setText("解压中..");
                                                        lVar.f31094c.setProgress((int) downloadTask.getProgress());
                                                        lVar.f31100i.setBackgroundResource(R.drawable.extract);
                                                        lVar.f31100i.setText("解压中");
                                                        lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_grey_color));
                                                        break;
                                                    case 13:
                                                        GameDetailActivity.this.s1(lVar, Boolean.FALSE, Boolean.TRUE);
                                                        TextView textView3 = lVar.f31103l;
                                                        textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        lVar.f31106o.setText("点击重新解压");
                                                        lVar.f31094c.setProgress((int) downloadTask.getProgress());
                                                        lVar.f31100i.setBackgroundResource(R.drawable.reextract);
                                                        lVar.f31100i.setText("解压");
                                                        lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_blue_color));
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            lVar.f31100i.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            lVar.f31100i.setText(GameDetailActivity.this.F.getResources().getString(R.string.download_status_finished));
                            lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_main_color));
                            GameDetailActivity.this.s1(lVar, Boolean.TRUE, Boolean.FALSE);
                        }
                        lVar.f31100i.setBackgroundResource(R.drawable.recom_blue_butn);
                        lVar.f31100i.setText("继续");
                        lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_blue_color));
                        GameDetailActivity gameDetailActivity3 = GameDetailActivity.this;
                        Boolean bool3 = Boolean.FALSE;
                        gameDetailActivity3.s1(lVar, bool3, bool3);
                        try {
                            TextView textView4 = lVar.f31103l;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            lVar.f31095d.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        lVar.f31106o.setText("暂停中");
                    } else {
                        UtilsMy.C3(downloadTask);
                        lVar.f31100i.setBackgroundResource(R.drawable.recom_blue_butn);
                        lVar.f31100i.setText("暂停");
                        lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_blue_color));
                        GameDetailActivity gameDetailActivity4 = GameDetailActivity.this;
                        Boolean bool4 = Boolean.FALSE;
                        gameDetailActivity4.s1(lVar, bool4, bool4);
                        TextView textView5 = lVar.f31103l;
                        textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        TextView textView6 = lVar.f31106o;
                        textView6.setText(downloadTask.getSpeed() + "/S");
                        lVar.f31095d.setProgress((int) downloadTask.getProgress());
                    }
                }
                lVar.f31100i.setBackgroundResource(R.drawable.recom_blue_butn);
                lVar.f31100i.setTextColor(GameDetailActivity.this.F.getResources().getColor(R.color.app_blue_color));
                UtilsMy.m0(gameListItemBean2.getPay_tag_info(), gameListItemBean2.getCrc_sign_id());
                UtilsMy.n2(lVar.f31100i, lVar.f31098g, gameListItemBean2);
                GameDetailActivity.this.s1(lVar, Boolean.TRUE, Boolean.FALSE);
            }
            lVar.f31098g.setOnClickListener(new i(gameListItemBean2, 1));
            return view2;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return GameDetailActivity.this.f31034s0.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return GameDetailActivity.this.f31034s0.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return ((GameListItemBean) GameDetailActivity.this.f31034s0.get(i2)).getItemType();
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (getItemViewType(i2) == 2) {
                return a(i2, view, viewGroup);
            }
            return b(i2, view, viewGroup);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f31092a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f31093b;

        /* renamed from: c  reason: collision with root package name */
        public ProgressBar f31094c;

        /* renamed from: d  reason: collision with root package name */
        public ProgressBar f31095d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f31096e;

        /* renamed from: f  reason: collision with root package name */
        private LinearLayout f31097f;

        /* renamed from: g  reason: collision with root package name */
        private RelativeLayout f31098g;

        /* renamed from: h  reason: collision with root package name */
        private RelativeLayout f31099h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f31100i;

        /* renamed from: j  reason: collision with root package name */
        private LinearLayout f31101j;

        /* renamed from: k  reason: collision with root package name */
        private LinearLayout f31102k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f31103l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f31104m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f31105n;

        /* renamed from: o  reason: collision with root package name */
        public TextView f31106o;

        /* renamed from: p  reason: collision with root package name */
        TextView f31107p;

        l() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f31109a;

        /* renamed from: b  reason: collision with root package name */
        TextView f31110b;

        /* renamed from: c  reason: collision with root package name */
        TextView f31111c;

        /* renamed from: d  reason: collision with root package name */
        TextView f31112d;

        /* renamed from: e  reason: collision with root package name */
        TextView f31113e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f31114f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f31115g;

        /* renamed from: h  reason: collision with root package name */
        MStarBar f31116h;

        /* renamed from: i  reason: collision with root package name */
        HListView f31117i;

        /* renamed from: j  reason: collision with root package name */
        HListView f31118j;

        /* renamed from: k  reason: collision with root package name */
        LinearLayout f31119k;

        /* renamed from: l  reason: collision with root package name */
        ImageView f31120l;

        /* renamed from: m  reason: collision with root package name */
        SimpleDraweeView f31121m;

        /* renamed from: n  reason: collision with root package name */
        TextView f31122n;

        /* renamed from: o  reason: collision with root package name */
        LinearLayout f31123o;

        /* renamed from: p  reason: collision with root package name */
        View f31124p;

        public m(@NonNull View view) {
            super(view);
            this.f31109a = (SimpleDraweeView) view.findViewById(R.id.appIcon);
            this.f31110b = (TextView) view.findViewById(R.id.appName);
            this.f31111c = (TextView) view.findViewById(R.id.comment_head_point_tx);
            this.f31112d = (TextView) view.findViewById(R.id.describ);
            this.f31114f = (LinearLayout) view.findViewById(R.id.tips);
            this.f31115g = (LinearLayout) view.findViewById(R.id.scoreLayout);
            this.f31116h = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f31117i = (HListView) view.findViewById(R.id.screenListView);
            this.f31118j = (HListView) view.findViewById(R.id.comment);
            this.f31119k = (LinearLayout) view.findViewById(R.id.downloadButn);
            this.f31113e = (TextView) view.findViewById(R.id.downButnText);
            this.f31120l = (ImageView) view.findViewById(R.id.downIcon);
            this.f31121m = (SimpleDraweeView) view.findViewById(R.id.moveImg);
            this.f31122n = (TextView) view.findViewById(R.id.bottom);
            this.f31123o = (LinearLayout) view.findViewById(R.id.describLayout);
            this.f31124p = view.findViewById(R.id.appRecomLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends RecyclerView.Adapter<m> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameListItemBean f31127a;

            a(GameListItemBean gameListItemBean) {
                this.f31127a = gameListItemBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Ext ext = new Ext();
                ext.setPosition("brief");
                ext.setGameId(this.f31127a.getCrc_sign_id());
                ext.setArticleId(GameDetailActivity.this.H);
                com.papa.sim.statistic.p.l(GameDetailActivity.this.F).K1(Event.clickFromUserGameList, ext);
                IntentUtil.getInstance().goGameDetialActivity(GameDetailActivity.this.F, this.f31127a.getCrc_sign_id(), this.f31127a.getGame_info_tpl_type(), this.f31127a.getSp_tpl_two_position(), GameDetailActivity.this.J);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameListItemBean f31129a;

            b(GameListItemBean gameListItemBean) {
                this.f31129a = gameListItemBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Ext ext = new Ext();
                ext.setPosition("introduction");
                ext.setGameId(this.f31129a.getCrc_sign_id());
                ext.setArticleId(GameDetailActivity.this.H);
                com.papa.sim.statistic.p.l(GameDetailActivity.this.F).K1(Event.clickFromUserGameList, ext);
                IntentUtil.getInstance().goGameDetialActivity(GameDetailActivity.this.F, this.f31129a.getCrc_sign_id(), this.f31129a.getGame_info_tpl_type(), this.f31129a.getSp_tpl_two_position(), GameDetailActivity.this.J);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ m f31131a;

            c(m mVar) {
                this.f31131a = mVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                int height = this.f31131a.f31112d.getHeight() / GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp36);
                if (height == 0) {
                    height = GameDetailActivity.this.X0;
                }
                com.join.mgps.Util.t0.c(height + "  可以显示行数行");
                if (height >= 1) {
                    if (GameDetailActivity.this.X0 == 0) {
                        GameDetailActivity.this.X0 = height;
                    }
                    this.f31131a.f31112d.setMaxLines(height);
                    this.f31131a.f31112d.invalidate();
                } else if (height == 0) {
                    this.f31131a.f31112d.setMaxLines(2);
                    this.f31131a.f31112d.invalidate();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class d implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameListItemBean f31133a;

            d(GameListItemBean gameListItemBean) {
                this.f31133a = gameListItemBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goGameDetialActivity(GameDetailActivity.this.F, this.f31133a.getCrc_sign_id(), this.f31133a.getGame_info_tpl_type(), this.f31133a.getSp_tpl_two_position(), GameDetailActivity.this.J);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class e implements AdapterView.d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f31135a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ GameListItemBean f31136b;

            e(List list, GameListItemBean gameListItemBean) {
                this.f31135a = list;
                this.f31136b = gameListItemBean;
            }

            @Override // it.sephiroth.android.library.widget.AdapterView.d
            public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
                try {
                    Intent intent = new Intent(GameDetailActivity.this.F, ImagePagerActivity.class);
                    String[] strArr = new String[this.f31135a.size()];
                    for (int i4 = 0; i4 < this.f31135a.size(); i4++) {
                        strArr[i4] = (String) this.f31135a.get(i4);
                    }
                    if (com.join.mgps.Util.d2.i(this.f31136b.getVedio_url()) && i2 == 0) {
                        FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                        videoInfo.n(this.f31136b.getVedio_url());
                        videoInfo.h(strArr[0]);
                        FullScreenActivity_.G0(GameDetailActivity.this.F).a(videoInfo).start();
                        return;
                    }
                    intent.putExtra("image_urls", strArr);
                    intent.putExtra("image_index", i2);
                    GameDetailActivity.this.F.startActivity(intent);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        n() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(@NonNull m mVar, int i2) {
            int parseColor;
            int i4;
            int i5 = i2 * 2;
            GameListItemBean gameListItemBean = (GameListItemBean) GameDetailActivity.this.f31034s0.get(i5);
            gameListItemBean.getGame_score();
            if (GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp1280) >= GameDetailActivity.this.getResources().getDisplayMetrics().heightPixels - GameDetailActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp50)) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) mVar.f31123o.getLayoutParams();
                layoutParams.weight = 1.0f;
                mVar.f31123o.setLayoutParams(layoutParams);
            } else {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) mVar.f31118j.getLayoutParams();
                layoutParams2.weight = 1.0f;
                mVar.f31118j.setLayoutParams(layoutParams2);
            }
            switch (gameListItemBean.getBg_color_tag_type()) {
                case 1:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_1);
                    parseColor = Color.parseColor("#767676");
                    i4 = parseColor;
                    break;
                case 2:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_8);
                    parseColor = Color.parseColor("#776353");
                    i4 = parseColor;
                    break;
                case 3:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_7);
                    parseColor = Color.parseColor("#AB3B3A");
                    i4 = parseColor;
                    break;
                case 4:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_2);
                    parseColor = Color.parseColor("#5E4643");
                    i4 = parseColor;
                    break;
                case 5:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_4);
                    parseColor = Color.parseColor("#A4961B");
                    i4 = parseColor;
                    break;
                case 6:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_3);
                    parseColor = Color.parseColor("#84975C");
                    i4 = parseColor;
                    break;
                case 7:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_5);
                    parseColor = Color.parseColor("#3A8282");
                    i4 = parseColor;
                    break;
                case 8:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_9);
                    parseColor = Color.parseColor("#41578D");
                    i4 = parseColor;
                    break;
                case 9:
                    mVar.f31119k.setBackgroundResource(R.drawable.gamelist_detialbutn_back_6);
                    parseColor = Color.parseColor("#68465B");
                    i4 = parseColor;
                    break;
                default:
                    i4 = 0;
                    break;
            }
            SimpleDraweeView simpleDraweeView = mVar.f31109a;
            String ico_remote = gameListItemBean.getIco_remote();
            GameDetailActivity gameDetailActivity = GameDetailActivity.this;
            MyImageLoader.f(simpleDraweeView, R.drawable.main_normal_icon, ico_remote, MyImageLoader.D(gameDetailActivity.F, gameDetailActivity.getResources().getDimensionPixelOffset(R.dimen.wdp24)));
            mVar.f31110b.setText(gameListItemBean.getGame_name());
            if (gameListItemBean.getComment_score_switch() == 1) {
                if ("0.0".equals(gameListItemBean.getScore())) {
                    mVar.f31111c.setText("暂未出分");
                    mVar.f31111c.setTextSize(12.0f);
                    mVar.f31111c.setTextColor(Color.parseColor("#8a8a8a"));
                } else {
                    mVar.f31111c.setText(gameListItemBean.getScore());
                }
                mVar.f31116h.setIntegerMark(false);
                mVar.f31116h.setEnabled(false);
                mVar.f31116h.setStarCount(5);
                mVar.f31116h.setStarMark((Double.parseDouble(gameListItemBean.getScore()) * 5.0d) / 10.0d);
                mVar.f31115g.setVisibility(0);
            } else {
                mVar.f31115g.setVisibility(8);
            }
            UtilsMy.C2(mVar.f31113e, mVar.f31119k, gameListItemBean);
            mVar.f31119k.setOnClickListener(new i(gameListItemBean, 2));
            TextView textView = mVar.f31112d;
            textView.setText("简介：" + gameListItemBean.getGame_describe_second());
            if (com.join.mgps.Util.d2.h(gameListItemBean.getGame_describe_second())) {
                mVar.f31123o.setVisibility(4);
            } else {
                mVar.f31123o.setVisibility(0);
            }
            mVar.f31124p.setOnClickListener(new a(gameListItemBean));
            mVar.f31112d.setOnClickListener(new b(gameListItemBean));
            mVar.f31112d.post(new c(mVar));
            mVar.f31123o.setOnClickListener(new d(gameListItemBean));
            mVar.f31121m.setController((com.facebook.drawee.backends.pipeline.d) Fresco.newDraweeControllerBuilder().a(Uri.parse("res:///2131231906")).c(mVar.f31121m.getController()).E(true).build());
            if (GameDetailActivity.this.f31034s0.size() <= i5 + 2 && GameDetailActivity.this.J0) {
                mVar.f31122n.setVisibility(0);
                mVar.f31121m.setVisibility(8);
            } else {
                mVar.f31122n.setVisibility(8);
                mVar.f31121m.setVisibility(0);
            }
            UtilsMy.H(gameListItemBean.getScore(), gameListItemBean.getDown_count(), gameListItemBean.getAppSize(), gameListItemBean.getSp_tag_info(), mVar.f31114f, GameDetailActivity.this.F);
            List<DetialShowImageBean> pic_info = gameListItemBean.getPic_info();
            if (pic_info.size() == 0) {
                mVar.f31117i.setVisibility(8);
            } else {
                mVar.f31117i.setVisibility(0);
            }
            ArrayList arrayList = new ArrayList();
            for (int i6 = 0; i6 < pic_info.size(); i6++) {
                arrayList.add(pic_info.get(i6).getRemote().getPath());
            }
            com.join.mgps.adapter.w0 w0Var = new com.join.mgps.adapter.w0(GameDetailActivity.this.F, gameListItemBean.getPic_position(), arrayList, false);
            w0Var.b();
            mVar.f31117i.setAdapter((ListAdapter) w0Var);
            mVar.f31117i.setOnItemClickListener(new e(arrayList, gameListItemBean));
            List<CommentBaseBean> comment_list = gameListItemBean.getComment_list();
            String customer_info = gameListItemBean.getCustomer_info();
            try {
                if (com.join.mgps.Util.d2.i(customer_info) && comment_list != null && comment_list.size() > 0 && com.join.mgps.Util.d2.i(comment_list.get(0).getId())) {
                    CommentBaseBean commentBaseBean = new CommentBaseBean();
                    commentBaseBean.setHead_portrait(GameDetailActivity.this.f31036t0.getPortrait());
                    commentBaseBean.setUser_name(GameDetailActivity.this.f31036t0.getNick_name());
                    commentBaseBean.setContent(customer_info);
                    commentBaseBean.setId("");
                    commentBaseBean.setStars_score("0");
                    comment_list.add(0, commentBaseBean);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (comment_list != null && comment_list.size() != 0) {
                mVar.f31118j.setAdapter((ListAdapter) new j(comment_list, i4, gameListItemBean));
                mVar.f31118j.setVisibility(0);
            } else {
                mVar.f31118j.setVisibility(8);
            }
            DownloadTask downloadTask = gameListItemBean.getDownloadTask();
            String plugin_num = gameListItemBean.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                mVar.f31113e.setText("开始");
            } else if (downloadTask == null) {
                mVar.f31120l.setImageResource(R.drawable.gamelist_ic_domn);
                mVar.f31120l.setVisibility(0);
                if (UtilsMy.e0(gameListItemBean.getTag_info())) {
                    if (UtilsMy.m0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id()) <= 0 ? com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F).c(GameDetailActivity.this.F, gameListItemBean.getPackage_name()) : false) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(GameDetailActivity.this.F).k(GameDetailActivity.this.F, gameListItemBean.getPackage_name());
                        if (com.join.mgps.Util.d2.i(gameListItemBean.getVer()) && k4.d() < Integer.parseInt(gameListItemBean.getVer())) {
                            mVar.f31113e.setText("更新");
                            return;
                        } else {
                            mVar.f31113e.setText(GameDetailActivity.this.F.getResources().getString(R.string.download_status_finished));
                            return;
                        }
                    }
                    UtilsMy.m0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id());
                    UtilsMy.C2(mVar.f31113e, mVar.f31119k, gameListItemBean);
                    return;
                }
                UtilsMy.m0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id());
                UtilsMy.C2(mVar.f31113e, mVar.f31119k, gameListItemBean);
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.m0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                mVar.f31120l.setImageResource(R.drawable.gamelist_ic_domn);
                mVar.f31120l.setVisibility(0);
                if (status != 0) {
                    if (status == 27) {
                        mVar.f31120l.setImageResource(R.drawable.detail_comment_download_continue);
                        TextView textView2 = mVar.f31113e;
                        textView2.setText(downloadTask.getProgress() + "%");
                        return;
                    } else if (status == 48) {
                        mVar.f31113e.setText("安装中");
                        mVar.f31120l.setVisibility(8);
                        return;
                    } else if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                if (status != 6) {
                                    if (status != 7) {
                                        if (status != 42) {
                                            if (status != 43) {
                                                switch (status) {
                                                    case 9:
                                                        mVar.f31113e.setText("更新");
                                                        return;
                                                    case 10:
                                                        mVar.f31113e.setText("等待");
                                                        return;
                                                    case 11:
                                                        mVar.f31113e.setText("安装");
                                                        mVar.f31120l.setVisibility(8);
                                                        return;
                                                    case 12:
                                                        mVar.f31113e.setText("解压中");
                                                        mVar.f31120l.setVisibility(8);
                                                        return;
                                                    case 13:
                                                        mVar.f31113e.setText("解压");
                                                        mVar.f31120l.setVisibility(8);
                                                        return;
                                                    default:
                                                        return;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            mVar.f31113e.setText(GameDetailActivity.this.F.getResources().getString(R.string.download_status_finished));
                            mVar.f31120l.setVisibility(8);
                            return;
                        }
                        mVar.f31120l.setImageResource(R.drawable.detail_comment_download_continue);
                        TextView textView3 = mVar.f31113e;
                        textView3.setText(downloadTask.getProgress() + "%");
                        return;
                    } else {
                        UtilsMy.C3(downloadTask);
                        mVar.f31120l.setImageResource(R.drawable.detail_comment_download_pause);
                        TextView textView4 = mVar.f31113e;
                        textView4.setText(downloadTask.getProgress() + "%");
                        return;
                    }
                }
                UtilsMy.m0(gameListItemBean.getPay_tag_info(), gameListItemBean.getCrc_sign_id());
                UtilsMy.C2(mVar.f31113e, mVar.f31119k, gameListItemBean);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: b */
        public m onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            return new m(LayoutInflater.from(GameDetailActivity.this.F).inflate(R.layout.gamelist_detial_item_layout, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameDetailActivity.this.f31034s0.size() / 2;
        }
    }

    private int V0() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void e1(View view) {
        this.N0.showAtLocation(view, 81, 0, 0);
    }

    public static String j1(String str) {
        try {
            return new String(str.getBytes("UTF-8"), "UTF-8");
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p1(int i2) {
        if (this.f31034s0.size() > 0) {
            GameListItemBean gameListItemBean = this.f31034s0.get(i2 * 2);
            switch (gameListItemBean.getBg_color_tag_type()) {
                case 1:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_1);
                    break;
                case 2:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_8);
                    break;
                case 3:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_7);
                    break;
                case 4:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_2);
                    break;
                case 5:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_4);
                    break;
                case 6:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_3);
                    break;
                case 7:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_5);
                    break;
                case 8:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_9);
                    break;
                case 9:
                    this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_6);
                    break;
            }
            if (gameListItemBean.getPic_info() == null || gameListItemBean.getPic_info().size() <= 0) {
                return;
            }
            this.f31029q.getHierarchy().x(r.c.f12145h);
            this.f31029q.getHierarchy().w(new PointF(0.5f, 0.0f));
            this.f31029q.setImageURI(Uri.parse(gameListItemBean.getPic_info().get(0).getRemote().getPath()));
        }
    }

    private void q1(List<GameListItemBean> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.A0) == null || list2.size() == 0) {
            return;
        }
        for (GameListItemBean gameListItemBean : list) {
            Iterator<DownloadTask> it2 = this.A0.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (gameListItemBean.getMod_info() != null) {
                        ModInfoBean mod_info = gameListItemBean.getMod_info();
                        DownloadTask downloadTask = this.U0.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                        DownloadTask downloadTask2 = this.U0.get(mod_info.getMod_game_id());
                        z3 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : false;
                        if (!z3 || !z4) {
                            if (z3) {
                                if (gameListItemBean.getMod_info() != null && next.getCrc_link_type_val().equals(gameListItemBean.getMod_info().getMod_game_id())) {
                                    gameListItemBean.setDownloadTask(next);
                                    break;
                                }
                            } else if (z4) {
                                if (next.getCrc_link_type_val().equals(gameListItemBean.getCrc_sign_id())) {
                                    gameListItemBean.setDownloadTask(next);
                                    break;
                                }
                            } else {
                                DownloadTask B = gameListItemBean.getMod_info() != null ? g1.f.G().B(gameListItemBean.getMod_info().getMod_game_id()) : null;
                                if (B == null) {
                                    B = g1.f.G().B(gameListItemBean.getCrc_sign_id());
                                }
                                if (B != null && next.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                    gameListItemBean.setDownloadTask(next);
                                    break;
                                }
                            }
                        } else if (next.getCrc_link_type_val().equals(gameListItemBean.getCrc_sign_id())) {
                            gameListItemBean.setDownloadTask(next);
                            break;
                        }
                    } else if (next.getCrc_link_type_val().equals(gameListItemBean.getCrc_sign_id())) {
                        gameListItemBean.setDownloadTask(next);
                        break;
                    }
                }
            }
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.A0.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.U0.remove(next.getCrc_link_type_val());
                it2.remove();
                for (GameListItemBean gameListItemBean : this.f31034s0) {
                    if (gameListItemBean.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.U0.get(gameListItemBean.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.U0.get(gameListItemBean.getGame_id());
                        if (downloadTask2 == null && downloadTask3 == null) {
                            gameListItemBean.setDownloadTask(null);
                        } else if (downloadTask2 != null) {
                            gameListItemBean.setDownloadTask(downloadTask2);
                        } else if (downloadTask3 != null) {
                            gameListItemBean.setDownloadTask(downloadTask3);
                        } else if (gameListItemBean.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            gameListItemBean.setDownloadTask(null);
                        }
                    } else if (gameListItemBean.getItemType() != 2 && gameListItemBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        gameListItemBean.setDownloadTask(null);
                    }
                }
            }
        }
        this.G.notifyDataSetChanged();
        n nVar = this.F0;
        if (nVar != null) {
            nVar.notifyDataSetChanged();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.U0;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.G.notifyDataSetChanged();
            n nVar = this.F0;
            if (nVar != null) {
                nVar.notifyDataSetChanged();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.D3(this.A0);
        if (!this.U0.containsKey(downloadTask.getCrc_link_type_val())) {
            this.A0.add(downloadTask);
            this.U0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        this.G.notifyDataSetChanged();
        n nVar = this.F0;
        if (nVar != null) {
            nVar.notifyDataSetChanged();
        }
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.U0;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.A0.add(downloadTask);
            this.U0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.U0.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.G.notifyDataSetChanged();
        n nVar = this.F0;
        if (nVar != null) {
            nVar.notifyDataSetChanged();
        }
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (GameListItemBean gameListItemBean : this.f31034s0) {
                if (gameListItemBean.getMod_info() != null) {
                    ModInfoBean mod_info = gameListItemBean.getMod_info();
                    DownloadTask downloadTask2 = this.U0.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.U0.get(mod_info.getMod_game_id());
                    if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                        z3 = false;
                    }
                    if (z3 && z4) {
                        if (downloadTask.getCrc_link_type_val().equals(gameListItemBean.getCrc_sign_id())) {
                            gameListItemBean.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z3) {
                        if (gameListItemBean.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(gameListItemBean.getMod_info().getMod_game_id())) {
                            gameListItemBean.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z4) {
                        if (downloadTask.getCrc_link_type_val().equals(gameListItemBean.getCrc_sign_id())) {
                            gameListItemBean.setDownloadTask(downloadTask);
                            return;
                        }
                    } else {
                        DownloadTask B = gameListItemBean.getMod_info() != null ? g1.f.G().B(gameListItemBean.getMod_info().getMod_game_id()) : null;
                        if (B == null) {
                            B = g1.f.G().B(gameListItemBean.getCrc_sign_id());
                        }
                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                            gameListItemBean.setDownloadTask(downloadTask);
                            return;
                        }
                    }
                } else if (downloadTask.getCrc_link_type_val().equals(gameListItemBean.getCrc_sign_id())) {
                    gameListItemBean.setDownloadTask(downloadTask);
                    return;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        int findFirstVisibleItemPosition;
        DownloadTask downloadTask;
        DownloadTask downloadTask2;
        try {
            if (this.W0 >= 0 && this.V0 < this.f31013d.getCount()) {
                for (int i2 = this.W0; i2 <= this.V0; i2++) {
                    GameListItemBean gameListItemBean = (GameListItemBean) this.f31013d.getItemAtPosition(i2);
                    if (gameListItemBean != null && (downloadTask2 = gameListItemBean.getDownloadTask()) != null && (downloadTask2.getStatus() == 2 || downloadTask2.getStatus() == 12)) {
                        View childAt = this.f31013d.getChildAt(i2 - this.W0);
                        if (childAt.getTag() instanceof l) {
                            l lVar = (l) childAt.getTag();
                            try {
                                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                                if (f4 == null) {
                                    return;
                                }
                                long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                                if (downloadTask2.getSize() == 0) {
                                    TextView textView = lVar.f31103l;
                                    textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                } else {
                                    TextView textView2 = lVar.f31103l;
                                    textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                }
                                if (downloadTask2.getStatus() == 12) {
                                    lVar.f31094c.setProgress((int) f4.getProgress());
                                } else {
                                    lVar.f31095d.setProgress((int) f4.getProgress());
                                }
                                if (downloadTask2.getStatus() == 2) {
                                    TextView textView3 = lVar.f31106o;
                                    textView3.setText(f4.getSpeed() + "/S");
                                }
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        try {
            if (this.f31011b == null || (findFirstVisibleItemPosition = this.E0.findFirstVisibleItemPosition()) < 0 || (downloadTask = this.f31034s0.get(findFirstVisibleItemPosition * 2).getDownloadTask()) == null) {
                return;
            }
            if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) {
                View childAt2 = this.f31011b.getChildAt(0);
                if (this.f31011b.getChildViewHolder(childAt2) != null) {
                    m mVar = (m) this.f31011b.getChildViewHolder(childAt2);
                    DownloadTask f5 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                    TextView textView4 = mVar.f31113e;
                    textView4.setText(f5.getProgress() + "%");
                    mVar.f31120l.setImageResource(R.drawable.detail_comment_download_pause);
                }
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void E0() {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().addFlags(67108864);
            this.f31031r.setPadding(0, V0(), 0, 0);
        }
        this.F = this;
        Intent intent = getIntent();
        this.H = intent.getStringExtra("fromid");
        this.J = intent.getIntExtra(DownloadMethodPromptDialog_.F, 0);
        this.I = intent.getIntExtra("groupuid", 111);
        this.f31024n0 = intent.getStringExtra("gameid");
        this.f31026o0 = intent.getStringExtra("company_id");
        this.f31030q0 = com.join.mgps.rpc.impl.a.b0();
        this.f31028p0 = AccountUtil_.getInstance_(this.F).getAccountData();
        com.join.mgps.Util.c0.a().d(this);
        this.f31041w.setTextColor(-1);
        this.f31043x.setTextColor(-1);
        k kVar = new k();
        this.G = kVar;
        this.f31013d.setAdapter((ListAdapter) kVar);
        this.f31013d.setOnScrollListener(this);
        List<DownloadTask> d4 = g1.f.G().d();
        this.A0 = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.A0) {
                this.U0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f31013d.setPreLoadCount(6);
        H0();
        this.f31013d.setPullLoadEnable(new a());
        this.f31042w0 = new ArrayList();
        this.f31044x0 = new ArrayList();
        this.f31025o.setOnClickListener(new b());
        ViewPagerLayoutManager viewPagerLayoutManager = new ViewPagerLayoutManager(this.F, 1);
        this.E0 = viewPagerLayoutManager;
        viewPagerLayoutManager.d(new c());
        this.F0 = new n();
        this.f31011b.setLayoutManager(this.E0);
        this.f31011b.setAdapter(this.F0);
        this.f31011b.setLoadingMoreEnabled(true);
        this.f31011b.setPullRefreshEnabled(false);
        this.f31011b.setPreLoadCount(10);
        this.f31011b.setLoadingListener(new d());
        this.f31031r.setBackgroundResource(R.drawable.gamelist_detialback_1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0(int i2) {
        if (this.f31034s0.size() > 0) {
            this.f31034s0.remove(i2);
            this.f31034s0.remove(i2);
            k kVar = this.G;
            if (kVar != null) {
                kVar.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0(List<GameListItemBean> list) {
        if (this.f31032r0 == 2 && this.f31034s0.size() != 0) {
            this.f31034s0.clear();
            k kVar = this.G;
            if (kVar != null) {
                kVar.notifyDataSetChanged();
            }
        }
        for (GameListItemBean gameListItemBean : list) {
            int i2 = this.J;
            if (i2 == 0) {
                gameListItemBean.set_from(102);
                gameListItemBean.set_from_type(111);
                this.J = 111;
            } else {
                gameListItemBean.set_from(i2);
                gameListItemBean.set_from_type(this.J);
            }
            this.f31034s0.add(gameListItemBean);
            GameListItemBean gameListItemBean2 = new GameListItemBean();
            gameListItemBean2.setPic_info(gameListItemBean.getPic_info());
            gameListItemBean2.setPic_position(gameListItemBean.getPic_position());
            gameListItemBean2.setItemType(2);
            this.f31034s0.add(gameListItemBean2);
        }
        try {
            this.f31037u.setText(this.f31036t0.getTitle());
            MyImageLoader.i(this.f31029q, this.f31034s0.get(0).getPic_info().get(0).getRemote().getPath(), r.c.f12145h);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        k kVar2 = this.G;
        if (kVar2 != null) {
            kVar2.notifyDataSetChanged();
        }
        n nVar = this.F0;
        if (nVar != null) {
            nVar.notifyDataSetChanged();
        }
        this.f31011b.q1();
        q1(this.f31034s0);
        if (this.f31032r0 == 2) {
            p1(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0() {
        try {
            try {
                com.join.mgps.Util.t0.d("gamelist  ", "loadmore 3333");
                this.D0 = true;
                if (com.join.android.app.common.utils.f.j(this.F)) {
                    if (this.f31032r0 == 1) {
                        showLoding();
                    }
                    ArrayList arrayList = new ArrayList();
                    if (com.join.android.app.common.utils.f.j(this.F)) {
                        this.f31038u0 = "";
                        RequestBeanUtil.getInstance(this.F);
                        this.f31040v0 = RequestBeanUtil.getVersionAndVersionName();
                        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                        linkedMultiValueMap.add("uid", Integer.valueOf(this.f31028p0.getUid()));
                        linkedMultiValueMap.add("token", this.f31028p0.getToken());
                        linkedMultiValueMap.add("group_id", this.H);
                        linkedMultiValueMap.add("group_uid", Integer.valueOf(this.I));
                        linkedMultiValueMap.add("page", Integer.valueOf(this.f31032r0));
                        linkedMultiValueMap.add("device_id", this.f31038u0);
                        linkedMultiValueMap.add("version", this.f31040v0);
                        com.join.mgps.Util.t0.d("gamelist  ", "loadmore 44444  page=" + this.f31032r0 + linkedMultiValueMap.toString());
                        ForumResponseGame A = this.f31030q0.A(linkedMultiValueMap);
                        if (A.getData() != null && A.getData().getDetails() != null) {
                            this.f31036t0 = A.getData().getDetails();
                        }
                        this.f31032r0++;
                        if (A.getError() == 0 && A.getData() != null && A.getData() != null && A.getData().getGame_list().size() > 0) {
                            if (this.f31032r0 == 2) {
                                this.B0 = A;
                                Z0();
                            }
                            X0();
                            r1();
                            c1();
                            for (int i2 = 0; i2 < A.getData().getGame_list().size(); i2++) {
                                arrayList.add(A.getData().getGame_list().get(i2));
                            }
                            if (A.getData().getGame_list().size() == 0) {
                                com.join.mgps.Util.t0.d("gamelist  ", "nomore 5555  page=" + this.f31032r0);
                                n1(A);
                            }
                            G0(arrayList);
                        } else {
                            com.join.mgps.Util.t0.d("gamelist  ", "nomore 666666  json=" + JsonMapper.getInstance().toJson(A));
                            if (this.f31032r0 == 2) {
                                K0();
                            } else {
                                I0(A);
                            }
                        }
                    } else {
                        if (this.f31032r0 == 2) {
                            showLodingFailed();
                        }
                        o1();
                    }
                } else {
                    showLodingFailed();
                }
            } catch (Exception e4) {
                showLodingFailed();
                e4.printStackTrace();
            }
        } finally {
            this.D0 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(ForumResponseGame forumResponseGame) {
        try {
            this.J0 = true;
            if (forumResponseGame.getData().getDetails().getIs_self().equals("0")) {
                XListView2 xListView2 = this.f31013d;
                if (xListView2 != null) {
                    xListView2.f();
                }
                XListView2 xListView22 = this.f31013d;
                if (xListView22 != null) {
                    xListView22.setNoMore();
                }
            } else {
                this.f31021l.setText("编辑");
                this.f31021l.setBackgroundResource(R.drawable.game_detail_blue);
                this.f31036t0.setTv_btn(1);
                View view = this.K0;
                if (view != null) {
                    this.f31013d.removeFooterView(view);
                }
                XListView2 xListView23 = this.f31013d;
                if (xListView23 != null) {
                    xListView23.setNoMore();
                }
            }
            this.F0.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        try {
            XListView2 xListView2 = this.f31013d;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        ForumResponseGame.Datadetails datadetails = this.f31036t0;
        if (datadetails == null) {
            return;
        }
        TextView textView = this.f31019j;
        if (textView != null) {
            textView.setText(datadetails.getNick_name());
        }
        TextView textView2 = this.f31020k;
        if (textView2 != null) {
            textView2.setText(this.f31036t0.getBook_count() + "订阅");
        }
        TextView textView3 = this.f31037u;
        if (textView3 != null) {
            textView3.setVisibility(0);
            this.f31037u.setText(this.f31036t0.getTitle());
        }
        LinearLayout linearLayout = this.f31027p;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        SimpleDraweeView simpleDraweeView = this.f31018i;
        if (simpleDraweeView != null) {
            MyImageLoader.h(simpleDraweeView, this.f31036t0.getPortrait());
        }
        LinearLayout linearLayout2 = this.f31010a;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.f31012c;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f31011b;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        X0();
        this.f31021l.setTextColor(-1);
        if (this.f31036t0.getIs_self().equals("1")) {
            this.f31021l.setText("编辑");
            this.f31021l.setBackgroundResource(R.drawable.game_detail_blue);
            this.f31036t0.setTv_btn(1);
        } else if (this.f31036t0.getBook_state().equals("1")) {
            this.f31021l.setText("已订阅");
            this.f31021l.setBackgroundResource(R.drawable.game_detail_gray);
        } else {
            this.f31021l.setTextColor(-16777216);
            this.f31021l.setText("+  订阅");
            this.f31021l.setBackgroundResource(R.drawable.game_detail_o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(String str) {
        g1(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0() {
        String str = "";
        try {
            if (this.f31036t0 != null && W0()) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.f31028p0.getUid()));
                linkedMultiValueMap.add("token", this.f31028p0.getToken());
                linkedMultiValueMap.add("group_id", this.f31036t0.getId());
                linkedMultiValueMap.add("group_title", this.I0.equals("") ? this.f31036t0.getTitle() : this.I0);
                this.f31046y0 = this.f31046y0.equals("") ? "" : this.f31046y0;
                if (!this.f31048z0.equals("")) {
                    str = this.f31048z0;
                }
                this.f31048z0 = str;
                this.f31046y0 = j1(this.f31046y0);
                this.f31048z0 = j1(this.f31048z0);
                linkedMultiValueMap.add("del_game_list", this.f31046y0);
                linkedMultiValueMap.add("modify_game_list", this.f31048z0);
                linkedMultiValueMap.add("device_id", this.f31038u0);
                linkedMultiValueMap.add("version", this.f31040v0);
                GameFromBooleanBean a02 = this.f31030q0.a0(linkedMultiValueMap);
                if (a02.getError() == 0 && a02.getData().isState()) {
                    d1();
                } else {
                    g1("修改失败");
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        ForumResponseGame.Datadetails datadetails = this.f31036t0;
        if (datadetails == null) {
            return;
        }
        if (datadetails.getIs_self().equals("1") && this.f31036t0.getTv_btn() == 0) {
            f1(null, this.f31037u.getText().toString().trim(), "", null, 1, 0);
            return;
        }
        List<GameListItemBean> list = this.f31034s0;
        if (list == null || list.size() == 0) {
            return;
        }
        if (this.f31012c.getVisibility() == 0) {
            this.f31012c.setVisibility(8);
            this.f31011b.setVisibility(0);
            this.f31039v.setText("列表模式");
            return;
        }
        this.f31012c.setVisibility(0);
        this.f31011b.setVisibility(8);
        this.f31039v.setText("大图模式");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0(int i2) {
        if (this.f31034s0.size() > 0) {
            this.f31034s0.remove(i2);
            k kVar = this.G;
            if (kVar != null) {
                kVar.notifyDataSetChanged();
            }
        }
    }

    boolean W0() {
        for (int i2 = 0; i2 < this.f31042w0.size(); i2++) {
            this.f31048z0 += this.f31042w0.get(i2) + ",";
        }
        for (int i4 = 0; i4 < this.f31044x0.size(); i4++) {
            this.f31046y0 += this.f31044x0.get(i4) + ",";
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0() {
        LinearLayout linearLayout = this.f31014e;
        if (linearLayout == null || this.f31015f == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f31015f.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    @RequiresApi(api = 26)
    public void Y0() {
        if (this.C0) {
            try {
                ShareToBaseBean shareToBaseBean = new ShareToBaseBean();
                shareToBaseBean.setUid(this.f31028p0.getUid());
                shareToBaseBean.setToken("");
                shareToBaseBean.setDevice_id(this.f31038u0);
                int i2 = this.f31032r0;
                shareToBaseBean.setPage(i2 > 1 ? i2 - 1 : 1);
                shareToBaseBean.setVersion(this.f31040v0);
                shareToBaseBean.setGroup_id(Integer.valueOf(this.H).intValue());
                shareToBaseBean.setGroup_uid(this.I);
                String str = "http://anv3cjapi.5fun.com/static/game_favorites/index.html?share_id=" + Base64.encodeToString(JsonMapper.getInstance().toJson(shareToBaseBean).toString().getBytes(), 2);
                ShareBean shareBean = new ShareBean();
                shareBean.setQqUrl(str);
                shareBean.setqZoneShareUrl(str);
                shareBean.setWeiboShareUrl(str);
                shareBean.setWechatFriendUrl(str);
                shareBean.setWechatShareUrl(str);
                shareBean.setText("这是我珍藏的好游戏，一起来玩啊~");
                ForumResponseGame.Datadetails datadetails = this.f31036t0;
                if (datadetails != null) {
                    shareBean.setTitle(datadetails.getTitle());
                }
                if (this.f31034s0.size() != 0) {
                    shareBean.setImageUrl(this.f31034s0.get(0).getIco_remote());
                } else {
                    shareBean.setImageUrl("http://ctimg.mg3721.com/upload/images/wf_ico.png?ver=2.2");
                }
                com.join.mgps.Util.r.r(this.F, shareBean);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        g1("请先点击完成");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void a1() {
        try {
            try {
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (this.f31036t0 == null) {
                return;
            }
            this.H0 = true;
            if (com.join.android.app.common.utils.f.j(this.F)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                if (com.join.mgps.Util.d2.h(this.f31024n0)) {
                    this.f31024n0 = "";
                }
                if (com.join.mgps.Util.d2.h(this.f31026o0)) {
                    this.f31026o0 = "";
                }
                linkedMultiValueMap.add("uid", Integer.valueOf(this.f31028p0.getUid()));
                linkedMultiValueMap.add("token", this.f31028p0.getToken());
                linkedMultiValueMap.add("game_id", this.f31024n0);
                linkedMultiValueMap.add("company_id", this.f31026o0);
                linkedMultiValueMap.add("be_book_group_id", this.f31036t0.getId());
                linkedMultiValueMap.add("be_book_group_uid", Integer.valueOf(this.f31036t0.getUid()));
                linkedMultiValueMap.add("device_id", this.f31038u0);
                linkedMultiValueMap.add("version", this.f31040v0);
                if (this.f31036t0.getBook_state().equals("0")) {
                    GameFromBooleanBean P = this.f31030q0.P(linkedMultiValueMap);
                    if (P.getError() == 0 && P.getData().isState()) {
                        b1(1);
                    } else if (P.getError() == 701) {
                        this.L0 = false;
                        IntentUtil.getInstance().goMyAccountLoginActivity(this.F);
                        g1("Token已失效，请重新登录");
                        IntentUtil.getInstance().goLogin(this.F);
                    } else {
                        b1(3);
                    }
                } else if (this.f31036t0.getBook_state().equals("1")) {
                    GameFromBooleanBean E = this.f31030q0.E(linkedMultiValueMap);
                    if (E.getError() == 0 && E.getData().isState()) {
                        b1(2);
                    } else if (E.getError() == 701) {
                        this.L0 = false;
                        IntentUtil.getInstance().goMyAccountLoginActivity(this.F);
                        g1("Token已失效，请重新登录");
                        IntentUtil.getInstance().goLogin(this.F);
                    } else {
                        b1(4);
                    }
                }
            }
        } finally {
            this.H0 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1(int i2) {
        if (this.f31036t0 == null) {
            return;
        }
        this.f31021l.setTextColor(-1);
        if (i2 == 1) {
            this.f31021l.setText("已订阅");
            this.f31021l.setBackgroundResource(R.drawable.game_detail_gray);
            this.f31036t0.setBook_state("1");
            g1("订阅成功");
            TextView textView = this.D;
            if (textView != null) {
                textView.setText("已订阅");
                this.D.setBackgroundResource(R.drawable.game_detail_gray);
            }
            int intValue = Integer.valueOf(this.f31036t0.getBook_count()).intValue() + 1;
            ForumResponseGame.Datadetails datadetails = this.f31036t0;
            datadetails.setBook_count(intValue + "");
            TextView textView2 = this.E;
            if (textView2 != null) {
                textView2.setText(intValue + "人订阅，第一时间获取新动态");
            }
        } else if (i2 == 2) {
            this.f31021l.setTextColor(-16777216);
            this.f31021l.setText("+  订阅");
            this.f31021l.setBackgroundResource(R.drawable.game_detail_o);
            this.f31036t0.setBook_state("0");
            g1("取消订阅成功");
            TextView textView3 = this.D;
            if (textView3 != null) {
                textView3.setText("+  订阅");
                this.D.setBackgroundResource(R.drawable.game_detail_o);
                this.D.setTextColor(-16777216);
            }
            int intValue2 = Integer.valueOf(this.f31036t0.getBook_count()).intValue() - 1;
            ForumResponseGame.Datadetails datadetails2 = this.f31036t0;
            datadetails2.setBook_count(intValue2 + "");
            TextView textView4 = this.E;
            if (textView4 != null) {
                textView4.setText(intValue2 + "人订阅，第一时间获取新动态");
            }
        } else if (i2 == 3) {
            g1("订阅失败");
        } else {
            g1("取消订阅失败");
        }
        this.G.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
        this.f31033s.setVisibility(0);
        this.f31027p.setVisibility(8);
        if (this.f31011b.getVisibility() == 8 && this.f31012c.getVisibility() == 8) {
            this.f31012c.setVisibility(0);
        }
        MyImageLoader.h(this.f31018i, this.B0.getData().getDetails().getPortrait());
        this.f31019j.setText(this.f31036t0.getNick_name());
        this.f31037u.setText(this.f31036t0.getTitle());
        Long.parseLong(this.f31036t0.getAdd_time());
        TextView textView = this.f31020k;
        textView.setText(this.f31036t0.getBook_count() + "订阅");
        this.f31021l.setTextColor(-1);
        if (this.f31036t0.getIs_self().equals("1")) {
            this.f31021l.setText("编辑");
            this.f31021l.setBackgroundResource(R.drawable.game_detail_blue);
            this.f31036t0.setTv_btn(1);
        } else if (this.f31036t0.getBook_state().equals("1")) {
            this.f31021l.setText("已订阅");
            this.f31021l.setBackgroundResource(R.drawable.game_detail_gray);
        } else {
            this.f31021l.setTextColor(-16777216);
            this.f31021l.setText("+  订阅");
            this.f31021l.setBackgroundResource(R.drawable.game_detail_o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d1() {
        String trim;
        if (this.f31036t0 == null) {
            return;
        }
        if (this.f31047z != null) {
            trim = this.f31037u.getText().toString().trim();
        } else {
            trim = this.f31037u.getText().toString().trim();
        }
        if (!trim.equals(this.f31036t0.getTitle()) || !this.f31037u.getText().toString().trim().equals(this.f31036t0.getTitle()) || !this.f31046y0.equals("") || !this.f31048z0.equals("")) {
            this.f31042w0.clear();
            this.f31044x0.clear();
            this.f31046y0 = "";
            this.f31048z0 = "";
            g1("修改成功");
            this.f31032r0 = 1;
            this.J0 = false;
            J0();
            H0();
        }
        XListView2 xListView2 = this.f31013d;
        if (xListView2 != null) {
            xListView2.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1(l lVar, String str, String str2, GameListItemBean gameListItemBean, int i2, int i4) {
        this.Q0 = false;
        if (this.R0 == null) {
            this.R0 = LayoutInflater.from(this.F).inflate(R.layout.appointment_pay_popwindow_page, (ViewGroup) null);
            this.N0 = new PopupWindow(this.R0, -1, -1, true);
            EditText editText = (EditText) this.R0.findViewById(R.id.edit);
            this.T0 = editText;
            editText.setInputType(1);
            this.T0.setFilters(new InputFilter[]{new InputFilter.LengthFilter(12)});
            ((LinearLayout) this.R0.findViewById(R.id.ll_dismiss)).setOnClickListener(new e());
            this.N0.setOnDismissListener(new f());
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString.length(), 33);
            EditText editText2 = this.T0;
            editText2.setHint(new SpannedString("  " + ((Object) spannableString)));
            ((Button) this.R0.findViewById(R.id.btn_confirm)).setOnClickListener(new g(i2, str, str2, lVar, gameListItemBean));
            this.T0.setFocusable(true);
            this.N0.setFocusable(true);
            this.T0.setFocusableInTouchMode(true);
            this.T0.setFocusable(true);
            this.T0.requestFocus();
            ((InputMethodManager) this.F.getSystemService("input_method")).toggleSoftInput(0, 2);
            View decorView = getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnGlobalLayoutListener(new h(decorView));
            View inflate = LayoutInflater.from(this.F).inflate(R.layout.activity_game_detail, (ViewGroup) null);
            this.S0 = inflate;
            e1(inflate);
            return;
        }
        ((InputMethodManager) this.F.getSystemService("input_method")).toggleSoftInput(0, 2);
        SpannableString spannableString2 = new SpannableString(str);
        spannableString2.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString2.length(), 33);
        EditText editText3 = this.T0;
        editText3.setHint(new SpannedString("  " + ((Object) spannableString2)));
        this.N0.showAtLocation(this.S0, 81, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(String str) {
        if (isDestroyed()) {
            return;
        }
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void h1() {
        if (this.f31036t0 == null) {
            return;
        }
        if (this.C0) {
            Ext ext = new Ext();
            ext.setPosition("brief");
            ext.setGameId("0");
            ext.setArticleId(this.H);
            com.papa.sim.statistic.p.l(this.F).K1(Event.clickFromUserGameList, ext);
            CommentSelfListActivity_.n1(this.F).a(this.f31036t0.getUid()).start();
            return;
        }
        g1("请先点击完成");
    }

    public String i1(Long l4) {
        return new SimpleDateFormat("MM/dd").format(new Date(new Long(l4.longValue()).longValue()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        if (this.C0) {
            finish();
        } else {
            g1("请先点击完成");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void k1() {
        if (!com.ta.utdid2.android.utils.f.f(this.F)) {
            g1("无网络连接");
        } else if (this.f31036t0 == null) {
        } else {
            if (!IntentUtil.getInstance().goLogin(this.F)) {
                if (this.f31036t0.getIs_self().equals("1")) {
                    if (this.f31036t0.getTv_btn() == 1) {
                        this.f31021l.setText("完成");
                        this.f31021l.setBackgroundResource(R.drawable.game_detail_green);
                        this.f31036t0.setTv_btn(0);
                        this.f31013d.e();
                        this.f31013d.f();
                        TextView textView = this.A;
                        if (textView != null) {
                            textView.setVisibility(0);
                        }
                        this.f31025o.setVisibility(0);
                        this.C0 = false;
                        this.f31039v.setText("修改");
                        List<GameListItemBean> list = this.f31034s0;
                        if (list == null || list.size() == 0) {
                            return;
                        }
                        this.f31011b.setVisibility(8);
                        this.f31012c.setVisibility(0);
                    } else if (this.f31036t0.getTv_btn() == 0) {
                        this.f31021l.setText("编辑");
                        this.f31021l.setBackgroundResource(R.drawable.game_detail_blue);
                        this.f31036t0.setTv_btn(1);
                        TextView textView2 = this.A;
                        if (textView2 != null) {
                            textView2.setVisibility(8);
                        }
                        this.f31025o.setVisibility(8);
                        this.f31013d.p();
                        M0();
                        J0();
                        this.C0 = true;
                        this.f31039v.setText("列表模式");
                        List<GameListItemBean> list2 = this.f31034s0;
                        if (list2 == null || list2.size() == 0) {
                            return;
                        }
                        this.f31011b.setVisibility(0);
                        this.f31012c.setVisibility(8);
                    }
                    k kVar = this.G;
                    if (kVar != null) {
                        kVar.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                this.f31021l.setTextColor(-1);
                if (!this.H0) {
                    if (this.f31036t0.getBook_state().equals("1")) {
                        this.f31021l.setText("+  订阅");
                        this.f31021l.setBackgroundResource(R.drawable.game_detail_gray);
                    } else {
                        this.f31021l.setText("已订阅");
                        this.f31021l.setTextColor(-16777216);
                        this.f31021l.setBackgroundResource(R.drawable.game_detail_o);
                    }
                    a1();
                    return;
                }
                g1("上步操作尚未完成");
                return;
            }
            this.L0 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void l1() {
        if (this.f31036t0 == null) {
            return;
        }
        if (this.C0) {
            Ext ext = new Ext();
            ext.setPosition("brief");
            ext.setGameId("0");
            ext.setArticleId(this.H);
            com.papa.sim.statistic.p.l(this.F).K1(Event.clickFromUserGameList, ext);
            CommentSelfListActivity_.n1(this.F).a(this.f31036t0.getUid()).start();
            return;
        }
        g1("请先点击完成");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void m1() {
        if (this.f31036t0 == null) {
            return;
        }
        if (this.C0) {
            Ext ext = new Ext();
            ext.setPosition("brief");
            ext.setGameId("0");
            ext.setArticleId(this.H);
            com.papa.sim.statistic.p.l(this.F).K1(Event.clickFromUserGameList, ext);
            CommentSelfListActivity_.n1(this.F).a(this.f31036t0.getUid()).start();
            return;
        }
        g1("请先点击完成");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n1(ForumResponseGame forumResponseGame) {
        XListView2 xListView2 = this.f31013d;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f31013d.u();
                this.J0 = true;
                this.f31013d.setNoMore();
                I0(forumResponseGame);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        this.F0.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o1() {
        XListView2 xListView2 = this.f31013d;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f31013d.u();
                this.f31013d.setNoMore();
                this.J0 = true;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        this.F0.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    updateUI(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.U0;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    updateProgressPartly();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            updateUI(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            updateUI(a4, 8);
                            return;
                        case 13:
                            updateUI(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            updateUI(a4, 5);
        } else {
            updateUI(a4, 2);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (!this.C0 && i2 == 4 && keyEvent.getAction() == 0) {
            g1("请先点击完成");
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.L0) {
            return;
        }
        this.f31032r0 = 1;
        this.J0 = false;
        this.f31028p0 = AccountUtil_.getInstance_(this.F).getAccountData();
        J0();
        H0();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.V0 = (i4 + i2) - 1;
        this.W0 = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r1() {
        XListView2 xListView2 = this.f31013d;
        if (xListView2 != null) {
            try {
                if (this.C0) {
                    xListView2.t();
                }
                this.f31013d.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f31032r0 = 1;
        this.J0 = false;
        J0();
        H0();
    }

    void s1(l lVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            lVar.f31101j.setVisibility(8);
            lVar.f31095d.setVisibility(8);
            lVar.f31094c.setVisibility(8);
            lVar.f31097f.setVisibility(0);
            lVar.f31105n.setVisibility(0);
            return;
        }
        lVar.f31105n.setVisibility(8);
        lVar.f31101j.setVisibility(0);
        if (bool2.booleanValue()) {
            lVar.f31095d.setVisibility(8);
            lVar.f31094c.setVisibility(0);
        } else {
            lVar.f31094c.setVisibility(8);
            lVar.f31095d.setVisibility(0);
        }
        lVar.f31097f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f31014e;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f31015f;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f31015f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f31014e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f31012c;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f31011b;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    return;
                case 3:
                    receiveDelete(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    receiveSuccess(downloadTask);
                    return;
                case 6:
                    receiveError(downloadTask);
                    return;
            }
        }
    }
}
