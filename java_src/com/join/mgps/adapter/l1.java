package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.coupon.CouponListActivity;
import com.join.kotlin.ui.notice.NoticeListActivity;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentAllListActivity_;
import com.join.mgps.activity.CommentCreatActivity_;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.DetialMoreServiceListActivity_;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.PaPaBannerListActivity_;
import com.join.mgps.activity.TagAddActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.UploadActivity_;
import com.join.mgps.activity.gamedetail.BaseGameDetailFragment;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.ActivityTabView;
import com.join.mgps.customview.ExpandLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.customview.SlidingTabLayoutGameDetail;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.BtGameWelfare;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.GameDetailOneTouchSkill;
import com.join.mgps.dto.GameDetialAuxiliaryBean;
import com.join.mgps.dto.GamedetialAuxiliaryToolBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.ImageInfo;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RecommendGameBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import it.sephiroth.android.library.widget.AbsHListView;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: GameDetialModleFourAdapter.java */
/* loaded from: classes3.dex */
public class l1 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: t  reason: collision with root package name */
    private static final String f42373t = "GameDetialModleFourAda";

    /* renamed from: a  reason: collision with root package name */
    private GamedetialModleFourBean f42374a;

    /* renamed from: b  reason: collision with root package name */
    private BaseGameDetailFragment f42375b;

    /* renamed from: c  reason: collision with root package name */
    private Context f42376c;

    /* renamed from: g  reason: collision with root package name */
    com.danikula.videocache.i f42380g;

    /* renamed from: i  reason: collision with root package name */
    private int f42382i;

    /* renamed from: j  reason: collision with root package name */
    private int f42383j;

    /* renamed from: l  reason: collision with root package name */
    private int f42385l;

    /* renamed from: m  reason: collision with root package name */
    l1.f f42386m;

    /* renamed from: n  reason: collision with root package name */
    com.join.android.app.component.video.c f42387n;

    /* renamed from: q  reason: collision with root package name */
    private View f42390q;

    /* renamed from: d  reason: collision with root package name */
    boolean f42377d = false;

    /* renamed from: e  reason: collision with root package name */
    p1 f42378e = null;

    /* renamed from: k  reason: collision with root package name */
    private boolean f42384k = false;

    /* renamed from: p  reason: collision with root package name */
    long f42389p = System.currentTimeMillis();

    /* renamed from: r  reason: collision with root package name */
    private List<View> f42391r = new ArrayList();

    /* renamed from: s  reason: collision with root package name */
    k1 f42392s = new k1();

    /* renamed from: o  reason: collision with root package name */
    private List<n1> f42388o = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private List<RecommendGameBean> f42379f = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private Map<Integer, Boolean> f42381h = new HashMap();

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1.this.U();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(l1.this.f42374a.getGame_company_id()) || "0".equals(l1.this.f42374a.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.I0(l1.this.f42376c).e(1).a(true).c(l1.this.f42374a.getGame_company_id()).d(l1.this.f42374a.getCompany_name()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class a1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f42395a;

        a1(CommentBaseBean commentBaseBean) {
            this.f42395a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p1 p1Var;
            CommentBaseBean commentBaseBean = this.f42395a;
            if (commentBaseBean == null || (p1Var = l1.this.f42378e) == null) {
                return;
            }
            p1Var.f(commentBaseBean);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class a2 extends t1.a {
        public a2(View view) {
            super(view);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class a3 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42398a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42399b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42400c;

        /* renamed from: d  reason: collision with root package name */
        View f42401d;

        public a3(View view) {
            super(view);
            this.f42398a = (TextView) view.findViewById(R.id.tag);
            this.f42399b = (TextView) view.findViewById(R.id.title);
            this.f42401d = view.findViewById(R.id.main);
            this.f42400c = (TextView) view.findViewById(R.id.message);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(l1.this.f42374a.getGame_company_id()) || "0".equals(l1.this.f42374a.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.I0(l1.this.f42376c).e(1).a(true).c(l1.this.f42374a.getGame_company_id()).d(l1.this.f42374a.getCompany_name()).start();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(l1.this.f42376c).getAccountData();
            if (com.join.mgps.Util.d2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(l1.this.f42376c);
                return;
            }
            PrefDef_ prefDef_ = new PrefDef_(l1.this.f42376c);
            if (com.join.mgps.Util.d2.i(prefDef_.uploadType2().d())) {
                IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, prefDef_.uploadType2().d());
            } else {
                UploadActivity_.o1(l1.this.f42376c).a(accountData).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class b1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f42405a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f42406b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f42407c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f42408d;

        /* compiled from: GameDetialModleFourAdapter.java */
        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(b1.this.f42408d.getText().toString()).longValue();
                TextView textView = b1.this.f42408d;
                textView.setText((longValue + 1) + "");
                b1 b1Var = b1.this;
                l1.this.o(b1Var.f42406b);
                b1 b1Var2 = b1.this;
                p1 p1Var = l1.this.f42378e;
                if (p1Var != null) {
                    p1Var.d(b1Var2.f42405a, b1Var2.f42406b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        b1(CommentBaseBean commentBaseBean, int i2, ImageView imageView, TextView textView) {
            this.f42405a = commentBaseBean;
            this.f42406b = i2;
            this.f42407c = imageView;
            this.f42408d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            long currentTimeMillis = System.currentTimeMillis();
            l1 l1Var = l1.this;
            if (currentTimeMillis - l1Var.f42389p < 500) {
                return;
            }
            l1Var.f42389p = currentTimeMillis;
            if (IntentUtil.getInstance().goLoginInteractive(l1.this.f42376c) || (commentBaseBean = this.f42405a) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                l1.this.X(this.f42406b);
                this.f42407c.setImageResource(R.drawable.up_ic);
                p1 p1Var = l1.this.f42378e;
                if (p1Var != null) {
                    p1Var.d(this.f42405a, this.f42406b, 2);
                    return;
                }
                return;
            }
            this.f42405a.setIs_praise(1);
            if (AccountUtil_.getInstance_(l1.this.f42376c).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(l1.this.f42376c);
                return;
            }
            this.f42407c.setImageResource(R.drawable.uped_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(l1.this.f42376c, R.anim.scale_reset);
            this.f42407c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class b2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f42411a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f42412b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f42413c;

        /* renamed from: d  reason: collision with root package name */
        TextView f42414d;

        /* renamed from: e  reason: collision with root package name */
        TextView f42415e;

        /* renamed from: f  reason: collision with root package name */
        TextView f42416f;

        /* renamed from: g  reason: collision with root package name */
        TextView f42417g;

        /* renamed from: h  reason: collision with root package name */
        VipView f42418h;

        /* renamed from: i  reason: collision with root package name */
        public View f42419i;

        public b2(View view) {
            super(view);
            this.f42411a = (RelativeLayout) view.findViewById(R.id.main);
            this.f42412b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f42413c = (ImageView) view.findViewById(R.id.parise);
            this.f42414d = (TextView) view.findViewById(R.id.username);
            this.f42415e = (TextView) view.findViewById(R.id.time);
            this.f42416f = (TextView) view.findViewById(R.id.content);
            this.f42417g = (TextView) view.findViewById(R.id.pariseNumber);
            this.f42418h = (VipView) view.findViewById(R.id.levelTv);
            this.f42419i = view.findViewById(R.id.line);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class b3 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        SlidingTabLayoutGameDetail f42421a;

        /* renamed from: b  reason: collision with root package name */
        ViewPager f42422b;

        public b3(View view) {
            super(view);
            this.f42421a = (SlidingTabLayoutGameDetail) view.findViewById(R.id.tabLayout);
            this.f42422b = (ViewPager) view.findViewById(R.id.viewPager);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1.this.f42378e.k();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (l1.this.f42375b == null || l1.this.f42375b.getViewPager() == null) {
                return;
            }
            l1.this.f42375b.getViewPager().setCurrentItem(1);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class c1 implements View.OnClickListener {
        c1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (l1.this.f42375b == null || l1.this.f42375b.getViewPager() == null) {
                return;
            }
            l1.this.f42375b.getViewPager().setCurrentItem(2);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class c2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f42427a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42428b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42429c;

        public c2(View view) {
            super(view);
            this.f42427a = (RelativeLayout) view.findViewById(R.id.commentFooterLayout);
            this.f42428b = (TextView) view.findViewById(R.id.showAllCommit);
            this.f42429c = (TextView) view.findViewById(R.id.goforum);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class c3 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42431a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42432b;

        public c3(View view) {
            super(view);
            this.f42431a = (LinearLayout) view.findViewById(R.id.handSharkLayout);
            this.f42432b = (TextView) view.findViewById(R.id.suntitle);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TipBean f42434a;

        d(TipBean tipBean) {
            this.f42434a = tipBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.d1(l1.this.f42376c).b(2).d(this.f42434a.getName()).e(Integer.parseInt(this.f42434a.getId())).f(PayCenterOrderRequest.PAY_TYPE_RECHARGE).start();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.f1(l1.this.f42376c).f(l1.this.f42374a.getGame_id()).i(l1.this.f42374a.getPackageName()).h(l1.this.f42374a.getPlugin_num()).g(l1.this.f42374a.getIs_started()).j(l1.this.f42374a.getGame_score() != null ? l1.this.f42374a.getGame_score().getSgc_switch() : 0).a(l1.this.f42374a.getBespeak_switch()).d(l1.this.f42374a.getComment_score_switch()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class d1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f42437a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f42438b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f42439c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f42440d;

        /* compiled from: GameDetialModleFourAdapter.java */
        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(d1.this.f42440d.getText().toString()).longValue();
                TextView textView = d1.this.f42440d;
                textView.setText((longValue + 1) + "");
                d1 d1Var = d1.this;
                l1.this.n(d1Var.f42438b);
                d1 d1Var2 = d1.this;
                p1 p1Var = l1.this.f42378e;
                if (p1Var != null) {
                    p1Var.e(d1Var2.f42437a, d1Var2.f42438b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        d1(CommentBaseBean commentBaseBean, int i2, ImageView imageView, TextView textView) {
            this.f42437a = commentBaseBean;
            this.f42438b = i2;
            this.f42439c = imageView;
            this.f42440d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(l1.this.f42376c) || (commentBaseBean = this.f42437a) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                l1.this.W(this.f42438b);
                this.f42439c.setImageResource(R.drawable.down_ic);
                p1 p1Var = l1.this.f42378e;
                if (p1Var != null) {
                    p1Var.e(this.f42437a, this.f42438b, 2);
                    return;
                }
                return;
            }
            this.f42437a.setIs_despise(1);
            if (AccountUtil_.getInstance_(l1.this.f42376c).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(l1.this.f42376c);
                return;
            }
            this.f42439c.setImageResource(R.drawable.downed_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(l1.this.f42376c, R.anim.scale_reset);
            this.f42439c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class d2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42443a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42444b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f42445c;

        /* renamed from: d  reason: collision with root package name */
        View f42446d;

        public d2(View view) {
            super(view);
            this.f42445c = (ImageView) view.findViewById(R.id.commitImage);
            this.f42446d = view.findViewById(R.id.layoutBottom);
            this.f42443a = (TextView) view.findViewById(R.id.commitCount);
            this.f42444b = (TextView) view.findViewById(R.id.tv_right);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class d3 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42448a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42449b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42450c;

        /* renamed from: d  reason: collision with root package name */
        TextView f42451d;

        public d3(View view) {
            super(view);
            this.f42448a = (TextView) view.findViewById(R.id.tag);
            this.f42449b = (TextView) view.findViewById(R.id.day);
            this.f42450c = (TextView) view.findViewById(R.id.time);
            this.f42451d = (TextView) view.findViewById(R.id.serverName);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TipBean f42453a;

        e(TipBean tipBean) {
            this.f42453a = tipBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.d1(l1.this.f42376c).b(2).d(this.f42453a.getName()).e(Integer.parseInt(this.f42453a.getId())).f("3").start();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(l1.this.f42376c).getAccountData();
            if (com.join.mgps.Util.d2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(l1.this.f42376c);
            } else if (IntentUtil.getInstance().goLoginInteractive(l1.this.f42376c)) {
            } else {
                if (l1.this.f42374a.getSelf_comment() == null) {
                    CommentCreatActivity_.U0(l1.this.f42376c).f(l1.this.f42374a.getGame_id()).j(l1.this.f42374a.getPackageName()).h(l1.this.f42374a.getPlugin_num()).g(l1.this.f42374a.getIs_started()).a(l1.this.f42374a.getBespeak_switch()).d(l1.this.f42374a.getComment_score_switch()).start();
                    return;
                }
                CommentAllListBean.SelfCommentBean self_comment = l1.this.f42374a.getSelf_comment();
                CommentCreatActivity_.U0(l1.this.f42376c).f(l1.this.f42374a.getGame_id()).j(l1.this.f42374a.getPackageName()).d(l1.this.f42374a.getComment_score_switch()).c(self_comment.getId()).e(Float.valueOf(self_comment.getStars_score()).floatValue()).a(l1.this.f42374a.getBespeak_switch()).h(l1.this.f42374a.getPlugin_num()).g(l1.this.f42374a.getIs_started()).b(self_comment.getContent()).start();
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class e1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f42456a;

        e1(AppBeanMain appBeanMain) {
            this.f42456a = appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(l1.this.f42376c, this.f42456a.getIntentDataBean());
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class e2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42458a;

        /* renamed from: b  reason: collision with root package name */
        View f42459b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42460c;

        /* renamed from: d  reason: collision with root package name */
        TextView f42461d;

        /* renamed from: e  reason: collision with root package name */
        View f42462e;

        /* renamed from: f  reason: collision with root package name */
        View f42463f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f42464g;

        public e2(View view) {
            super(view);
            this.f42464g = (LinearLayout) view.findViewById(R.id.parentLayout);
            this.f42458a = (LinearLayout) view.findViewById(R.id.comment_reply_container);
            this.f42459b = view.findViewById(R.id.comment_reply_divider);
            this.f42460c = (TextView) view.findViewById(R.id.comment_reply_content);
            this.f42461d = (TextView) view.findViewById(R.id.comment_reply_more);
            this.f42462e = view.findViewById(R.id.line);
            this.f42463f = view.findViewById(R.id.bottom);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class e3 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        HListView f42466a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f42467b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f42468c;

        /* renamed from: d  reason: collision with root package name */
        public ProgressBar f42469d;

        /* renamed from: e  reason: collision with root package name */
        public ProgressBar f42470e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f42471f;

        /* renamed from: g  reason: collision with root package name */
        private LinearLayout f42472g;

        /* renamed from: h  reason: collision with root package name */
        private RelativeLayout f42473h;

        /* renamed from: i  reason: collision with root package name */
        private RelativeLayout f42474i;

        /* renamed from: j  reason: collision with root package name */
        private TextView f42475j;

        /* renamed from: k  reason: collision with root package name */
        private LinearLayout f42476k;

        /* renamed from: l  reason: collision with root package name */
        private LinearLayout f42477l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f42478m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f42479n;

        /* renamed from: o  reason: collision with root package name */
        public TextView f42480o;

        /* renamed from: p  reason: collision with root package name */
        public TextView f42481p;

        /* renamed from: q  reason: collision with root package name */
        TextView f42482q;

        /* renamed from: r  reason: collision with root package name */
        LinearLayout f42483r;

        public e3(View view) {
            super(view);
            this.f42466a = (HListView) view.findViewById(R.id.screenListView);
            this.f42467b = (SimpleDraweeView) view.findViewById(R.id.mgListviewItemIcon);
            this.f42468c = (TextView) view.findViewById(R.id.mgListviewItemAppname);
            this.f42469d = (ProgressBar) view.findViewById(R.id.progressBarZip);
            this.f42470e = (ProgressBar) view.findViewById(R.id.progressBar);
            this.f42472g = (LinearLayout) view.findViewById(R.id.tipsLayout);
            this.f42471f = (TextView) view.findViewById(R.id.privilege);
            this.f42473h = (RelativeLayout) view.findViewById(R.id.rLayoutRight);
            this.f42474i = (RelativeLayout) view.findViewById(R.id.rLayoutRight2);
            this.f42475j = (TextView) view.findViewById(R.id.mgListviewItemInstall);
            this.f42476k = (LinearLayout) view.findViewById(R.id.linearLayout2);
            this.f42478m = (TextView) view.findViewById(R.id.appSize);
            this.f42479n = (TextView) view.findViewById(R.id.tv_content);
            this.f42481p = (TextView) view.findViewById(R.id.loding_info);
            this.f42482q = (TextView) view.findViewById(R.id.tv_delect_game);
            this.f42477l = (LinearLayout) view.findViewById(R.id.rl_item);
            this.f42480o = (TextView) view.findViewById(R.id.mgListviewItemDescribe);
            this.f42483r = (LinearLayout) view.findViewById(R.id.tipsLayout1);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity_.t j12 = TagAddActivity_.j1(l1.this.f42376c);
            j12.b(l1.this.f42374a.getGame_name() + "热门标签").a(l1.this.f42374a.getCrc_sign_id()).start();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (l1.this.f42375b == null || l1.this.f42375b.getViewPager() == null) {
                return;
            }
            l1.this.f42375b.getViewPager().setCurrentItem(1);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class f1 implements View.OnClickListener {
        f1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goMainLabelActivity(l1.this.f42376c, 0, l1.this.f42374a.getCommunity_entrance_tag(), 1);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class f2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42488a;

        /* renamed from: b  reason: collision with root package name */
        MyGridView f42489b;

        public f2(View view) {
            super(view);
            this.f42489b = (MyGridView) view.findViewById(R.id.recomListView);
            this.f42488a = (LinearLayout) view.findViewById(R.id.layoutContent);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class f3 {
        public static final int A = 26;
        public static final int B = 27;
        public static final int C = 28;
        public static final int D = 29;
        public static final int E = 30;
        public static final int F = 31;
        public static final int G = 32;
        public static final int H = 33;
        public static final int I = 34;
        public static final int J = 35;
        public static final int K = 36;
        public static final int L = 37;
        public static final int M = 38;
        public static final int N = 39;
        public static final int O = 40;
        public static final int P = 41;
        public static final int Q = 42;
        public static final int R = 43;
        public static final int S = 44;

        /* renamed from: b  reason: collision with root package name */
        public static final int f42491b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static final int f42492c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final int f42493d = 3;

        /* renamed from: e  reason: collision with root package name */
        public static final int f42494e = 4;

        /* renamed from: f  reason: collision with root package name */
        public static final int f42495f = 5;

        /* renamed from: g  reason: collision with root package name */
        public static final int f42496g = 6;

        /* renamed from: h  reason: collision with root package name */
        public static final int f42497h = 7;

        /* renamed from: i  reason: collision with root package name */
        public static final int f42498i = 8;

        /* renamed from: j  reason: collision with root package name */
        public static final int f42499j = 9;

        /* renamed from: k  reason: collision with root package name */
        public static final int f42500k = 10;

        /* renamed from: l  reason: collision with root package name */
        public static final int f42501l = 11;

        /* renamed from: m  reason: collision with root package name */
        public static final int f42502m = 12;

        /* renamed from: n  reason: collision with root package name */
        public static final int f42503n = 13;

        /* renamed from: o  reason: collision with root package name */
        public static final int f42504o = 14;

        /* renamed from: p  reason: collision with root package name */
        public static final int f42505p = 15;

        /* renamed from: q  reason: collision with root package name */
        public static final int f42506q = 16;

        /* renamed from: r  reason: collision with root package name */
        public static final int f42507r = 17;

        /* renamed from: s  reason: collision with root package name */
        public static final int f42508s = 18;

        /* renamed from: t  reason: collision with root package name */
        public static final int f42509t = 19;

        /* renamed from: u  reason: collision with root package name */
        public static final int f42510u = 20;

        /* renamed from: v  reason: collision with root package name */
        public static final int f42511v = 21;

        /* renamed from: w  reason: collision with root package name */
        public static final int f42512w = 22;

        /* renamed from: x  reason: collision with root package name */
        public static final int f42513x = 23;

        /* renamed from: y  reason: collision with root package name */
        public static final int f42514y = 24;

        /* renamed from: z  reason: collision with root package name */
        public static final int f42515z = 25;

        public f3() {
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class g implements AbsHListView.i {
        g() {
        }

        @Override // it.sephiroth.android.library.widget.AbsHListView.i
        public void a(AbsHListView absHListView, int i2, int i4, int i5) {
            com.join.android.app.component.video.c cVar = l1.this.f42387n;
            if (cVar != null) {
                cVar.g(absHListView, i2, i4, i5);
            }
        }

        @Override // it.sephiroth.android.library.widget.AbsHListView.i
        public void b(AbsHListView absHListView, int i2) {
            com.join.android.app.component.video.c cVar = l1.this.f42387n;
            if (cVar != null) {
                cVar.k(absHListView, i2);
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            try {
                str = URLEncoder.encode(l1.this.f42374a.getGame_name(), "utf8");
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
                str = "";
            }
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = l1.this.f42376c;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51524k + "/static/vip2020/v2/index.html#/gameGift?game_id=" + l1.this.f42374a.getCrc_sign_id() + "&name=" + str);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class g1 implements View.OnClickListener {
        g1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                l1.this.f42376c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + l1.this.f42374a.getGame_exclusive_benefits_qq() + "&version=1")));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class g2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42520a;

        /* renamed from: b  reason: collision with root package name */
        MyGridView f42521b;

        public g2(View view) {
            super(view);
            this.f42521b = (MyGridView) view.findViewById(R.id.recomListView);
            this.f42520a = (LinearLayout) view.findViewById(R.id.layoutContent);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class h implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42523a;

        h(List list) {
            this.f42523a = list;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            try {
                Intent intent = new Intent(l1.this.f42376c, ImagePagerActivity.class);
                ArrayList arrayList = new ArrayList();
                int i4 = 0;
                for (int i5 = 0; i5 < this.f42523a.size(); i5++) {
                    if (!((ImageInfo) this.f42523a.get(i5)).isVideo()) {
                        arrayList.add(((ImageInfo) this.f42523a.get(i5)).getUrl());
                        if (i2 == i5) {
                            i4 = arrayList.size() - 1;
                        }
                    }
                }
                intent.putExtra("image_urls", (String[]) arrayList.toArray(new String[arrayList.size()]));
                intent.putExtra("image_index", i4);
                l1.this.f42376c.startActivity(intent);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class h0 implements View.OnClickListener {
        h0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumFid(l1.this.f42376c, (int) l1.this.f42374a.getForum_id());
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class h1 implements View.OnClickListener {
        h1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.f1(l1.this.f42376c).f(l1.this.f42374a.getGame_id()).i(l1.this.f42374a.getPackageName()).h(l1.this.f42374a.getPlugin_num()).a(l1.this.f42374a.getBespeak_switch()).g(l1.this.f42374a.getIs_started()).j(l1.this.f42374a.getGame_score().getSgc_switch()).d(l1.this.f42374a.getComment_score_switch()).start();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class h2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        ExpandLayout f42527a;

        public h2(View view) {
            super(view);
            this.f42527a = (ExpandLayout) view.findViewById(R.id.el_view);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class i implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42529a;

        i(List list) {
            this.f42529a = list;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            ScreenshotTrueListAcvity_.intent(l1.this.f42376c).fromData((ScreenshotGamedetialBean) this.f42529a.get(i2)).gameId(l1.this.f42374a.getGame_id()).start();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class i0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f42531a;

        i0(AppBeanMain appBeanMain) {
            this.f42531a = appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(l1.this.f42376c, this.f42531a.getIntentDataBean());
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class i1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        ActivityTabView f42533a;

        public i1(View view) {
            super(view);
            this.f42533a = (ActivityTabView) view.findViewById(R.id.atv_activities);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class i2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f42535a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42536b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42537c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f42538d;

        /* renamed from: e  reason: collision with root package name */
        TextView f42539e;

        /* renamed from: f  reason: collision with root package name */
        TextView f42540f;

        /* renamed from: g  reason: collision with root package name */
        TextView f42541g;

        /* renamed from: h  reason: collision with root package name */
        TextView f42542h;

        /* renamed from: i  reason: collision with root package name */
        TextView f42543i;

        /* renamed from: j  reason: collision with root package name */
        TextView f42544j;

        /* renamed from: k  reason: collision with root package name */
        TextView f42545k;

        /* renamed from: l  reason: collision with root package name */
        TextView f42546l;

        /* renamed from: m  reason: collision with root package name */
        TextView f42547m;

        /* renamed from: n  reason: collision with root package name */
        LinearLayout f42548n;

        /* renamed from: o  reason: collision with root package name */
        LinearLayout f42549o;

        /* renamed from: p  reason: collision with root package name */
        LinearLayout f42550p;

        /* renamed from: q  reason: collision with root package name */
        LinearLayout f42551q;

        /* renamed from: r  reason: collision with root package name */
        LinearLayout f42552r;

        public i2(View view) {
            super(view);
            this.f42535a = (RelativeLayout) view.findViewById(R.id.message);
            this.f42536b = (TextView) view.findViewById(R.id.moreText);
            this.f42537c = (TextView) view.findViewById(R.id.downNumberTitle);
            this.f42538d = (LinearLayout) view.findViewById(R.id.look_other);
            this.f42539e = (TextView) view.findViewById(R.id.downNumber);
            this.f42540f = (TextView) view.findViewById(R.id.nowVersion);
            this.f42541g = (TextView) view.findViewById(R.id.appSize);
            this.f42542h = (TextView) view.findViewById(R.id.updateDate);
            this.f42543i = (TextView) view.findViewById(R.id.androdVersion);
            this.f42544j = (TextView) view.findViewById(R.id.commpany);
            this.f42545k = (TextView) view.findViewById(R.id.resousFrom);
            this.f42546l = (TextView) view.findViewById(R.id.upGame);
            this.f42548n = (LinearLayout) view.findViewById(R.id.resousFromLayout);
            this.f42549o = (LinearLayout) view.findViewById(R.id.commpanyLayout);
            this.f42551q = (LinearLayout) view.findViewById(R.id.androdVersionLayout);
            this.f42550p = (LinearLayout) view.findViewById(R.id.nowVersionLayout);
            this.f42552r = (LinearLayout) view.findViewById(R.id.sizelayout);
            this.f42547m = (TextView) view.findViewById(R.id.titleText);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(l1.this.f42376c, l1.this.f42374a.getGame_handle_entrance().getSub().get(0).getIntentDataBean());
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class j0 implements View.OnClickListener {
        j0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.i(l1.z(l1.this.f42376c))) {
                IntentUtil.getInstance().goQQGroup(l1.this.f42376c, l1.this.f42374a.getGame_detailed().getTpl_two_qq_key());
                return;
            }
            com.join.mgps.Util.i2.a(l1.this.f42376c).b("已复制QQ号，请安装QQ后粘贴搜索");
            com.join.mgps.Util.i0.M(l1.this.f42376c, l1.this.f42374a.getGame_detailed().getTpl_two_qq());
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class j1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42556a;

        public j1(View view) {
            super(view);
            this.f42556a = (LinearLayout) view.findViewById(R.id.btTaglayout);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class j2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f42558a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42559b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42560c;

        /* renamed from: d  reason: collision with root package name */
        TextView f42561d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f42562e;

        public j2(View view) {
            super(view);
            this.f42558a = (SimpleDraweeView) view.findViewById(R.id.giftIcon);
            this.f42559b = (TextView) view.findViewById(R.id.giftName);
            this.f42560c = (TextView) view.findViewById(R.id.giftContent);
            this.f42561d = (TextView) view.findViewById(R.id.getGiftTextView);
            this.f42562e = (LinearLayout) view.findViewById(R.id.layoutContent);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).E("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
            l1.this.r(view.getContext(), "金手指");
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class k0 implements View.OnScrollChangeListener {
        k0() {
        }

        @Override // android.view.View.OnScrollChangeListener
        public void onScrollChange(View view, int i2, int i4, int i5, int i6) {
            l1.this.f42382i = i2;
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class k1 extends PagerAdapter {

        /* compiled from: GameDetialModleFourAdapter.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.papa.sim.statistic.p.l(view.getContext()).E("yijianjineng", AccountUtil_.getInstance_(view.getContext()).getUid());
                l1.this.r(view.getContext(), "一键技能");
            }
        }

        k1() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return l1.this.f42391r.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            viewGroup.addView((View) l1.this.f42391r.get(i2));
            View view = (View) l1.this.f42391r.get(i2);
            view.getLayoutParams().height = -2;
            view.getLayoutParams().width = -1;
            view.setOnClickListener(new a());
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class k2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f42568a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f42569b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42570c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42571d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f42572e;

        /* renamed from: f  reason: collision with root package name */
        public MStarBar f42573f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f42574g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f42575h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f42576i;

        /* renamed from: j  reason: collision with root package name */
        private LinearLayout f42577j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f42578k;

        public k2(View view) {
            super(view);
            this.f42569b = (TextView) view.findViewById(R.id.appName);
            this.f42570c = (TextView) view.findViewById(R.id.appCompany);
            this.f42571d = (TextView) view.findViewById(R.id.appSize);
            this.f42572e = (TextView) view.findViewById(R.id.appDownloadCount);
            this.f42573f = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f42568a = (SimpleDraweeView) view.findViewById(R.id.appIcon);
            this.f42574g = (LinearLayout) view.findViewById(R.id.companyLayout);
            this.f42575h = (LinearLayout) view.findViewById(R.id.layoutGift);
            this.f42576i = (ImageView) view.findViewById(R.id.giftImage);
            this.f42577j = (LinearLayout) view.findViewById(R.id.scoreLayout);
            this.f42578k = (TextView) view.findViewById(R.id.comment_head_point_tx);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n1 f42580a;

        l(n1 n1Var) {
            this.f42580a = n1Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1.g gVar = this.f42580a.f42622d;
            if (gVar != null) {
                gVar.a(0);
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class l0 implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b3 f42582a;

        l0(b3 b3Var) {
            this.f42582a = b3Var;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            l1.this.f42383j = this.f42582a.f42422b.getCurrentItem();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* renamed from: com.join.mgps.adapter.l1$l1  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0179l1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f42584a;

        /* renamed from: b  reason: collision with root package name */
        int f42585b;

        public View$OnClickListenerC0179l1(CollectionBeanSubBusiness collectionBeanSubBusiness, int i2) {
            this.f42584a = collectionBeanSubBusiness;
            this.f42585b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f42584a.getDownloadTask();
            if (downloadTask == null) {
                if (this.f42584a.getMod_info() == null && UtilsMy.e0(this.f42584a.getTag_info())) {
                    if (this.f42584a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(l1.this.f42376c).c(l1.this.f42376c, this.f42584a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(l1.this.f42376c).k(l1.this.f42376c, this.f42584a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f42584a.getVer()) || k4.d() >= Integer.parseInt(this.f42584a.getVer())) {
                                com.join.android.app.common.utils.a.g0(l1.this.f42376c);
                                APKUtils.X(l1.this.f42376c, this.f42584a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(l1.this.f42376c).c(l1.this.f42376c, this.f42584a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f42584a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(l1.this.f42376c);
                            APKUtils.S(l1.this.f42376c, this.f42584a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(l1.this.f42376c, this.f42584a);
                return;
            }
            String plugin_num = this.f42584a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f42584a.getDown_url_remote());
                UtilsMy.h2(downloadTask, l1.this.f42376c);
                IntentUtil.getInstance().intentActivity(l1.this.f42376c, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f42584a.getPay_tag_info(), this.f42584a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(l1.this.f42376c, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(l1.this.f42376c, downloadTask);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (!com.join.android.app.common.utils.f.j(l1.this.f42376c)) {
                                        com.join.mgps.Util.i2.a(l1.this.f42376c).b("无网络连接");
                                        return;
                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(this.f42584a.getVer());
                                        downloadTask.setVer_name(this.f42584a.getVer_name());
                                        downloadTask.setUrl(this.f42584a.getDown_url_remote());
                                        UtilsMy.w3(l1.this.f42376c, downloadTask);
                                        return;
                                    }
                                } else if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(l1.this.f42376c)) {
                                                com.join.mgps.Util.i2.a(l1.this.f42376c).b("无网络连接");
                                                return;
                                            } else if (this.f42584a.getDown_status() == 5) {
                                                UtilsMy.R0(l1.this.f42376c, downloadTask);
                                                return;
                                            } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                return;
                                            } else {
                                                downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                com.php25.PDownload.d.b(downloadTask);
                                                downloadTask.setVer(this.f42584a.getVer());
                                                downloadTask.setVer_name(this.f42584a.getVer_name());
                                                downloadTask.setUrl(this.f42584a.getDown_url_remote());
                                                com.php25.PDownload.d.c(downloadTask, l1.this.f42376c);
                                                return;
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(downloadTask, l1.this.f42376c);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, l1.this.f42376c);
                    return;
                }
                com.php25.PDownload.d.h(downloadTask);
                return;
            }
            if (UtilsMy.o0(this.f42584a.getPay_tag_info(), this.f42584a.getCrc_sign_id()) > 0) {
                UtilsMy.m3(l1.this.f42376c, downloadTask.getCrc_link_type_val());
            } else if (this.f42584a.getDown_status() == 5) {
                UtilsMy.R0(l1.this.f42376c, downloadTask);
            } else {
                UtilsMy.F0(l1.this.f42376c, downloadTask, this.f42584a.getTp_down_url(), this.f42584a.getOther_down_switch(), this.f42584a.getCdn_down_switch());
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class l2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42587a;

        public l2(View view) {
            super(view);
            this.f42587a = (LinearLayout) view.findViewById(R.id.itemLayout);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goMainLabelActivity(l1.this.f42376c, 0, l1.this.f42374a.getCommunity_entrance_tag(), 1);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class m0 implements AdapterView.d {
        m0() {
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            com.papa.sim.statistic.p.l(view.getContext()).E("xuanguan", AccountUtil_.getInstance_(view.getContext()).getUid());
            l1.this.r(view.getContext(), "选关");
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class m1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f42591a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f42592b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f42593c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f42594d;

        /* renamed from: e  reason: collision with root package name */
        private ImageView f42595e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f42596f;

        /* renamed from: g  reason: collision with root package name */
        private MStarBar f42597g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f42598h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f42599i;

        /* renamed from: j  reason: collision with root package name */
        private ImageView f42600j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f42601k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f42602l;

        /* renamed from: m  reason: collision with root package name */
        public View f42603m;

        /* renamed from: n  reason: collision with root package name */
        private TextView f42604n;

        /* renamed from: o  reason: collision with root package name */
        private ImageView f42605o;

        /* renamed from: p  reason: collision with root package name */
        private TextView f42606p;

        /* renamed from: q  reason: collision with root package name */
        private ImageView f42607q;

        /* renamed from: r  reason: collision with root package name */
        private TextView f42608r;

        /* renamed from: s  reason: collision with root package name */
        private ImageView f42609s;

        /* renamed from: t  reason: collision with root package name */
        private TextView f42610t;

        /* renamed from: u  reason: collision with root package name */
        private VipView f42611u;

        /* renamed from: v  reason: collision with root package name */
        private View f42612v;

        public m1(View view) {
            super(view);
            this.f42591a = (LinearLayout) view.findViewById(R.id.commentAllRootLl);
            this.f42592b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f42593c = (TextView) view.findViewById(R.id.userName);
            this.f42594d = (TextView) view.findViewById(R.id.isMe);
            this.f42595e = (ImageView) view.findViewById(R.id.isAuth);
            this.f42600j = (ImageView) view.findViewById(R.id.isGood);
            this.f42596f = (TextView) view.findViewById(R.id.isConnoisseurs);
            this.f42597g = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f42598h = (TextView) view.findViewById(R.id.comment_head_num_tx);
            this.f42599i = (TextView) view.findViewById(R.id.time);
            this.f42601k = (TextView) view.findViewById(R.id.content);
            this.f42602l = (TextView) view.findViewById(R.id.more);
            this.f42603m = view.findViewById(R.id.line);
            this.f42604n = (TextView) view.findViewById(R.id.phoneModle);
            this.f42605o = (ImageView) view.findViewById(R.id.parise);
            this.f42606p = (TextView) view.findViewById(R.id.pariseNumber);
            this.f42607q = (ImageView) view.findViewById(R.id.down);
            this.f42608r = (TextView) view.findViewById(R.id.downNumber);
            this.f42609s = (ImageView) view.findViewById(R.id.message);
            this.f42610t = (TextView) view.findViewById(R.id.messageNumber);
            this.f42611u = (VipView) view.findViewById(R.id.levelTv);
            this.f42612v = view.findViewById(R.id.layoutTop);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class m2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42614a;

        public m2(View view) {
            super(view);
            this.f42614a = (TextView) view.findViewById(R.id.htmlEditRecommend);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class n implements ExpandLayout.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n1 f42616a;

        n(n1 n1Var) {
            this.f42616a = n1Var;
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void a() {
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void b() {
            n1 n1Var = this.f42616a;
            l1.g gVar = n1Var.f42622d;
            if (gVar != null) {
                gVar.a(n1Var);
            }
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void c() {
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class n0 implements View.OnClickListener {
        n0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).E("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
            l1.this.r(view.getContext(), "金手指");
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class n1 {

        /* renamed from: a  reason: collision with root package name */
        public Object f42619a;

        /* renamed from: b  reason: collision with root package name */
        public int f42620b;

        /* renamed from: c  reason: collision with root package name */
        public int f42621c;

        /* renamed from: d  reason: collision with root package name */
        public l1.g f42622d;

        /* renamed from: e  reason: collision with root package name */
        public int f42623e;

        /* renamed from: f  reason: collision with root package name */
        public Object f42624f;

        /* renamed from: g  reason: collision with root package name */
        public Object f42625g;

        /* renamed from: h  reason: collision with root package name */
        public Object f42626h;

        public n1(l1 l1Var, Object obj, int i2) {
            this(l1Var, obj, i2, null);
        }

        public n1(l1 l1Var, Object obj, int i2, l1.g gVar) {
            this(obj, i2, 0, gVar);
        }

        public n1(Object obj, int i2, int i4, l1.g gVar) {
            this.f42623e = 0;
            this.f42619a = obj;
            this.f42620b = i2;
            this.f42622d = gVar;
            this.f42623e = i4;
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class n2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42628a;

        /* renamed from: b  reason: collision with root package name */
        View f42629b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42630c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f42631d;

        /* renamed from: e  reason: collision with root package name */
        TextView f42632e;

        /* renamed from: f  reason: collision with root package name */
        TextView f42633f;

        /* renamed from: g  reason: collision with root package name */
        TextView f42634g;

        /* renamed from: h  reason: collision with root package name */
        TextView f42635h;

        /* renamed from: i  reason: collision with root package name */
        TextView f42636i;

        /* renamed from: j  reason: collision with root package name */
        TextView f42637j;

        /* renamed from: k  reason: collision with root package name */
        TextView f42638k;

        /* renamed from: l  reason: collision with root package name */
        TextView f42639l;

        /* renamed from: m  reason: collision with root package name */
        TextView f42640m;

        /* renamed from: n  reason: collision with root package name */
        TextView f42641n;

        /* renamed from: o  reason: collision with root package name */
        LinearLayout f42642o;

        /* renamed from: p  reason: collision with root package name */
        LinearLayout f42643p;

        /* renamed from: q  reason: collision with root package name */
        LinearLayout f42644q;

        /* renamed from: r  reason: collision with root package name */
        LinearLayout f42645r;

        /* renamed from: s  reason: collision with root package name */
        LinearLayout f42646s;

        public n2(View view) {
            super(view);
            this.f42628a = (TextView) view.findViewById(R.id.message);
            this.f42629b = view.findViewById(R.id.message1);
            this.f42630c = (TextView) view.findViewById(R.id.moreText);
            this.f42631d = (LinearLayout) view.findViewById(R.id.look_other);
            this.f42630c = (TextView) view.findViewById(R.id.moreText);
            this.f42632e = (TextView) view.findViewById(R.id.downNumberTitle);
            this.f42631d = (LinearLayout) view.findViewById(R.id.look_other);
            this.f42633f = (TextView) view.findViewById(R.id.downNumber);
            this.f42634g = (TextView) view.findViewById(R.id.nowVersion);
            this.f42635h = (TextView) view.findViewById(R.id.appSize);
            this.f42636i = (TextView) view.findViewById(R.id.updateDate);
            this.f42637j = (TextView) view.findViewById(R.id.androdVersion);
            this.f42638k = (TextView) view.findViewById(R.id.commpany);
            this.f42639l = (TextView) view.findViewById(R.id.resousFrom);
            this.f42640m = (TextView) view.findViewById(R.id.upGame);
            this.f42642o = (LinearLayout) view.findViewById(R.id.resousFromLayout);
            this.f42643p = (LinearLayout) view.findViewById(R.id.commpanyLayout);
            this.f42645r = (LinearLayout) view.findViewById(R.id.androdVersionLayout);
            this.f42644q = (LinearLayout) view.findViewById(R.id.nowVersionLayout);
            this.f42646s = (LinearLayout) view.findViewById(R.id.sizelayout);
            this.f42641n = (TextView) view.findViewById(R.id.titleText);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f42648a;

        o(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f42648a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f42648a.getGift_package_status() == 0) {
                l1.this.f42378e.l(true, this.f42648a);
            } else {
                l1.this.f42378e.l(false, this.f42648a);
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class o0 implements View.OnClickListener {
        o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).E("yuncundang", AccountUtil_.getInstance_(view.getContext()).getUid());
            l1.this.r(view.getContext(), "云存档");
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class o1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        HListView f42651a;

        public o1(View view) {
            super(view);
            this.f42651a = (HListView) view.findViewById(R.id.hlv_list);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class o2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42653a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42654b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f42655c;

        public o2(View view) {
            super(view);
            this.f42653a = (TextView) view.findViewById(R.id.message);
            this.f42654b = (TextView) view.findViewById(R.id.moreText);
            this.f42655c = (LinearLayout) view.findViewById(R.id.look_other);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f42657a;

        p(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f42657a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            try {
                str = URLEncoder.encode(l1.this.f42374a.getGame_name(), "utf8");
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
                str = "";
            }
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = l1.this.f42376c;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51524k + "/static/vip2020/v2/index.html#/giftDetail?gift_package_id=" + this.f42657a.getGift_package_id() + "&name=" + str);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class p0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f42659a;

        p0(CommentBaseBean commentBaseBean) {
            this.f42659a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f42659a.getUid())).start();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public interface p1 {
        void a(InformationCommentBean informationCommentBean);

        void b(InformationCommentBean.Sub sub);

        void c(InformationCommentBean informationCommentBean);

        void d(CommentBaseBean commentBaseBean, int i2, int i4);

        void e(CommentBaseBean commentBaseBean, int i2, int i4);

        void f(CommentBaseBean commentBaseBean);

        void g();

        void h();

        void i();

        void j();

        void k();

        void l(boolean z3, GiftPackageDataInfoBean giftPackageDataInfoBean);
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class p2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42661a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42662b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42663c;

        public p2(View view) {
            super(view);
            this.f42661a = (LinearLayout) view.findViewById(R.id.handSharkLayout);
            this.f42662b = (TextView) view.findViewById(R.id.title);
            this.f42663c = (TextView) view.findViewById(R.id.suntitle);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42665a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameDetialAuxiliaryBean f42666b;

        q(List list, GameDetialAuxiliaryBean gameDetialAuxiliaryBean) {
            this.f42665a = list;
            this.f42666b = gameDetialAuxiliaryBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f42665a.size() > 0) {
                IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, this.f42666b.getMore_url());
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class q0 implements View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m1 f42668a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f42669b;

        /* compiled from: GameDetialModleFourAdapter.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Layout layout = q0.this.f42668a.f42601k.getLayout();
                if (layout == null) {
                    q0.this.f42668a.f42602l.setVisibility(8);
                    return;
                }
                int lineCount = layout.getLineCount();
                if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) > 0) {
                        q0.this.f42668a.f42602l.setVisibility(0);
                    } else if (l1.this.f42381h.containsKey(Integer.valueOf(q0.this.f42669b))) {
                        q0.this.f42668a.f42602l.setVisibility(0);
                    } else {
                        q0.this.f42668a.f42602l.setVisibility(8);
                    }
                }
            }
        }

        q0(m1 m1Var, int i2) {
            this.f42668a = m1Var;
            this.f42669b = i2;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f42668a.f42601k.post(new a());
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class q1 extends n1 {

        /* renamed from: j  reason: collision with root package name */
        private final int f42672j;

        /* renamed from: k  reason: collision with root package name */
        private final int f42673k;

        public q1(int i2, int i4, Object obj, int i5) {
            super(l1.this, obj, i5);
            this.f42672j = i2;
            this.f42673k = i4;
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class q2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42675a;

        /* renamed from: b  reason: collision with root package name */
        MyGridView f42676b;

        /* renamed from: c  reason: collision with root package name */
        View f42677c;

        public q2(View view) {
            super(view);
            this.f42676b = (MyGridView) view.findViewById(R.id.recomListView);
            this.f42675a = (LinearLayout) view.findViewById(R.id.layoutContent);
            this.f42677c = view.findViewById(R.id.line_h);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42679a;

        r(List list) {
            this.f42679a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f42679a.size() > 0) {
                IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, ((GamedetialAuxiliaryToolBean) this.f42679a.get(0)).getUrl());
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(l1.this.f42374a.getGame_company_id()) || "0".equals(l1.this.f42374a.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.I0(l1.this.f42376c).e(1).a(true).c(l1.this.f42374a.getGame_company_id()).d(l1.this.f42374a.getCompany_name()).start();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public static class r1 {

        /* renamed from: a  reason: collision with root package name */
        public String f42682a;

        /* renamed from: b  reason: collision with root package name */
        public InformationCommentBean f42683b;

        /* renamed from: c  reason: collision with root package name */
        public int f42684c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f42685d;

        /* renamed from: e  reason: collision with root package name */
        public int f42686e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f42687f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f42688g;

        public r1(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
            this.f42682a = str;
            this.f42683b = informationCommentBean;
            this.f42684c = i2;
            this.f42685d = z3;
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class r2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f42689a;

        /* renamed from: b  reason: collision with root package name */
        public Button f42690b;

        /* renamed from: c  reason: collision with root package name */
        public HorizontalScrollView f42691c;

        public r2(View view) {
            super(view);
            this.f42689a = (LinearLayout) view.findViewById(R.id.titleMoreTip);
            this.f42690b = (Button) view.findViewById(R.id.titleMoreBookButn);
            this.f42691c = (HorizontalScrollView) view.findViewById(R.id.scrollView);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42693a;

        s(List list) {
            this.f42693a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f42693a.size() > 1) {
                IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, ((GamedetialAuxiliaryToolBean) this.f42693a.get(1)).getUrl());
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class s0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m1 f42695a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f42696b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f42697c;

        s0(m1 m1Var, int i2, CommentBaseBean commentBaseBean) {
            this.f42695a = m1Var;
            this.f42696b = i2;
            this.f42697c = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f42695a.f42602l.getText().toString().equals("查看全部")) {
                l1.this.f42381h.put(Integer.valueOf(this.f42696b), Boolean.TRUE);
                if (Build.VERSION.SDK_INT == 19) {
                    this.f42695a.f42601k.setText(this.f42697c.getContent());
                }
                this.f42695a.f42601k.setMaxLines(Integer.MAX_VALUE);
                this.f42695a.f42602l.setText("收起");
                return;
            }
            l1.this.f42381h.put(Integer.valueOf(this.f42696b), Boolean.FALSE);
            if (Build.VERSION.SDK_INT == 19) {
                this.f42695a.f42601k.setText(this.f42697c.getContent().replaceAll("\n", ""));
            }
            this.f42695a.f42601k.setMaxLines(5);
            this.f42695a.f42602l.setText("查看全部");
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class s1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public TextView f42699a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f42700b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42701c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42702d;

        /* renamed from: e  reason: collision with root package name */
        public LinearLayout f42703e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f42704f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f42705g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f42706h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f42707i;

        /* renamed from: j  reason: collision with root package name */
        public ImageView f42708j;

        /* renamed from: k  reason: collision with root package name */
        ExpandLayout f42709k;

        /* renamed from: l  reason: collision with root package name */
        ExpandLayout f42710l;

        /* renamed from: m  reason: collision with root package name */
        public LinearLayout f42711m;

        /* renamed from: n  reason: collision with root package name */
        public LinearLayout f42712n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: GameDetialModleFourAdapter.java */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    l1.this.f42376c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + l1.this.f42374a.getGame_exclusive_benefits_qq() + "&version=1")));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: GameDetialModleFourAdapter.java */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    l1.this.f42376c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + l1.this.f42374a.getGame_exclusive_benefits_qq() + "&version=1")));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        public s1(View view) {
            super(view);
            this.f42699a = (TextView) view.findViewById(R.id.titleText);
            this.f42701c = (TextView) view.findViewById(R.id.moreText);
            this.f42703e = (LinearLayout) view.findViewById(R.id.look_other);
            this.f42705g = (ImageView) view.findViewById(R.id.imageView5);
            this.f42707i = (ImageView) view.findViewById(R.id.icon);
            this.f42709k = (ExpandLayout) view.findViewById(R.id.el_view);
            this.f42711m = (LinearLayout) view.findViewById(R.id.ll_welfare);
            this.f42700b = (TextView) view.findViewById(R.id.titleText_1);
            this.f42702d = (TextView) view.findViewById(R.id.moreText_1);
            this.f42704f = (LinearLayout) view.findViewById(R.id.look_other_1);
            this.f42706h = (ImageView) view.findViewById(R.id.imageView5_1);
            this.f42708j = (ImageView) view.findViewById(R.id.icon_1);
            this.f42710l = (ExpandLayout) view.findViewById(R.id.el_view_1);
            this.f42712n = (LinearLayout) view.findViewById(R.id.ll_welfare_1);
        }

        public void a(String str, String str2) {
            if (com.join.mgps.Util.d2.i(str)) {
                this.f42711m.setVisibility(0);
                this.f42707i.setVisibility(0);
                this.f42707i.setImageResource(R.drawable.bt_gift_icon);
                this.f42699a.setText("专属福利");
                this.f42709k.setContent(str);
                if (com.join.mgps.Util.d2.i(l1.this.f42374a.getGame_exclusive_benefits_qq()) && com.join.mgps.Util.d2.h(str2)) {
                    this.f42701c.setText("联系客服");
                    this.f42701c.setTextColor(Color.parseColor("#f47500"));
                    this.f42701c.setTextSize(0, l1.this.f42376c.getResources().getDimensionPixelSize(R.dimen.wdp28));
                    this.f42703e.setVisibility(0);
                    this.f42703e.setOnClickListener(new a());
                }
            } else {
                this.f42711m.setVisibility(8);
            }
            if (com.join.mgps.Util.d2.i(str2)) {
                this.f42712n.setVisibility(0);
                this.f42708j.setImageResource(R.drawable.bt_backsouse_icon);
                this.f42708j.setVisibility(0);
                this.f42700b.setText("充值返利");
                this.f42710l.setContent(str2);
                if (com.join.mgps.Util.d2.i(l1.this.f42374a.getGame_exclusive_benefits_qq())) {
                    this.f42702d.setText("联系客服");
                    this.f42702d.setTextColor(Color.parseColor("#f47500"));
                    this.f42702d.setTextSize(0, l1.this.f42376c.getResources().getDimensionPixelSize(R.dimen.wdp28));
                    this.f42704f.setVisibility(0);
                    this.f42704f.setOnClickListener(new b());
                    return;
                }
                return;
            }
            this.f42712n.setVisibility(8);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class s2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42716a;

        /* renamed from: b  reason: collision with root package name */
        LinearLayout f42717b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f42718c;

        public s2(View view) {
            super(view);
            this.f42716a = (LinearLayout) view.findViewById(R.id.linearLayout);
            this.f42717b = (LinearLayout) view.findViewById(R.id.linearLayout_top);
            this.f42718c = (LinearLayout) view.findViewById(R.id.linearLayout_bottom);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42720a;

        t(List list) {
            this.f42720a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f42720a.size() > 2) {
                IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, ((GamedetialAuxiliaryToolBean) this.f42720a.get(2)).getUrl());
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class t0 implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42722a;

        t0(List list) {
            this.f42722a = list;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            try {
                Intent intent = new Intent(l1.this.f42376c, ImagePagerActivity.class);
                String[] strArr = new String[this.f42722a.size()];
                for (int i4 = 0; i4 < this.f42722a.size(); i4++) {
                    strArr[i4] = ((ImageInfo) this.f42722a.get(i4)).getUrl();
                }
                intent.putExtra("image_urls", strArr);
                intent.putExtra("image_index", i2);
                l1.this.f42376c.startActivity(intent);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class t1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        HListView f42724a;

        public t1(View view) {
            super(view);
            this.f42724a = (HListView) view.findViewById(R.id.favoriteList);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class t2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f42726a;

        public t2(View view) {
            super(view);
            this.f42726a = (LinearLayout) view.findViewById(R.id.tipslayout);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ o2 f42728a;

        u(o2 o2Var) {
            this.f42728a = o2Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ("收起".equals(this.f42728a.f42654b.getText().toString())) {
                this.f42728a.f42654b.setText("展开");
                this.f42728a.f42653a.setVisibility(8);
                return;
            }
            this.f42728a.f42654b.setText("收起");
            this.f42728a.f42653a.setVisibility(0);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class u0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f42730a;

        u0(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f42730a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Ext ext = new Ext();
            ext.setPosition("brief");
            ext.setGameId(this.f42730a.getCrc_sign_id());
            ext.setArticleId(this.f42730a.get_from() + "");
            com.papa.sim.statistic.p.l(l1.this.f42376c).K1(Event.clickFromUserGameList, ext);
            IntentUtil.getInstance().goGameDetialActivity(l1.this.f42376c, this.f42730a.getCrc_sign_id(), this.f42730a.getGame_info_tpl_type(), this.f42730a.getSp_tpl_two_position(), this.f42730a.get_from());
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    private class u1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        View f42732a;

        /* renamed from: b  reason: collision with root package name */
        View f42733b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42734c;

        /* renamed from: d  reason: collision with root package name */
        TextView f42735d;

        /* renamed from: e  reason: collision with root package name */
        TextView f42736e;

        /* renamed from: f  reason: collision with root package name */
        SimpleDraweeView f42737f;

        public u1(View view) {
            super(view);
            this.f42732a = view.findViewById(R.id.line_h);
            this.f42734c = (TextView) view.findViewById(R.id.count);
            this.f42735d = (TextView) view.findViewById(R.id.auth);
            this.f42736e = (TextView) view.findViewById(R.id.title);
            this.f42737f = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.f42733b = view.findViewById(R.id.top);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class u2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public TextView f42739a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f42740b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f42741c;

        /* renamed from: d  reason: collision with root package name */
        public View f42742d;

        /* renamed from: e  reason: collision with root package name */
        public View f42743e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f42744f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f42745g;

        public u2(View view) {
            super(view);
            this.f42739a = (TextView) view.findViewById(R.id.titleText);
            this.f42740b = (TextView) view.findViewById(R.id.moreText);
            this.f42743e = view.findViewById(R.id.line_h);
            this.f42741c = (LinearLayout) view.findViewById(R.id.look_other);
            this.f42742d = view.findViewById(R.id.layoutTop);
            this.f42744f = (ImageView) view.findViewById(R.id.imageView5);
            this.f42745g = (ImageView) view.findViewById(R.id.icon);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).E("yuncundang", AccountUtil_.getInstance_(view.getContext()).getUid());
            l1.this.r(view.getContext(), "云存档");
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class v0 implements ActivityTabView.d {
        v0() {
        }

        @Override // com.join.mgps.customview.ActivityTabView.d
        public void a(String str) {
            IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, str);
        }

        @Override // com.join.mgps.customview.ActivityTabView.d
        public void b() {
            BTActivityBean bTActivityBean;
            BtGameWelfare game_welfare = l1.this.f42374a.getGame_welfare();
            if (game_welfare != null) {
                List<BTActivityBean> game_activity_summary = game_welfare.getGame_activity_summary();
                if (game_activity_summary != null && game_activity_summary.size() > 1) {
                    Intent intent = new Intent(l1.this.f42376c, NoticeListActivity.class);
                    intent.putExtra("gameId", l1.this.f42374a.getCrc_sign_id());
                    l1.this.f42376c.startActivity(intent);
                } else if (game_activity_summary.size() != 1 || (bTActivityBean = game_activity_summary.get(0)) == null) {
                } else {
                    IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, bTActivityBean.getJump_url());
                }
            }
        }

        @Override // com.join.mgps.customview.ActivityTabView.d
        public void c(String str) {
            IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, str);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class v1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f42749a;

        /* renamed from: b  reason: collision with root package name */
        LinearLayout f42750b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42751c;

        /* renamed from: d  reason: collision with root package name */
        View f42752d;

        /* renamed from: e  reason: collision with root package name */
        View f42753e;

        public v1(View view) {
            super(view);
            this.f42749a = (LinearLayout) view.findViewById(R.id.goCommit);
            this.f42750b = (LinearLayout) view.findViewById(R.id.starlayout);
            this.f42751c = (TextView) view.findViewById(R.id.textMessage);
            this.f42752d = view.findViewById(R.id.layoutTop);
            this.f42753e = view.findViewById(R.id.layoutTop2);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class v2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f42755a;

        /* renamed from: b  reason: collision with root package name */
        StandardVideoView f42756b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f42757c;

        public v2(View view) {
            super(view);
            this.f42755a = (SimpleDraweeView) view.findViewById(R.id.iv_book_bg);
            this.f42756b = (StandardVideoView) view.findViewById(R.id.videoPlayer);
            this.f42757c = (LinearLayout) view.findViewById(R.id.rl_top);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n2 f42759a;

        w(n2 n2Var) {
            this.f42759a = n2Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ("收起".equals(this.f42759a.f42630c.getText().toString())) {
                this.f42759a.f42630c.setText("展开");
                if (l1.this.f42374a.getGame_upgrade_info_switch() == 1) {
                    this.f42759a.f42628a.setVisibility(8);
                }
                if (l1.this.f42374a.getGame_detailed() != null) {
                    this.f42759a.f42629b.setVisibility(8);
                    return;
                }
                return;
            }
            this.f42759a.f42630c.setText("收起");
            if (l1.this.f42374a.getGame_upgrade_info_switch() == 1) {
                this.f42759a.f42628a.setVisibility(0);
            }
            if (l1.this.f42374a.getGame_detailed() != null) {
                this.f42759a.f42629b.setVisibility(0);
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class w0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f42761a;

        w0(InformationCommentBean informationCommentBean) {
            this.f42761a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p1 p1Var = l1.this.f42378e;
            if (p1Var != null) {
                p1Var.c(this.f42761a);
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class w1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42763a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42764b;

        public w1(View view) {
            super(view);
            this.f42763a = (TextView) view.findViewById(R.id.info);
            this.f42764b = (TextView) view.findViewById(R.id.more);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class w2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        HListView f42766a;

        public w2(View view) {
            super(view);
            this.f42766a = (HListView) view.findViewById(R.id.screenListView);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(l1.this.f42374a.getGame_company_id()) || "0".equals(l1.this.f42374a.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.I0(l1.this.f42376c).e(1).a(true).c(l1.this.f42374a.getGame_company_id()).d(l1.this.f42374a.getCompany_name()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class x0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42769a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f42770b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f42771c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ r1 f42772d;

        x0(int i2, int i4, String str, r1 r1Var) {
            this.f42769a = i2;
            this.f42770b = i4;
            this.f42771c = str;
            this.f42772d = r1Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f42769a == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f42769a; i2 >= 0; i2--) {
                n1 n1Var = (n1) l1.this.f42388o.get(this.f42770b - i2);
                r1 r1Var = n1Var.f42620b == 15 ? (r1) n1Var.f42619a : null;
                if (r1Var != null && this.f42771c == r1Var.f42682a) {
                    arrayList.addAll(r1Var.f42683b.getSub());
                }
            }
            for (int i4 = 0; i4 <= this.f42769a; i4++) {
                l1.this.f42388o.remove(this.f42770b - i4);
            }
            informationCommentBean.setSub(arrayList);
            l1.this.f42388o.add(this.f42770b - this.f42769a, l1.this.p(this.f42771c, informationCommentBean, this.f42772d.f42684c, true));
            l1.this.notifyDataSetChanged();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class x1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public TextView f42774a;

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f42775b;

        /* renamed from: c  reason: collision with root package name */
        public View f42776c;

        /* renamed from: d  reason: collision with root package name */
        public View f42777d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f42778e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f42779f;

        /* renamed from: g  reason: collision with root package name */
        public ExpandLayout f42780g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f42781h;

        /* renamed from: i  reason: collision with root package name */
        public LinearLayout f42782i;

        public x1(View view) {
            super(view);
            this.f42774a = (TextView) view.findViewById(R.id.titleText);
            this.f42777d = view.findViewById(R.id.line_h);
            this.f42775b = (LinearLayout) view.findViewById(R.id.look_other);
            this.f42776c = view.findViewById(R.id.layoutTop);
            this.f42778e = (ImageView) view.findViewById(R.id.imageView5);
            this.f42779f = (ImageView) view.findViewById(R.id.icon);
            this.f42780g = (ExpandLayout) view.findViewById(R.id.el_view);
            this.f42781h = (TextView) view.findViewById(R.id.tv_view);
            this.f42782i = (LinearLayout) view.findViewById(R.id.ll_container);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    private class x2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42784a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42785b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42786c;

        /* renamed from: d  reason: collision with root package name */
        TextView f42787d;

        /* renamed from: e  reason: collision with root package name */
        TextView[] f42788e;

        public x2(View view) {
            super(view);
            this.f42788e = null;
            this.f42784a = (TextView) view.findViewById(R.id.f17861k1);
            this.f42785b = (TextView) view.findViewById(R.id.f17862k2);
            this.f42786c = (TextView) view.findViewById(R.id.f17863k3);
            TextView textView = (TextView) view.findViewById(R.id.k4);
            this.f42787d = textView;
            this.f42788e = new TextView[]{this.f42784a, this.f42785b, this.f42786c, textView};
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(l1.this.f42376c).getAccountData();
            if (accountData == null || accountData.getUid() == 0) {
                com.join.mgps.Util.i2.a(l1.this.f42376c).b("让大伙知道分享者的大名");
                IntentUtil.getInstance().goLoginInteractive(l1.this.f42376c);
            } else if (com.join.mgps.Util.d2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(l1.this.f42376c);
            } else {
                PrefDef_ prefDef_ = new PrefDef_(l1.this.f42376c);
                if (com.join.mgps.Util.d2.i(prefDef_.uploadType2().d())) {
                    IntentUtil.getInstance().goShareWebActivity(l1.this.f42376c, prefDef_.uploadType2().d());
                } else {
                    UploadActivity_.o1(l1.this.f42376c).a(accountData).start();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class y0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42791a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f42792b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f42793c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f42794d;

        y0(int i2, InformationCommentBean informationCommentBean, String str, int i4) {
            this.f42791a = i2;
            this.f42792b = informationCommentBean;
            this.f42793c = str;
            this.f42794d = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f42791a) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f42792b);
                List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
                ArrayList arrayList = new ArrayList();
                int i5 = i2 + 3;
                if (i5 < sub.size()) {
                    arrayList.addAll(sub.subList(i2, i5));
                } else {
                    arrayList.addAll(sub.subList(i2, sub.size()));
                    z3 = true;
                }
                informationCommentBean.setSub(arrayList);
                n1 p3 = l1.this.p(this.f42793c, informationCommentBean, 0, i4 == 0);
                r1 r1Var = (r1) p3.f42619a;
                r1Var.f42686e = i4;
                r1Var.f42687f = z3;
                r1Var.f42685d = i4 == 0;
                l1.this.J(p3, !z3);
                l1.this.f42388o.add(this.f42794d + i4 + 1, p3);
                i4++;
                i2 = i5;
            }
            l1.this.f42388o.remove(this.f42794d);
            l1.this.notifyDataSetChanged();
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class y1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        HListView f42796a;

        public y1(View view) {
            super(view);
            this.f42796a = (HListView) view.findViewById(R.id.favoriteList);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    private class y2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f42798a;

        public y2(View view) {
            super(view);
            this.f42798a = (TextView) view.findViewById(R.id.text);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i2 f42800a;

        z(i2 i2Var) {
            this.f42800a = i2Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (" ".equals(this.f42800a.f42536b.getText().toString())) {
                this.f42800a.f42536b.setText("");
                this.f42800a.f42536b.setBackgroundResource(R.drawable.arena_down_arrow);
                this.f42800a.f42535a.setVisibility(8);
                return;
            }
            this.f42800a.f42536b.setText(" ");
            this.f42800a.f42536b.setBackgroundResource(R.drawable.arena_up_arrow);
            this.f42800a.f42535a.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    public class z0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f42802a;

        z0(InformationCommentBean.Sub sub) {
            this.f42802a = sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p1 p1Var = l1.this.f42378e;
            if (p1Var != null) {
                p1Var.b(this.f42802a);
            }
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class z1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f42804a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f42805b;

        /* renamed from: c  reason: collision with root package name */
        SimpleDraweeView f42806c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f42807d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f42808e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f42809f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f42810g;

        /* renamed from: h  reason: collision with root package name */
        TextView f42811h;

        /* renamed from: i  reason: collision with root package name */
        TextView f42812i;

        /* renamed from: j  reason: collision with root package name */
        TextView f42813j;

        public z1(View view) {
            super(view);
            this.f42804a = (SimpleDraweeView) view.findViewById(R.id.vpnImage);
            this.f42805b = (SimpleDraweeView) view.findViewById(R.id.googleImage);
            this.f42806c = (SimpleDraweeView) view.findViewById(R.id.rootImage);
            this.f42807d = (LinearLayout) view.findViewById(R.id.look_other);
            this.f42808e = (LinearLayout) view.findViewById(R.id.vpnLayout);
            this.f42809f = (LinearLayout) view.findViewById(R.id.googleLayout);
            this.f42810g = (LinearLayout) view.findViewById(R.id.rootLayout);
            this.f42811h = (TextView) view.findViewById(R.id.vpnText);
            this.f42812i = (TextView) view.findViewById(R.id.googleText);
            this.f42813j = (TextView) view.findViewById(R.id.rootText);
        }
    }

    /* compiled from: GameDetialModleFourAdapter.java */
    /* loaded from: classes3.dex */
    class z2 extends t1.a {
        public z2(View view) {
            super(view);
        }
    }

    public l1(Context context, GamedetialModleFourBean gamedetialModleFourBean, com.join.android.app.component.video.c cVar) {
        this.f42374a = gamedetialModleFourBean;
        this.f42376c = context;
        this.f42380g = w(context);
        this.f42387n = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(BTActivityBean bTActivityBean, View view) {
        IntentUtil.getInstance().goShareWebActivity(this.f42376c, bTActivityBean.getJump_url());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(View view) {
        DetialMoreServiceListActivity_.P0(this.f42376c).a(this.f42374a.getCrc_sign_id()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(View view) {
        Intent intent = new Intent(this.f42376c, NoticeListActivity.class);
        intent.putExtra("gameId", this.f42374a.getCrc_sign_id());
        this.f42376c.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(View view) {
        com.papa.sim.statistic.p.l(view.getContext()).E("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
        r(view.getContext(), "金手指");
    }

    private void F(View view, r1 r1Var, boolean z3, int i4) {
        View view2;
        int i5;
        boolean z4;
        int i6;
        String str = r1Var.f42682a;
        int i7 = r1Var.f42686e;
        boolean z5 = r1Var.f42687f;
        InformationCommentBean informationCommentBean = r1Var.f42683b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) view;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i8 = 0;
        int i9 = 0;
        while (i9 < size + 1) {
            if (i9 <= 3 || !z3) {
                View inflate = LayoutInflater.from(this.f42376c).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                inflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) inflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) inflate.findViewById(R.id.comment_reply_more);
                if ((i9 != size || size <= 3) && !(i7 > 0 && z5 && i9 == size)) {
                    view2 = inflate;
                    i5 = i7;
                    z4 = z5;
                    i6 = i9;
                    if (i6 == 3 && z3 && size > 3) {
                        textView.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        view2.setOnClickListener(new y0(size, informationCommentBean, str, i4));
                    } else if (i6 < size && (i6 < 3 || !z3)) {
                        textView.setVisibility(0);
                        textView2.setVisibility(8);
                        InformationCommentBean.Sub sub2 = sub.get(i6);
                        String content = sub2.getContent();
                        sub2.getComment_id();
                        try {
                            textView.setText(Html.fromHtml(content));
                            N(view2, sub2);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(i8);
                    textView2.setText("收起");
                    int i10 = i7;
                    view2 = inflate;
                    i5 = i7;
                    i6 = i9;
                    z4 = z5;
                    view2.setOnClickListener(new x0(i10, i4, str, r1Var));
                }
                linearLayout.addView(view2);
            } else {
                i5 = i7;
                z4 = z5;
                i6 = i9;
            }
            i9 = i6 + 1;
            i7 = i5;
            z5 = z4;
            i8 = 0;
        }
    }

    private void N(View view, InformationCommentBean.Sub sub) {
        view.setOnClickListener(new z0(sub));
    }

    private void O(View view, CommentBaseBean commentBaseBean) {
        view.setOnClickListener(new a1(commentBaseBean));
    }

    private void P(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i4) {
        b1 b1Var = new b1(commentBaseBean, i4, imageView, textView);
        imageView.setOnClickListener(b1Var);
        textView.setOnClickListener(b1Var);
    }

    private void Q(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new w0(informationCommentBean));
    }

    private void R(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i4) {
        d1 d1Var = new d1(commentBaseBean, i4, imageView, textView);
        imageView.setOnClickListener(d1Var);
        textView.setOnClickListener(d1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
        Intent intent = new Intent(this.f42376c, CouponListActivity.class);
        intent.putExtra("gameId", this.f42374a.getCrc_sign_id());
        this.f42376c.startActivity(intent);
    }

    private CommentBaseBean u(int i4) {
        return (CommentBaseBean) this.f42388o.get(i4).f42619a;
    }

    public static String z(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i4 = 0; i4 < installedPackages.size(); i4++) {
                String str = installedPackages.get(i4).packageName;
                if (str.equalsIgnoreCase("com.tencent.qqlite")) {
                    return "com.tencent.qqlite";
                }
                if (str.equalsIgnoreCase("com.tencent.mobileqq")) {
                    return "com.tencent.mobileqq";
                }
            }
            return null;
        }
        return null;
    }

    public void E(List<GameDetailOneTouchSkill> list) {
        this.f42391r.clear();
        this.f42383j = 0;
        this.f42382i = 0;
        if (list == null) {
            this.f42392s.notifyDataSetChanged();
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            View inflate = LayoutInflater.from(this.f42376c).inflate(R.layout.gamedetail_item_one_touch_skill_item, (ViewGroup) null);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.list);
            GameDetailOneTouchSkill gameDetailOneTouchSkill = list.get(i4);
            ((TextView) inflate.findViewById(R.id.name)).setText(gameDetailOneTouchSkill.getName());
            if (gameDetailOneTouchSkill.getSkill() != null) {
                for (int i5 = 0; i5 < gameDetailOneTouchSkill.getSkill().size() && i5 != 5; i5++) {
                    View inflate2 = LayoutInflater.from(this.f42376c).inflate(R.layout.gamedetail_item_one_touch_skill_list_item, (ViewGroup) linearLayout, false);
                    linearLayout.addView(inflate2);
                    ((TextView) inflate2.findViewById(R.id.name)).setText(gameDetailOneTouchSkill.getSkill().get(i5));
                }
            }
            this.f42391r.add(inflate);
        }
        this.f42392s.notifyDataSetChanged();
    }

    public void G(int i4, int i5) {
        CommentBaseBean u3 = u(i4);
        long longValue = Long.valueOf(u3.getDespise_count()).longValue();
        if (u3.getIs_despise() == 1) {
            u3.setIs_despise(0);
            long j4 = longValue - 1;
            if (j4 < 0) {
                u3.setDespise_count("0");
            } else {
                u3.setDespise_count(j4 + "");
            }
        } else if (i5 != 1) {
            u3.setIs_despise(1);
            u3.setDespise_count((longValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void H(int i4, int i5) {
        CommentBaseBean u3 = u(i4);
        long praise_count = u3.getPraise_count();
        if (u3.getIs_praise() == 1) {
            u3.setIs_praise(0);
            long j4 = praise_count - 1;
            if (j4 < 0) {
                u3.setPraise_count(0L);
            } else {
                u3.setPraise_count(j4);
            }
        } else if (i5 != 1) {
            u3.setIs_praise(1);
            u3.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    public void I(BaseGameDetailFragment baseGameDetailFragment) {
        this.f42375b = baseGameDetailFragment;
    }

    void J(n1 n1Var, boolean z3) {
        if (n1Var == null) {
            return;
        }
        try {
            ((r1) n1Var.f42619a).f42688g = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void K(GamedetialModleFourBean gamedetialModleFourBean) {
        this.f42374a = gamedetialModleFourBean;
    }

    public void L(l1.f fVar) {
        this.f42386m = fVar;
    }

    public void M(p1 p1Var) {
        this.f42378e = p1Var;
    }

    public void S(List<View> list) {
        this.f42391r = list;
    }

    public void T(int i4) {
        this.f42385l = i4;
    }

    void U() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f42374a.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f42374a.getGame_name());
        shareBean.setText(this.f42374a.getInfo());
        shareBean.setImageUrl(this.f42374a.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f42374a.getGame_id());
        if (this.f42374a.getShare_config() != null && this.f42374a.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f42374a.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f42376c, shareBean);
    }

    void V(Context context, String str) {
        try {
            Toast makeText = Toast.makeText(context, "", 0);
            makeText.setText(str);
            makeText.setDuration(0);
            makeText.show();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void W(int i4) {
        CommentBaseBean u3 = u(i4);
        long longValue = Long.valueOf(u3.getDespise_count()).longValue();
        u3.setIs_despise(0);
        long j4 = longValue - 1;
        if (j4 < 0) {
            u3.setDespise_count("0");
        } else {
            u3.setDespise_count(j4 + "");
        }
        notifyDataSetChanged();
    }

    public void X(int i4) {
        CommentBaseBean u3 = u(i4);
        long praise_count = u3.getPraise_count();
        u3.setIs_praise(0);
        long j4 = praise_count - 1;
        if (j4 < 0) {
            u3.setPraise_count(0L);
        } else {
            u3.setPraise_count(j4);
        }
        notifyDataSetChanged();
    }

    void Y(e3 e3Var, Boolean bool, Boolean bool2, Boolean bool3) {
        if (bool.booleanValue()) {
            e3Var.f42476k.setVisibility(8);
            e3Var.f42470e.setVisibility(8);
            e3Var.f42469d.setVisibility(8);
            e3Var.f42472g.setVisibility(0);
            e3Var.f42480o.setVisibility(bool3.booleanValue() ? 0 : 8);
            e3Var.f42483r.setVisibility(bool3.booleanValue() ? 8 : 0);
            return;
        }
        e3Var.f42480o.setVisibility(8);
        e3Var.f42483r.setVisibility(8);
        e3Var.f42476k.setVisibility(0);
        if (bool2.booleanValue()) {
            e3Var.f42470e.setVisibility(8);
            e3Var.f42469d.setVisibility(0);
        } else {
            e3Var.f42469d.setVisibility(8);
            e3Var.f42470e.setVisibility(0);
        }
        e3Var.f42472g.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f42388o.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return this.f42388o.get(i4).f42620b;
    }

    public void n(int i4) {
        CommentBaseBean u3 = u(i4);
        long longValue = Long.valueOf(u3.getDespise_count()).longValue();
        u3.setIs_despise(1);
        u3.setDespise_count((longValue + 1) + "");
        notifyDataSetChanged();
    }

    public void o(int i4) {
        CommentBaseBean u3 = u(i4);
        long praise_count = u3.getPraise_count();
        u3.setIs_praise(1);
        u3.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:252:0x0d73 A[Catch: Exception -> 0x0e3e, TryCatch #0 {Exception -> 0x0e3e, blocks: (B:207:0x0b4f, B:209:0x0b73, B:210:0x0b87, B:212:0x0b8d, B:213:0x0ba1, B:215:0x0bcc, B:217:0x0bdb, B:219:0x0bef, B:221:0x0bf6, B:223:0x0bfc, B:226:0x0c34, B:228:0x0c3a, B:230:0x0c57, B:232:0x0c69, B:234:0x0c6f, B:237:0x0c7a, B:239:0x0c95, B:241:0x0d0e, B:243:0x0d1f, B:245:0x0d27, B:248:0x0d34, B:250:0x0d66, B:252:0x0d73, B:254:0x0d88, B:256:0x0d97, B:258:0x0da1, B:260:0x0db0, B:262:0x0dc2, B:264:0x0dd7, B:266:0x0dde, B:268:0x0df3, B:267:0x0de9, B:263:0x0dcd, B:259:0x0da9, B:255:0x0d90, B:249:0x0d5f, B:238:0x0c8d, B:229:0x0c4c, B:224:0x0c25, B:225:0x0c2d, B:216:0x0bd4), top: B:615:0x0b4f }] */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0da1 A[Catch: Exception -> 0x0e3e, TryCatch #0 {Exception -> 0x0e3e, blocks: (B:207:0x0b4f, B:209:0x0b73, B:210:0x0b87, B:212:0x0b8d, B:213:0x0ba1, B:215:0x0bcc, B:217:0x0bdb, B:219:0x0bef, B:221:0x0bf6, B:223:0x0bfc, B:226:0x0c34, B:228:0x0c3a, B:230:0x0c57, B:232:0x0c69, B:234:0x0c6f, B:237:0x0c7a, B:239:0x0c95, B:241:0x0d0e, B:243:0x0d1f, B:245:0x0d27, B:248:0x0d34, B:250:0x0d66, B:252:0x0d73, B:254:0x0d88, B:256:0x0d97, B:258:0x0da1, B:260:0x0db0, B:262:0x0dc2, B:264:0x0dd7, B:266:0x0dde, B:268:0x0df3, B:267:0x0de9, B:263:0x0dcd, B:259:0x0da9, B:255:0x0d90, B:249:0x0d5f, B:238:0x0c8d, B:229:0x0c4c, B:224:0x0c25, B:225:0x0c2d, B:216:0x0bd4), top: B:615:0x0b4f }] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0da9 A[Catch: Exception -> 0x0e3e, TryCatch #0 {Exception -> 0x0e3e, blocks: (B:207:0x0b4f, B:209:0x0b73, B:210:0x0b87, B:212:0x0b8d, B:213:0x0ba1, B:215:0x0bcc, B:217:0x0bdb, B:219:0x0bef, B:221:0x0bf6, B:223:0x0bfc, B:226:0x0c34, B:228:0x0c3a, B:230:0x0c57, B:232:0x0c69, B:234:0x0c6f, B:237:0x0c7a, B:239:0x0c95, B:241:0x0d0e, B:243:0x0d1f, B:245:0x0d27, B:248:0x0d34, B:250:0x0d66, B:252:0x0d73, B:254:0x0d88, B:256:0x0d97, B:258:0x0da1, B:260:0x0db0, B:262:0x0dc2, B:264:0x0dd7, B:266:0x0dde, B:268:0x0df3, B:267:0x0de9, B:263:0x0dcd, B:259:0x0da9, B:255:0x0d90, B:249:0x0d5f, B:238:0x0c8d, B:229:0x0c4c, B:224:0x0c25, B:225:0x0c2d, B:216:0x0bd4), top: B:615:0x0b4f }] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0dc2 A[Catch: Exception -> 0x0e3e, TryCatch #0 {Exception -> 0x0e3e, blocks: (B:207:0x0b4f, B:209:0x0b73, B:210:0x0b87, B:212:0x0b8d, B:213:0x0ba1, B:215:0x0bcc, B:217:0x0bdb, B:219:0x0bef, B:221:0x0bf6, B:223:0x0bfc, B:226:0x0c34, B:228:0x0c3a, B:230:0x0c57, B:232:0x0c69, B:234:0x0c6f, B:237:0x0c7a, B:239:0x0c95, B:241:0x0d0e, B:243:0x0d1f, B:245:0x0d27, B:248:0x0d34, B:250:0x0d66, B:252:0x0d73, B:254:0x0d88, B:256:0x0d97, B:258:0x0da1, B:260:0x0db0, B:262:0x0dc2, B:264:0x0dd7, B:266:0x0dde, B:268:0x0df3, B:267:0x0de9, B:263:0x0dcd, B:259:0x0da9, B:255:0x0d90, B:249:0x0d5f, B:238:0x0c8d, B:229:0x0c4c, B:224:0x0c25, B:225:0x0c2d, B:216:0x0bd4), top: B:615:0x0b4f }] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0dcd A[Catch: Exception -> 0x0e3e, TryCatch #0 {Exception -> 0x0e3e, blocks: (B:207:0x0b4f, B:209:0x0b73, B:210:0x0b87, B:212:0x0b8d, B:213:0x0ba1, B:215:0x0bcc, B:217:0x0bdb, B:219:0x0bef, B:221:0x0bf6, B:223:0x0bfc, B:226:0x0c34, B:228:0x0c3a, B:230:0x0c57, B:232:0x0c69, B:234:0x0c6f, B:237:0x0c7a, B:239:0x0c95, B:241:0x0d0e, B:243:0x0d1f, B:245:0x0d27, B:248:0x0d34, B:250:0x0d66, B:252:0x0d73, B:254:0x0d88, B:256:0x0d97, B:258:0x0da1, B:260:0x0db0, B:262:0x0dc2, B:264:0x0dd7, B:266:0x0dde, B:268:0x0df3, B:267:0x0de9, B:263:0x0dcd, B:259:0x0da9, B:255:0x0d90, B:249:0x0d5f, B:238:0x0c8d, B:229:0x0c4c, B:224:0x0c25, B:225:0x0c2d, B:216:0x0bd4), top: B:615:0x0b4f }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0dde A[Catch: Exception -> 0x0e3e, TryCatch #0 {Exception -> 0x0e3e, blocks: (B:207:0x0b4f, B:209:0x0b73, B:210:0x0b87, B:212:0x0b8d, B:213:0x0ba1, B:215:0x0bcc, B:217:0x0bdb, B:219:0x0bef, B:221:0x0bf6, B:223:0x0bfc, B:226:0x0c34, B:228:0x0c3a, B:230:0x0c57, B:232:0x0c69, B:234:0x0c6f, B:237:0x0c7a, B:239:0x0c95, B:241:0x0d0e, B:243:0x0d1f, B:245:0x0d27, B:248:0x0d34, B:250:0x0d66, B:252:0x0d73, B:254:0x0d88, B:256:0x0d97, B:258:0x0da1, B:260:0x0db0, B:262:0x0dc2, B:264:0x0dd7, B:266:0x0dde, B:268:0x0df3, B:267:0x0de9, B:263:0x0dcd, B:259:0x0da9, B:255:0x0d90, B:249:0x0d5f, B:238:0x0c8d, B:229:0x0c4c, B:224:0x0c25, B:225:0x0c2d, B:216:0x0bd4), top: B:615:0x0b4f }] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0de9 A[Catch: Exception -> 0x0e3e, TryCatch #0 {Exception -> 0x0e3e, blocks: (B:207:0x0b4f, B:209:0x0b73, B:210:0x0b87, B:212:0x0b8d, B:213:0x0ba1, B:215:0x0bcc, B:217:0x0bdb, B:219:0x0bef, B:221:0x0bf6, B:223:0x0bfc, B:226:0x0c34, B:228:0x0c3a, B:230:0x0c57, B:232:0x0c69, B:234:0x0c6f, B:237:0x0c7a, B:239:0x0c95, B:241:0x0d0e, B:243:0x0d1f, B:245:0x0d27, B:248:0x0d34, B:250:0x0d66, B:252:0x0d73, B:254:0x0d88, B:256:0x0d97, B:258:0x0da1, B:260:0x0db0, B:262:0x0dc2, B:264:0x0dd7, B:266:0x0dde, B:268:0x0df3, B:267:0x0de9, B:263:0x0dcd, B:259:0x0da9, B:255:0x0d90, B:249:0x0d5f, B:238:0x0c8d, B:229:0x0c4c, B:224:0x0c25, B:225:0x0c2d, B:216:0x0bd4), top: B:615:0x0b4f }] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r26, int r27) {
        /*
            Method dump skipped, instructions count: 7536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.l1.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i4) {
        switch (i4) {
            case 1:
                return new u2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_title_v1, viewGroup, false));
            case 2:
                return new k2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_iconlayout, viewGroup, false));
            case 3:
                return new r2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_subscribe, viewGroup, false));
            case 4:
                return new t2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_tipslayout_v1, viewGroup, false));
            case 5:
                return new w2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_viewpage_v1, viewGroup, false));
            case 6:
                return new l2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_gamenotice, viewGroup, false));
            case 7:
                return new m2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_recommend, viewGroup, false));
            case 8:
                return new h2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_describ_v1, viewGroup, false));
            case 9:
                return new j2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_gifts, viewGroup, false));
            case 10:
                return new z1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_auxiliarytool, viewGroup, false));
            case 11:
                return new o2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_updateinfo, viewGroup, false));
            case 12:
                return new i2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_gamedetialsimple, viewGroup, false));
            case 13:
                return new d2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_record_header, viewGroup, false));
            case 14:
                return new b2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_comment_item_layout, viewGroup, false));
            case 15:
                return new e2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_comment_message_reply, viewGroup, false));
            case 16:
                return new c2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_commit_footer, viewGroup, false));
            case 17:
                return new q2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_gamerecommendlist, viewGroup, false));
            case 18:
                return new a2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_bottom_empty, viewGroup, false));
            case 19:
                return new v2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_video, viewGroup, false));
            case 20:
                return new f2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_down_and_down, viewGroup, false));
            case 21:
                return new g2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_factory_recommend, viewGroup, false));
            case 22:
                return new s2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_supply_a_gap, viewGroup, false));
            case 23:
                return new p2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_hand_shark_item, viewGroup, false));
            case 24:
                return new c3(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_qq_item, viewGroup, false));
            case 25:
                return new m1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.comment_list_item_view, viewGroup, false));
            case 26:
                return new z2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_none_comment_layout, viewGroup, false));
            case 27:
                return new v1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_comment_game_layout, viewGroup, false));
            case 28:
                return new w2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_viewpagenew_v1, viewGroup, false));
            case 29:
                return new y1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_favortis_layout, viewGroup, false));
            case 30:
                return new y2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_golden_finger_layout, viewGroup, false));
            case 31:
                return new u1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_cloud_archive_layout, viewGroup, false));
            case 32:
                return new b3(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_one_touch_skill_layout, viewGroup, false));
            case 33:
                return new t1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_check_point_layout, viewGroup, false));
            case 34:
                return new n2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_updateinfo1, viewGroup, false));
            case 35:
                return new x2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_golden_finger1_layout, viewGroup, false));
            case 36:
                return new w1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_bt_coupon_item, viewGroup, false));
            case 37:
                return new d3(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_bt_serviceinfo_item, viewGroup, false));
            case 38:
                return new a3(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_bt_notice_item, viewGroup, false));
            case 39:
                return new x1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_edit_recommend, viewGroup, false));
            case 40:
                return new o1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_hot_comment_list, viewGroup, false));
            case 41:
                return new e3(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_game_detail_similar_view, viewGroup, false));
            case 42:
                return new i1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_game_detial_activities, viewGroup, false));
            case 43:
                return new j1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_game_detail_bt_tag, viewGroup, false));
            case 44:
                return new s1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_game_detail_bt_welfare, viewGroup, false));
            default:
                return null;
        }
    }

    n1 p(String str, InformationCommentBean informationCommentBean, int i4, boolean z3) {
        return new n1(this, new r1(str, informationCommentBean, i4, z3), 15);
    }

    void q() {
        DownloadTask downloadtaskDown = this.f42374a.getDownloadtaskDown();
        UtilsMy.g1(downloadtaskDown, this.f42374a);
        if (UtilsMy.T0(this.f42376c, downloadtaskDown)) {
            return;
        }
        if (this.f42374a.getDown_status() == 5) {
            UtilsMy.R0(this.f42376c, downloadtaskDown);
        } else {
            UtilsMy.F0(this.f42376c, downloadtaskDown, this.f42374a.getTp_down_url(), this.f42374a.getOther_down_switch(), this.f42374a.getCdn_down_switch());
        }
    }

    void r(Context context, String str) {
        DownloadTask B = g1.f.G().B(this.f42374a.getGame_id());
        if (B != null && !TextUtils.isEmpty(str)) {
            if (B.getStatus() == 5) {
                V(context, context.getResources().getString(R.string.game_detail_down_status, str));
                return;
            } else if (B.getStatus() == 43 || B.getStatus() == 9 || B.getStatus() == 0) {
                q();
                return;
            } else {
                V(context, context.getResources().getString(R.string.game_detail_downing_status, str));
                return;
            }
        }
        q();
    }

    public View s() {
        return this.f42390q;
    }

    public l1.f t() {
        return this.f42386m;
    }

    public List<View> v() {
        return this.f42391r;
    }

    public com.danikula.videocache.i w(Context context) {
        return MApplication.p(context);
    }

    public int x() {
        return this.f42385l;
    }

    public List<n1> y() {
        return this.f42388o;
    }
}
