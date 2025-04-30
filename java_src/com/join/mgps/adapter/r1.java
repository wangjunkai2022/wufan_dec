package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.coupon.CouponListActivity;
import com.join.kotlin.ui.notice.NoticeListActivity;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentAllListActivity_;
import com.join.mgps.activity.CommentCreatActivity_;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.DetialMoreServiceListActivity_;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.PaPaBannerListActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.UploadActivity_;
import com.join.mgps.activity.gamedetail.BaseGameDetailFragment;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.customview.SlidingTabLayoutGameDetail;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.GameDetailOneTouchSkill;
import com.join.mgps.dto.GameDetialAuxiliaryBean;
import com.join.mgps.dto.GamedetialAuxiliaryToolBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.RecommendGameBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.pref.PrefDef_;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: GameDetialModleThreeAdapter.java */
/* loaded from: classes3.dex */
public class r1 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: s  reason: collision with root package name */
    private static final String f43479s = "GameDetialModleThreeAda";

    /* renamed from: a  reason: collision with root package name */
    private GamedetialModleFourBean f43480a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f43481b;

    /* renamed from: c  reason: collision with root package name */
    private BaseGameDetailFragment f43482c;

    /* renamed from: d  reason: collision with root package name */
    private Context f43483d;

    /* renamed from: h  reason: collision with root package name */
    com.danikula.videocache.i f43487h;

    /* renamed from: j  reason: collision with root package name */
    private int f43489j;

    /* renamed from: k  reason: collision with root package name */
    private int f43490k;

    /* renamed from: m  reason: collision with root package name */
    private int f43492m;

    /* renamed from: p  reason: collision with root package name */
    private View f43495p;

    /* renamed from: e  reason: collision with root package name */
    boolean f43484e = false;

    /* renamed from: f  reason: collision with root package name */
    c1 f43485f = null;

    /* renamed from: l  reason: collision with root package name */
    private boolean f43491l = false;

    /* renamed from: o  reason: collision with root package name */
    long f43494o = System.currentTimeMillis();

    /* renamed from: q  reason: collision with root package name */
    private List<View> f43496q = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    z0 f43497r = new z0();

    /* renamed from: n  reason: collision with root package name */
    private List<b1> f43493n = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private List<RecommendGameBean> f43486g = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private Map<Integer, Boolean> f43488i = new HashMap();

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r1.this.R();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumFid(r1.this.f43483d, (int) r1.this.f43480a.getForum_id());
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class a1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f43500a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f43501b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f43502c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f43503d;

        /* renamed from: e  reason: collision with root package name */
        private ImageView f43504e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f43505f;

        /* renamed from: g  reason: collision with root package name */
        private MStarBar f43506g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f43507h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f43508i;

        /* renamed from: j  reason: collision with root package name */
        private ImageView f43509j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f43510k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f43511l;

        /* renamed from: m  reason: collision with root package name */
        public View f43512m;

        /* renamed from: n  reason: collision with root package name */
        private TextView f43513n;

        /* renamed from: o  reason: collision with root package name */
        private ImageView f43514o;

        /* renamed from: p  reason: collision with root package name */
        private TextView f43515p;

        /* renamed from: q  reason: collision with root package name */
        private ImageView f43516q;

        /* renamed from: r  reason: collision with root package name */
        private TextView f43517r;

        /* renamed from: s  reason: collision with root package name */
        private ImageView f43518s;

        /* renamed from: t  reason: collision with root package name */
        private TextView f43519t;

        /* renamed from: u  reason: collision with root package name */
        private VipView f43520u;

        /* renamed from: v  reason: collision with root package name */
        private View f43521v;

        public a1(View view) {
            super(view);
            this.f43500a = (LinearLayout) view.findViewById(R.id.commentAllRootLl);
            this.f43501b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f43502c = (TextView) view.findViewById(R.id.userName);
            this.f43503d = (TextView) view.findViewById(R.id.isMe);
            this.f43504e = (ImageView) view.findViewById(R.id.isAuth);
            this.f43509j = (ImageView) view.findViewById(R.id.isGood);
            this.f43505f = (TextView) view.findViewById(R.id.isConnoisseurs);
            this.f43506g = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f43507h = (TextView) view.findViewById(R.id.comment_head_num_tx);
            this.f43508i = (TextView) view.findViewById(R.id.time);
            this.f43510k = (TextView) view.findViewById(R.id.content);
            this.f43511l = (TextView) view.findViewById(R.id.more);
            this.f43512m = view.findViewById(R.id.line);
            this.f43513n = (TextView) view.findViewById(R.id.phoneModle);
            this.f43514o = (ImageView) view.findViewById(R.id.parise);
            this.f43515p = (TextView) view.findViewById(R.id.pariseNumber);
            this.f43516q = (ImageView) view.findViewById(R.id.down);
            this.f43517r = (TextView) view.findViewById(R.id.downNumber);
            this.f43518s = (ImageView) view.findViewById(R.id.message);
            this.f43519t = (TextView) view.findViewById(R.id.messageNumber);
            this.f43520u = (VipView) view.findViewById(R.id.levelTv);
            this.f43521v = view.findViewById(R.id.layoutTop);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class a2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43523a;

        /* renamed from: b  reason: collision with root package name */
        MyGridView f43524b;

        /* renamed from: c  reason: collision with root package name */
        View f43525c;

        public a2(View view) {
            super(view);
            this.f43524b = (MyGridView) view.findViewById(R.id.recomListView);
            this.f43523a = (LinearLayout) view.findViewById(R.id.layoutContent);
            this.f43525c = view.findViewById(R.id.line_h);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(r1.this.f43480a.getGame_company_id()) || "0".equals(r1.this.f43480a.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.I0(r1.this.f43483d).e(1).a(true).c(r1.this.f43480a.getGame_company_id()).d(r1.this.f43480a.getCompany_name()).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class b0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f43528a;

        b0(AppBeanMain appBeanMain) {
            this.f43528a = appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(r1.this.f43483d, this.f43528a.getIntentDataBean());
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public class b1 {

        /* renamed from: a  reason: collision with root package name */
        public Object f43530a;

        /* renamed from: b  reason: collision with root package name */
        public int f43531b;

        /* renamed from: c  reason: collision with root package name */
        public int f43532c;

        public b1(Object obj, int i2) {
            this.f43530a = obj;
            this.f43531b = i2;
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class b2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f43534a;

        /* renamed from: b  reason: collision with root package name */
        public Button f43535b;

        /* renamed from: c  reason: collision with root package name */
        public HorizontalScrollView f43536c;

        public b2(View view) {
            super(view);
            this.f43534a = (LinearLayout) view.findViewById(R.id.titleMoreTip);
            this.f43535b = (Button) view.findViewById(R.id.titleMoreBookButn);
            this.f43536c = (HorizontalScrollView) view.findViewById(R.id.scrollView);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r1.this.f43485f.k();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.i(r1.y(r1.this.f43483d))) {
                IntentUtil.getInstance().goQQGroup(r1.this.f43483d, r1.this.f43480a.getGame_detailed().getTpl_two_qq_key());
                return;
            }
            com.join.mgps.Util.i2.a(r1.this.f43483d).b("已复制QQ号，请安装QQ后粘贴搜索");
            com.join.mgps.Util.i0.M(r1.this.f43483d, r1.this.f43480a.getGame_detailed().getTpl_two_qq());
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public interface c1 {
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

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class c2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43540a;

        /* renamed from: b  reason: collision with root package name */
        LinearLayout f43541b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f43542c;

        public c2(View view) {
            super(view);
            this.f43540a = (LinearLayout) view.findViewById(R.id.linearLayout);
            this.f43541b = (LinearLayout) view.findViewById(R.id.linearLayout_top);
            this.f43542c = (LinearLayout) view.findViewById(R.id.linearLayout_bottom);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TipBean f43544a;

        d(TipBean tipBean) {
            this.f43544a = tipBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.d1(r1.this.f43483d).b(0).d(this.f43544a.getName()).e(Integer.parseInt(this.f43544a.getId())).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class d0 implements View.OnScrollChangeListener {
        d0() {
        }

        @Override // android.view.View.OnScrollChangeListener
        public void onScrollChange(View view, int i2, int i4, int i5, int i6) {
            r1.this.f43489j = i2;
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public static class d1 {

        /* renamed from: a  reason: collision with root package name */
        public String f43547a;

        /* renamed from: b  reason: collision with root package name */
        public InformationCommentBean f43548b;

        /* renamed from: c  reason: collision with root package name */
        public int f43549c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f43550d;

        /* renamed from: e  reason: collision with root package name */
        public int f43551e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f43552f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f43553g;

        public d1(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
            this.f43547a = str;
            this.f43548b = informationCommentBean;
            this.f43549c = i2;
            this.f43550d = z3;
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class d2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f43554a;

        public d2(View view) {
            super(view);
            this.f43554a = (LinearLayout) view.findViewById(R.id.tipslayout);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class e implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f43556a;

        e(List list) {
            this.f43556a = list;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            try {
                Intent intent = new Intent(r1.this.f43483d, ImagePagerActivity.class);
                String[] strArr = new String[this.f43556a.size()];
                for (int i4 = 0; i4 < this.f43556a.size(); i4++) {
                    strArr[i4] = (String) this.f43556a.get(i4);
                }
                if (com.join.mgps.Util.d2.i(r1.this.f43480a.getVedio_url()) && i2 == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.n(r1.this.f43480a.getVedio_url());
                    videoInfo.h(strArr[0]);
                    FullScreenActivity_.G0(r1.this.f43483d).a(videoInfo).start();
                    return;
                }
                intent.putExtra("image_urls", strArr);
                intent.putExtra("image_index", i2);
                r1.this.f43483d.startActivity(intent);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class e0 implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l2 f43558a;

        e0(l2 l2Var) {
            this.f43558a = l2Var;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            r1.this.f43490k = this.f43558a.f43662b.getCurrentItem();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class e1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        HListView f43560a;

        public e1(View view) {
            super(view);
            this.f43560a = (HListView) view.findViewById(R.id.favoriteList);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class e2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43562a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f43563b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f43564c;

        /* renamed from: d  reason: collision with root package name */
        public View f43565d;

        /* renamed from: e  reason: collision with root package name */
        public View f43566e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f43567f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f43568g;

        public e2(View view) {
            super(view);
            this.f43562a = (TextView) view.findViewById(R.id.titleText);
            this.f43563b = (TextView) view.findViewById(R.id.moreText);
            this.f43566e = view.findViewById(R.id.line_h);
            this.f43564c = (LinearLayout) view.findViewById(R.id.look_other);
            this.f43565d = view.findViewById(R.id.layoutTop);
            this.f43567f = (ImageView) view.findViewById(R.id.imageView5);
            this.f43568g = (ImageView) view.findViewById(R.id.icon);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class f implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f43570a;

        f(List list) {
            this.f43570a = list;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            ScreenshotTrueListAcvity_.intent(r1.this.f43483d).fromData((ScreenshotGamedetialBean) this.f43570a.get(i2)).gameId(r1.this.f43480a.getGame_id()).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class f0 implements AdapterView.d {
        f0() {
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            com.papa.sim.statistic.p.l(view.getContext()).E("xuanguan", AccountUtil_.getInstance_(view.getContext()).getUid());
            r1.this.r(view.getContext(), "选关");
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    private class f1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        View f43573a;

        /* renamed from: b  reason: collision with root package name */
        View f43574b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43575c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43576d;

        /* renamed from: e  reason: collision with root package name */
        TextView f43577e;

        /* renamed from: f  reason: collision with root package name */
        SimpleDraweeView f43578f;

        public f1(View view) {
            super(view);
            this.f43573a = view.findViewById(R.id.line_h);
            this.f43575c = (TextView) view.findViewById(R.id.count);
            this.f43576d = (TextView) view.findViewById(R.id.auth);
            this.f43577e = (TextView) view.findViewById(R.id.title);
            this.f43578f = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.f43574b = view.findViewById(R.id.top);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class f2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43580a;

        /* renamed from: b  reason: collision with root package name */
        StandardVideoView f43581b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f43582c;

        public f2(View view) {
            super(view);
            this.f43580a = (SimpleDraweeView) view.findViewById(R.id.iv_book_bg);
            this.f43581b = (StandardVideoView) view.findViewById(R.id.videoPlayer);
            this.f43582c = (LinearLayout) view.findViewById(R.id.rl_top);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class g implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f43584a = true;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C0182r1 f43585b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ C0182r1 f43586c;

        g(C0182r1 c0182r1, C0182r1 c0182r12) {
            this.f43585b = c0182r1;
            this.f43586c = c0182r12;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f43584a) {
                Layout layout = this.f43585b.f43748a.getLayout();
                if (layout != null) {
                    int lineCount = layout.getLineCount();
                    if (lineCount > 4) {
                        this.f43586c.f43749b.setVisibility(0);
                    } else if (lineCount > 0) {
                        if (layout.getEllipsisCount(lineCount - 1) > 0) {
                            this.f43586c.f43749b.setVisibility(0);
                        } else {
                            this.f43586c.f43749b.setVisibility(8);
                        }
                    }
                    this.f43584a = false;
                    return;
                }
                this.f43586c.f43749b.setVisibility(8);
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            try {
                str = URLEncoder.encode(r1.this.f43480a.getGame_name(), "utf8");
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
                str = "";
            }
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = r1.this.f43483d;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51524k + "/static/vip2020/v2/index.html#/gameGift?game_id=" + r1.this.f43480a.getCrc_sign_id() + "&name=" + str);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class g1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43589a;

        /* renamed from: b  reason: collision with root package name */
        LinearLayout f43590b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43591c;

        /* renamed from: d  reason: collision with root package name */
        View f43592d;

        /* renamed from: e  reason: collision with root package name */
        View f43593e;

        public g1(View view) {
            super(view);
            this.f43589a = (LinearLayout) view.findViewById(R.id.goCommit);
            this.f43590b = (LinearLayout) view.findViewById(R.id.starlayout);
            this.f43591c = (TextView) view.findViewById(R.id.textMessage);
            this.f43592d = view.findViewById(R.id.layoutTop);
            this.f43593e = view.findViewById(R.id.layoutTop2);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class g2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        HListView f43595a;

        public g2(View view) {
            super(view);
            this.f43595a = (HListView) view.findViewById(R.id.screenListView);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0182r1 f43597a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b1 f43598b;

        h(C0182r1 c0182r1, b1 b1Var) {
            this.f43597a = c0182r1;
            this.f43598b = b1Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43597a.f43749b.getText().toString().equals("展开")) {
                this.f43597a.f43748a.setMaxLines(Integer.MAX_VALUE);
                this.f43597a.f43749b.setText("收起");
                this.f43598b.f43532c = 1;
                return;
            }
            this.f43597a.f43748a.setMaxLines(4);
            this.f43597a.f43749b.setText("展开");
            this.f43598b.f43532c = 0;
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class h0 implements View.OnClickListener {
        h0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).E("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
            r1.this.r(view.getContext(), "金手指");
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class h1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43601a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43602b;

        public h1(View view) {
            super(view);
            this.f43601a = (TextView) view.findViewById(R.id.info);
            this.f43602b = (TextView) view.findViewById(R.id.more);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    private class h2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43604a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43605b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43606c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43607d;

        /* renamed from: e  reason: collision with root package name */
        TextView[] f43608e;

        public h2(View view) {
            super(view);
            this.f43608e = null;
            this.f43604a = (TextView) view.findViewById(R.id.f17861k1);
            this.f43605b = (TextView) view.findViewById(R.id.f17862k2);
            this.f43606c = (TextView) view.findViewById(R.id.f17863k3);
            TextView textView = (TextView) view.findViewById(R.id.k4);
            this.f43607d = textView;
            this.f43608e = new TextView[]{this.f43604a, this.f43605b, this.f43606c, textView};
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f43610a;

        i(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f43610a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43610a.getGift_package_status() == 0) {
                r1.this.f43485f.l(true, this.f43610a);
            } else {
                r1.this.f43485f.l(false, this.f43610a);
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class i0 implements View.OnClickListener {
        i0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).E("yuncundang", AccountUtil_.getInstance_(view.getContext()).getUid());
            r1.this.r(view.getContext(), "云存档");
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class i1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        HListView f43613a;

        public i1(View view) {
            super(view);
            this.f43613a = (HListView) view.findViewById(R.id.favoriteList);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    private class i2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43615a;

        public i2(View view) {
            super(view);
            this.f43615a = (TextView) view.findViewById(R.id.text);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f43617a;

        j(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f43617a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            try {
                str = URLEncoder.encode(r1.this.f43480a.getGame_name(), "utf8");
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
                str = "";
            }
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = r1.this.f43483d;
            intentUtil.goShareWebActivity(context, com.join.mgps.rpc.g.f51524k + "/static/vip2020/v2/index.html#/giftDetail?gift_package_id=" + this.f43617a.getGift_package_id() + "&name=" + str);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class j0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f43619a;

        j0(CommentBaseBean commentBaseBean) {
            this.f43619a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f43619a.getUid())).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class j1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43621a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f43622b;

        /* renamed from: c  reason: collision with root package name */
        SimpleDraweeView f43623c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f43624d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f43625e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f43626f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f43627g;

        /* renamed from: h  reason: collision with root package name */
        TextView f43628h;

        /* renamed from: i  reason: collision with root package name */
        TextView f43629i;

        /* renamed from: j  reason: collision with root package name */
        TextView f43630j;

        public j1(View view) {
            super(view);
            this.f43621a = (SimpleDraweeView) view.findViewById(R.id.vpnImage);
            this.f43622b = (SimpleDraweeView) view.findViewById(R.id.googleImage);
            this.f43623c = (SimpleDraweeView) view.findViewById(R.id.rootImage);
            this.f43624d = (LinearLayout) view.findViewById(R.id.look_other);
            this.f43625e = (LinearLayout) view.findViewById(R.id.vpnLayout);
            this.f43626f = (LinearLayout) view.findViewById(R.id.googleLayout);
            this.f43627g = (LinearLayout) view.findViewById(R.id.rootLayout);
            this.f43628h = (TextView) view.findViewById(R.id.vpnText);
            this.f43629i = (TextView) view.findViewById(R.id.googleText);
            this.f43630j = (TextView) view.findViewById(R.id.rootText);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class j2 extends t1.a {
        public j2(View view) {
            super(view);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).E("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
            r1.this.r(view.getContext(), "金手指");
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class k0 implements View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a1 f43634a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43635b;

        /* compiled from: GameDetialModleThreeAdapter.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Layout layout = k0.this.f43634a.f43510k.getLayout();
                if (layout == null) {
                    k0.this.f43634a.f43511l.setVisibility(8);
                    return;
                }
                int lineCount = layout.getLineCount();
                if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) > 0) {
                        k0.this.f43634a.f43511l.setVisibility(0);
                    } else if (r1.this.f43488i.containsKey(Integer.valueOf(k0.this.f43635b))) {
                        k0.this.f43634a.f43511l.setVisibility(0);
                    } else {
                        k0.this.f43634a.f43511l.setVisibility(8);
                    }
                }
            }
        }

        k0(a1 a1Var, int i2) {
            this.f43634a = a1Var;
            this.f43635b = i2;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f43634a.f43510k.post(new a());
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class k1 extends t1.a {
        public k1(View view) {
            super(view);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class k2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43639a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43640b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43641c;

        /* renamed from: d  reason: collision with root package name */
        View f43642d;

        public k2(View view) {
            super(view);
            this.f43639a = (TextView) view.findViewById(R.id.tag);
            this.f43640b = (TextView) view.findViewById(R.id.title);
            this.f43642d = view.findViewById(R.id.main);
            this.f43641c = (TextView) view.findViewById(R.id.message);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f43644a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameDetialAuxiliaryBean f43645b;

        l(List list, GameDetialAuxiliaryBean gameDetialAuxiliaryBean) {
            this.f43644a = list;
            this.f43645b = gameDetialAuxiliaryBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43644a.size() > 0) {
                IntentUtil.getInstance().goShareWebActivity(r1.this.f43483d, this.f43645b.getMore_url());
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class l0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a1 f43647a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43648b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f43649c;

        l0(a1 a1Var, int i2, CommentBaseBean commentBaseBean) {
            this.f43647a = a1Var;
            this.f43648b = i2;
            this.f43649c = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43647a.f43511l.getText().toString().equals("查看全部")) {
                r1.this.f43488i.put(Integer.valueOf(this.f43648b), Boolean.TRUE);
                if (Build.VERSION.SDK_INT == 19) {
                    this.f43647a.f43510k.setText(this.f43649c.getContent());
                }
                this.f43647a.f43510k.setMaxLines(Integer.MAX_VALUE);
                this.f43647a.f43511l.setText("收起");
                return;
            }
            r1.this.f43488i.put(Integer.valueOf(this.f43648b), Boolean.FALSE);
            if (Build.VERSION.SDK_INT == 19) {
                this.f43647a.f43510k.setText(this.f43649c.getContent().replaceAll("\n", ""));
            }
            this.f43647a.f43510k.setMaxLines(5);
            this.f43647a.f43511l.setText("查看全部");
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class l1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f43651a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f43652b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f43653c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43654d;

        /* renamed from: e  reason: collision with root package name */
        TextView f43655e;

        /* renamed from: f  reason: collision with root package name */
        TextView f43656f;

        /* renamed from: g  reason: collision with root package name */
        TextView f43657g;

        /* renamed from: h  reason: collision with root package name */
        VipView f43658h;

        /* renamed from: i  reason: collision with root package name */
        public View f43659i;

        public l1(View view) {
            super(view);
            this.f43651a = (RelativeLayout) view.findViewById(R.id.main);
            this.f43652b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f43653c = (ImageView) view.findViewById(R.id.parise);
            this.f43654d = (TextView) view.findViewById(R.id.username);
            this.f43655e = (TextView) view.findViewById(R.id.time);
            this.f43656f = (TextView) view.findViewById(R.id.content);
            this.f43657g = (TextView) view.findViewById(R.id.pariseNumber);
            this.f43658h = (VipView) view.findViewById(R.id.levelTv);
            this.f43659i = view.findViewById(R.id.line);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class l2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        SlidingTabLayoutGameDetail f43661a;

        /* renamed from: b  reason: collision with root package name */
        ViewPager f43662b;

        public l2(View view) {
            super(view);
            this.f43661a = (SlidingTabLayoutGameDetail) view.findViewById(R.id.tabLayout);
            this.f43662b = (ViewPager) view.findViewById(R.id.viewPager);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f43664a;

        m(List list) {
            this.f43664a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43664a.size() > 0) {
                IntentUtil.getInstance().goShareWebActivity(r1.this.f43483d, ((GamedetialAuxiliaryToolBean) this.f43664a.get(0)).getUrl());
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class m0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f43666a;

        m0(InformationCommentBean informationCommentBean) {
            this.f43666a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c1 c1Var = r1.this.f43485f;
            if (c1Var != null) {
                c1Var.c(this.f43666a);
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class m1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f43668a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43669b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43670c;

        public m1(View view) {
            super(view);
            this.f43668a = (RelativeLayout) view.findViewById(R.id.commentFooterLayout);
            this.f43669b = (TextView) view.findViewById(R.id.showAllCommit);
            this.f43670c = (TextView) view.findViewById(R.id.goforum);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class m2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43672a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43673b;

        public m2(View view) {
            super(view);
            this.f43672a = (LinearLayout) view.findViewById(R.id.handSharkLayout);
            this.f43673b = (TextView) view.findViewById(R.id.suntitle);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f43675a;

        n(List list) {
            this.f43675a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43675a.size() > 1) {
                IntentUtil.getInstance().goShareWebActivity(r1.this.f43483d, ((GamedetialAuxiliaryToolBean) this.f43675a.get(1)).getUrl());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public class n0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43677a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43678b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f43679c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ d1 f43680d;

        n0(int i2, int i4, String str, d1 d1Var) {
            this.f43677a = i2;
            this.f43678b = i4;
            this.f43679c = str;
            this.f43680d = d1Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43677a == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f43677a; i2 >= 0; i2--) {
                b1 b1Var = (b1) r1.this.f43493n.get(this.f43678b - i2);
                d1 d1Var = b1Var.f43531b == 15 ? (d1) b1Var.f43530a : null;
                if (d1Var != null && this.f43679c == d1Var.f43547a) {
                    arrayList.addAll(d1Var.f43548b.getSub());
                }
            }
            for (int i4 = 0; i4 <= this.f43677a; i4++) {
                r1.this.f43493n.remove(this.f43678b - i4);
            }
            informationCommentBean.setSub(arrayList);
            r1.this.f43493n.add(this.f43678b - this.f43677a, r1.this.p(this.f43679c, informationCommentBean, this.f43680d.f43549c, true));
            r1.this.notifyDataSetChanged();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class n1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43682a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f43683b;

        /* renamed from: c  reason: collision with root package name */
        View f43684c;

        public n1(View view) {
            super(view);
            this.f43683b = (ImageView) view.findViewById(R.id.commitImage);
            this.f43684c = view.findViewById(R.id.layoutBottom);
            this.f43682a = (TextView) view.findViewById(R.id.commitCount);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class n2 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43686a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43687b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43688c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43689d;

        public n2(View view) {
            super(view);
            this.f43686a = (TextView) view.findViewById(R.id.tag);
            this.f43687b = (TextView) view.findViewById(R.id.day);
            this.f43688c = (TextView) view.findViewById(R.id.time);
            this.f43689d = (TextView) view.findViewById(R.id.serverName);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f43691a;

        o(List list) {
            this.f43691a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43691a.size() > 2) {
                IntentUtil.getInstance().goShareWebActivity(r1.this.f43483d, ((GamedetialAuxiliaryToolBean) this.f43691a.get(2)).getUrl());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public class o0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43693a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f43694b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f43695c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f43696d;

        o0(int i2, InformationCommentBean informationCommentBean, String str, int i4) {
            this.f43693a = i2;
            this.f43694b = informationCommentBean;
            this.f43695c = str;
            this.f43696d = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f43693a) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f43694b);
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
                b1 p3 = r1.this.p(this.f43695c, informationCommentBean, 0, i4 == 0);
                d1 d1Var = (d1) p3.f43530a;
                d1Var.f43551e = i4;
                d1Var.f43552f = z3;
                d1Var.f43550d = i4 == 0;
                r1.this.H(p3, !z3);
                r1.this.f43493n.add(this.f43696d + i4 + 1, p3);
                i4++;
                i2 = i5;
            }
            r1.this.f43493n.remove(this.f43696d);
            r1.this.notifyDataSetChanged();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class o1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43698a;

        /* renamed from: b  reason: collision with root package name */
        View f43699b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43700c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43701d;

        /* renamed from: e  reason: collision with root package name */
        View f43702e;

        /* renamed from: f  reason: collision with root package name */
        View f43703f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f43704g;

        public o1(View view) {
            super(view);
            this.f43704g = (LinearLayout) view.findViewById(R.id.parentLayout);
            this.f43698a = (LinearLayout) view.findViewById(R.id.comment_reply_container);
            this.f43699b = view.findViewById(R.id.comment_reply_divider);
            this.f43700c = (TextView) view.findViewById(R.id.comment_reply_content);
            this.f43701d = (TextView) view.findViewById(R.id.comment_reply_more);
            this.f43702e = view.findViewById(R.id.line);
            this.f43703f = view.findViewById(R.id.bottom);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public class o2 {
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

        /* renamed from: b  reason: collision with root package name */
        public static final int f43706b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static final int f43707c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final int f43708d = 3;

        /* renamed from: e  reason: collision with root package name */
        public static final int f43709e = 4;

        /* renamed from: f  reason: collision with root package name */
        public static final int f43710f = 5;

        /* renamed from: g  reason: collision with root package name */
        public static final int f43711g = 6;

        /* renamed from: h  reason: collision with root package name */
        public static final int f43712h = 7;

        /* renamed from: i  reason: collision with root package name */
        public static final int f43713i = 8;

        /* renamed from: j  reason: collision with root package name */
        public static final int f43714j = 9;

        /* renamed from: k  reason: collision with root package name */
        public static final int f43715k = 10;

        /* renamed from: l  reason: collision with root package name */
        public static final int f43716l = 11;

        /* renamed from: m  reason: collision with root package name */
        public static final int f43717m = 12;

        /* renamed from: n  reason: collision with root package name */
        public static final int f43718n = 13;

        /* renamed from: o  reason: collision with root package name */
        public static final int f43719o = 14;

        /* renamed from: p  reason: collision with root package name */
        public static final int f43720p = 15;

        /* renamed from: q  reason: collision with root package name */
        public static final int f43721q = 16;

        /* renamed from: r  reason: collision with root package name */
        public static final int f43722r = 17;

        /* renamed from: s  reason: collision with root package name */
        public static final int f43723s = 18;

        /* renamed from: t  reason: collision with root package name */
        public static final int f43724t = 19;

        /* renamed from: u  reason: collision with root package name */
        public static final int f43725u = 20;

        /* renamed from: v  reason: collision with root package name */
        public static final int f43726v = 21;

        /* renamed from: w  reason: collision with root package name */
        public static final int f43727w = 22;

        /* renamed from: x  reason: collision with root package name */
        public static final int f43728x = 23;

        /* renamed from: y  reason: collision with root package name */
        public static final int f43729y = 24;

        /* renamed from: z  reason: collision with root package name */
        public static final int f43730z = 25;

        public o2() {
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y1 f43732a;

        p(y1 y1Var) {
            this.f43732a = y1Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ("收起".equals(this.f43732a.f43839b.getText().toString())) {
                this.f43732a.f43839b.setText("展开");
                this.f43732a.f43838a.setVisibility(8);
                return;
            }
            this.f43732a.f43839b.setText("收起");
            this.f43732a.f43838a.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public class p0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f43734a;

        p0(InformationCommentBean.Sub sub) {
            this.f43734a = sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c1 c1Var = r1.this.f43485f;
            if (c1Var != null) {
                c1Var.b(this.f43734a);
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class p1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43736a;

        /* renamed from: b  reason: collision with root package name */
        MyGridView f43737b;

        public p1(View view) {
            super(view);
            this.f43737b = (MyGridView) view.findViewById(R.id.recomListView);
            this.f43736a = (LinearLayout) view.findViewById(R.id.layoutContent);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x1 f43739a;

        q(x1 x1Var) {
            this.f43739a = x1Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ("收起".equals(this.f43739a.f43818c.getText().toString())) {
                this.f43739a.f43818c.setText("展开");
                if (r1.this.f43480a.getGame_upgrade_info_switch() == 1) {
                    this.f43739a.f43816a.setVisibility(8);
                }
                if (r1.this.f43480a.getGame_detailed() != null) {
                    this.f43739a.f43817b.setVisibility(8);
                    return;
                }
                return;
            }
            this.f43739a.f43818c.setText("收起");
            if (r1.this.f43480a.getGame_upgrade_info_switch() == 1) {
                this.f43739a.f43816a.setVisibility(0);
            }
            if (r1.this.f43480a.getGame_detailed() != null) {
                this.f43739a.f43817b.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public class q0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f43741a;

        q0(CommentBaseBean commentBaseBean) {
            this.f43741a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c1 c1Var;
            CommentBaseBean commentBaseBean = this.f43741a;
            if (commentBaseBean == null || (c1Var = r1.this.f43485f) == null) {
                return;
            }
            c1Var.f(commentBaseBean);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class q1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43743a;

        /* renamed from: b  reason: collision with root package name */
        MyGridView f43744b;

        public q1(View view) {
            super(view);
            this.f43744b = (MyGridView) view.findViewById(R.id.recomListView);
            this.f43743a = (LinearLayout) view.findViewById(R.id.layoutContent);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(r1.this.f43480a.getGame_company_id()) || "0".equals(r1.this.f43480a.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.I0(r1.this.f43483d).e(1).a(true).c(r1.this.f43480a.getGame_company_id()).d(r1.this.f43480a.getCompany_name()).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(r1.this.f43480a.getGame_company_id()) || "0".equals(r1.this.f43480a.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.I0(r1.this.f43483d).e(1).a(true).c(r1.this.f43480a.getGame_company_id()).d(r1.this.f43480a.getCompany_name()).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* renamed from: com.join.mgps.adapter.r1$r1  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0182r1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43748a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43749b;

        public C0182r1(View view) {
            super(view);
            this.f43748a = (TextView) view.findViewById(R.id.htmlGameDescribe);
            this.f43749b = (TextView) view.findViewById(R.id.textMore);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(r1.this.f43483d).getAccountData();
            if (accountData == null || accountData.getUid() == 0) {
                com.join.mgps.Util.i2.a(r1.this.f43483d).b("让大伙知道分享者的大名");
                IntentUtil.getInstance().goLoginInteractive(r1.this.f43483d);
            } else if (com.join.mgps.Util.d2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(r1.this.f43483d);
            } else {
                PrefDef_ prefDef_ = new PrefDef_(r1.this.f43483d);
                if (com.join.mgps.Util.d2.i(prefDef_.uploadType2().d())) {
                    IntentUtil.getInstance().goShareWebActivity(r1.this.f43483d, prefDef_.uploadType2().d());
                } else {
                    UploadActivity_.o1(r1.this.f43483d).a(accountData).start();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public class s0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f43752a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43753b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f43754c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f43755d;

        /* compiled from: GameDetialModleThreeAdapter.java */
        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(s0.this.f43755d.getText().toString()).longValue();
                TextView textView = s0.this.f43755d;
                textView.setText((longValue + 1) + "");
                s0 s0Var = s0.this;
                r1.this.o(s0Var.f43753b);
                s0 s0Var2 = s0.this;
                c1 c1Var = r1.this.f43485f;
                if (c1Var != null) {
                    c1Var.d(s0Var2.f43752a, s0Var2.f43753b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        s0(CommentBaseBean commentBaseBean, int i2, ImageView imageView, TextView textView) {
            this.f43752a = commentBaseBean;
            this.f43753b = i2;
            this.f43754c = imageView;
            this.f43755d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            long currentTimeMillis = System.currentTimeMillis();
            r1 r1Var = r1.this;
            if (currentTimeMillis - r1Var.f43494o < 500) {
                return;
            }
            r1Var.f43494o = currentTimeMillis;
            if (IntentUtil.getInstance().goLoginInteractive(r1.this.f43483d) || (commentBaseBean = this.f43752a) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                r1.this.U(this.f43753b);
                this.f43754c.setImageResource(R.drawable.up_ic);
                c1 c1Var = r1.this.f43485f;
                if (c1Var != null) {
                    c1Var.d(this.f43752a, this.f43753b, 2);
                    return;
                }
                return;
            }
            this.f43752a.setIs_praise(1);
            if (AccountUtil_.getInstance_(r1.this.f43483d).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(r1.this.f43483d);
                return;
            }
            this.f43754c.setImageResource(R.drawable.uped_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(r1.this.f43483d, R.anim.scale_reset);
            this.f43754c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class s1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f43758a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43759b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43760c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f43761d;

        /* renamed from: e  reason: collision with root package name */
        TextView f43762e;

        /* renamed from: f  reason: collision with root package name */
        TextView f43763f;

        /* renamed from: g  reason: collision with root package name */
        TextView f43764g;

        /* renamed from: h  reason: collision with root package name */
        TextView f43765h;

        /* renamed from: i  reason: collision with root package name */
        TextView f43766i;

        /* renamed from: j  reason: collision with root package name */
        TextView f43767j;

        /* renamed from: k  reason: collision with root package name */
        TextView f43768k;

        /* renamed from: l  reason: collision with root package name */
        TextView f43769l;

        /* renamed from: m  reason: collision with root package name */
        TextView f43770m;

        /* renamed from: n  reason: collision with root package name */
        LinearLayout f43771n;

        /* renamed from: o  reason: collision with root package name */
        LinearLayout f43772o;

        /* renamed from: p  reason: collision with root package name */
        LinearLayout f43773p;

        /* renamed from: q  reason: collision with root package name */
        LinearLayout f43774q;

        /* renamed from: r  reason: collision with root package name */
        LinearLayout f43775r;

        public s1(View view) {
            super(view);
            this.f43758a = (RelativeLayout) view.findViewById(R.id.message);
            this.f43759b = (TextView) view.findViewById(R.id.moreText);
            this.f43760c = (TextView) view.findViewById(R.id.downNumberTitle);
            this.f43761d = (LinearLayout) view.findViewById(R.id.look_other);
            this.f43762e = (TextView) view.findViewById(R.id.downNumber);
            this.f43763f = (TextView) view.findViewById(R.id.nowVersion);
            this.f43764g = (TextView) view.findViewById(R.id.appSize);
            this.f43765h = (TextView) view.findViewById(R.id.updateDate);
            this.f43766i = (TextView) view.findViewById(R.id.androdVersion);
            this.f43767j = (TextView) view.findViewById(R.id.commpany);
            this.f43768k = (TextView) view.findViewById(R.id.resousFrom);
            this.f43769l = (TextView) view.findViewById(R.id.upGame);
            this.f43771n = (LinearLayout) view.findViewById(R.id.resousFromLayout);
            this.f43772o = (LinearLayout) view.findViewById(R.id.commpanyLayout);
            this.f43774q = (LinearLayout) view.findViewById(R.id.androdVersionLayout);
            this.f43773p = (LinearLayout) view.findViewById(R.id.nowVersionLayout);
            this.f43775r = (LinearLayout) view.findViewById(R.id.sizelayout);
            this.f43770m = (TextView) view.findViewById(R.id.titleText);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s1 f43777a;

        t(s1 s1Var) {
            this.f43777a = s1Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (" ".equals(this.f43777a.f43759b.getText().toString())) {
                this.f43777a.f43759b.setText("");
                this.f43777a.f43759b.setBackgroundResource(R.drawable.arena_down_arrow);
                this.f43777a.f43758a.setVisibility(8);
                return;
            }
            this.f43777a.f43759b.setText(" ");
            this.f43777a.f43759b.setBackgroundResource(R.drawable.arena_up_arrow);
            this.f43777a.f43758a.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    public class t0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f43779a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43780b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f43781c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f43782d;

        /* compiled from: GameDetialModleThreeAdapter.java */
        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(t0.this.f43782d.getText().toString()).longValue();
                TextView textView = t0.this.f43782d;
                textView.setText((longValue + 1) + "");
                t0 t0Var = t0.this;
                r1.this.n(t0Var.f43780b);
                t0 t0Var2 = t0.this;
                c1 c1Var = r1.this.f43485f;
                if (c1Var != null) {
                    c1Var.e(t0Var2.f43779a, t0Var2.f43780b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        t0(CommentBaseBean commentBaseBean, int i2, ImageView imageView, TextView textView) {
            this.f43779a = commentBaseBean;
            this.f43780b = i2;
            this.f43781c = imageView;
            this.f43782d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(r1.this.f43483d) || (commentBaseBean = this.f43779a) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                r1.this.T(this.f43780b);
                this.f43781c.setImageResource(R.drawable.down_ic);
                c1 c1Var = r1.this.f43485f;
                if (c1Var != null) {
                    c1Var.e(this.f43779a, this.f43780b, 2);
                    return;
                }
                return;
            }
            this.f43779a.setIs_despise(1);
            if (AccountUtil_.getInstance_(r1.this.f43483d).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(r1.this.f43483d);
                return;
            }
            this.f43781c.setImageResource(R.drawable.downed_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(r1.this.f43483d, R.anim.scale_reset);
            this.f43781c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class t1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43785a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43786b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43787c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43788d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f43789e;

        public t1(View view) {
            super(view);
            this.f43785a = (SimpleDraweeView) view.findViewById(R.id.giftIcon);
            this.f43786b = (TextView) view.findViewById(R.id.giftName);
            this.f43787c = (TextView) view.findViewById(R.id.giftContent);
            this.f43788d = (TextView) view.findViewById(R.id.getGiftTextView);
            this.f43789e = (LinearLayout) view.findViewById(R.id.layoutContent);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(r1.this.f43480a.getGame_company_id()) || "0".equals(r1.this.f43480a.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.I0(r1.this.f43483d).e(1).a(true).c(r1.this.f43480a.getGame_company_id()).d(r1.this.f43480a.getCompany_name()).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (r1.this.f43482c.getViewPager() != null) {
                r1.this.f43482c.getViewPager().setCurrentItem(2);
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class u1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f43793a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f43794b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f43795c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43796d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43797e;

        /* renamed from: f  reason: collision with root package name */
        public MStarBar f43798f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f43799g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f43800h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f43801i;

        /* renamed from: j  reason: collision with root package name */
        private LinearLayout f43802j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f43803k;

        public u1(View view) {
            super(view);
            this.f43794b = (TextView) view.findViewById(R.id.appName);
            this.f43795c = (TextView) view.findViewById(R.id.appCompany);
            this.f43796d = (TextView) view.findViewById(R.id.appSize);
            this.f43797e = (TextView) view.findViewById(R.id.appDownloadCount);
            this.f43798f = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f43793a = (SimpleDraweeView) view.findViewById(R.id.appIcon);
            this.f43799g = (LinearLayout) view.findViewById(R.id.companyLayout);
            this.f43800h = (LinearLayout) view.findViewById(R.id.layoutGift);
            this.f43801i = (ImageView) view.findViewById(R.id.giftImage);
            this.f43802j = (LinearLayout) view.findViewById(R.id.scoreLayout);
            this.f43803k = (TextView) view.findViewById(R.id.comment_head_point_tx);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).E("yuncundang", AccountUtil_.getInstance_(view.getContext()).getUid());
            r1.this.r(view.getContext(), "云存档");
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class v0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBeanMain f43806a;

        v0(AppBeanMain appBeanMain) {
            this.f43806a = appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(r1.this.f43483d, this.f43806a.getIntentDataBean());
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class v1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43808a;

        public v1(View view) {
            super(view);
            this.f43808a = (LinearLayout) view.findViewById(R.id.itemLayout);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(r1.this.f43483d).getAccountData();
            if (com.join.mgps.Util.d2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(r1.this.f43483d);
                return;
            }
            PrefDef_ prefDef_ = new PrefDef_(r1.this.f43483d);
            if (com.join.mgps.Util.d2.i(prefDef_.uploadType2().d())) {
                IntentUtil.getInstance().goShareWebActivity(r1.this.f43483d, prefDef_.uploadType2().d());
            } else {
                UploadActivity_.o1(r1.this.f43483d).a(accountData).start();
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class w0 implements View.OnClickListener {
        w0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goMainLabelActivity(r1.this.f43483d, 0, r1.this.f43480a.getCommunity_entrance_tag(), 1);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class w1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43812a;

        public w1(View view) {
            super(view);
            this.f43812a = (TextView) view.findViewById(R.id.htmlEditRecommend);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.f1(r1.this.f43483d).f(r1.this.f43480a.getGame_id()).i(r1.this.f43480a.getPackageName()).h(r1.this.f43480a.getPlugin_num()).g(r1.this.f43480a.getIs_started()).j(r1.this.f43480a.getGame_score() != null ? r1.this.f43480a.getGame_score().getSgc_switch() : 0).a(r1.this.f43480a.getBespeak_switch()).d(r1.this.f43480a.getComment_score_switch()).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class x0 implements View.OnClickListener {
        x0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                r1.this.f43483d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + r1.this.f43480a.getGame_exclusive_benefits_qq() + "&version=1")));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class x1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43816a;

        /* renamed from: b  reason: collision with root package name */
        View f43817b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43818c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f43819d;

        /* renamed from: e  reason: collision with root package name */
        TextView f43820e;

        /* renamed from: f  reason: collision with root package name */
        TextView f43821f;

        /* renamed from: g  reason: collision with root package name */
        TextView f43822g;

        /* renamed from: h  reason: collision with root package name */
        TextView f43823h;

        /* renamed from: i  reason: collision with root package name */
        TextView f43824i;

        /* renamed from: j  reason: collision with root package name */
        TextView f43825j;

        /* renamed from: k  reason: collision with root package name */
        TextView f43826k;

        /* renamed from: l  reason: collision with root package name */
        TextView f43827l;

        /* renamed from: m  reason: collision with root package name */
        TextView f43828m;

        /* renamed from: n  reason: collision with root package name */
        TextView f43829n;

        /* renamed from: o  reason: collision with root package name */
        LinearLayout f43830o;

        /* renamed from: p  reason: collision with root package name */
        LinearLayout f43831p;

        /* renamed from: q  reason: collision with root package name */
        LinearLayout f43832q;

        /* renamed from: r  reason: collision with root package name */
        LinearLayout f43833r;

        /* renamed from: s  reason: collision with root package name */
        LinearLayout f43834s;

        public x1(View view) {
            super(view);
            this.f43816a = (TextView) view.findViewById(R.id.message);
            this.f43817b = view.findViewById(R.id.message1);
            this.f43818c = (TextView) view.findViewById(R.id.moreText);
            this.f43819d = (LinearLayout) view.findViewById(R.id.look_other);
            this.f43818c = (TextView) view.findViewById(R.id.moreText);
            this.f43820e = (TextView) view.findViewById(R.id.downNumberTitle);
            this.f43819d = (LinearLayout) view.findViewById(R.id.look_other);
            this.f43821f = (TextView) view.findViewById(R.id.downNumber);
            this.f43822g = (TextView) view.findViewById(R.id.nowVersion);
            this.f43823h = (TextView) view.findViewById(R.id.appSize);
            this.f43824i = (TextView) view.findViewById(R.id.updateDate);
            this.f43825j = (TextView) view.findViewById(R.id.androdVersion);
            this.f43826k = (TextView) view.findViewById(R.id.commpany);
            this.f43827l = (TextView) view.findViewById(R.id.resousFrom);
            this.f43828m = (TextView) view.findViewById(R.id.upGame);
            this.f43830o = (LinearLayout) view.findViewById(R.id.resousFromLayout);
            this.f43831p = (LinearLayout) view.findViewById(R.id.commpanyLayout);
            this.f43833r = (LinearLayout) view.findViewById(R.id.androdVersionLayout);
            this.f43832q = (LinearLayout) view.findViewById(R.id.nowVersionLayout);
            this.f43834s = (LinearLayout) view.findViewById(R.id.sizelayout);
            this.f43829n = (TextView) view.findViewById(R.id.titleText);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(r1.this.f43483d).getAccountData();
            if (com.join.mgps.Util.d2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(r1.this.f43483d);
            } else if (IntentUtil.getInstance().goLoginInteractive(r1.this.f43483d)) {
            } else {
                if (r1.this.f43480a.getSelf_comment() == null) {
                    CommentCreatActivity_.U0(r1.this.f43483d).f(r1.this.f43480a.getGame_id()).j(r1.this.f43480a.getPackageName()).h(r1.this.f43480a.getPlugin_num()).g(r1.this.f43480a.getIs_started()).a(r1.this.f43480a.getBespeak_switch()).d(r1.this.f43480a.getComment_score_switch()).start();
                    return;
                }
                CommentAllListBean.SelfCommentBean self_comment = r1.this.f43480a.getSelf_comment();
                CommentCreatActivity_.U0(r1.this.f43483d).f(r1.this.f43480a.getGame_id()).j(r1.this.f43480a.getPackageName()).d(r1.this.f43480a.getComment_score_switch()).c(self_comment.getId()).e(Float.valueOf(self_comment.getStars_score()).floatValue()).a(r1.this.f43480a.getBespeak_switch()).h(r1.this.f43480a.getPlugin_num()).g(r1.this.f43480a.getIs_started()).b(self_comment.getContent()).start();
            }
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class y0 implements View.OnClickListener {
        y0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.f1(r1.this.f43483d).f(r1.this.f43480a.getGame_id()).i(r1.this.f43480a.getPackageName()).h(r1.this.f43480a.getPlugin_num()).a(r1.this.f43480a.getBespeak_switch()).g(r1.this.f43480a.getIs_started()).j(r1.this.f43480a.getGame_score().getSgc_switch()).d(r1.this.f43480a.getComment_score_switch()).start();
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class y1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        TextView f43838a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43839b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f43840c;

        public y1(View view) {
            super(view);
            this.f43838a = (TextView) view.findViewById(R.id.message);
            this.f43839b = (TextView) view.findViewById(R.id.moreText);
            this.f43840c = (LinearLayout) view.findViewById(R.id.look_other);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (r1.this.f43482c == null || r1.this.f43482c.getViewPager() == null) {
                return;
            }
            r1.this.f43482c.getViewPager().setCurrentItem(1);
        }
    }

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class z0 extends PagerAdapter {

        /* compiled from: GameDetialModleThreeAdapter.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.papa.sim.statistic.p.l(view.getContext()).E("yijianjineng", AccountUtil_.getInstance_(view.getContext()).getUid());
                r1.this.r(view.getContext(), "一键技能");
            }
        }

        z0() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return r1.this.f43496q.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            viewGroup.addView((View) r1.this.f43496q.get(i2));
            View view = (View) r1.this.f43496q.get(i2);
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

    /* compiled from: GameDetialModleThreeAdapter.java */
    /* loaded from: classes3.dex */
    class z1 extends t1.a {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43845a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43846b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43847c;

        public z1(View view) {
            super(view);
            this.f43845a = (LinearLayout) view.findViewById(R.id.handSharkLayout);
            this.f43846b = (TextView) view.findViewById(R.id.title);
            this.f43847c = (TextView) view.findViewById(R.id.suntitle);
        }
    }

    public r1(Context context, BaseGameDetailFragment baseGameDetailFragment, GamedetialModleFourBean gamedetialModleFourBean) {
        this.f43480a = gamedetialModleFourBean;
        this.f43483d = context;
        this.f43487h = v(context);
        this.f43482c = baseGameDetailFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(View view) {
        DetialMoreServiceListActivity_.P0(this.f43483d).a(this.f43480a.getCrc_sign_id()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(View view) {
        Intent intent = new Intent(this.f43483d, NoticeListActivity.class);
        intent.putExtra("gameId", this.f43480a.getCrc_sign_id());
        this.f43483d.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(View view) {
        com.papa.sim.statistic.p.l(view.getContext()).E("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
        r(view.getContext(), "金手指");
    }

    private void E(View view, d1 d1Var, boolean z3, int i4) {
        View view2;
        int i5;
        boolean z4;
        int i6;
        String str = d1Var.f43547a;
        int i7 = d1Var.f43551e;
        boolean z5 = d1Var.f43552f;
        InformationCommentBean informationCommentBean = d1Var.f43548b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) view;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i8 = 0;
        int i9 = 0;
        while (i9 < size + 1) {
            if (i9 <= 3 || !z3) {
                View inflate = LayoutInflater.from(this.f43483d).inflate(R.layout.comment_reply_item, (ViewGroup) null);
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
                        view2.setOnClickListener(new o0(size, informationCommentBean, str, i4));
                    } else if (i6 < size && (i6 < 3 || !z3)) {
                        textView.setVisibility(0);
                        textView2.setVisibility(8);
                        InformationCommentBean.Sub sub2 = sub.get(i6);
                        String content = sub2.getContent();
                        sub2.getComment_id();
                        try {
                            textView.setText(Html.fromHtml(content));
                            K(view2, sub2);
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
                    view2.setOnClickListener(new n0(i10, i4, str, d1Var));
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

    private void K(View view, InformationCommentBean.Sub sub) {
        view.setOnClickListener(new p0(sub));
    }

    private void L(View view, CommentBaseBean commentBaseBean) {
        view.setOnClickListener(new q0(commentBaseBean));
    }

    private void M(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i4) {
        s0 s0Var = new s0(commentBaseBean, i4, imageView, textView);
        imageView.setOnClickListener(s0Var);
        textView.setOnClickListener(s0Var);
    }

    private void N(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new m0(informationCommentBean));
    }

    private void O(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i4) {
        t0 t0Var = new t0(commentBaseBean, i4, imageView, textView);
        imageView.setOnClickListener(t0Var);
        textView.setOnClickListener(t0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
        Intent intent = new Intent(this.f43483d, CouponListActivity.class);
        intent.putExtra("gameId", this.f43480a.getCrc_sign_id());
        this.f43483d.startActivity(intent);
    }

    private CommentBaseBean t(int i4) {
        return (CommentBaseBean) this.f43493n.get(i4).f43530a;
    }

    public static String y(Context context) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(BTActivityBean bTActivityBean, View view) {
        IntentUtil.getInstance().goShareWebActivity(this.f43483d, bTActivityBean.getJump_url());
    }

    public void D(List<GameDetailOneTouchSkill> list) {
        this.f43496q.clear();
        this.f43490k = 0;
        this.f43489j = 0;
        if (list == null) {
            this.f43497r.notifyDataSetChanged();
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            View inflate = LayoutInflater.from(this.f43483d).inflate(R.layout.gamedetail_item_one_touch_skill_item, (ViewGroup) null);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.list);
            GameDetailOneTouchSkill gameDetailOneTouchSkill = list.get(i4);
            ((TextView) inflate.findViewById(R.id.name)).setText(gameDetailOneTouchSkill.getName());
            if (gameDetailOneTouchSkill.getSkill() != null) {
                for (int i5 = 0; i5 < gameDetailOneTouchSkill.getSkill().size() && i5 != 5; i5++) {
                    View inflate2 = LayoutInflater.from(this.f43483d).inflate(R.layout.gamedetail_item_one_touch_skill_list_item, (ViewGroup) linearLayout, false);
                    linearLayout.addView(inflate2);
                    ((TextView) inflate2.findViewById(R.id.name)).setText(gameDetailOneTouchSkill.getSkill().get(i5));
                }
            }
            this.f43496q.add(inflate);
        }
        this.f43497r.notifyDataSetChanged();
    }

    public void F(int i4, int i5) {
        CommentBaseBean t3 = t(i4);
        long longValue = Long.valueOf(t3.getDespise_count()).longValue();
        if (t3.getIs_despise() == 1) {
            t3.setIs_despise(0);
            long j4 = longValue - 1;
            if (j4 < 0) {
                t3.setDespise_count("0");
            } else {
                t3.setDespise_count(j4 + "");
            }
        } else if (i5 != 1) {
            t3.setIs_despise(1);
            t3.setDespise_count((longValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void G(int i4, int i5) {
        CommentBaseBean t3 = t(i4);
        long praise_count = t3.getPraise_count();
        if (t3.getIs_praise() == 1) {
            t3.setIs_praise(0);
            long j4 = praise_count - 1;
            if (j4 < 0) {
                t3.setPraise_count(0L);
            } else {
                t3.setPraise_count(j4);
            }
        } else if (i5 != 1) {
            t3.setIs_praise(1);
            t3.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    void H(b1 b1Var, boolean z3) {
        if (b1Var == null) {
            return;
        }
        try {
            ((d1) b1Var.f43530a).f43553g = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void I(GamedetialModleFourBean gamedetialModleFourBean) {
        this.f43480a = gamedetialModleFourBean;
    }

    public void J(c1 c1Var) {
        this.f43485f = c1Var;
    }

    public void P(List<View> list) {
        this.f43496q = list;
    }

    public void Q(int i4) {
        this.f43492m = i4;
    }

    void R() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f43480a.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f43480a.getGame_name());
        shareBean.setText(this.f43480a.getInfo());
        shareBean.setImageUrl(this.f43480a.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f43480a.getGame_id());
        if (this.f43480a.getShare_config() != null && this.f43480a.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f43480a.getShare_config().getJump_info());
        }
        com.join.mgps.Util.r.r(this.f43483d, shareBean);
    }

    void S(Context context, String str) {
        try {
            Toast makeText = Toast.makeText(context, "", 0);
            makeText.setText(str);
            makeText.setDuration(0);
            makeText.show();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void T(int i4) {
        CommentBaseBean t3 = t(i4);
        long longValue = Long.valueOf(t3.getDespise_count()).longValue();
        t3.setIs_despise(0);
        long j4 = longValue - 1;
        if (j4 < 0) {
            t3.setDespise_count("0");
        } else {
            t3.setDespise_count(j4 + "");
        }
        notifyDataSetChanged();
    }

    public void U(int i4) {
        CommentBaseBean t3 = t(i4);
        long praise_count = t3.getPraise_count();
        t3.setIs_praise(0);
        long j4 = praise_count - 1;
        if (j4 < 0) {
            t3.setPraise_count(0L);
        } else {
            t3.setPraise_count(j4);
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f43493n.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return this.f43493n.get(i4).f43531b;
    }

    public void n(int i4) {
        CommentBaseBean t3 = t(i4);
        long longValue = Long.valueOf(t3.getDespise_count()).longValue();
        t3.setIs_despise(1);
        t3.setDespise_count((longValue + 1) + "");
        notifyDataSetChanged();
    }

    public void o(int i4) {
        CommentBaseBean t3 = t(i4);
        long praise_count = t3.getPraise_count();
        t3.setIs_praise(1);
        t3.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x063b A[Catch: Exception -> 0x0704, TryCatch #7 {Exception -> 0x0704, blocks: (B:93:0x041d, B:95:0x0441, B:96:0x0455, B:98:0x045b, B:99:0x046f, B:101:0x049a, B:103:0x04a9, B:105:0x04bd, B:107:0x04c3, B:109:0x04c9, B:112:0x0501, B:114:0x0505, B:116:0x0522, B:118:0x0533, B:120:0x0539, B:123:0x0544, B:125:0x055e, B:127:0x05d6, B:129:0x05e7, B:131:0x05ef, B:134:0x05fc, B:136:0x062e, B:138:0x063b, B:140:0x0650, B:142:0x065f, B:144:0x0669, B:146:0x0678, B:148:0x0689, B:150:0x069e, B:152:0x06a4, B:154:0x06b9, B:153:0x06af, B:149:0x0694, B:145:0x0671, B:141:0x0658, B:135:0x0627, B:124:0x0557, B:115:0x0517, B:110:0x04f2, B:111:0x04fa, B:102:0x04a2), top: B:471:0x041d }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0669 A[Catch: Exception -> 0x0704, TryCatch #7 {Exception -> 0x0704, blocks: (B:93:0x041d, B:95:0x0441, B:96:0x0455, B:98:0x045b, B:99:0x046f, B:101:0x049a, B:103:0x04a9, B:105:0x04bd, B:107:0x04c3, B:109:0x04c9, B:112:0x0501, B:114:0x0505, B:116:0x0522, B:118:0x0533, B:120:0x0539, B:123:0x0544, B:125:0x055e, B:127:0x05d6, B:129:0x05e7, B:131:0x05ef, B:134:0x05fc, B:136:0x062e, B:138:0x063b, B:140:0x0650, B:142:0x065f, B:144:0x0669, B:146:0x0678, B:148:0x0689, B:150:0x069e, B:152:0x06a4, B:154:0x06b9, B:153:0x06af, B:149:0x0694, B:145:0x0671, B:141:0x0658, B:135:0x0627, B:124:0x0557, B:115:0x0517, B:110:0x04f2, B:111:0x04fa, B:102:0x04a2), top: B:471:0x041d }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0671 A[Catch: Exception -> 0x0704, TryCatch #7 {Exception -> 0x0704, blocks: (B:93:0x041d, B:95:0x0441, B:96:0x0455, B:98:0x045b, B:99:0x046f, B:101:0x049a, B:103:0x04a9, B:105:0x04bd, B:107:0x04c3, B:109:0x04c9, B:112:0x0501, B:114:0x0505, B:116:0x0522, B:118:0x0533, B:120:0x0539, B:123:0x0544, B:125:0x055e, B:127:0x05d6, B:129:0x05e7, B:131:0x05ef, B:134:0x05fc, B:136:0x062e, B:138:0x063b, B:140:0x0650, B:142:0x065f, B:144:0x0669, B:146:0x0678, B:148:0x0689, B:150:0x069e, B:152:0x06a4, B:154:0x06b9, B:153:0x06af, B:149:0x0694, B:145:0x0671, B:141:0x0658, B:135:0x0627, B:124:0x0557, B:115:0x0517, B:110:0x04f2, B:111:0x04fa, B:102:0x04a2), top: B:471:0x041d }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0689 A[Catch: Exception -> 0x0704, TryCatch #7 {Exception -> 0x0704, blocks: (B:93:0x041d, B:95:0x0441, B:96:0x0455, B:98:0x045b, B:99:0x046f, B:101:0x049a, B:103:0x04a9, B:105:0x04bd, B:107:0x04c3, B:109:0x04c9, B:112:0x0501, B:114:0x0505, B:116:0x0522, B:118:0x0533, B:120:0x0539, B:123:0x0544, B:125:0x055e, B:127:0x05d6, B:129:0x05e7, B:131:0x05ef, B:134:0x05fc, B:136:0x062e, B:138:0x063b, B:140:0x0650, B:142:0x065f, B:144:0x0669, B:146:0x0678, B:148:0x0689, B:150:0x069e, B:152:0x06a4, B:154:0x06b9, B:153:0x06af, B:149:0x0694, B:145:0x0671, B:141:0x0658, B:135:0x0627, B:124:0x0557, B:115:0x0517, B:110:0x04f2, B:111:0x04fa, B:102:0x04a2), top: B:471:0x041d }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0694 A[Catch: Exception -> 0x0704, TryCatch #7 {Exception -> 0x0704, blocks: (B:93:0x041d, B:95:0x0441, B:96:0x0455, B:98:0x045b, B:99:0x046f, B:101:0x049a, B:103:0x04a9, B:105:0x04bd, B:107:0x04c3, B:109:0x04c9, B:112:0x0501, B:114:0x0505, B:116:0x0522, B:118:0x0533, B:120:0x0539, B:123:0x0544, B:125:0x055e, B:127:0x05d6, B:129:0x05e7, B:131:0x05ef, B:134:0x05fc, B:136:0x062e, B:138:0x063b, B:140:0x0650, B:142:0x065f, B:144:0x0669, B:146:0x0678, B:148:0x0689, B:150:0x069e, B:152:0x06a4, B:154:0x06b9, B:153:0x06af, B:149:0x0694, B:145:0x0671, B:141:0x0658, B:135:0x0627, B:124:0x0557, B:115:0x0517, B:110:0x04f2, B:111:0x04fa, B:102:0x04a2), top: B:471:0x041d }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x06a4 A[Catch: Exception -> 0x0704, TryCatch #7 {Exception -> 0x0704, blocks: (B:93:0x041d, B:95:0x0441, B:96:0x0455, B:98:0x045b, B:99:0x046f, B:101:0x049a, B:103:0x04a9, B:105:0x04bd, B:107:0x04c3, B:109:0x04c9, B:112:0x0501, B:114:0x0505, B:116:0x0522, B:118:0x0533, B:120:0x0539, B:123:0x0544, B:125:0x055e, B:127:0x05d6, B:129:0x05e7, B:131:0x05ef, B:134:0x05fc, B:136:0x062e, B:138:0x063b, B:140:0x0650, B:142:0x065f, B:144:0x0669, B:146:0x0678, B:148:0x0689, B:150:0x069e, B:152:0x06a4, B:154:0x06b9, B:153:0x06af, B:149:0x0694, B:145:0x0671, B:141:0x0658, B:135:0x0627, B:124:0x0557, B:115:0x0517, B:110:0x04f2, B:111:0x04fa, B:102:0x04a2), top: B:471:0x041d }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x06af A[Catch: Exception -> 0x0704, TryCatch #7 {Exception -> 0x0704, blocks: (B:93:0x041d, B:95:0x0441, B:96:0x0455, B:98:0x045b, B:99:0x046f, B:101:0x049a, B:103:0x04a9, B:105:0x04bd, B:107:0x04c3, B:109:0x04c9, B:112:0x0501, B:114:0x0505, B:116:0x0522, B:118:0x0533, B:120:0x0539, B:123:0x0544, B:125:0x055e, B:127:0x05d6, B:129:0x05e7, B:131:0x05ef, B:134:0x05fc, B:136:0x062e, B:138:0x063b, B:140:0x0650, B:142:0x065f, B:144:0x0669, B:146:0x0678, B:148:0x0689, B:150:0x069e, B:152:0x06a4, B:154:0x06b9, B:153:0x06af, B:149:0x0694, B:145:0x0671, B:141:0x0658, B:135:0x0627, B:124:0x0557, B:115:0x0517, B:110:0x04f2, B:111:0x04fa, B:102:0x04a2), top: B:471:0x041d }] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r17, int r18) {
        /*
            Method dump skipped, instructions count: 5150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.r1.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i4) {
        switch (i4) {
            case 1:
                return new e2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_title, viewGroup, false));
            case 2:
                return new u1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_iconlayout, viewGroup, false));
            case 3:
                return new b2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_subscribe, viewGroup, false));
            case 4:
                return new d2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_tipslayout, viewGroup, false));
            case 5:
                return new g2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_viewpage, viewGroup, false));
            case 6:
                return new v1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_gamenotice, viewGroup, false));
            case 7:
                return new w1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_recommend, viewGroup, false));
            case 8:
                return new C0182r1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_describ, viewGroup, false));
            case 9:
                return new t1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_gifts, viewGroup, false));
            case 10:
                return new j1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_auxiliarytool, viewGroup, false));
            case 11:
                return new y1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_updateinfo, viewGroup, false));
            case 12:
                return new s1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_gamedetialsimple, viewGroup, false));
            case 13:
                return new n1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_record_header, viewGroup, false));
            case 14:
                return new l1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_comment_item_layout, viewGroup, false));
            case 15:
                return new o1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_comment_message_reply, viewGroup, false));
            case 16:
                return new m1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_commit_footer, viewGroup, false));
            case 17:
                return new a2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_gamerecommendlist, viewGroup, false));
            case 18:
                return new k1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_bottom_empty, viewGroup, false));
            case 19:
                return new f2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_video, viewGroup, false));
            case 20:
                return new p1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_down_and_down, viewGroup, false));
            case 21:
                return new q1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_factory_recommend, viewGroup, false));
            case 22:
                return new c2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_supply_a_gap, viewGroup, false));
            case 23:
                return new z1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_hand_shark_item, viewGroup, false));
            case 24:
                return new m2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_qq_item, viewGroup, false));
            case 25:
                return new a1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.comment_list_item_view, viewGroup, false));
            case 26:
                return new j2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_none_comment_layout, viewGroup, false));
            case 27:
                return new g1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_comment_game_layout, viewGroup, false));
            case 28:
                return new g2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_viewpagenew, viewGroup, false));
            case 29:
                return new i1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_favortis_layout, viewGroup, false));
            case 30:
                return new i2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_golden_finger_layout, viewGroup, false));
            case 31:
                return new f1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_cloud_archive_layout, viewGroup, false));
            case 32:
                return new l2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_one_touch_skill_layout, viewGroup, false));
            case 33:
                return new e1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_check_point_layout, viewGroup, false));
            case 34:
                return new x1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_updateinfo1, viewGroup, false));
            case 35:
                return new h2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_golden_finger1_layout, viewGroup, false));
            case 36:
                return new h1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_bt_coupon_item, viewGroup, false));
            case 37:
                return new n2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_bt_serviceinfo_item, viewGroup, false));
            case 38:
                return new k2(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetial_bt_notice_item, viewGroup, false));
            default:
                return null;
        }
    }

    b1 p(String str, InformationCommentBean informationCommentBean, int i4, boolean z3) {
        return new b1(new d1(str, informationCommentBean, i4, z3), 15);
    }

    void q() {
        DownloadTask downloadtaskDown = this.f43480a.getDownloadtaskDown();
        UtilsMy.g1(downloadtaskDown, this.f43480a);
        if (UtilsMy.T0(this.f43483d, downloadtaskDown)) {
            return;
        }
        if (this.f43480a.getDown_status() == 5) {
            UtilsMy.R0(this.f43483d, downloadtaskDown);
        } else {
            UtilsMy.F0(this.f43483d, downloadtaskDown, this.f43480a.getTp_down_url(), this.f43480a.getOther_down_switch(), this.f43480a.getCdn_down_switch());
        }
    }

    void r(Context context, String str) {
        DownloadTask B = g1.f.G().B(this.f43480a.getGame_id());
        if (B != null && !TextUtils.isEmpty(str)) {
            if (B.getStatus() == 5) {
                S(context, context.getResources().getString(R.string.game_detail_down_status, str));
                return;
            } else if (B.getStatus() == 43 || B.getStatus() == 9 || B.getStatus() == 0) {
                q();
                return;
            } else {
                S(context, context.getResources().getString(R.string.game_detail_downing_status, str));
                return;
            }
        }
        q();
    }

    public View s() {
        return this.f43495p;
    }

    public List<View> u() {
        return this.f43496q;
    }

    public com.danikula.videocache.i v(Context context) {
        return MApplication.p(context);
    }

    public int w() {
        return this.f43492m;
    }

    public List<b1> x() {
        return this.f43493n;
    }
}
