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
import androidx.annotation.NonNull;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.k1;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.adapter.l1;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BtGameWelfare;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GamePariseRequest;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
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
/* compiled from: GameDetialModleFourActivity.java */
@EFragment(R.layout.gamedetial_modle_four_activity)
/* loaded from: classes.dex */
public class z extends Fragment implements l1.k {

    /* renamed from: b1  reason: collision with root package name */
    private static final String f38540b1 = "GameDetialModleFourAct";
    @ViewById
    Button A;
    @ViewById
    RelativeLayout B;
    @ViewById
    SimpleDraweeView C;
    @ViewById
    TextView D;
    private com.join.android.app.common.manager.b D0;
    @ViewById
    NestedScrollView E;
    private DownloadTask F;
    @Pref
    PrefDef_ F0;
    com.join.mgps.rpc.d G;
    com.join.mgps.customview.t G0;
    com.join.mgps.rpc.h H;
    com.join.mgps.rpc.e I;
    private List<CommentBaseBean> I0;
    String J;
    private String J0;
    ExtBean K;
    private GameScore K0;
    private int Q0;
    private int R0;
    @ViewById
    TextView S0;
    @ViewById
    ImageView T0;
    @ViewById
    ImageView U0;
    @ViewById
    ImageView V0;
    @ViewById
    ImageView W0;
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView X0;
    private Animation Y0;

    /* renamed from: a  reason: collision with root package name */
    private GamedetailVideoMainActivity f38541a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f38543b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f38544c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f38545d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f38546e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f38547f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f38548g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ImageView f38549h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f38550i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f38551j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    LinearLayout f38552k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    XRecyclerView f38553l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f38554m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    RelativeLayout f38555n;

    /* renamed from: n0  reason: collision with root package name */
    boolean f38556n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    RelativeLayout f38557o;

    /* renamed from: o0  reason: collision with root package name */
    private com.join.mgps.adapter.l1 f38558o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ImageView f38559p;

    /* renamed from: p0  reason: collision with root package name */
    private GamedetialModleFourBean f38560p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f38561q;

    /* renamed from: q0  reason: collision with root package name */
    private LinearLayoutManager f38562q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    ProgressBar f38563r;

    /* renamed from: r0  reason: collision with root package name */
    private com.join.mgps.customview.t f38564r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    LinearLayout f38565s;

    /* renamed from: s0  reason: collision with root package name */
    private AccountBean f38566s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    RelativeLayout f38567t;

    /* renamed from: t0  reason: collision with root package name */
    private com.join.mgps.customview.t f38568t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    RelativeLayout f38569u;

    /* renamed from: u0  reason: collision with root package name */
    private boolean f38570u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    RelativeLayout f38571v;

    /* renamed from: v0  reason: collision with root package name */
    com.join.mgps.recycler.e f38572v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    ImageView f38573w;

    /* renamed from: w0  reason: collision with root package name */
    l1.f f38574w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    ImageView f38575x;

    /* renamed from: x0  reason: collision with root package name */
    com.join.android.app.component.video.c f38576x0;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    LinearLayout f38577y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    LinearLayout f38579z;

    /* renamed from: y0  reason: collision with root package name */
    List<DownloadTask> f38578y0 = new ArrayList();

    /* renamed from: z0  reason: collision with root package name */
    Map<String, DownloadTask> f38580z0 = new ConcurrentHashMap();
    private List<CollectionBeanSubBusiness> A0 = new ArrayList();
    private int B0 = 0;
    private int C0 = 0;
    int E0 = 2;
    boolean H0 = false;
    private CommentAllListBean.SelfCommentBean L0 = null;
    Runnable M0 = new d();
    private boolean N0 = true;
    Map<String, DownloadTask> O0 = new HashMap();
    Map<String, DownloadTask> P0 = new HashMap();
    com.join.mgps.customview.t Z0 = null;

