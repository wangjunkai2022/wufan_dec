package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.k1;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.adapter.r1;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameDetailCloudArchive;
import com.join.mgps.dto.GamePariseRequest;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: GameDetialModleThreeActivity.java */
@EFragment(R.layout.gamedetial_modle_three_activity)
/* loaded from: classes.dex */
public class b0 extends Fragment {
    private static final String R0 = "GameDetialModleThreeAct";
    @ViewById
    Button A;
    private String A0;
    @ViewById
    RelativeLayout B;
    private GameScore B0;
    @ViewById
    SimpleDraweeView C;
    @ViewById
    TextView D;
    private DownloadTask E;
    com.join.mgps.rpc.d F;
    com.join.mgps.rpc.h G;
    private int G0;
    com.join.mgps.rpc.e H;
    private int H0;
    String I;
    @ViewById
    TextView I0;
    ExtBean J;
    @ViewById
    ImageView J0;
    boolean K;
    @ViewById
    ImageView K0;
    @ViewById
    ImageView L0;
    @ViewById
    ImageView M0;
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView N0;
    private Animation O0;

    /* renamed from: a  reason: collision with root package name */
    private GamedetailVideoMainActivity f36750a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f36751b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f36752c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f36753d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f36754e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f36755f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f36756g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ImageView f36757h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f36758i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f36759j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    LinearLayout f36760k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    RecyclerView f36761l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f36762m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    RelativeLayout f36763n;

    /* renamed from: n0  reason: collision with root package name */
    private com.join.mgps.adapter.r1 f36764n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    RelativeLayout f36765o;

    /* renamed from: o0  reason: collision with root package name */
    private GamedetialModleFourBean f36766o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ImageView f36767p;

    /* renamed from: p0  reason: collision with root package name */
    private LinearLayoutManager f36768p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f36769q;

    /* renamed from: q0  reason: collision with root package name */
    private com.join.mgps.customview.t f36770q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    ProgressBar f36771r;

    /* renamed from: r0  reason: collision with root package name */
    private AccountBean f36772r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    LinearLayout f36773s;

    /* renamed from: s0  reason: collision with root package name */
    private com.join.mgps.customview.t f36774s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    RelativeLayout f36775t;

    /* renamed from: t0  reason: collision with root package name */
    private boolean f36776t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    RelativeLayout f36777u;

    /* renamed from: u0  reason: collision with root package name */
    com.join.mgps.recycler.e f36778u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    RelativeLayout f36779v;

    /* renamed from: v0  reason: collision with root package name */
    private com.join.android.app.common.manager.b f36780v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    ImageView f36781w;
    @Pref

    /* renamed from: w0  reason: collision with root package name */
    PrefDef_ f36782w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    ImageView f36783x;

    /* renamed from: x0  reason: collision with root package name */
    com.join.mgps.customview.t f36784x0;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    LinearLayout f36785y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    LinearLayout f36787z;

    /* renamed from: z0  reason: collision with root package name */
    private List<CommentBaseBean> f36788z0;

    /* renamed from: y0  reason: collision with root package name */
    boolean f36786y0 = false;
    private CommentAllListBean.SelfCommentBean C0 = null;
    private boolean D0 = true;
    Map<String, DownloadTask> E0 = new HashMap();
    Map<String, DownloadTask> F0 = new HashMap();
    com.join.mgps.customview.t P0 = null;
    com.join.mgps.customview.t Q0 = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f36789a;