    /* renamed from: a1  reason: collision with root package name */
    com.join.mgps.customview.t f38542a1 = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z.this.N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class b implements l1.g {
        b() {
        }

        @Override // l1.g
        public void a(Object obj) {
            l1.f fVar = z.this.f38574w0;
            if (fVar != null) {
                fVar.z();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class c implements l1.g {
        c() {
        }

        @Override // l1.g
        public void a(Object obj) {
            l1.f fVar = z.this.f38574w0;
            if (fVar != null) {
                fVar.L();
            }
        }
    }

    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (z.this.f38541a.isFinishing()) {
                return;
            }
            z zVar = z.this;
            zVar.f38576x0.p(zVar.f38553l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class e implements l1.a {
        e() {
        }

        @Override // l1.a
        public void onClickCancle() {
        }

        @Override // l1.a
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f38586a;

        f(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f38586a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) z.this.f38541a.getSystemService("clipboard")).setText(this.f38586a.getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(z.this.f38541a);
            a4.b(this.f38586a.getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (z.this.f38568t0 == null || !z.this.f38568t0.isShowing()) {
                return;
            }
            z.this.f38568t0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (z.this.f38568t0 != null && z.this.f38568t0.isShowing()) {
                z.this.f38568t0.dismiss();
            }
            int status = z.this.F != null ? z.this.F.getStatus() : 0;
            if (z.this.f38560p0 != null && UtilsMy.m0(z.this.f38560p0.getPay_tag_info(), z.this.f38560p0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.f3(z.this.f38541a, z.this.F, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            z.this.F.setKeyword(Where.detail.name());
            z zVar = z.this;
            zVar.addFrom(zVar.F);
            if (z.this.f38560p0 != null) {
                if (UtilsMy.o0(z.this.f38560p0.getPay_tag_info(), z.this.f38560p0.getCrc_sign_id()) <= 0) {
                    UtilsMy.g1(z.this.F, z.this.f38560p0);
                    if (!UtilsMy.T0(z.this.f38541a, z.this.F)) {
                        if (z.this.f38560p0.getDown_status() == 5) {
                            UtilsMy.R0(z.this.f38541a, z.this.F);
                        } else {
                            UtilsMy.F0(z.this.f38541a, z.this.F, z.this.f38560p0.getTp_down_url(), z.this.f38560p0.getOther_down_switch(), z.this.f38560p0.getCdn_down_switch());
                        }
                    }
                } else {
                    ExtBean extBean = z.this.K;
                    if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
                        if (!UtilsMy.T0(z.this.f38541a, z.this.F)) {
                            if (z.this.f38560p0.getDown_status() == 5) {
                                UtilsMy.R0(z.this.f38541a, z.this.F);
                            } else {
                                UtilsMy.m3(z.this.f38541a, z.this.J);
                            }
                        }
                    } else {
                        GamedetailVideoMainActivity gamedetailVideoMainActivity = z.this.f38541a;
                        z zVar2 = z.this;
                        UtilsMy.n3(gamedetailVideoMainActivity, zVar2.J, zVar2.K.getFrom_id());
                    }
                }
            }
            z.this.F.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f38590a;

        i(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f38590a = giftPackageDataOperationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) z.this.f38541a.getSystemService("clipboard")).setText(this.f38590a.getGift_info().getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(z.this.f38541a);
            a4.b(this.f38590a.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (z.this.f38568t0 == null || !z.this.f38568t0.isShowing()) {
                return;
            }
            z.this.f38568t0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class k extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LinearLayoutManager f38593a;

        k(LinearLayoutManager linearLayoutManager) {
            this.f38593a = linearLayoutManager;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            com.join.android.app.component.video.c cVar = z.this.f38576x0;
            if (cVar != null) {
                cVar.l(recyclerView, i2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
            z.this.C0 = this.f38593a.findFirstVisibleItemPosition();
            z.this.B0 = this.f38593a.findLastVisibleItemPosition();
            z zVar = z.this;
            com.join.android.app.component.video.c cVar = zVar.f38576x0;
            if (cVar != null) {
                cVar.h(recyclerView, zVar.C0, z.this.B0 - z.this.C0, z.this.f38558o0.getItemCount());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (z.this.f38568t0 != null && z.this.f38568t0.isShowing()) {
                z.this.f38568t0.dismiss();
            }
            int status = z.this.F != null ? z.this.F.getStatus() : 0;
            if (z.this.f38560p0 != null && UtilsMy.m0(z.this.f38560p0.getPay_tag_info(), z.this.f38560p0.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.f3(z.this.f38541a, z.this.F, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            if (z.this.f38560p0.getDown_status() == 2) {
                return;
            }
            z.this.F.setKeyword(Where.detail.name());
            if (z.this.f38560p0 != null) {
                if (UtilsMy.o0(z.this.f38560p0.getPay_tag_info(), z.this.f38560p0.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(z.this.f38541a, z.this.J);
                } else {
                    z zVar = z.this;
                    zVar.addFrom(zVar.F);
                    UtilsMy.g1(z.this.F, z.this.f38560p0);
                    if (!UtilsMy.T0(z.this.f38541a, z.this.F)) {
                        if (z.this.f38560p0.getDown_status() == 5) {
                            UtilsMy.R0(z.this.f38541a, z.this.F);
                        } else {
                            UtilsMy.F0(z.this.f38541a, z.this.F, z.this.f38560p0.getTp_down_url(), z.this.f38560p0.getOther_down_switch(), z.this.f38560p0.getCdn_down_switch());
                        }
                    }
                }
            }
            z.this.F.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class m implements Animation.AnimationListener {
        m() {
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
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class n implements l1.p1 {
        n() {
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void a(InformationCommentBean informationCommentBean) {
            if (IntentUtil.getInstance().goLoginInteractive(z.this.f38541a)) {
                return;
            }
            z.this.z0(informationCommentBean);
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            informationCommentBean.setUser_name(sub.getUser_name());
            informationCommentBean.setComment_id(sub.getUser_id());
            informationCommentBean.setUser_id(sub.getUser_id());
            if (z.this.f38560p0 != null) {
                GameCommentActivity_.s1(z.this.f38541a).a(z.this.f38560p0.getCrc_sign_id()).d(true).b(informationCommentBean).start();
            }
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void c(InformationCommentBean informationCommentBean) {
            if (z.this.f38560p0 != null) {
                GameCommentActivity_.s1(z.this.f38541a).a(z.this.f38560p0.getCrc_sign_id()).d(true).b(informationCommentBean).start();
            }
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void d(CommentBaseBean commentBaseBean, int i2, int i4) {
            z.this.v0(commentBaseBean, i2, i4);
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void e(CommentBaseBean commentBaseBean, int i2, int i4) {
            z.this.x0(commentBaseBean, i2, i4);
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void f(CommentBaseBean commentBaseBean) {
            z.this.w0(commentBaseBean);
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void g() {
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void h() {
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void i() {
            z.this.h0();
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void j() {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid((int) z.this.f38560p0.getForum_id());
            com.join.mgps.Util.i0.v0(z.this.f38541a, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void k() {
            if (z.this.f38560p0.getGame_book() == 1 || IntentUtil.getInstance().goLoginNetGame(z.this.f38541a)) {
                return;
            }
            z.this.changeGameFollow(4);
        }

        @Override // com.join.mgps.adapter.l1.p1
        public void l(boolean z3, GiftPackageDataInfoBean giftPackageDataInfoBean) {
            if (IntentUtil.getInstance().goLoginNetGame(z.this.f38541a)) {
                return;
            }
            if (z3) {
                if (z.this.b0(giftPackageDataInfoBean.getGift_package_type())) {
                    z.this.m0(giftPackageDataInfoBean);
                    return;
                }
                return;
            }
            z.this.O0(giftPackageDataInfoBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class o implements XRecyclerView.f {
        o() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            z.this.q0();
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class r implements k1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f38601a;

        r(boolean z3) {
            this.f38601a = z3;
        }

        @Override // com.join.mgps.Util.k1.b
        public void a(k1.c cVar) {
            if (cVar.a() == 1) {
                z.this.f38541a.finish();
                com.join.mgps.Util.k1.c().e(z.this.f38541a, z.this.K.getFrom_id(), cVar.b());
                com.join.mgps.Util.i2.a(z.this.f38541a).b("授权成功");
            } else if (this.f38601a) {
                z.this.d1(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class s implements CompoundButton.OnCheckedChangeListener {
        s() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            z.this.F0.noFavoriteTips().g(Boolean.valueOf(z3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = z.this.G0;
            if (tVar != null && tVar.isShowing()) {
                z.this.G0.dismiss();
            }
            z.this.g0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourActivity.java */
    /* loaded from: classes3.dex */
    public class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z.this.L0();
        }
    }

    private void A0(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f38578y0.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f38580z0.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.A0) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f38580z0.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f38580z0.get(collectionBeanSubBusiness.getGame_id());
                        if (downloadTask2 == null && downloadTask3 == null) {
                            collectionBeanSubBusiness.setDownloadTask(null);
                        } else if (downloadTask2 != null) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask2);
                        } else if (downloadTask3 != null) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask3);
                        } else if (collectionBeanSubBusiness.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(null);
                        }
                    } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        collectionBeanSubBusiness.setDownloadTask(null);
                    }
                }
            }
        }
        F0();
    }

    private void B0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f38580z0;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            F0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void C0(DownloadTask downloadTask) {
        UtilsMy.D3(this.f38578y0);
        if (!this.f38580z0.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f38578y0.add(downloadTask);
            this.f38580z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        X0(downloadTask);
        F0();
    }

    private void D0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f38580z0;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f38578y0.add(downloadTask);
            this.f38580z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        X0(downloadTask);
        DownloadTask downloadTask2 = this.f38580z0.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        F0();
    }

    private void F0() {
        com.join.mgps.adapter.l1 l1Var = this.f38558o0;
        if (l1Var != null) {
            l1Var.notifyDataSetChanged();
        }
    }

    private void J0(List<l1.n1> list) {
        GamedetialModleFourBean gamedetialModleFourBean = this.f38560p0;
        if (gamedetialModleFourBean == null || gamedetialModleFourBean.getComment_switch() != 1) {
            return;
        }
        int i2 = 0;
        while (this.f38560p0.getCommitDataBeanList() != null) {
            if (i2 >= (this.f38560p0.getCommitDataBeanList().size() <= 3 ? this.f38560p0.getCommitDataBeanList().size() : 3)) {
                break;
            }
            com.join.mgps.adapter.l1 l1Var = this.f38558o0;
            Objects.requireNonNull(l1Var);
            list.add(new l1.n1(l1Var, this.f38560p0.getCommitDataBeanList().get(i2), 25));
            if (i2 == 0) {
                com.join.mgps.adapter.l1 l1Var2 = this.f38558o0;
                Objects.requireNonNull(l1Var2);
                list.add(new l1.n1(l1Var2, "", 27));
            }
            i2++;
        }
        com.join.mgps.adapter.l1 l1Var3 = this.f38558o0;
        Objects.requireNonNull(l1Var3);
        list.add(new l1.n1(l1Var3, "评论底部", 16));
    }

    private void K0(InformationCommentBean informationCommentBean, List<l1.n1> list) {
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        if (sub == null || sub.size() <= 0) {
            return;
        }
        com.join.mgps.adapter.l1 l1Var = this.f38558o0;
        Objects.requireNonNull(l1Var);
        list.add(new l1.n1(l1Var, new l1.r1(informationCommentBean.getComment_id(), informationCommentBean, 0, true), 15));
    }

    private void X0(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.A0) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f38580z0.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f38580z0.get(mod_info.getMod_game_id());
                    if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                        z3 = false;
                    }
                    if (z3 && z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z3) {
                        if (collectionBeanSubBusiness.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else {
                        DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? g1.f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                        if (B == null) {
                            B = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                        }
                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    }
                } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                    return;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void Y0(List<CollectionBeanSubBusiness> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.f38578y0) == null || list2.size() == 0) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.f38578y0.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f38580z0.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                        DownloadTask downloadTask2 = this.f38580z0.get(mod_info.getMod_game_id());
                        z3 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : false;
                        if (!z3 || !z4) {
                            if (z3) {
                                if (collectionBeanSubBusiness.getMod_info() != null && next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            } else if (z4) {
                                if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            } else {
                                DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? g1.f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                                if (B == null) {
                                    B = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                                }
                                if (B != null && next.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            }
                        } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(next);
                            break;
                        }
                    } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                        collectionBeanSubBusiness.setDownloadTask(next);
                        break;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b0(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            com.join.mgps.Util.i2.a(this.f38541a).b(this.f38541a.getString(R.string.unknow_gift_type));
            return false;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f38541a).getAccountData();
        if (str.equals("6")) {
            if (accountData.getVip_level() <= 0) {
                R0();
                return false;
            }
        } else if (str.equals("7") && accountData.getSvip_level() <= 0) {
            Q0();
            return false;
        }
        return true;
    }

    private void c0() {
        com.join.mgps.customview.t tVar = this.Z0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.Z0.dismiss();
    }

    private void d0() {
        com.join.mgps.customview.t tVar = this.f38542a1;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f38542a1.dismiss();
    }

    private void e1() {
        CollectionBeanSubBusiness collectionBeanSubBusiness;
        DownloadTask downloadTask;
        for (int i2 = this.C0; i2 <= this.B0; i2++) {
            l1.n1 n1Var = this.f38558o0.y().get(i2);
            if (n1Var != null) {
                Object obj = n1Var.f42619a;
                if ((obj instanceof CollectionBeanSubBusiness) && (collectionBeanSubBusiness = (CollectionBeanSubBusiness) obj) != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f38553l.getChildAt(i2 - this.C0);
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            ((TextView) childAt.findViewById(R.id.appSize)).setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            ((TextView) childAt.findViewById(R.id.appSize)).setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            ((ProgressBar) childAt.findViewById(R.id.progressBarZip)).setProgress((int) f4.getProgress());
                        } else {
                            ((ProgressBar) childAt.findViewById(R.id.progressBar)).setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            ((TextView) childAt.findViewById(R.id.loding_info)).setText(f4.getSpeed() + "/S");
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    public static a0 r0(String str, boolean z3, ExtBean extBean) {
        Bundle bundle = new Bundle();
        bundle.putString("gameId", str);
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        bundle.putSerializable("extBean", extBean);
        a0 a0Var = new a0();
        a0Var.setArguments(bundle);
        return a0Var;
    }

    @Override // l1.k
    public void C(boolean z3) {
        if (z3) {
            this.f38570u0 = false;
            com.join.android.app.component.video.c cVar = this.f38576x0;
            if (cVar != null) {
                cVar.B();
                return;
            }
            return;
        }
        com.join.android.app.component.video.c cVar2 = this.f38576x0;
        if (cVar2 != null) {
            cVar2.A();
        }
        this.f38570u0 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void E0(Intent intent) {
        this.f38566s0 = AccountUtil_.getInstance_(this.f38541a).getAccountData();
        l0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0(String str, boolean z3, int i2, int i4) {
        com.join.mgps.Util.i2.a(this.f38541a).b(str);
        if (z3) {
            if (i4 == 1) {
                this.f38558o0.H(i2, 0);
            } else {
                this.f38558o0.G(i2, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(CommentResponse commentResponse) {
        if (commentResponse.getCode() == 801) {
            o0();
            com.join.mgps.Util.i2.a(this.f38541a).b("数据访问失败，请稍候再试！");
            return;
        }
        com.join.mgps.Util.i2.a(this.f38541a).b(commentResponse.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        IntentUtil.getInstance().goSearchHintActivity(this.f38541a);
        com.papa.sim.statistic.p.l(this.f38541a).m2(Where.detial2, AccountUtil_.getInstance_(this.f38541a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f38560p0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f38560p0.getGame_name());
        shareBean.setText(this.f38560p0.getInfo());
        shareBean.setImageUrl(this.f38560p0.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f38560p0.getGame_id());
        if (this.f38560p0.getShare_config() != null && this.f38560p0.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f38560p0.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f38541a, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f38560p0.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.f38560p0.getIco_remote());
        shareBean.setTitle(this.f38560p0.getGame_name());
        shareBean.setText(this.f38560p0.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f38560p0.getGame_id());
        if (this.f38560p0.getShare_config() != null && this.f38560p0.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f38560p0.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f38541a, shareBean);
    }

    void N0() {
        ShareBean shareBean = new ShareBean();
        String str = this.f38560p0.getActivity_entry().getUrl() + this.f38560p0.getCrc_sign_id();
        shareBean.setqZoneShareUrl(str);
        shareBean.setQqUrl(str);
        shareBean.setWechatFriendUrl(str);
        shareBean.setWechatShareUrl(str);
        shareBean.setWeiboShareUrl(str);
        shareBean.setTitle(this.f38560p0.getGame_name());
        shareBean.setText(this.f38560p0.getInfo());
        shareBean.setImageUrl(this.f38560p0.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f38560p0.getGame_id());
        com.join.mgps.Util.r.r(this.f38541a, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x013a A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0002, B:5:0x0009, B:7:0x000f, B:8:0x0017, B:10:0x00c8, B:12:0x00ce, B:21:0x00ef, B:26:0x0131, B:28:0x013a, B:29:0x0142, B:31:0x014e, B:34:0x0155, B:22:0x00f5, B:23:0x00fb, B:25:0x0102), top: B:39:0x0002 }] */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void O0(com.join.mgps.dto.GiftPackageDataInfoBean r12) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.z.O0(com.join.mgps.dto.GiftPackageDataInfoBean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        com.join.mgps.customview.t tVar;
        com.join.mgps.customview.t tVar2 = this.f38568t0;
        if (tVar2 != null && tVar2.isShowing()) {
            this.f38568t0.dismiss();
            this.f38568t0 = null;
        }
        com.join.mgps.customview.t tVar3 = new com.join.mgps.customview.t(this.f38541a, R.style.MyDialog);
        this.f38568t0 = tVar3;
        tVar3.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.f38568t0.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.f38568t0.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f38568t0.findViewById(R.id.moneyText);
        ((TextView) this.f38568t0.findViewById(R.id.tip_title)).setText("领号成功");
        ((TextView) this.f38568t0.findViewById(R.id.saveCodeContent)).setText(giftPackageDataOperationBean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        ((TextView) this.f38568t0.findViewById(R.id.saveCodeTv)).setOnClickListener(new i(giftPackageDataOperationBean));
        button2.setOnClickListener(new j());
        if (this.f38560p0.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        DownloadTask downloadTask = this.F;
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
            button.setOnClickListener(new l());
            F0();
            tVar = this.f38568t0;
            if (tVar != null || tVar.isShowing()) {
            }
            this.f38568t0.show();
            return;
        }
        button.setText("下载游戏");
        if (giftPackageDataOperationBean.getGame_info() != null) {
            UtilsMy.m0(giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id());
            UtilsMy.D2(button, giftPackageDataOperationBean.getGame_info().getDown_status(), giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id());
            UtilsMy.w2(giftPackageDataOperationBean.getGame_info().getSp_tag_info(), textView);
        }
        button.setOnClickListener(new l());
        F0();
        tVar = this.f38568t0;
        if (tVar != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0() {
        com.join.mgps.customview.t tVar = this.Z0;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.Z0 = com.join.mgps.Util.a0.c0(this.f38541a).Z(this.f38541a);
        }
        this.Z0.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        com.join.mgps.customview.t tVar = this.f38542a1;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.f38542a1 = com.join.mgps.Util.a0.c0(this.f38541a).b0(this.f38541a);
        }
        this.f38542a1.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void S0() {
        com.join.mgps.adapter.l1 l1Var = this.f38558o0;
        if (l1Var != null && l1Var.s() != null) {
            com.join.mgps.Util.c.g(this.f38558o0.s());
        }
        S0();
    }

    void T0() {
        ImageView imageView = this.T0;
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(R.drawable.line_blue_bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f38541a, R.anim.img_translate);
        this.Y0 = loadAnimation;
        loadAnimation.setFillAfter(true);
        this.Y0.setFillAfter(true);
        this.W0.setVisibility(0);
        this.W0.startAnimation(this.Y0);
        this.Y0.setAnimationListener(new m());
    }

    void U0() {
        ImageView imageView = this.W0;
        if (imageView != null) {
            imageView.clearAnimation();
            this.W0.setVisibility(8);
            this.T0.setImageResource(R.drawable.line_white_bg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f38541a);
    }

    public z W(l1.f fVar) {
        this.f38574w0 = fVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        if (this.f38560p0.getGame_id() != null) {
            g1(this.f38560p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X() {
        this.f38541a.finish();
        p0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z() {
        try {
            this.Q0 = g1.f.G().O();
            int W = g1.f.G().W();
            this.R0 = W;
            a1(W);
            int i2 = this.Q0;
            if (i2 != 0) {
                Z0(i2);
            } else {
                c1();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0(int i2) {
        try {
            if (i2 < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.S0.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.S0.setLayoutParams(layoutParams);
                this.S0.setCompoundDrawables(null, null, null, null);
                this.S0.setBackgroundResource(R.drawable.mygame_big_round);
                this.S0.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.S0.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.S0.setGravity(17);
                this.S0.setLayoutParams(layoutParams2);
                this.S0.setCompoundDrawables(null, null, null, null);
                this.S0.setBackgroundResource(R.drawable.message_round);
                this.S0.setPadding(1, 0, 2, 1);
            }
            this.S0.setVisibility(0);
            TextView textView = this.S0;
            textView.setText(i2 + "");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @UiThread
    public void a0(int i2, int i4) {
        if (i4 == 1) {
            this.f38558o0.G(i2, 1);
        } else {
            this.f38558o0.H(i2, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a1(int i2) {
        if (i2 == 0) {
            U0();
        } else {
            T0();
        }
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.K;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.K.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom("101");
        extBean2.setPosition("112");
        extBean2.setLocation(this.K.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.G = com.join.mgps.rpc.impl.c.P1();
        this.H = com.join.mgps.rpc.impl.f.A0();
        this.I = com.join.mgps.rpc.impl.d.m();
        this.f38541a = (GamedetailVideoMainActivity) getActivity();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.J = arguments.getString("gameId");
            this.f38556n0 = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.K = (ExtBean) arguments.getSerializable("extBean");
        }
        this.f38573w.setVisibility(0);
        this.f38575x.setVisibility(0);
        com.join.mgps.Util.c0.a().d(this);
        this.F = g1.f.G().B(this.J);
        getDownloadTaskInfo();
        this.f38560p0 = new GamedetialModleFourBean();
        this.f38576x0 = new com.join.android.app.component.video.c(this.f38541a, f38540b1);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f38541a);
        this.f38553l.setLayoutManager(linearLayoutManager);
        this.f38553l.addOnScrollListener(new k(linearLayoutManager));
        this.f38572v0 = new com.join.mgps.recycler.e(linearLayoutManager, this.f38553l);
        if (this.f38558o0 == null) {
            this.f38558o0 = new com.join.mgps.adapter.l1(requireActivity(), this.f38560p0, this.f38576x0);
        }
        this.f38558o0.L(this.f38574w0);
        ExtBean extBean = this.K;
        if (extBean != null) {
            this.f38558o0.T(extBean.get_from_type());
        }
        this.f38553l.setAdapter(this.f38558o0);
        this.f38558o0.M(new n());
        LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) this.f38553l.getLayoutManager();
        this.f38562q0 = linearLayoutManager2;
        linearLayoutManager2.setSmoothScrollbarEnabled(true);
        this.f38562q0.setAutoMeasureEnabled(true);
        this.f38553l.setLayoutManager(this.f38562q0);
        this.f38579z.setVisibility(0);
        this.f38553l.setPullRefreshEnabled(false);
        this.f38553l.setLoadingListener(new o());
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            g1(modleFourBeanShow);
        } else {
            k0();
        }
        this.U0.setOnClickListener(new p());
        this.V0.setOnClickListener(new q());
        ExtBean extBean2 = this.K;
        if (extBean2 != null) {
            extBean2.getFrom();
            this.K.getPosition();
            this.K.getLocation();
        }
        d1(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1(List<CollectionBeanSub> list) {
        XRecyclerView xRecyclerView;
        if (list != null) {
            List<l1.n1> y3 = this.f38558o0.y();
            if (list.size() > 0) {
                for (CollectionBeanSub collectionBeanSub : list) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                    collectionBeanSubBusiness.set_from(13301);
                    collectionBeanSubBusiness.set_from_type(13301);
                    this.A0.add(collectionBeanSubBusiness);
                    com.join.mgps.adapter.l1 l1Var = this.f38558o0;
                    Objects.requireNonNull(l1Var);
                    y3.add(new l1.n1(l1Var, collectionBeanSubBusiness, 41));
                }
                Y0(this.A0);
                F0();
            }
            if (list.size() <= 0) {
                XRecyclerView xRecyclerView2 = this.f38553l;
                if (xRecyclerView2 != null) {
                    xRecyclerView2.setNoMore();
                }
            } else {
                XRecyclerView xRecyclerView3 = this.f38553l;
                if (xRecyclerView3 != null) {
                    xRecyclerView3.q1();
                }
            }
        }
        if ((list == null || list.size() <= 0) && (xRecyclerView = this.f38553l) != null) {
            xRecyclerView.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
        U0();
        TextView textView = this.S0;
        if (textView != null) {
            textView.setVisibility(8);
            this.S0.setText("");
        }
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.O0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.O0
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.P0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.P0
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.O0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.O0
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.P0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.P0
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.P0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.P0
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.O0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.O0
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.P0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.P0
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.P0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.P0
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.O0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.O0
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.P0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.P0
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.z.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int i2) {
        String str;
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f38541a).getAccountData();
            this.f38566s0 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f38541a.getPackageManager().getPackageInfo(this.f38541a.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.f38560p0.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.f38566s0.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f38541a).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.G.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.G.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.G.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.G.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                updateTitleButn(resultMainBean, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void d1(boolean z3) {
        ExtBean extBean = this.K;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.k1.c().b(this.f38541a, this.K.getFrom_id(), new r(z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f38541a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void f0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f38541a);
    }

    void f1(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    C0(downloadTask);
                    return;
                case 3:
                    A0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    D0(downloadTask);
                    return;
                case 6:
                    B0(downloadTask);
                    return;
            }
        }
    }

    void g0() {
        if (!com.join.android.app.common.utils.f.j(this.f38541a) || IntentUtil.getInstance().goLoginInteractive(this.f38541a) || this.f38560p0.getGame_follow() == 1) {
            return;
        }
        changeGameFollow(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(GamedetialModleFourBean gamedetialModleFourBean) {
        try {
            LinearLayout linearLayout = this.f38579z;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (gamedetialModleFourBean == null) {
            return;
        }
        LinearLayout linearLayout2 = this.f38577y;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        this.A0.clear();
        this.f38560p0 = gamedetialModleFourBean;
        if (this.f38556n0 && g1.f.G().B(this.J) == null) {
            com.php25.PDownload.d.c(gamedetialModleFourBean.getDownloadtaskDown(), this.f38541a);
        }
        com.join.mgps.adapter.l1 l1Var = this.f38558o0;
        if (l1Var != null) {
            l1Var.I(this.f38541a.getModleFourFragment());
        }
        if (gamedetialModleFourBean.getShare_config() != null && gamedetialModleFourBean.getShare_config().getShare_switch() == 1) {
            this.f38552k.setVisibility(0);
            MyImageLoader.d(this.C, R.drawable.user_gift, "");
            this.f38552k.setOnClickListener(new u());
        } else {
            this.f38552k.setVisibility(8);
        }
        if (gamedetialModleFourBean.getActivity_entry() != null) {
            this.f38552k.setVisibility(0);
            MyImageLoader.h(this.C, gamedetialModleFourBean.getActivity_entry().getPic());
            this.D.setText(gamedetialModleFourBean.getActivity_entry().getTitle());
            this.f38552k.setOnClickListener(new a());
        } else {
            this.f38552k.setVisibility(8);
        }
        GamedetialModleFourBean gamedetialModleFourBean2 = this.f38560p0;
        if (gamedetialModleFourBean2 != null) {
            if (gamedetialModleFourBean2.getGame_follow() == 1) {
                this.f38549h.setImageResource(R.drawable.followed_image);
                this.f38550i.setText("已收藏");
            } else {
                this.f38549h.setImageResource(R.drawable.follow_none_image);
                this.f38550i.setText("收藏");
            }
        }
        DownloadTask B = g1.f.G().B(this.J);
        this.F = B;
        if (B == null) {
            this.F = this.f38560p0.getDownloadtaskDown();
            if (UtilsMy.e0(this.f38560p0.getTag_info())) {
                this.F.setFileType(Dtype.android.name());
                if (com.join.android.app.common.utils.a.g0(this.f38541a).c(this.f38541a, this.f38560p0.getPackageName())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f38541a).k(this.f38541a, this.f38560p0.getPackageName());
                    if (com.join.mgps.Util.d2.i(this.f38560p0.getVer()) && k4.d() < Integer.parseInt(this.f38560p0.getVer())) {
                        this.F.setStatus(9);
                    } else {
                        this.F.setStatus(5);
                    }
                } else {
                    this.F.setStatus(0);
                }
            } else {
                this.F.setStatus(0);
            }
        } else {
            B.setDownloadType(0);
            this.F.setScreenshot_pic(this.f38560p0.getScreenshot_pic());
        }
        if (("" + this.f38560p0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            GamedetialModleFourBean gamedetialModleFourBean3 = this.f38560p0;
            gamedetialModleFourBean3.setDown_count(gamedetialModleFourBean3.getStart_count());
        }
        updateButn();
        try {
            List<CommentBaseBean> list = this.I0;
            if (list != null) {
                this.f38560p0.setCommitDataBeanList(list);
            }
            this.f38560p0.setSelf_comment(this.L0);
            this.f38560p0.setGame_comment_count(this.J0);
            this.f38560p0.setGame_score(this.K0);
            this.f38558o0.K(gamedetialModleFourBean);
            List<l1.n1> y3 = this.f38558o0.y();
            y3.clear();
            BtGameWelfare game_welfare = this.f38560p0.getGame_welfare();
            if (game_welfare != null && (game_welfare.getGame_activity_summary() != null || game_welfare.getGame_benefit_summary() != null)) {
                com.join.mgps.adapter.l1 l1Var2 = this.f38558o0;
                Objects.requireNonNull(l1Var2);
                y3.add(new l1.n1(l1Var2, game_welfare, 42));
            }
            if (gamedetialModleFourBean.getBt_game_switch() == 1 && com.join.mgps.Util.d2.i(gamedetialModleFourBean.getEdit_recommend())) {
                com.join.mgps.adapter.l1 l1Var3 = this.f38558o0;
                Objects.requireNonNull(l1Var3);
                l1.n1 n1Var = new l1.n1(l1Var3, gamedetialModleFourBean.getEdit_recommend(), 39);
                n1Var.f42624f = "编辑推荐";
                y3.add(n1Var);
            }
            if (gamedetialModleFourBean.getBt_game_switch() == 1) {
                if (gamedetialModleFourBean.getGame_screen_shot() != null && gamedetialModleFourBean.getGame_screen_shot().size() > 0) {
                    com.join.mgps.adapter.l1 l1Var4 = this.f38558o0;
                    Objects.requireNonNull(l1Var4);
                    y3.add(new l1.n1(l1Var4, null, 28));
                } else {
                    com.join.mgps.adapter.l1 l1Var5 = this.f38558o0;
                    Objects.requireNonNull(l1Var5);
                    y3.add(new l1.n1(l1Var5, null, 5));
                }
            }
            List<TipBean> game_bt_tag = gamedetialModleFourBean.getGame_bt_tag();
            if (game_bt_tag != null && game_bt_tag.size() > 0) {
                com.join.mgps.adapter.l1 l1Var6 = this.f38558o0;
                Objects.requireNonNull(l1Var6);
                y3.add(new l1.n1(l1Var6, game_bt_tag, 43));
            }
            if (this.f38560p0.getBt_game_switch() == 1) {
                String game_exclusive_benefits = this.f38560p0.getGame_exclusive_benefits();
                String game_buy_rebate = this.f38560p0.getGame_buy_rebate();
                if (com.join.mgps.Util.d2.i(game_exclusive_benefits) || com.join.mgps.Util.d2.i(game_buy_rebate)) {
                    com.join.mgps.adapter.l1 l1Var7 = this.f38558o0;
                    Objects.requireNonNull(l1Var7);
                    l1.n1 n1Var2 = new l1.n1(l1Var7, game_exclusive_benefits, 44);
                    n1Var2.f42624f = game_buy_rebate;
                    y3.add(n1Var2);
                }
            }
            if (com.join.mgps.Util.d2.i(gamedetialModleFourBean.getGame_describe_second())) {
                com.join.mgps.adapter.l1 l1Var8 = this.f38558o0;
                Objects.requireNonNull(l1Var8);
                y3.add(new l1.n1(l1Var8, "游戏简介", 1));
                if (this.f38560p0.getTag_info() != null && this.f38560p0.getTag_info().size() > 0) {
                    com.join.mgps.adapter.l1 l1Var9 = this.f38558o0;
                    Objects.requireNonNull(l1Var9);
                    y3.add(new l1.n1(l1Var9, null, 4));
                }
                com.join.mgps.adapter.l1 l1Var10 = this.f38558o0;
                Objects.requireNonNull(l1Var10);
                l1.n1 n1Var3 = new l1.n1(gamedetialModleFourBean.getGame_describe_second(), 8, 1, new b());
                n1Var3.f42624f = "游戏简介";
                y3.add(n1Var3);
                if (gamedetialModleFourBean.getBt_game_switch() != 1 && com.join.mgps.Util.d2.i(gamedetialModleFourBean.getEdit_recommend())) {
                    com.join.mgps.adapter.l1 l1Var11 = this.f38558o0;
                    Objects.requireNonNull(l1Var11);
                    y3.add(new l1.n1(l1Var11, gamedetialModleFourBean.getEdit_recommend(), 39));
                }
            }
            if (this.f38560p0.getBespeak_switch() == 1) {
                com.join.mgps.adapter.l1 l1Var12 = this.f38558o0;
                Objects.requireNonNull(l1Var12);
                y3.add(new l1.n1(l1Var12, null, 3));
            }
            if (com.join.mgps.Util.d2.i(gamedetialModleFourBean.getDev_info())) {
                com.join.mgps.adapter.l1 l1Var13 = this.f38558o0;
                Objects.requireNonNull(l1Var13);
                y3.add(new l1.n1(l1Var13, "开发者的话", 1));
                com.join.mgps.adapter.l1 l1Var14 = this.f38558o0;
                Objects.requireNonNull(l1Var14);
                y3.add(new l1.n1(l1Var14, gamedetialModleFourBean.getDev_info(), 7));
            }
            if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.d2.i(gamedetialModleFourBean.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.adapter.l1 l1Var15 = this.f38558o0;
                Objects.requireNonNull(l1Var15);
                y3.add(new l1.n1(l1Var15, null, 24));
            }
            if (gamedetialModleFourBean.getAuxiliary_tool() != null) {
                com.join.mgps.adapter.l1 l1Var16 = this.f38558o0;
                Objects.requireNonNull(l1Var16);
                y3.add(new l1.n1(l1Var16, "辅助工具", 10));
            }
            int size = (gamedetialModleFourBean.getRoom_cfg_info() == null || gamedetialModleFourBean.getRoom_cfg_info().getGolden_finger() == null || gamedetialModleFourBean.getRoom_cfg_info().getGolden_finger().size() <= 0) ? 0 : gamedetialModleFourBean.getRoom_cfg_info().getGolden_finger().size();
            if ((gamedetialModleFourBean.getGame_prompt() != null && gamedetialModleFourBean.getGame_prompt().size() > 0) || gamedetialModleFourBean.getGame_handle_entrance() != null || gamedetialModleFourBean.getCommunity_entrance_switch() == 1 || size > 0) {
                com.join.mgps.adapter.l1 l1Var17 = this.f38558o0;
                Objects.requireNonNull(l1Var17);
                l1.n1 n1Var4 = new l1.n1(l1Var17, null, 6, new c());
                n1Var4.f42624f = Boolean.valueOf(gamedetialModleFourBean.getGame_handle_entrance() != null);
                n1Var4.f42625g = Integer.valueOf(size);
                n1Var4.f42626h = Boolean.valueOf(gamedetialModleFourBean.getCommunity_entrance_switch() == 1);
                y3.add(n1Var4);
            }
            GamedetialModleFourBean gamedetialModleFourBean4 = this.f38560p0;
            if (gamedetialModleFourBean4 == null || gamedetialModleFourBean4.getComment_switch() == 1) {
                com.join.mgps.adapter.l1 l1Var18 = this.f38558o0;
                Objects.requireNonNull(l1Var18);
                y3.add(new l1.n1(l1Var18, "评论", 13));
                if (this.f38560p0.getCommitDataBeanList() != null && this.f38560p0.getCommitDataBeanList().size() > 0) {
                    J0(y3);
                } else if (this.N0) {
                    this.N0 = false;
                    l0();
                } else {
                    com.join.mgps.adapter.l1 l1Var19 = this.f38558o0;
                    Objects.requireNonNull(l1Var19);
                    y3.add(new l1.n1(l1Var19, "评论", 26));
                    com.join.mgps.adapter.l1 l1Var20 = this.f38558o0;
                    Objects.requireNonNull(l1Var20);
                    y3.add(new l1.n1(l1Var20, "评论", 27));
                }
            }
            com.join.mgps.adapter.l1 l1Var21 = this.f38558o0;
            Objects.requireNonNull(l1Var21);
            y3.add(new l1.n1(l1Var21, "同类游戏", 1));
            List<CollectionBeanSub> similar_games_recommend = this.f38560p0.getSimilar_games_recommend();
            if (similar_games_recommend == null || similar_games_recommend.size() <= 0) {
                return;
            }
            for (CollectionBeanSub collectionBeanSub : similar_games_recommend) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                collectionBeanSubBusiness.set_from(13301);
                collectionBeanSubBusiness.set_from_type(13301);
                this.A0.add(collectionBeanSubBusiness);
                com.join.mgps.adapter.l1 l1Var22 = this.f38558o0;
                Objects.requireNonNull(l1Var22);
                y3.add(new l1.n1(l1Var22, collectionBeanSubBusiness, 41));
            }
            Y0(this.A0);
            F0();
            this.f38553l.removeCallbacks(this.M0);
            this.f38553l.postDelayed(this.M0, 1000L);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.O0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.P0.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    void h0() {
        boolean booleanValue = this.F0.noFavoriteTips().d().booleanValue();
        if (IntentUtil.getInstance().goLoginInteractive(this.f38541a)) {
            return;
        }
        if (!booleanValue) {
            if (this.G0 == null) {
                com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f38541a, R.style.MyDialog);
                this.G0 = tVar;
                tVar.setContentView(R.layout.favorite_dialog);
                this.G0.setCanceledOnTouchOutside(true);
            }
            ((CheckBox) this.G0.findViewById(R.id.opt)).setOnCheckedChangeListener(new s());
            ((Button) this.G0.findViewById(R.id.ok)).setOnClickListener(new t());
            com.join.mgps.customview.t tVar2 = this.G0;
            if (tVar2 == null || tVar2.isShowing()) {
                return;
            }
            this.G0.show();
            return;
        }
        g0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    public void h1() {
        this.f38560p0.setGame_book(1);
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void i0() {
        GamedetialModleFourBean gamedetialModleFourBean;
        if (IntentUtil.getInstance().goLoginInteractive(this.f38541a) || (gamedetialModleFourBean = this.f38560p0) == null || gamedetialModleFourBean.getGame_follow() == 1) {
            return;
        }
        h0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void instalButtomButn() {
        int game_book = this.f38560p0.getGame_book();
        if (this.f38560p0.getBespeak_switch() == 1 && game_book != 1 && this.f38560p0.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.f38541a) || this.f38560p0.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.f38560p0.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f38541a, this.f38560p0.getDown_url_remote());
            UtilsMy.h2(this.F, this.f38541a);
        }
        DownloadTask downloadTask = this.F;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.F != null && UtilsMy.m0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask2 = this.F;
        if (downloadTask2 == null) {
            return;
        }
        if (downloadTask2 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.h(downloadTask2);
        } else if (status == 12 || status == 27) {
            return;
        } else {
            if (status == 13) {
                com.php25.PDownload.d.k(this.f38541a, downloadTask2);
                return;
            } else if (status == 5) {
                UtilsMy.f3(this.f38541a, downloadTask2, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            } else if (status == 42) {
                downloadTask2.setVer(this.f38560p0.getVer());
                this.F.setVer_name(this.f38560p0.getVer_name());
                this.F.setUrl(this.f38560p0.getDown_url_remote());
                this.F.setCfg_ver(this.f38560p0.getCfg_ver());
                this.F.setCfg_ver_name(this.f38560p0.getCfg_ver_name());
                this.F.setCfg_down_url(this.f38560p0.getCfg_down_url());
                this.F.setPay_game_amount(this.f38560p0.getPay_tag_info() != null ? this.f38560p0.getPay_tag_info().getPay_game_amount() : 0);
                DownloadTask downloadTask3 = this.F;
                Where where = Where.detail;
                downloadTask3.setKeyword(where.name());
                this.F.setKeyword(where.name());
                UtilsMy.w3(this.f38541a, this.F);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.f.j(this.f38541a)) {
                    com.join.mgps.Util.i2.a(this.f38541a).b("无网络连接");
                    return;
                }
                if (this.f38560p0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.f38560p0.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.a0.c0(this.f38541a).Y(this.f38541a, this.f38560p0.getGame_detailed().getTpl_two_qq_key(), this.f38560p0.getGame_detailed().getAd_pic_qq(), this.f38560p0.getGame_detailed().getTpl_two_qq());
                }
                int downloadType = this.F.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.F.getCrc_link_type_val() == null || this.F.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    addFrom(this.F);
                    if (UtilsMy.T0(this.f38541a, this.F)) {
                        return;
                    }
                    if (this.f38560p0.getDown_status() == 5) {
                        UtilsMy.R0(this.f38541a, this.F);
                        return;
                    }
                    com.php25.PDownload.d.b(this.F);
                    this.F.setVer(this.f38560p0.getVer());
                    this.F.setVer_name(this.f38560p0.getVer_name());
                    this.F.setUrl(this.f38560p0.getDown_url_remote());
                    this.F.setCfg_ver(this.f38560p0.getCfg_ver());
                    this.F.setCfg_ver_name(this.f38560p0.getCfg_ver_name());
                    this.F.setCfg_down_url(this.f38560p0.getCfg_down_url());
                    this.F.setPay_game_amount(this.f38560p0.getPay_tag_info() != null ? this.f38560p0.getPay_tag_info().getPay_game_amount() : 0);
                    this.F.setKeyword(Where.detail.name());
                    if (UtilsMy.o0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id()) > 0) {
                        ExtBean extBean = this.K;
                        if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                            UtilsMy.n3(this.f38541a, this.J, this.K.getFrom_id());
                        } else if (!UtilsMy.T0(this.f38541a, this.F)) {
                            if (this.f38560p0.getDown_status() == 5) {
                                UtilsMy.R0(this.f38541a, this.F);
                            } else {
                                UtilsMy.m3(this.f38541a, this.J);
                            }
                        }
                    } else {
                        UtilsMy.g1(this.F, this.f38560p0);
                        if (!UtilsMy.T0(this.f38541a, this.F)) {
                            if (this.f38560p0.getDown_status() == 5) {
                                UtilsMy.R0(this.f38541a, this.F);
                            } else {
                                UtilsMy.F0(this.f38541a, this.F, this.f38560p0.getTp_down_url(), this.f38560p0.getOther_down_switch(), this.f38560p0.getCdn_down_switch());
                            }
                        }
                    }
                } else if (downloadType == 2) {
                    UtilsMy.z3(this.F);
                }
            } else if (11 == status) {
                UtilsMy.j3(downloadTask2, this.f38541a);
            } else if (43 == status) {
                downloadTask2.setKeyword(Where.detail.name());
                GamedetialModleFourBean gamedetialModleFourBean = this.f38560p0;
                if (gamedetialModleFourBean != null) {
                    if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.f38560p0.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.a0.c0(this.f38541a).Y(this.f38541a, this.f38560p0.getGame_detailed().getTpl_two_qq_key(), this.f38560p0.getGame_detailed().getAd_pic_qq(), this.f38560p0.getGame_detailed().getTpl_two_qq());
                    }
                    addFrom(this.F);
                    if (UtilsMy.o0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id()) > 0) {
                        ExtBean extBean2 = this.K;
                        if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                            UtilsMy.n3(this.f38541a, this.J, this.K.getFrom_id());
                        } else if (!UtilsMy.T0(this.f38541a, this.F)) {
                            if (this.f38560p0.getDown_status() == 5) {
                                UtilsMy.R0(this.f38541a, this.F);
                            } else {
                                UtilsMy.m3(this.f38541a, this.J);
                            }
                        }
                    } else {
                        UtilsMy.g1(this.F, this.f38560p0);
                        if (!UtilsMy.T0(this.f38541a, this.F)) {
                            if (this.f38560p0.getDown_status() == 5) {
                                UtilsMy.R0(this.f38541a, this.F);
                            } else {
                                UtilsMy.F0(this.f38541a, this.F, this.f38560p0.getTp_down_url(), this.f38560p0.getOther_down_switch(), this.f38560p0.getCdn_down_switch());
                            }
                        }
                    }
                }
            } else {
                downloadTask2.setKeyword(Where.detail.name());
                if (this.f38560p0 != null) {
                    addFrom(this.F);
                    if (this.f38560p0.getGame_detailed() != null && com.join.mgps.Util.d2.i(this.f38560p0.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.a0.c0(this.f38541a).Y(this.f38541a, this.f38560p0.getGame_detailed().getTpl_two_qq_key(), this.f38560p0.getGame_detailed().getAd_pic_qq(), this.f38560p0.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.o0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id()) > 0) {
                        ExtBean extBean3 = this.K;
                        if (extBean3 != null && "checkgame".equals(extBean3.getFrom())) {
                            UtilsMy.n3(this.f38541a, this.J, this.K.getFrom_id());
                        } else if (!UtilsMy.T0(this.f38541a, this.F)) {
                            if (this.f38560p0.getDown_status() == 5) {
                                UtilsMy.R0(this.f38541a, this.F);
                            } else {
                                UtilsMy.m3(this.f38541a, this.J);
                            }
                        }
                    } else {
                        UtilsMy.g1(this.F, this.f38560p0);
                        if (!UtilsMy.T0(this.f38541a, this.F)) {
                            if (this.f38560p0.getDown_status() == 5) {
                                UtilsMy.R0(this.f38541a, this.F);
                            } else {
                                UtilsMy.F0(this.f38541a, this.F, this.f38560p0.getTp_down_url(), this.f38560p0.getOther_down_switch(), this.f38560p0.getCdn_down_switch());
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
        this.f38541a.finish();
        p0();
    }

    public RequestCommentpraiseArgs j0(String str, int i2, int i4) {
        String str2;
        int i5;
        String str3 = Build.MODEL;
        AccountBean accountData = AccountUtil_.getInstance_(this.f38541a).getAccountData();
        this.f38566s0 = accountData;
        if (accountData != null) {
            i5 = accountData.getUid();
            str2 = this.f38566s0.getToken();
        } else {
            str2 = "";
            i5 = 0;
        }
        return RequestBeanUtil.getInstance(this.f38541a).getPraiseComment(this.J, this.F0.commentToken().d(), str3, str, str2, i5, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k0() {
        GamedetialModleFourBean data;
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f38541a).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f38541a);
                requestModel.setArgs(new RequestGameIdArgs(this.J, 1, accountData.getUid()));
                ResponseModel<GamedetialModleFourBean> body = com.join.mgps.rpc.impl.h.L().J().F0(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    g1(data);
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
    public void l0() {
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            com.join.mgps.rpc.impl.d m4 = com.join.mgps.rpc.impl.d.m();
            new CommentAllListBean();
            try {
                CommentResponse<CommentAllListBean> g4 = m4.g(RequestBeanUtil.getInstance(this.f38541a).getGamedetialCommentRequest(this.J, this.F0.commentToken().d(), this.f38566s0.getUid() + ""));
                if (g4 != null) {
                    CommentAllListBean data_info = g4.getData_info();
                    if (data_info != null) {
                        this.L0 = data_info.getSelf_comment();
                        this.J0 = data_info.getGame_comment_count();
                        this.K0 = data_info.getGame_score();
                        this.f38541a.getModleFourFragment().setCommentNumber(this.J0);
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
    public void m0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            try {
                try {
                    GiftPackageOperationBean f02 = this.G.f0(RequestBeanUtil.getInstance(this.f38541a).getGiftPackageOperationRequestBean(this.f38566s0.getUid(), giftPackageDataInfoBean.getGift_package_id(), this.J));
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
                        List<GiftPackageDataInfoBean> game_gift_package = this.f38560p0.getGame_gift_package();
                        for (int i2 = 0; i2 < game_gift_package.size(); i2++) {
                            GiftPackageDataInfoBean giftPackageDataInfoBean2 = game_gift_package.get(i2);
                            if (giftPackageDataInfoBean.getGift_package_id() == giftPackageDataInfoBean2.getGift_package_id()) {
                                giftPackageDataInfoBean2.setGift_package_status(1);
                                giftPackageDataInfoBean2.setGift_package_overdue(giftPackageDataOperationBean.getGift_info().getGift_package_overdue());
                                giftPackageDataInfoBean2.setGift_package_code(giftPackageDataOperationBean.getGift_info().getGift_package_code());
                            }
                        }
                        this.f38560p0.setGame_gift_package(game_gift_package);
                        P0(giftPackageDataOperationBean);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } finally {
                showToast("领取失败");
            }
        }
    }

    public CommonRequestBean n0() {
        AccountBean accountData = AccountUtil_.getInstance_(this.f38541a).getAccountData();
        this.f38566s0 = accountData;
        return RequestBeanUtil.getInstance(this.f38541a).getGameCommentListRequestBean(1, 5, accountData != null ? accountData.getUid() : 0, this.J, new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void o0() {
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            try {
                CommentResponse<CommentTokenBean> c4 = this.I.c(RequestBeanUtil.getInstance(this.f38541a).getTokenRequestBean(AccountUtil_.getInstance_(this.f38541a).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                this.F0.commentToken().g(AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes()));
                this.F0.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.h hVar) {
        if (hVar.getType() == 1 || hVar.getType() == 0 || hVar.getType() == 2) {
            l0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        List<DownloadTask> d4 = g1.f.G().d();
        this.f38578y0 = d4;
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f38578y0) {
            this.f38580z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        d0();
        c0();
        com.join.mgps.Util.c0.a().e(this);
        com.join.mgps.customview.t tVar = this.f38568t0;
        if (tVar != null && tVar.isShowing()) {
            this.f38568t0.dismiss();
        }
        com.join.android.app.component.video.c cVar = this.f38576x0;
        if (cVar != null) {
            cVar.z();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00cc, code lost:
        if (r12 != 48) goto L59;
     */
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventMainThread(com.join.mgps.event.l r12) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.z.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.c cVar = this.f38576x0;
        if (cVar != null) {
            cVar.A();
        }
        this.f38570u0 = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        GamedetialModleFourBean gamedetialModleFourBean;
        super.onResume();
        this.f38570u0 = false;
        com.join.android.app.component.video.c cVar = this.f38576x0;
        if (cVar != null) {
            cVar.B();
        }
        this.f38566s0 = AccountUtil_.getInstance_(this.f38541a).getAccountData();
        Z();
        DownloadTask B = this.J != null ? g1.f.G().B(this.J) : null;
        if (B == null && (gamedetialModleFourBean = this.f38560p0) != null) {
            this.F = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (B == null || this.F == null) {
            return;
        }
        try {
            this.F = B;
            if (B.getFileType().equals(Dtype.android.name()) && this.F.getStatus() == 5) {
                if (Boolean.valueOf(com.join.android.app.common.utils.a.g0(this.f38541a).c(this.f38541a, this.F.getPackageName())).booleanValue()) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f38541a).k(this.f38541a, this.F.getPackageName());
                    if (com.join.mgps.Util.d2.i(this.F.getVer()) && k4.d() < Integer.parseInt(this.F.getVer())) {
                        this.F.setStatus(9);
                    } else {
                        this.F.setStatus(5);
                    }
                } else {
                    this.F.setStatus(11);
                }
            } else {
                this.F.setStatus(B.getStatus());
            }
            updateButn();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void p0() {
        ExtBean extBean = this.K;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.K.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f38541a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void progress_layout() {
        DownloadTask downloadTask = this.F;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.h(this.F);
        } else if (this.F.getStatus() == 3 || this.F.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.F, this.f38541a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void q0() {
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f38541a).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f38541a);
                String str = this.J;
                int i2 = this.E0;
                this.E0 = i2 + 1;
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(str, i2, accountData.getUid());
                requestGameIdArgs.setDownloadedGameIdList(g1.f.G().z());
                requestModel.setArgs(requestGameIdArgs);
                ResponseModel<List<CollectionBeanSub>> body = com.join.mgps.rpc.impl.h.L().J().k(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200) {
                    b1(body.getData());
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
    @Click
    public void relodingimag() {
        this.f38579z.setVisibility(0);
        k0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f38541a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f38560p0;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        RelativeLayout relativeLayout = this.f38555n;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f38557o;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
        TextView textView = this.f38554m;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f38579z;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        try {
            GamedetialModleFourBean gamedetialModleFourBean = this.f38560p0;
            if (gamedetialModleFourBean == null || com.join.mgps.Util.d2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                LinearLayout linearLayout2 = this.f38577y;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                }
                if (com.join.android.app.common.utils.f.j(this.f38541a)) {
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
        this.I0 = list;
        if (this.f38560p0.getGame_id() != null) {
            g1(this.f38560p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        RelativeLayout relativeLayout = this.f38557o;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        TextView textView = this.f38554m;
        if (textView != null) {
            textView.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f38555n;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f38541a).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void t0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
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
    public void u0() {
        W0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f38560p0;
        if (gamedetialModleFourBean == null || this.F == null || this.f38557o == null) {
            return;
        }
        UtilsMy.v2(gamedetialModleFourBean.getSp_tag_info(), this.f38557o, this.F);
        if (this.f38560p0.getPlugin_num() != null) {
            String plugin_num = this.f38560p0.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                this.f38554m.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                this.f38554m.setText("开始");
                showInstallButn();
                return;
            }
        }
        this.f38554m.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask = this.F;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.f38554m.setText("更新");
            this.f38559p.setImageResource(R.drawable.detail_comment_download_continue);
            this.f38559p.setImageResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 12) {
            showInstallButn();
            this.f38554m.setText("解压中..");
        } else if (status == 13) {
            showInstallButn();
            this.f38554m.setText("解压");
            this.f38559p.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 11) {
            showInstallButn();
            this.f38554m.setText("安装");
            this.f38554m.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            this.f38559p.setImageResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 5 || status == 42) {
            showInstallButn();
            d1(true);
            this.f38554m.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f38554m.setText(this.f38541a.getResources().getString(R.string.download_status_finished));
            this.f38559p.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 2) {
            showProgress();
            this.f38559p.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.C3(this.F);
            this.f38563r.setProgress((int) this.F.getProgress());
            TextView textView = this.f38561q;
            textView.setText(this.F.getProgress() + "%");
        } else if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.f38559p.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.C3(this.F);
            this.f38563r.setProgress((int) this.F.getProgress());
            TextView textView2 = this.f38561q;
            textView2.setText(this.F.getProgress() + "%");
        } else if (status == 10) {
            showInstallButn();
            TextView textView3 = this.f38554m;
            textView3.setText("等待\u3000" + this.f38560p0.getSize() + "M");
            this.f38559p.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 1) {
        } else {
            if (status == 43) {
                showInstallButn();
                if (UtilsMy.m0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id()) > 0) {
                    this.f38554m.setText(this.f38541a.getResources().getString(R.string.pay_game_amount, this.f38560p0.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.f38554m.setText(this.f38541a.getResources().getString(R.string.download_status_download));
                }
                this.f38559p.setImageResource(R.drawable.detail_comment_download_continue);
                GamedetialModleFourBean gamedetialModleFourBean2 = this.f38560p0;
                if (gamedetialModleFourBean2 != null) {
                    if (gamedetialModleFourBean2.getBespeak_switch() == 1 && this.f38560p0.getDown_status() == 2) {
                        if (this.f38560p0.getGame_book() == 1) {
                            this.f38554m.setText("已预约");
                            UtilsMy.m0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id());
                            UtilsMy.z2(this.f38554m, this.f38560p0);
                            return;
                        }
                        this.f38554m.setText("预约");
                        return;
                    }
                    UtilsMy.m0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id());
                    UtilsMy.z2(this.f38554m, this.f38560p0);
                }
            } else if (status == 48) {
                showInstallButn();
                this.f38554m.setText(this.f38541a.getResources().getString(R.string.download_status_installing));
            } else {
                showInstallButn();
                if (UtilsMy.m0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id()) > 0) {
                    this.f38554m.setText(this.f38541a.getResources().getString(R.string.pay_game_amount, this.f38560p0.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.f38554m.setText(this.f38541a.getResources().getString(R.string.download_status_download));
                }
                this.f38559p.setImageResource(R.drawable.detail_comment_download_continue);
                GamedetialModleFourBean gamedetialModleFourBean3 = this.f38560p0;
                if (gamedetialModleFourBean3 != null) {
                    if (gamedetialModleFourBean3.getBespeak_switch() == 1 && this.f38560p0.getDown_status() == 2) {
                        if (this.f38560p0.getGame_book() == 1) {
                            this.f38554m.setText("已预约");
                            UtilsMy.m0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id());
                            UtilsMy.z2(this.f38554m, this.f38560p0);
                            return;
                        }
                        this.f38554m.setText("预约");
                        return;
                    }
                    UtilsMy.m0(this.f38560p0.getPay_tag_info(), this.f38560p0.getCrc_sign_id());
                    UtilsMy.z2(this.f38554m, this.f38560p0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int i2;
        try {
            Map<String, DownloadTask> map = this.O0;
            int i4 = 0;
            if (map != null) {
                i4 = map.size();
                i2 = this.P0.size();
            } else {
                i2 = 0;
            }
            this.X0.setDownloadGameNum(i4);
            if (i2 > 0) {
                this.X0.d();
            } else {
                this.X0.g();
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
                this.f38560p0.setGame_follow(0);
            } else if (i2 == 2) {
                this.f38560p0.setGame_follow(1);
                if (this.f38549h == null) {
                    return;
                }
                com.join.mgps.Util.i2.a(this.f38541a).b("收藏成功");
                this.f38549h.setImageResource(R.drawable.followed_image);
                this.f38550i.setText("已收藏");
            } else if (i2 == 3) {
                this.f38560p0.setGame_book(0);
            } else if (i2 == 4) {
                this.f38560p0.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.f38560p0.getCrc_sign_id());
                this.f38541a.sendBroadcast(intent);
                com.join.mgps.Util.a0.c0(this.f38541a).O(this.f38541a, 1, new e()).show();
            }
            F0();
            updateButn();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void v0(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            try {
                CommentResponse<CommentPraiseBean> h4 = this.I.h(j0(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (h4 != null) {
                    if (h4.getCode() == 801) {
                        H0(h4);
                    } else if (h4.getSucc() != 1) {
                        G0(h4.getMsg(), true, i2, 1);
                    }
                    if (h4.getSucc() == 1) {
                        a0(i2, 1);
                        return;
                    }
                    return;
                }
                G0("操作失败，请稍候再试~", true, i2, 1);
                return;
            } catch (Exception e4) {
                G0("操作失败，请稍候再试~", true, i2, 1);
                e4.printStackTrace();
                return;
            }
        }
        G0("网络连接失败，再试试吧~", true, i2, 1);
    }

    void w0(CommentBaseBean commentBaseBean) {
        CommentDetailActivity_.k2(this.f38541a).d(commentBaseBean.getGame_id()).b(commentBaseBean.getId()).f(this.f38560p0.getPlugin_num()).a(this.f38560p0.getBespeak_switch()).e(this.f38560p0.getIs_started()).c(this.f38560p0.getComment_score_switch()).h(this.f38560p0.getGame_score().getSgc_switch()).g(this.f38560p0.getPackageName()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void x0(CommentBaseBean commentBaseBean, int i2, int i4) {
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            try {
                CommentResponse<CommentPraiseBean> l4 = this.I.l(j0(commentBaseBean.getId(), i4, commentBaseBean.getPn()));
                if (l4 != null) {
                    if (l4.getCode() == 801) {
                        H0(l4);
                    } else if (l4.getSucc() != 1) {
                        G0(l4.getMsg(), true, i2, 2);
                    }
                    if (l4.getSucc() == 1) {
                        a0(i2, 2);
                        return;
                    }
                    return;
                }
                G0("操作失败，请稍候再试~", true, i2, 2);
                return;
            } catch (Exception e4) {
                G0("操作失败，请稍候再试~", true, i2, 2);
                e4.printStackTrace();
                return;
            }
        }
        G0("网络连接失败，再试试吧~", true, i2, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join,mgps.sim.sdkgamePayfinish"})
    public void y0(Intent intent) {
        this.f38541a.finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void z0(InformationCommentBean informationCommentBean) {
        if (com.join.android.app.common.utils.f.j(this.f38541a)) {
            try {
                GamePariseRequest gamePariseRequest = new GamePariseRequest();
                gamePariseRequest.setGame_id(this.J);
                gamePariseRequest.setComment_id(informationCommentBean.getComment_id() + "");
                gamePariseRequest.setUid(this.f38566s0.getUid());
                ResultMainBean<List<PariseBackData>> b4 = this.G.b(RequestBeanUtil.getInstance(this.f38541a).getGameDetailParis(gamePariseRequest));
                if (b4 != null && b4.getFlag() == 1) {
                    List<PariseBackData> data = b4.getMessages().getData();
                    if (data.size() > 0) {
                        if (data.get(0).isVal()) {
                            for (CommentBaseBean commentBaseBean : this.I0) {
                            }
                            W0();
                            return;
                        }
                        showToast("你已赞过");
                        return;
                    }
                    showToast("你已赞过");
                    return;
                }
                u0();
                showToast("点赞失败");
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                u0();
                showToast("点赞失败");
                return;
            }
        }
        showToast("没有网络");
    }
}