        a(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f36789a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) b0.this.f36750a.getSystemService("clipboard")).setText(this.f36789a.getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(b0.this.f36750a);
            a4.b(this.f36789a.getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b0.this.f36774s0 == null || !b0.this.f36774s0.isShowing()) {
                return;
            }
            b0.this.f36774s0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b0.this.f36774s0 != null && b0.this.f36774s0.isShowing()) {
                b0.this.f36774s0.dismiss();
            }
            int status = b0.this.E != null ? b0.this.E.getStatus() : 0;
            if (b0.this.f36766o0 != null && UtilsMy.m0(b0.this.f36766o0.getPay_tag_info(), b0.this.f36766o0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.f3(b0.this.f36750a, b0.this.E, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            b0.this.E.setKeyword(Where.detail.name());
            b0 b0Var = b0.this;
            b0Var.addFrom(b0Var.E);
            if (b0.this.f36766o0 != null) {
                if (UtilsMy.o0(b0.this.f36766o0.getPay_tag_info(), b0.this.f36766o0.getCrc_sign_id()) <= 0) {
                    UtilsMy.g1(b0.this.E, b0.this.f36766o0);
                    if (!UtilsMy.T0(b0.this.f36750a, b0.this.E)) {
                        if (b0.this.f36766o0.getDown_status() == 5) {
                            UtilsMy.R0(b0.this.f36750a, b0.this.E);
                        } else {
                            UtilsMy.F0(b0.this.f36750a, b0.this.E, b0.this.f36766o0.getTp_down_url(), b0.this.f36766o0.getOther_down_switch(), b0.this.f36766o0.getCdn_down_switch());
                        }
                    }
                } else {
                    ExtBean extBean = b0.this.J;
                    if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
                        if (!UtilsMy.T0(b0.this.f36750a, b0.this.E)) {
                            if (b0.this.f36766o0.getDown_status() == 5) {
                                UtilsMy.R0(b0.this.f36750a, b0.this.E);
                            } else {
                                UtilsMy.m3(b0.this.f36750a, b0.this.I);
                            }
                        }
                    } else {
                        GamedetailVideoMainActivity gamedetailVideoMainActivity = b0.this.f36750a;
                        b0 b0Var2 = b0.this;
                        UtilsMy.n3(gamedetailVideoMainActivity, b0Var2.I, b0Var2.J.getFrom_id());
                    }
                }
            }
            b0.this.E.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f36793a;

        d(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f36793a = giftPackageDataOperationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) b0.this.f36750a.getSystemService("clipboard")).setText(this.f36793a.getGift_info().getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(b0.this.f36750a);
            a4.b(this.f36793a.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b0.this.f36774s0 == null || !b0.this.f36774s0.isShowing()) {
                return;
            }
            b0.this.f36774s0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b0.this.f36774s0 != null && b0.this.f36774s0.isShowing()) {
                b0.this.f36774s0.dismiss();
            }
            int status = b0.this.E != null ? b0.this.E.getStatus() : 0;
            if (b0.this.f36766o0 != null && UtilsMy.m0(b0.this.f36766o0.getPay_tag_info(), b0.this.f36766o0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.f3(b0.this.f36750a, b0.this.E, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            if (b0.this.f36766o0.getDown_status() == 2) {
                return;
            }
            b0.this.E.setKeyword(Where.detail.name());
            if (b0.this.f36766o0 != null) {
                if (UtilsMy.o0(b0.this.f36766o0.getPay_tag_info(), b0.this.f36766o0.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(b0.this.f36750a, b0.this.I);
                } else {
                    b0 b0Var = b0.this;
                    b0Var.addFrom(b0Var.E);
                    UtilsMy.g1(b0.this.E, b0.this.f36766o0);
                    if (!UtilsMy.T0(b0.this.f36750a, b0.this.E)) {
                        if (b0.this.f36766o0.getDown_status() == 5) {
                            UtilsMy.R0(b0.this.f36750a, b0.this.E);
                        } else {
                            UtilsMy.F0(b0.this.f36750a, b0.this.E, b0.this.f36766o0.getTp_down_url(), b0.this.f36766o0.getOther_down_switch(), b0.this.f36766o0.getCdn_down_switch());
                        }
                    }
                }
            }
            b0.this.E.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class g implements Animation.AnimationListener {
        g() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class h implements r1.c1 {
        h() {
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void a(InformationCommentBean informationCommentBean) {
            if (IntentUtil.getInstance().goLoginInteractive(b0.this.f36750a)) {
                return;
            }
            b0.this.r0(informationCommentBean);
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            informationCommentBean.setUser_name(sub.getUser_name());
            informationCommentBean.setComment_id(sub.getUser_id());
            informationCommentBean.setUser_id(sub.getUser_id());
            if (b0.this.f36766o0 != null) {
                GameCommentActivity_.s1(b0.this.f36750a).a(b0.this.f36766o0.getCrc_sign_id()).d(true).b(informationCommentBean).start();
            }
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void c(InformationCommentBean informationCommentBean) {
            if (b0.this.f36766o0 != null) {
                GameCommentActivity_.s1(b0.this.f36750a).a(b0.this.f36766o0.getCrc_sign_id()).d(true).b(informationCommentBean).start();
            }
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void d(CommentBaseBean commentBaseBean, int i2, int i4) {
            b0.this.n0(commentBaseBean, i2, i4);
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void e(CommentBaseBean commentBaseBean, int i2, int i4) {
            b0.this.p0(commentBaseBean, i2, i4);
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void f(CommentBaseBean commentBaseBean) {
            b0.this.o0(commentBaseBean);
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void g() {
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void h() {
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void i() {
            b0.this.b0();
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void j() {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid((int) b0.this.f36766o0.getForum_id());
            com.join.mgps.Util.i0.v0(b0.this.f36750a, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void k() {
            if (b0.this.f36766o0.getGame_book() == 1 || IntentUtil.getInstance().goLoginNetGame(b0.this.f36750a)) {
                return;
            }
            b0.this.changeGameFollow(4);
        }

        @Override // com.join.mgps.adapter.r1.c1
        public void l(boolean z3, GiftPackageDataInfoBean giftPackageDataInfoBean) {
            if (IntentUtil.getInstance().goLoginNetGame(b0.this.f36750a)) {
                return;
            }
            if (z3) {
                if (b0.this.U(giftPackageDataInfoBean.getGift_package_type())) {
                    b0.this.g0(giftPackageDataInfoBean);
                    return;
                }
                return;
            }
            b0.this.D0(giftPackageDataInfoBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b0.this.x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b0.this.x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class k implements k1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36801a;

        k(boolean z3) {
            this.f36801a = z3;
        }

        @Override // com.join.mgps.Util.k1.b
        public void a(k1.c cVar) {
            if (cVar.a() == 1) {
                b0.this.f36750a.finish();
                com.join.mgps.Util.k1.c().e(b0.this.f36750a, b0.this.J.getFrom_id(), cVar.b());
                com.join.mgps.Util.i2.a(b0.this.f36750a).b("授权成功");
            } else if (this.f36801a) {
                b0.this.P0(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class l implements CompoundButton.OnCheckedChangeListener {
        l() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            b0.this.f36782w0.noFavoriteTips().g(Boolean.valueOf(z3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = b0.this.f36784x0;
            if (tVar != null && tVar.isShowing()) {
                b0.this.f36784x0.dismiss();
            }
            b0.this.a0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b0.this.A0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b0.this.C0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeActivity.java */
    /* loaded from: classes3.dex */
    public class p implements l1.a {
        p() {
        }

        @Override // l1.a
        public void onClickCancle() {
        }

        @Override // l1.a
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean U(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            com.join.mgps.Util.i2.a(this.f36750a).b(this.f36750a.getString(R.string.unknow_gift_type));
            return false;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f36750a).getAccountData();
        if (str.equals("6")) {
            if (accountData.getVip_level() <= 0) {
                G0();
                return false;
            }
        } else if (str.equals("7") && accountData.getSvip_level() <= 0) {
            F0();
            return false;
        }
        return true;
    }

    private void V() {
        com.join.mgps.customview.t tVar = this.P0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.P0.dismiss();
    }

    private void W() {
        com.join.mgps.customview.t tVar = this.Q0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.Q0.dismiss();
    }

    public static c0 k0(String str, boolean z3, ExtBean extBean) {
        Bundle bundle = new Bundle();
        bundle.putString("gameId", str);
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        bundle.putSerializable("extBean", extBean);
        c0 c0Var = new c0();
        c0Var.setArguments(bundle);
        return c0Var;
    }

    private void u0() {
        this.f36764n0.notifyDataSetChanged();
    }

    private void y0(List<r1.b1> list) {
        GamedetialModleFourBean gamedetialModleFourBean = this.f36766o0;
        if (gamedetialModleFourBean == null || gamedetialModleFourBean.getComment_switch() != 1) {
            return;
        }
        for (int i2 = 0; this.f36766o0.getCommitDataBeanList() != null && i2 < this.f36766o0.getCommitDataBeanList().size(); i2++) {
            com.join.mgps.adapter.r1 r1Var = this.f36764n0;
            Objects.requireNonNull(r1Var);
            list.add(new r1.b1(this.f36766o0.getCommitDataBeanList().get(i2), 25));
            if (i2 == 0) {
                com.join.mgps.adapter.r1 r1Var2 = this.f36764n0;
                Objects.requireNonNull(r1Var2);
                list.add(new r1.b1("", 27));
            }
        }
        com.join.mgps.adapter.r1 r1Var3 = this.f36764n0;
        Objects.requireNonNull(r1Var3);
        list.add(new r1.b1("评论底部", 16));
    }

    private void z0(InformationCommentBean informationCommentBean, List<r1.b1> list) {
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        if (sub == null || sub.size() <= 0) {
            return;
        }
        com.join.mgps.adapter.r1 r1Var = this.f36764n0;
        Objects.requireNonNull(r1Var);
        list.add(new r1.b1(new r1.d1(informationCommentBean.getComment_id(), informationCommentBean, 0, true), 15));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void A0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f36766o0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f36766o0.getGame_name());
        shareBean.setText(this.f36766o0.getInfo());
        shareBean.setImageUrl(this.f36766o0.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f36766o0.getGame_id());
        if (this.f36766o0.getShare_config() != null && this.f36766o0.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f36766o0.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f36750a, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void B0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f36766o0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.f36766o0.getIco_remote());
        shareBean.setTitle(this.f36766o0.getGame_name());
        shareBean.setText(this.f36766o0.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f36766o0.getGame_id());
        if (this.f36766o0.getShare_config() != null && this.f36766o0.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f36766o0.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f36750a, shareBean);
    }

    void C0() {
        ShareBean shareBean = new ShareBean();
        String str = this.f36766o0.getActivity_entry().getUrl() + this.f36766o0.getCrc_sign_id();
        shareBean.setqZoneShareUrl(str);
        shareBean.setQqUrl(str);
        shareBean.setWechatFriendUrl(str);
        shareBean.setWechatShareUrl(str);
        shareBean.setWeiboShareUrl(str);
        shareBean.setTitle(this.f36766o0.getGame_name());
        shareBean.setText(this.f36766o0.getInfo());
        shareBean.setImageUrl(this.f36766o0.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f36766o0.getGame_id());
        com.join.mgps.Util.r.r(this.f36750a, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x013a A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0002, B:5:0x0009, B:7:0x000f, B:8:0x0017, B:10:0x00c8, B:12:0x00ce, B:21:0x00ef, B:26:0x0131, B:28:0x013a, B:29:0x0142, B:31:0x014e, B:34:0x0155, B:22:0x00f5, B:23:0x00fb, B:25:0x0102), top: B:39:0x0002 }] */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void D0(com.join.mgps.dto.GiftPackageDataInfoBean r12) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.b0.D0(com.join.mgps.dto.GiftPackageDataInfoBean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        com.join.mgps.customview.t tVar;
        com.join.mgps.customview.t tVar2 = this.f36774s0;
        if (tVar2 != null && tVar2.isShowing()) {
            this.f36774s0.dismiss();
            this.f36774s0 = null;
        }
        com.join.mgps.customview.t tVar3 = new com.join.mgps.customview.t(this.f36750a, R.style.MyDialog);
        this.f36774s0 = tVar3;
        tVar3.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.f36774s0.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.f36774s0.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f36774s0.findViewById(R.id.moneyText);
        ((TextView) this.f36774s0.findViewById(R.id.tip_title)).setText("领号成功");
        ((TextView) this.f36774s0.findViewById(R.id.saveCodeContent)).setText(giftPackageDataOperationBean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        ((TextView) this.f36774s0.findViewById(R.id.saveCodeTv)).setOnClickListener(new d(giftPackageDataOperationBean));
        button2.setOnClickListener(new e());
        if (this.f36766o0.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        DownloadTask downloadTask = this.E;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (giftPackageDataOperationBean.getGame_info() != null && UtilsMy.m0(giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 5) {
                button.setText("启动游戏");
            } else if (status != 9 && status != 43) {
                button.setText("下载中..");
            }
            button.setOnClickListener(new f());
            u0();
            tVar = this.f36774s0;
            if (tVar != null || tVar.isShowing()) {
            }
            this.f36774s0.show();
            return;
        }
        button.setText("下载游戏");
        if (giftPackageDataOperationBean.getGame_info() != null) {
            UtilsMy.m0(giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id());
            UtilsMy.D2(button, giftPackageDataOperationBean.getGame_info().getDown_status(), giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id());
            UtilsMy.w2(giftPackageDataOperationBean.getGame_info().getSp_tag_info(), textView);
        }
        button.setOnClickListener(new f());
        u0();
        tVar = this.f36774s0;
        if (tVar != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        com.join.mgps.customview.t tVar = this.P0;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.P0 = com.join.mgps.Util.a0.c0(this.f36750a).Z(this.f36750a);
        }
        this.P0.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0() {
        com.join.mgps.customview.t tVar = this.Q0;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.Q0 = com.join.mgps.Util.a0.c0(this.f36750a).b0(this.f36750a);
        }
        this.Q0.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void H0() {
        com.join.mgps.adapter.r1 r1Var = this.f36764n0;
        if (r1Var != null && r1Var.s() != null) {
            com.join.mgps.Util.c.g(this.f36764n0.s());
        }
        H0();
    }

    void I0() {
        ImageView imageView = this.J0;
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(R.drawable.line_blue_bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f36750a, R.anim.img_translate);
        this.O0 = loadAnimation;
        loadAnimation.setFillAfter(true);
        this.M0.setVisibility(0);
        this.M0.startAnimation(this.O0);
        this.O0.setAnimationListener(new g());
    }

    void J0() {
        ImageView imageView = this.M0;
        if (imageView != null) {
            imageView.clearAnimation();
            this.M0.setVisibility(8);
            this.J0.setImageResource(R.drawable.line_white_bg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f36750a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        if (this.f36766o0.getGame_id() != null) {
            Q0(this.f36766o0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0(int i2) {
        try {
            if (i2 < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.I0.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.I0.setLayoutParams(layoutParams);
                this.I0.setCompoundDrawables(null, null, null, null);
                this.I0.setBackgroundResource(R.drawable.mygame_big_round);
                this.I0.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.I0.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.I0.setGravity(17);
                this.I0.setLayoutParams(layoutParams2);
                this.I0.setCompoundDrawables(null, null, null, null);
                this.I0.setBackgroundResource(R.drawable.message_round);
                this.I0.setPadding(1, 0, 2, 1);
            }
            this.I0.setVisibility(0);
            TextView textView = this.I0;
            textView.setText(i2 + "");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0(int i2) {
        if (i2 == 0) {
            J0();
        } else {
            I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        J0();
        TextView textView = this.I0;
        if (textView != null) {
            textView.setVisibility(8);
            this.I0.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void P0(boolean z3) {
        ExtBean extBean = this.J;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.k1.c().b(this.f36750a, this.J.getFrom_id(), new k(z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0(GamedetialModleFourBean gamedetialModleFourBean) {
        List<GiftPackageDataInfoBean> game_gift_package;
        try {
            LinearLayout linearLayout = this.f36787z;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (gamedetialModleFourBean == null) {
            return;
        }
        LinearLayout linearLayout2 = this.f36785y;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        this.f36766o0 = gamedetialModleFourBean;
        if (this.K && g1.f.G().B(this.I) == null) {
            com.php25.PDownload.d.c(gamedetialModleFourBean.getDownloadtaskDown(), this.f36750a);
        }
        if (gamedetialModleFourBean.getShare_config() != null && gamedetialModleFourBean.getShare_config().getShare_switch() == 1) {
            this.f36760k.setVisibility(0);
            MyImageLoader.d(this.C, R.drawable.user_gift, "");
            this.f36760k.setOnClickListener(new n());
        } else {
            this.f36760k.setVisibility(8);
        }
        if (gamedetialModleFourBean.getActivity_entry() != null) {
            this.f36760k.setVisibility(0);
            MyImageLoader.h(this.C, gamedetialModleFourBean.getActivity_entry().getPic());
            this.D.setText(gamedetialModleFourBean.getActivity_entry().getTitle());
            this.f36760k.setOnClickListener(new o());
        } else {
            this.f36760k.setVisibility(8);
        }
        GamedetialModleFourBean gamedetialModleFourBean2 = this.f36766o0;
        if (gamedetialModleFourBean2 != null) {
            if (gamedetialModleFourBean2.getGame_follow() == 1) {
                this.f36757h.setImageResource(R.drawable.followed_image);
                this.f36758i.setText("已收藏");
            } else {
                this.f36757h.setImageResource(R.drawable.follow_none_image);
                this.f36758i.setText("收藏");
            }
        }
        DownloadTask B = g1.f.G().B(this.I);
        this.E = B;
        if (B == null) {
            this.E = this.f36766o0.getDownloadtaskDown();
            if (UtilsMy.e0(this.f36766o0.getTag_info())) {
                this.E.setFileType(Dtype.android.name());
                if (com.join.android.app.common.utils.a.g0(this.f36750a).c(this.f36750a, this.f36766o0.getPackageName())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f36750a).k(this.f36750a, this.f36766o0.getPackageName());
                    if (com.join.mgps.Util.d2.i(this.f36766o0.getVer()) && k4.d() < Integer.parseInt(this.f36766o0.getVer())) {
                        this.E.setStatus(9);
                    } else {
                        this.E.setStatus(5);
                    }
                } else {
                    this.E.setStatus(0);
                }
            } else {
                this.E.setStatus(0);
            }
        } else {
            B.setDownloadType(0);
            this.E.setScreenshot_pic(this.f36766o0.getScreenshot_pic());
        }
        if (("" + this.f36766o0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            GamedetialModleFourBean gamedetialModleFourBean3 = this.f36766o0;
            gamedetialModleFourBean3.setDown_count(gamedetialModleFourBean3.getStart_count());
        }
        updateButn();
        try {
            List<CommentBaseBean> list = this.f36788z0;
            if (list != null) {
                this.f36766o0.setCommitDataBeanList(list);
            }
            this.f36766o0.setSelf_comment(this.C0);
            this.f36766o0.setGame_comment_count(this.A0);
            this.f36766o0.setGame_score(this.B0);
            this.f36764n0.I(gamedetialModleFourBean);
            List<r1.b1> x3 = this.f36764n0.x();
            x3.clear();
            if (this.f36766o0.getBt_game_switch() == 1) {
                if (this.f36766o0.getBt_game_coupon_count() > 0) {
                    com.join.mgps.adapter.r1 r1Var = this.f36764n0;
                    Objects.requireNonNull(r1Var);
                    x3.add(new r1.b1(Integer.valueOf(this.f36766o0.getBt_game_coupon_count()), 36));
                }
                String game_exclusive_benefits = this.f36766o0.getGame_exclusive_benefits();
                if (com.join.mgps.Util.d2.i(game_exclusive_benefits)) {
                    com.join.mgps.adapter.r1 r1Var2 = this.f36764n0;
                    Objects.requireNonNull(r1Var2);
                    x3.add(new r1.b1("专属福利", 1));
                    com.join.mgps.adapter.r1 r1Var3 = this.f36764n0;
                    Objects.requireNonNull(r1Var3);
                    x3.add(new r1.b1(game_exclusive_benefits, 8));
                }
                String game_buy_rebate = this.f36766o0.getGame_buy_rebate();
                if (com.join.mgps.Util.d2.i(game_exclusive_benefits)) {
                    com.join.mgps.adapter.r1 r1Var4 = this.f36764n0;
                    Objects.requireNonNull(r1Var4);
                    x3.add(new r1.b1("充值返利", 1));
                    com.join.mgps.adapter.r1 r1Var5 = this.f36764n0;
                    Objects.requireNonNull(r1Var5);
                    x3.add(new r1.b1(game_buy_rebate, 8));
                }
                List<BTActivityBean> activities = this.f36766o0.getActivities();
                if (activities != null && activities.size() > 0) {
                    com.join.mgps.adapter.r1 r1Var6 = this.f36764n0;
                    Objects.requireNonNull(r1Var6);
                    x3.add(new r1.b1("活动公告", 1));
                    for (BTActivityBean bTActivityBean : activities) {
                        com.join.mgps.adapter.r1 r1Var7 = this.f36764n0;
                        Objects.requireNonNull(r1Var7);
                        x3.add(new r1.b1(bTActivityBean, 38));
                    }
                }
                List<ServiceState> game_server_state = this.f36766o0.getGame_server_state();
                if (game_server_state != null && game_server_state.size() > 0) {
                    com.join.mgps.adapter.r1 r1Var8 = this.f36764n0;
                    Objects.requireNonNull(r1Var8);
                    x3.add(new r1.b1("开合服", 1));
                    int i2 = 0;
                    for (ServiceState serviceState : game_server_state) {
                        i2++;
                        if (i2 <= 3) {
                            com.join.mgps.adapter.r1 r1Var9 = this.f36764n0;
                            Objects.requireNonNull(r1Var9);
                            x3.add(new r1.b1(serviceState, 37));
                        }
                    }
                }
                List<GiftPackageDataInfoBean> game_gift_package2 = this.f36766o0.getGame_gift_package();
                if (game_gift_package2 != null && game_gift_package2.size() > 0) {
                    com.join.mgps.adapter.r1 r1Var10 = this.f36764n0;
                    Objects.requireNonNull(r1Var10);
                    x3.add(new r1.b1("福利礼包", 1));
                    for (GiftPackageDataInfoBean giftPackageDataInfoBean : game_gift_package2) {
                        com.join.mgps.adapter.r1 r1Var11 = this.f36764n0;
                        Objects.requireNonNull(r1Var11);
                        x3.add(new r1.b1(giftPackageDataInfoBean, 9));
                    }
                }
            }
            if (this.f36766o0.getBespeak_switch() == 1) {
                com.join.mgps.adapter.r1 r1Var12 = this.f36764n0;
                Objects.requireNonNull(r1Var12);
                x3.add(new r1.b1(null, 3));
            }
            if (com.join.mgps.Util.d2.i(gamedetialModleFourBean.getDev_info())) {
                com.join.mgps.adapter.r1 r1Var13 = this.f36764n0;
                Objects.requireNonNull(r1Var13);
                x3.add(new r1.b1("开发者的话", 1));
                com.join.mgps.adapter.r1 r1Var14 = this.f36764n0;
                Objects.requireNonNull(r1Var14);
                x3.add(new r1.b1(gamedetialModleFourBean.getDev_info(), 7));
            }
            if (com.join.mgps.Util.d2.i(gamedetialModleFourBean.getEdit_recommend())) {
                com.join.mgps.adapter.r1 r1Var15 = this.f36764n0;
                Objects.requireNonNull(r1Var15);
                x3.add(new r1.b1("编辑推荐", 1));
                com.join.mgps.adapter.r1 r1Var16 = this.f36764n0;
                Objects.requireNonNull(r1Var16);
                x3.add(new r1.b1(gamedetialModleFourBean.getEdit_recommend(), 7));
            }
            if (this.f36766o0.getBt_game_switch() == 0 && this.f36766o0.getTag_info() != null && this.f36766o0.getTag_info().size() > 0) {
                com.join.mgps.adapter.r1 r1Var17 = this.f36764n0;
                Objects.requireNonNull(r1Var17);
                x3.add(new r1.b1(null, 4));
            }
            if (gamedetialModleFourBean.getGame_screen_shot() != null && gamedetialModleFourBean.getGame_screen_shot().size() > 0) {
                com.join.mgps.adapter.r1 r1Var18 = this.f36764n0;
                Objects.requireNonNull(r1Var18);
                x3.add(new r1.b1("真实截图", 1));
                com.join.mgps.adapter.r1 r1Var19 = this.f36764n0;
                Objects.requireNonNull(r1Var19);
                x3.add(new r1.b1(null, 28));
            } else {
                com.join.mgps.adapter.r1 r1Var20 = this.f36764n0;
                Objects.requireNonNull(r1Var20);
                x3.add(new r1.b1(null, 5));
            }
            if (com.join.mgps.Util.d2.i(gamedetialModleFourBean.getGame_describe_second())) {
                com.join.mgps.adapter.r1 r1Var21 = this.f36764n0;
                Objects.requireNonNull(r1Var21);
                x3.add(new r1.b1("简介", 1));
                com.join.mgps.adapter.r1 r1Var22 = this.f36764n0;
                Objects.requireNonNull(r1Var22);
                x3.add(new r1.b1(gamedetialModleFourBean.getGame_describe_second(), 8));
            }
            if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.d2.i(gamedetialModleFourBean.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.adapter.r1 r1Var23 = this.f36764n0;
                Objects.requireNonNull(r1Var23);
                x3.add(new r1.b1(null, 24));
            }
            if (this.f36766o0.getBt_game_switch() == 0 && (game_gift_package = this.f36766o0.getGame_gift_package()) != null && game_gift_package.size() > 0) {
                com.join.mgps.adapter.r1 r1Var24 = this.f36764n0;
                Objects.requireNonNull(r1Var24);
                x3.add(new r1.b1("福利礼包", 1));
                for (GiftPackageDataInfoBean giftPackageDataInfoBean2 : game_gift_package) {
                    com.join.mgps.adapter.r1 r1Var25 = this.f36764n0;
                    Objects.requireNonNull(r1Var25);
                    x3.add(new r1.b1(giftPackageDataInfoBean2, 9));
                }
            }
            if (gamedetialModleFourBean.getAuxiliary_tool() != null) {
                com.join.mgps.adapter.r1 r1Var26 = this.f36764n0;
                Objects.requireNonNull(r1Var26);
                x3.add(new r1.b1("辅助工具", 10));
            }
            if (gamedetialModleFourBean.getGame_prompt() != null && gamedetialModleFourBean.getGame_prompt().size() > 0) {
                com.join.mgps.adapter.r1 r1Var27 = this.f36764n0;
                Objects.requireNonNull(r1Var27);
                x3.add(new r1.b1(null, 6));
            }
            if (gamedetialModleFourBean.getRoom_cfg_info() != null) {
                if (gamedetialModleFourBean.getRoom_cfg_info().getGolden_finger() != null && gamedetialModleFourBean.getRoom_cfg_info().getGolden_finger().size() > 0) {
                    com.join.mgps.adapter.r1 r1Var28 = this.f36764n0;
                    Objects.requireNonNull(r1Var28);
                    x3.add(new r1.b1("金手指", 1));
                    com.join.mgps.adapter.r1 r1Var29 = this.f36764n0;
                    Objects.requireNonNull(r1Var29);
                    x3.add(new r1.b1(gamedetialModleFourBean.getRoom_cfg_info().getGolden_finger(), 35));
                }
                if (gamedetialModleFourBean.getRoom_cfg_info().getCloud_archive() != null && gamedetialModleFourBean.getRoom_cfg_info().getCloud_archive().size() > 0) {
                    com.join.mgps.adapter.r1 r1Var30 = this.f36764n0;
                    Objects.requireNonNull(r1Var30);
                    x3.add(new r1.b1("云存档", 1));
                    for (int i4 = 0; i4 < gamedetialModleFourBean.getRoom_cfg_info().getCloud_archive().size() && i4 <= 1; i4++) {
                        GameDetailCloudArchive gameDetailCloudArchive = gamedetialModleFourBean.getRoom_cfg_info().getCloud_archive().get(i4);
                        if (i4 == 0) {
                            gameDetailCloudArchive.setHideTop(1);
                        }
                        if (i4 == 3 || i4 == gamedetialModleFourBean.getRoom_cfg_info().getCloud_archive().size() - 1) {
                            if (gamedetialModleFourBean.getRoom_cfg_info().getOne_touch_skill() != null && gamedetialModleFourBean.getRoom_cfg_info().getOne_touch_skill().size() > 0) {
                                gameDetailCloudArchive.setDivider(1);
                            }
                            if (gamedetialModleFourBean.getRoom_cfg_info().getCheck_point() != null && gamedetialModleFourBean.getRoom_cfg_info().getCheck_point().size() > 0) {
                                gameDetailCloudArchive.setDivider(1);
                            }
                        }
                        com.join.mgps.adapter.r1 r1Var31 = this.f36764n0;
                        Objects.requireNonNull(r1Var31);
                        x3.add(new r1.b1(gameDetailCloudArchive, 31));
                    }
                }
            }
            if (gamedetialModleFourBean.getGame_handle_entrance() != null) {
                com.join.mgps.adapter.r1 r1Var32 = this.f36764n0;
                Objects.requireNonNull(r1Var32);
                x3.add(new r1.b1("支持手柄", 1));
            }
            if (gamedetialModleFourBean.getCommunity_entrance_switch() == 1) {
                com.join.mgps.adapter.r1 r1Var33 = this.f36764n0;
                Objects.requireNonNull(r1Var33);
                x3.add(new r1.b1("社区讨论", 1));
            }
            if (gamedetialModleFourBean.getGame_upgrade_info_switch() == 1 || gamedetialModleFourBean.getGame_detailed() != null) {
                com.join.mgps.adapter.r1 r1Var34 = this.f36764n0;
                Objects.requireNonNull(r1Var34);
                x3.add(new r1.b1("", 34));
            }
            GamedetialModleFourBean gamedetialModleFourBean4 = this.f36766o0;
            if (gamedetialModleFourBean4 == null || gamedetialModleFourBean4.getComment_switch() == 1) {
                com.join.mgps.adapter.r1 r1Var35 = this.f36764n0;
                Objects.requireNonNull(r1Var35);
                x3.add(new r1.b1("评论", 13));
                if (this.f36766o0.getCommitDataBeanList() != null && this.f36766o0.getCommitDataBeanList().size() > 0) {
                    y0(x3);
                } else if (this.D0) {
                    this.D0 = false;
                    f0();
                } else {
                    com.join.mgps.adapter.r1 r1Var36 = this.f36764n0;
                    Objects.requireNonNull(r1Var36);
                    x3.add(new r1.b1("评论", 26));
                    com.join.mgps.adapter.r1 r1Var37 = this.f36764n0;
                    Objects.requireNonNull(r1Var37);
                    x3.add(new r1.b1("评论", 27));
                }
            }
            if (this.f36766o0.getGame_favorites_top5() != null) {
                com.join.mgps.adapter.r1 r1Var38 = this.f36764n0;
                Objects.requireNonNull(r1Var38);
                x3.add(new r1.b1("游戏单", 1));
                com.join.mgps.adapter.r1 r1Var39 = this.f36764n0;
                Objects.requireNonNull(r1Var39);
                x3.add(new r1.b1("搜藏该游戏的游戏单", 29));
            }
            if (this.f36766o0.getBt_game_switch() == 1) {
                if (this.f36766o0.getBt_game_recommend() != null && this.f36766o0.getBt_game_recommend().size() > 0) {
                    com.join.mgps.adapter.r1 r1Var40 = this.f36764n0;
                    Objects.requireNonNull(r1Var40);
                    x3.add(new r1.b1("猜你喜欢", 1));
                    com.join.mgps.adapter.r1 r1Var41 = this.f36764n0;
                    Objects.requireNonNull(r1Var41);
                    x3.add(new r1.b1(4, 17));
                }
            } else {
                if (this.f36766o0.getRecommend_game_switch() == 1) {
                    com.join.mgps.adapter.r1 r1Var42 = this.f36764n0;
                    Objects.requireNonNull(r1Var42);
                    x3.add(new r1.b1("同类游戏", 1));
                    com.join.mgps.adapter.r1 r1Var43 = this.f36764n0;
                    Objects.requireNonNull(r1Var43);
                    x3.add(new r1.b1(1, 17));
                }
                if (this.f36766o0.getDown_and_down() != null && this.f36766o0.getDown_and_down().size() > 0) {
                    com.join.mgps.adapter.r1 r1Var44 = this.f36764n0;
                    Objects.requireNonNull(r1Var44);
                    x3.add(new r1.b1("下了还会下", 1));
                    com.join.mgps.adapter.r1 r1Var45 = this.f36764n0;
                    Objects.requireNonNull(r1Var45);
                    x3.add(new r1.b1(2, 17));
                }
            }
            this.f36764n0.notifyDataSetChanged();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R() {
        this.f36750a.finish();
        j0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    public void R0() {
        this.f36766o0.setGame_book(1);
        this.f36764n0.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S() {
        try {
            this.G0 = g1.f.G().O();
            int W = g1.f.G().W();
            this.H0 = W;
            N0(W);
            int i2 = this.G0;
            if (i2 != 0) {
                M0(i2);
            } else {
                O0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        updateDownloadView();
    }

    @UiThread
    public void T(int i2, int i4) {
        if (i4 == 1) {
            this.f36764n0.F(i2, 1);
        } else {
            this.f36764n0.G(i2, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f36750a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f36750a);
    }

    void a0() {
        if (!com.join.android.app.common.utils.f.j(this.f36750a) || IntentUtil.getInstance().goLoginInteractive(this.f36750a) || this.f36766o0.getGame_follow() == 1) {
            return;
        }
        changeGameFollow(2);
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.J;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.J.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom("101");
        extBean2.setPosition("112");
        extBean2.setLocation(this.J.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.F = com.join.mgps.rpc.impl.c.P1();
        this.G = com.join.mgps.rpc.impl.f.A0();
        this.H = com.join.mgps.rpc.impl.d.m();
        this.f36750a = (GamedetailVideoMainActivity) getActivity();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.I = arguments.getString("gameId");
            this.K = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.J = (ExtBean) arguments.getSerializable("extBean");
        }
        this.f36781w.setVisibility(0);
        this.f36783x.setVisibility(0);
        com.join.mgps.Util.c0.a().d(this);
        this.E = g1.f.G().B(this.I);
        getDownloadTaskInfo();
        this.f36766o0 = new GamedetialModleFourBean();
        com.join.mgps.adapter.r1 r1Var = new com.join.mgps.adapter.r1(requireActivity(), this.f36750a.getModleFourFragment(), this.f36766o0);
        this.f36764n0 = r1Var;
        ExtBean extBean = this.J;
        if (extBean != null) {
            r1Var.Q(extBean.get_from_type());
        }
        this.f36761l.setAdapter(this.f36764n0);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f36750a);
        this.f36761l.setLayoutManager(linearLayoutManager);
        this.f36778u0 = new com.join.mgps.recycler.e(linearLayoutManager, this.f36761l);
        this.f36764n0.J(new h());
        LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) this.f36761l.getLayoutManager();
        this.f36768p0 = linearLayoutManager2;
        linearLayoutManager2.setSmoothScrollbarEnabled(true);
        this.f36768p0.setAutoMeasureEnabled(true);
        this.f36761l.setLayoutManager(this.f36768p0);
        this.f36787z.setVisibility(0);
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            Q0(modleFourBeanShow);
        } else {
            e0();
        }
        this.K0.setOnClickListener(new i());
        this.L0.setOnClickListener(new j());
        ExtBean extBean2 = this.J;
        if (extBean2 != null) {
            extBean2.getFrom();
            this.J.getPosition();
            this.J.getLocation();
        }
        P0(false);
    }

    void b0() {
        boolean booleanValue = this.f36782w0.noFavoriteTips().d().booleanValue();
        if (IntentUtil.getInstance().goLoginInteractive(this.f36750a)) {
            return;
        }
        if (!booleanValue) {
            if (this.f36784x0 == null) {
                com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f36750a, R.style.MyDialog);
                this.f36784x0 = tVar;
                tVar.setContentView(R.layout.favorite_dialog);
                this.f36784x0.setCanceledOnTouchOutside(true);
            }
            ((CheckBox) this.f36784x0.findViewById(R.id.opt)).setOnCheckedChangeListener(new l());
            ((Button) this.f36784x0.findViewById(R.id.ok)).setOnClickListener(new m());
            com.join.mgps.customview.t tVar2 = this.f36784x0;
            if (tVar2 == null || tVar2.isShowing()) {
                return;
            }
            this.f36784x0.show();
            return;
        }
        a0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c0() {
        GamedetialModleFourBean gamedetialModleFourBean;
        if (IntentUtil.getInstance().goLoginInteractive(this.f36750a) || (gamedetialModleFourBean = this.f36766o0) == null || gamedetialModleFourBean.getGame_follow() == 1) {
            return;
        }
        b0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.E0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.E0
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.F0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.F0
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E0
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.F0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.F0
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.F0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.F0
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E0
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.F0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.F0
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.F0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.F0
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.E0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.E0
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.F0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.F0
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.b0.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int i2) {
        String str;
        if (com.join.android.app.common.utils.f.j(this.f36750a)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f36750a).getAccountData();
            this.f36772r0 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f36750a.getPackageManager().getPackageInfo(this.f36750a.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.f36766o0.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.f36772r0.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f36750a).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.F.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.F.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.F.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.F.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                updateTitleButn(resultMainBean, i2);
            }
        }
    }

    public RequestCommentpraiseArgs d0(String str, int i2, int i4) {
        String str2;
        int i5;
        String str3 = Build.MODEL;
        AccountBean accountData = AccountUtil_.getInstance_(this.f36750a).getAccountData();
        this.f36772r0 = accountData;
        if (accountData != null) {
            i5 = accountData.getUid();
            str2 = this.f36772r0.getToken();
        } else {
            str2 = "";
            i5 = 0;
        }
        return RequestBeanUtil.getInstance(this.f36750a).getPraiseComment(this.I, this.f36782w0.commentToken().d(), str3, str, str2, i5, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e0() {
        GamedetialModleFourBean data;
        if (com.join.android.app.common.utils.f.j(this.f36750a)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f36750a).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f36750a);
                requestModel.setArgs(new RequestGameIdArgs(this.I, 1, accountData.getUid()));
                ResponseModel<GamedetialModleFourBean> body = com.join.mgps.rpc.impl.h.L().J().F0(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    Q0(data);
                    return;
                } else {
                    showLodingFailed();
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f0() {
        if (com.join.android.app.common.utils.f.j(this.f36750a)) {
            com.join.mgps.rpc.impl.d m4 = com.join.mgps.rpc.impl.d.m();
            new CommentAllListBean();
            try {
                CommentResponse<CommentAllListBean> g4 = m4.g(RequestBeanUtil.getInstance(this.f36750a).getGamedetialCommentRequest(this.I, this.f36782w0.commentToken().d(), this.f36772r0.getUid() + ""));
                if (g4 != null) {
                    CommentAllListBean data_info = g4.getData_info();
                    if (data_info != null) {
                        this.C0 = data_info.getSelf_comment();
                        this.A0 = data_info.getGame_comment_count();
                        this.B0 = data_info.getGame_score();
                        this.f36750a.getModleFourFragment().setCommentNumber(this.A0);
                    }
                    if (data_info != null && data_info.getHot_comment() != null && data_info.getHot_comment().size() >= 0) {
                        List<CommentAllListBean.HotCommentBean> hot_comment = data_info.getHot_comment();
                        ArrayList arrayList = new ArrayList();
                        for (CommentAllListBean.HotCommentBean hotCommentBean : hot_comment) {
                            arrayList.add(hotCommentBean);
                        }
                        showMain(arrayList);
                        return;
                    }
                    showMain(new ArrayList());
                    return;
                }
                showMain(new ArrayList());
            } catch (Exception e4) {
                e4.printStackTrace();
                showMain(new ArrayList());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        if (com.join.android.app.common.utils.f.j(this.f36750a)) {
            try {
                try {
                    GiftPackageOperationBean f02 = this.F.f0(RequestBeanUtil.getInstance(this.f36750a).getGiftPackageOperationRequestBean(this.f36772r0.getUid(), giftPackageDataInfoBean.getGift_package_id(), this.I));
                    if (f02 != null) {
                        if (f02.getFlag().equals("0")) {
                            String error_info = f02.getError_info();
                            if (error_info == null || !f02.getCode().equals("1001")) {
                                return;
                            }
                            showToast(error_info);
                            return;
                        }
                        List<GiftPackageDataOperationBean> data = f02.getMessages().getData();
                        if (data == null || data.size() <= 0) {
                            return;
                        }
                        GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                        List<GiftPackageDataInfoBean> game_gift_package = this.f36766o0.getGame_gift_package();
                        for (int i2 = 0; i2 < game_gift_package.size(); i2++) {
                            GiftPackageDataInfoBean giftPackageDataInfoBean2 = game_gift_package.get(i2);
                            if (giftPackageDataInfoBean.getGift_package_id() == giftPackageDataInfoBean2.getGift_package_id()) {
                                giftPackageDataInfoBean2.setGift_package_status(1);
                                giftPackageDataInfoBean2.setGift_package_overdue(giftPackageDataOperationBean.getGift_info().getGift_package_overdue());
                                giftPackageDataInfoBean2.setGift_package_code(giftPackageDataOperationBean.getGift_info().getGift_package_code());
                            }
                        }
                        this.f36766o0.setGame_gift_package(game_gift_package);
                        E0(giftPackageDataOperationBean);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } finally {
                showToast("领取失败");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.E0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.F0.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    public CommonRequestBean h0() {
        AccountBean accountData = AccountUtil_.getInstance_(this.f36750a).getAccountData();
        this.f36772r0 = accountData;
        return RequestBeanUtil.getInstance(this.f36750a).getGameCommentListRequestBean(1, 5, accountData != null ? accountData.getUid() : 0, this.I, new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void i0() {
        if (com.join.android.app.common.utils.f.j(this.f36750a)) {
            try {
                CommentResponse<CommentTokenBean> c4 = this.H.c(RequestBeanUtil.getInstance(this.f36750a).getTokenRequestBean(AccountUtil_.getInstance_(this.f36750a).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                this.f36782w0.commentToken().g(AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes()));
                this.f36782w0.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void instalButtomButn() {
        int game_book = this.f36766o0.getGame_book();
        if (this.f36766o0.getBespeak_switch() == 1 && game_book != 1 && this.f36766o0.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.f36750a) || this.f36766o0.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.f36766o0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f36750a, this.f36766o0.getDown_url_remote());
            UtilsMy.h2(this.E, this.f36750a);
        }
        DownloadTask downloadTask = this.E;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.E != null && UtilsMy.m0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask2 = this.E;
        if (downloadTask2 == null) {
            return;
        }
        if (downloadTask2 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.h(downloadTask2);
        } else if (status == 12 || status == 27) {
            return;
        } else {
            if (status == 13) {
                com.php25.PDownload.d.k(this.f36750a, downloadTask2);
                return;
            } else if (status == 5) {
                UtilsMy.f3(this.f36750a, downloadTask2, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            } else if (status == 42) {
                downloadTask2.setVer(this.f36766o0.getVer());
                this.E.setVer_name(this.f36766o0.getVer_name());
                this.E.setUrl(this.f36766o0.getDown_url_remote());
                this.E.setCfg_ver(this.f36766o0.getCfg_ver());
                this.E.setCfg_ver_name(this.f36766o0.getCfg_ver_name());
                this.E.setCfg_down_url(this.f36766o0.getCfg_down_url());
                this.E.setPay_game_amount(this.f36766o0.getPay_tag_info() != null ? this.f36766o0.getPay_tag_info().getPay_game_amount() : 0);
                DownloadTask downloadTask3 = this.E;
                Where where = Where.detail;
                downloadTask3.setKeyword(where.name());
                this.E.setKeyword(where.name());
                UtilsMy.w3(this.f36750a, this.E);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.f.j(this.f36750a)) {
                    com.join.mgps.Util.i2.a(this.f36750a).b("无网络连接");
                    return;
                }
                if (this.f36766o0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.f36766o0.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.a0.c0(this.f36750a).Y(this.f36750a, this.f36766o0.getGame_detailed().getTpl_two_qq_key(), this.f36766o0.getGame_detailed().getAd_pic_qq(), this.f36766o0.getGame_detailed().getTpl_two_qq());
                }
                int downloadType = this.E.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.E.getCrc_link_type_val() == null || this.E.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    addFrom(this.E);
                    if (UtilsMy.T0(this.f36750a, this.E)) {
                        return;
                    }
                    if (this.f36766o0.getDown_status() == 5) {
                        UtilsMy.R0(this.f36750a, this.E);
                        return;
                    }
                    com.php25.PDownload.d.b(this.E);
                    this.E.setVer(this.f36766o0.getVer());
                    this.E.setVer_name(this.f36766o0.getVer_name());
                    this.E.setUrl(this.f36766o0.getDown_url_remote());
                    this.E.setCfg_ver(this.f36766o0.getCfg_ver());
                    this.E.setCfg_ver_name(this.f36766o0.getCfg_ver_name());
                    this.E.setCfg_down_url(this.f36766o0.getCfg_down_url());
                    this.E.setPay_game_amount(this.f36766o0.getPay_tag_info() != null ? this.f36766o0.getPay_tag_info().getPay_game_amount() : 0);
                    this.E.setKeyword(Where.detail.name());
                    if (UtilsMy.o0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id()) > 0) {
                        ExtBean extBean = this.J;
                        if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                            UtilsMy.n3(this.f36750a, this.I, this.J.getFrom_id());
                        } else if (!UtilsMy.T0(this.f36750a, this.E)) {
                            if (this.f36766o0.getDown_status() == 5) {
                                UtilsMy.R0(this.f36750a, this.E);
                            } else {
                                UtilsMy.m3(this.f36750a, this.I);
                            }
                        }
                    } else {
                        UtilsMy.g1(this.E, this.f36766o0);
                        if (!UtilsMy.T0(this.f36750a, this.E)) {
                            if (this.f36766o0.getDown_status() == 5) {
                                UtilsMy.R0(this.f36750a, this.E);
                            } else {
                                UtilsMy.F0(this.f36750a, this.E, this.f36766o0.getTp_down_url(), this.f36766o0.getOther_down_switch(), this.f36766o0.getCdn_down_switch());
                            }
                        }
                    }
                } else if (downloadType == 2) {
                    UtilsMy.z3(this.E);
                }
            } else if (11 == status) {
                UtilsMy.j3(downloadTask2, this.f36750a);
            } else if (43 == status) {
                downloadTask2.setKeyword(Where.detail.name());
                GamedetialModleFourBean gamedetialModleFourBean = this.f36766o0;
                if (gamedetialModleFourBean != null) {
                    if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.f36766o0.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.a0.c0(this.f36750a).Y(this.f36750a, this.f36766o0.getGame_detailed().getTpl_two_qq_key(), this.f36766o0.getGame_detailed().getAd_pic_qq(), this.f36766o0.getGame_detailed().getTpl_two_qq());
                    }
                    addFrom(this.E);
                    if (UtilsMy.o0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id()) > 0) {
                        ExtBean extBean2 = this.J;
                        if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                            UtilsMy.n3(this.f36750a, this.I, this.J.getFrom_id());
                        } else if (!UtilsMy.T0(this.f36750a, this.E)) {
                            if (this.f36766o0.getDown_status() == 5) {
                                UtilsMy.R0(this.f36750a, this.E);
                            } else {
                                UtilsMy.m3(this.f36750a, this.I);
                            }
                        }
                    } else {
                        UtilsMy.g1(this.E, this.f36766o0);
                        if (!UtilsMy.T0(this.f36750a, this.E)) {
                            if (this.f36766o0.getDown_status() == 5) {
                                UtilsMy.R0(this.f36750a, this.E);
                            } else {
                                UtilsMy.F0(this.f36750a, this.E, this.f36766o0.getTp_down_url(), this.f36766o0.getOther_down_switch(), this.f36766o0.getCdn_down_switch());
                            }
                        }
                    }
                }
            } else {
                downloadTask2.setKeyword(Where.detail.name());
                if (this.f36766o0 != null) {
                    addFrom(this.E);
                    if (this.f36766o0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.f36766o0.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.a0.c0(this.f36750a).Y(this.f36750a, this.f36766o0.getGame_detailed().getTpl_two_qq_key(), this.f36766o0.getGame_detailed().getAd_pic_qq(), this.f36766o0.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.o0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id()) > 0) {
                        ExtBean extBean3 = this.J;
                        if (extBean3 != null && "checkgame".equals(extBean3.getFrom())) {
                            UtilsMy.n3(this.f36750a, this.I, this.J.getFrom_id());
                        } else if (!UtilsMy.T0(this.f36750a, this.E)) {
                            if (this.f36766o0.getDown_status() == 5) {
                                UtilsMy.R0(this.f36750a, this.E);
                            } else {
                                UtilsMy.m3(this.f36750a, this.I);
                            }
                        }
                    } else {
                        UtilsMy.g1(this.E, this.f36766o0);
                        if (!UtilsMy.T0(this.f36750a, this.E)) {
                            if (this.f36766o0.getDown_status() == 5) {
                                UtilsMy.R0(this.f36750a, this.E);
                            } else {
                                UtilsMy.F0(this.f36750a, this.E, this.f36766o0.getTp_down_url(), this.f36766o0.getOther_down_switch(), this.f36766o0.getCdn_down_switch());
                            }
                        }
                    }
                }
            }
        }
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        this.f36750a.finish();
        j0();
    }

    void j0() {
        ExtBean extBean = this.J;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.J.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f36750a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void l0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m0() {
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void n0(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f36750a)) {
            try {
                CommentResponse<CommentPraiseBean> h4 = this.H.h(d0(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (h4 != null) {
                    if (h4.getCode() == 801) {
                        w0(h4);
                    } else if (h4.getSucc() != 1) {
                        v0(h4.getMsg(), true, i2, 1);
                    }
                    if (h4.getSucc() == 1) {
                        T(i2, 1);
                        return;
                    }
                    return;
                }
                v0("操作失败，请稍候再试~", true, i2, 1);
                return;
            } catch (Exception e4) {
                v0("操作失败，请稍候再试~", true, i2, 1);
                e4.printStackTrace();
                return;
            }
        }
        v0("网络连接失败，再试试吧~", true, i2, 1);
    }

    void o0(CommentBaseBean commentBaseBean) {
        CommentDetailActivity_.k2(this.f36750a).d(commentBaseBean.getGame_id()).b(commentBaseBean.getId()).f(this.f36766o0.getPlugin_num()).a(this.f36766o0.getBespeak_switch()).e(this.f36766o0.getIs_started()).c(this.f36766o0.getComment_score_switch()).h(this.f36766o0.getGame_score().getSgc_switch()).g(this.f36766o0.getPackageName()).start();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.h hVar) {
        if (hVar.getType() == 1 || hVar.getType() == 0 || hVar.getType() == 2) {
            f0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        W();
        V();
        com.join.mgps.Util.c0.a().e(this);
        com.join.mgps.customview.t tVar = this.f36774s0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f36774s0.dismiss();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
        if (r6 != 48) goto L52;
     */
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventMainThread(com.join.mgps.event.l r6) {
        /*
            r5 = this;
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r6.a()
            int r1 = r6.c()
            r5.changeDownloadTaskNumber(r0, r1)
            int r1 = r6.c()
            java.lang.String r2 = "%"
            r3 = 8
            if (r1 != r3) goto L4b
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.E
            if (r6 == 0) goto L4a
            java.lang.String r6 = r6.getPath()
            if (r6 == 0) goto L4a
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.E
            com.join.mgps.Util.UtilsMy.C3(r6)
            android.widget.ProgressBar r6 = r5.f36771r
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.E
            long r0 = r0.getProgress()
            int r1 = (int) r0
            r6.setProgress(r1)
            android.widget.TextView r6 = r5.f36769q
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.E
            long r3 = r1.getProgress()
            r0.append(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r6.setText(r0)
        L4a:
            return
        L4b:
            if (r0 == 0) goto Le3
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.E
            if (r1 == 0) goto Le3
            java.lang.String r1 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r4 = r5.E
            java.lang.String r4 = r4.getCrc_link_type_val()
            boolean r1 = r1.equals(r4)
            if (r1 == 0) goto Le3
            r5.E = r0
            int r6 = r6.c()
            r1 = 2
            if (r6 == r1) goto Ldd
            r1 = 3
            if (r6 == r1) goto Ld9
            r1 = 5
            if (r6 == r1) goto Lbf
            r1 = 6
            if (r6 == r1) goto Ld9
            r1 = 7
            if (r6 == r1) goto Ld9
            if (r6 == r3) goto L89
            r1 = 10
            if (r6 == r1) goto Ld9
            r1 = 11
            if (r6 == r1) goto Lbf
            r1 = 27
            if (r6 == r1) goto Ld9
            r1 = 48
            if (r6 == r1) goto Lbf
            goto Le3
        L89:
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.E
            if (r6 == 0) goto Lbe
            java.lang.String r6 = r6.getPath()
            if (r6 == 0) goto Lbe
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.E
            com.join.mgps.Util.UtilsMy.C3(r6)
            android.widget.ProgressBar r6 = r5.f36771r
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.E
            long r0 = r0.getProgress()
            int r1 = (int) r0
            r6.setProgress(r1)
            android.widget.TextView r6 = r5.f36769q
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.E
            long r3 = r1.getProgress()
            r0.append(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r6.setText(r0)
        Lbe:
            return
        Lbf:
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.E
            if (r6 == 0) goto Ld5
            java.lang.String r6 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.E
            java.lang.String r1 = r1.getCrc_link_type_val()
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto Ld5
            r5.E = r0
        Ld5:
            r5.S()
            goto Le3
        Ld9:
            r5.S()
            goto Le3
        Ldd:
            r5.I0()
            r5.S()
        Le3:
            r5.updateButn()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.b0.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f36776t0 = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        GamedetialModleFourBean gamedetialModleFourBean;
        super.onResume();
        this.f36776t0 = false;
        this.f36772r0 = AccountUtil_.getInstance_(this.f36750a).getAccountData();
        S();
        DownloadTask B = this.I != null ? g1.f.G().B(this.I) : null;
        if (B == null && (gamedetialModleFourBean = this.f36766o0) != null) {
            this.E = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (B == null || this.E == null) {
            return;
        }
        try {
            this.E = B;
            if (B.getFileType().equals(Dtype.android.name()) && this.E.getStatus() == 5) {
                if (Boolean.valueOf(com.join.android.app.common.utils.a.g0(this.f36750a).c(this.f36750a, this.E.getPackageName())).booleanValue()) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f36750a).k(this.f36750a, this.E.getPackageName());
                    if (com.join.mgps.Util.d2.i(this.E.getVer()) && k4.d() < Integer.parseInt(this.E.getVer())) {
                        this.E.setStatus(9);
                    } else {
                        this.E.setStatus(5);
                    }
                } else {
                    this.E.setStatus(11);
                }
            } else {
                this.E.setStatus(B.getStatus());
            }
            updateButn();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f36750a)) {
            try {
                CommentResponse<CommentPraiseBean> l4 = this.H.l(d0(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (l4 != null) {
                    if (l4.getCode() == 801) {
                        w0(l4);
                    } else if (l4.getSucc() != 1) {
                        v0(l4.getMsg(), true, i2, 2);
                    }
                    if (l4.getSucc() == 1) {
                        T(i2, 2);
                        return;
                    }
                    return;
                }
                v0("操作失败，请稍候再试~", true, i2, 2);
                return;
            } catch (Exception e4) {
                v0("操作失败，请稍候再试~", true, i2, 2);
                e4.printStackTrace();
                return;
            }
        }
        v0("网络连接失败，再试试吧~", true, i2, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void progress_layout() {
        DownloadTask downloadTask = this.E;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.h(this.E);
        } else if (this.E.getStatus() == 3 || this.E.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.E, this.f36750a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join,mgps.sim.sdkgamePayfinish"})
    public void q0(Intent intent) {
        this.f36750a.finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r0(InformationCommentBean informationCommentBean) {
        if (com.join.android.app.common.utils.f.j(this.f36750a)) {
            try {
                GamePariseRequest gamePariseRequest = new GamePariseRequest();
                gamePariseRequest.setGame_id(this.I);
                gamePariseRequest.setComment_id(informationCommentBean.getComment_id() + "");
                gamePariseRequest.setUid(this.f36772r0.getUid());
                ResultMainBean<List<PariseBackData>> b4 = this.F.b(RequestBeanUtil.getInstance(this.f36750a).getGameDetailParis(gamePariseRequest));
                if (b4 != null && b4.getFlag() == 1) {
                    List<PariseBackData> data = b4.getMessages().getData();
                    if (data.size() > 0) {
                        if (data.get(0).isVal()) {
                            for (CommentBaseBean commentBaseBean : this.f36788z0) {
                            }
                            L0();
                            return;
                        }
                        showToast("你已赞过");
                        return;
                    }
                    showToast("你已赞过");
                    return;
                }
                m0();
                showToast("点赞失败");
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                m0();
                showToast("点赞失败");
                return;
            }
        }
        showToast("没有网络");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f36787z.setVisibility(0);
        e0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f36750a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f36766o0;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        RelativeLayout relativeLayout = this.f36763n;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f36765o;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
        TextView textView = this.f36762m;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f36787z;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        try {
            GamedetialModleFourBean gamedetialModleFourBean = this.f36766o0;
            if (gamedetialModleFourBean == null || com.join.mgps.Util.d2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                LinearLayout linearLayout2 = this.f36785y;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                }
                if (com.join.android.app.common.utils.f.j(this.f36750a)) {
                    this.A.setVisibility(8);
                } else {
                    this.A.setVisibility(0);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CommentBaseBean> list) {
        this.f36788z0 = list;
        if (this.f36766o0.getGame_id() != null) {
            Q0(this.f36766o0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        RelativeLayout relativeLayout = this.f36765o;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        TextView textView = this.f36762m;
        if (textView != null) {
            textView.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f36763n;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f36750a).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void t0(Intent intent) {
        this.f36772r0 = AccountUtil_.getInstance_(this.f36750a).getAccountData();
        f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f36766o0;
        if (gamedetialModleFourBean == null || this.E == null || this.f36765o == null) {
            return;
        }
        UtilsMy.v2(gamedetialModleFourBean.getSp_tag_info(), this.f36765o, this.E);
        if (this.f36766o0.getPlugin_num() != null) {
            String plugin_num = this.f36766o0.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                this.f36762m.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                this.f36762m.setText("开始");
                showInstallButn();
                return;
            }
        }
        this.f36762m.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask = this.E;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.f36762m.setText("更新");
            this.f36767p.setImageResource(R.drawable.detail_comment_download_continue);
            this.f36767p.setImageResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 12) {
            showInstallButn();
            this.f36762m.setText("解压中..");
        } else if (status == 13) {
            showInstallButn();
            this.f36762m.setText("解压");
            this.f36767p.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 11) {
            showInstallButn();
            this.f36762m.setText("安装");
            this.f36762m.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            this.f36767p.setImageResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 5 || status == 42) {
            showInstallButn();
            P0(true);
            this.f36762m.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f36762m.setText(this.f36750a.getResources().getString(R.string.download_status_finished));
            this.f36767p.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 2) {
            showProgress();
            this.f36767p.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.C3(this.E);
            this.f36771r.setProgress((int) this.E.getProgress());
            TextView textView = this.f36769q;
            textView.setText(this.E.getProgress() + "%");
        } else if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.f36767p.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.C3(this.E);
            this.f36771r.setProgress((int) this.E.getProgress());
            TextView textView2 = this.f36769q;
            textView2.setText(this.E.getProgress() + "%");
        } else if (status == 10) {
            showInstallButn();
            TextView textView3 = this.f36762m;
            textView3.setText("等待\u3000" + this.f36766o0.getSize() + "M");
            this.f36767p.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 1) {
        } else {
            if (status == 43) {
                showInstallButn();
                if (UtilsMy.m0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id()) > 0) {
                    this.f36762m.setText(this.f36750a.getResources().getString(R.string.pay_game_amount, this.f36766o0.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.f36762m.setText(this.f36750a.getResources().getString(R.string.download_status_download));
                }
                this.f36767p.setImageResource(R.drawable.detail_comment_download_continue);
                GamedetialModleFourBean gamedetialModleFourBean2 = this.f36766o0;
                if (gamedetialModleFourBean2 != null) {
                    if (gamedetialModleFourBean2.getBespeak_switch() == 1 && this.f36766o0.getDown_status() == 2) {
                        if (this.f36766o0.getGame_book() == 1) {
                            this.f36762m.setText("已预约");
                            UtilsMy.m0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id());
                            UtilsMy.z2(this.f36762m, this.f36766o0);
                            return;
                        }
                        this.f36762m.setText("预约");
                        return;
                    }
                    UtilsMy.m0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id());
                    UtilsMy.z2(this.f36762m, this.f36766o0);
                }
            } else if (status == 48) {
                showInstallButn();
                this.f36762m.setText(this.f36750a.getResources().getString(R.string.download_status_installing));
            } else {
                showInstallButn();
                if (UtilsMy.m0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id()) > 0) {
                    this.f36762m.setText(this.f36750a.getResources().getString(R.string.pay_game_amount, this.f36766o0.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.f36762m.setText(this.f36750a.getResources().getString(R.string.download_status_download));
                }
                this.f36767p.setImageResource(R.drawable.detail_comment_download_continue);
                GamedetialModleFourBean gamedetialModleFourBean3 = this.f36766o0;
                if (gamedetialModleFourBean3 != null) {
                    if (gamedetialModleFourBean3.getBespeak_switch() == 1 && this.f36766o0.getDown_status() == 2) {
                        if (this.f36766o0.getGame_book() == 1) {
                            this.f36762m.setText("已预约");
                            UtilsMy.m0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id());
                            UtilsMy.z2(this.f36762m, this.f36766o0);
                            return;
                        }
                        this.f36762m.setText("预约");
                        return;
                    }
                    UtilsMy.m0(this.f36766o0.getPay_tag_info(), this.f36766o0.getCrc_sign_id());
                    UtilsMy.z2(this.f36762m, this.f36766o0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int i2;
        try {
            Map<String, DownloadTask> map = this.E0;
            int i4 = 0;
            if (map != null) {
                i4 = map.size();
                i2 = this.F0.size();
            } else {
                i2 = 0;
            }
            this.N0.setDownloadGameNum(i4);
            if (i2 > 0) {
                this.N0.d();
            } else {
                this.N0.g();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        if (resultMainBean.getFlag() == 1) {
            if (i2 == 1) {
                this.f36766o0.setGame_follow(0);
            } else if (i2 == 2) {
                this.f36766o0.setGame_follow(1);
                if (this.f36757h == null) {
                    return;
                }
                com.join.mgps.Util.i2.a(this.f36750a).b("收藏成功");
                this.f36757h.setImageResource(R.drawable.followed_image);
                this.f36758i.setText("已收藏");
            } else if (i2 == 3) {
                this.f36766o0.setGame_book(0);
            } else if (i2 == 4) {
                this.f36766o0.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.f36766o0.getCrc_sign_id());
                this.f36750a.sendBroadcast(intent);
                com.join.mgps.Util.a0.c0(this.f36750a).O(this.f36750a, 1, new p()).show();
            }
            u0();
            updateButn();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0(String str, boolean z3, int i2, int i4) {
        com.join.mgps.Util.i2.a(this.f36750a).b(str);
        if (z3) {
            if (i4 == 1) {
                this.f36764n0.G(i2, 0);
            } else {
                this.f36764n0.F(i2, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0(CommentResponse commentResponse) {
        if (commentResponse.getCode() == 801) {
            i0();
            com.join.mgps.Util.i2.a(this.f36750a).b("数据访问失败，请稍候再试！");
            return;
        }
        com.join.mgps.Util.i2.a(this.f36750a).b(commentResponse.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void x0() {
        IntentUtil.getInstance().goSearchHintActivity(this.f36750a);
        com.papa.sim.statistic.p.l(this.f36750a).m2(Where.detial2, AccountUtil_.getInstance_(this.f36750a).getUid());
    }
}
