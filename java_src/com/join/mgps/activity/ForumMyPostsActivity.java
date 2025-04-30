package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_forum_my_post)
/* loaded from: classes.dex */
public class ForumMyPostsActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f29961a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f29962b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ForumLoadingView f29963c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f29964d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f29965e;

    /* renamed from: f  reason: collision with root package name */
    private List<ForumBean.ForumPostsBean> f29966f;

    /* renamed from: g  reason: collision with root package name */
    private ForumBaseAdapter f29967g;
    @StringRes(resName = "net_excption")

    /* renamed from: h  reason: collision with root package name */
    String f29968h;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: i  reason: collision with root package name */
    String f29969i;

    /* renamed from: k  reason: collision with root package name */
    com.join.android.app.component.video.c f29971k;

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.rpc.h f29972l;

    /* renamed from: x  reason: collision with root package name */
    private com.join.mgps.rpc.d f29984x;

    /* renamed from: j  reason: collision with root package name */
    String f29970j = "ForumMyPostsActivity";

    /* renamed from: m  reason: collision with root package name */
    private int f29973m = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f29974n = 0;

    /* renamed from: o  reason: collision with root package name */
    private final int f29975o = 0;

    /* renamed from: p  reason: collision with root package name */
    private final int f29976p = 16;

    /* renamed from: q  reason: collision with root package name */
    private final int f29977q = 32;

    /* renamed from: r  reason: collision with root package name */
    private final int f29978r = 17;

    /* renamed from: s  reason: collision with root package name */
    private final int f29979s = 18;

    /* renamed from: t  reason: collision with root package name */
    private final int f29980t = 20;

    /* renamed from: u  reason: collision with root package name */
    private final int f29981u = 24;

    /* renamed from: v  reason: collision with root package name */
    private int f29982v = 0;

    /* renamed from: w  reason: collision with root package name */
    Handler f29983w = new a();

    /* renamed from: y  reason: collision with root package name */
    private Map<String, DownloadTask> f29985y = new ConcurrentHashMap();

    /* renamed from: z  reason: collision with root package name */
    Map<String, DownloadTask> f29986z = new HashMap();
    Map<String, DownloadTask> A = new HashMap();
    private List<DownloadTask> B = new ArrayList();
    int C = 0;
    boolean D = false;
    List<ForumBaseAdapter.n1> E = new ArrayList();
    com.join.mgps.customview.t F = null;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ForumMyPostsActivity.this.f29965e.u();
            ForumMyPostsActivity.this.f29965e.t();
            if (ForumMyPostsActivity.this.f29974n == -1) {
                ForumMyPostsActivity.this.f29965e.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.i {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f29988a;

        b(Context context) {
            this.f29988a = context;
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.f.j(this.f29988a)) {
                ForumMyPostsActivity forumMyPostsActivity = ForumMyPostsActivity.this;
                forumMyPostsActivity.showToast(forumMyPostsActivity.getString(R.string.net_connect_failed));
                ForumMyPostsActivity.this.d1();
                return;
            }
            ForumMyPostsActivity forumMyPostsActivity2 = ForumMyPostsActivity.this;
            forumMyPostsActivity2.M0(forumMyPostsActivity2.f29973m + 1);
            if (ForumMyPostsActivity.this.f29974n == -1) {
                ForumMyPostsActivity.this.d1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.join.mgps.customview.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f29990a;

        c(Context context) {
            this.f29990a = context;
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.f.j(this.f29990a)) {
                ForumMyPostsActivity.this.f29974n = 0;
                ForumMyPostsActivity.this.M0(1);
                return;
            }
            ForumMyPostsActivity forumMyPostsActivity = ForumMyPostsActivity.this;
            forumMyPostsActivity.showToast(forumMyPostsActivity.getString(R.string.net_connect_failed));
            ForumMyPostsActivity.this.d1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends ForumBaseAdapter.y0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f29992a;

        d(Context context) {
            this.f29992a = context;
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void a(int i2) {
            if (!ForumMyPostsActivity.this.isLogined(this.f29992a)) {
                ForumMyPostsActivity.this.showMessage(this.f29992a.getString(R.string.forum_user_not_login));
            } else if (!ForumMyPostsActivity.this.f1()) {
                ForumMyPostsActivity.this.b1();
            } else {
                ForumMyPostsActivity.this.Z0(i2);
                ForumMyPostsActivity.this.W0(i2);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void d(int i2) {
            super.d(i2);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(this.f29992a, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.y0, com.join.mgps.adapter.ForumBaseAdapter.r0
        public void e(String str) {
            ForumMyPostsActivity forumMyPostsActivity = ForumMyPostsActivity.this;
            forumMyPostsActivity.D = true;
            forumMyPostsActivity.L0(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends ForumLoadingView.e {
        e(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumMyPostsActivity.this.R0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends ForumLoadingView.e {
        f(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends ForumLoadingView.e {
        g(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumMyPostsActivity.this.R0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends ForumLoadingView.e {
        h(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumMyPostsActivity.this.R0();
        }
    }

    private void K0() {
        com.join.mgps.customview.t tVar = this.F;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.F.dismiss();
    }

    private void O0() {
        this.f29962b.setText("我的帖子");
        this.f29965e.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f29965e.setPullLoadEnable(new b(this));
        this.f29965e.setPullRefreshEnable(new c(this));
        this.f29966f = new ArrayList();
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this, this.f29971k);
        this.f29967g = forumBaseAdapter;
        forumBaseAdapter.p0(this.f29970j);
        this.f29967g.v0(new d(this));
        this.f29965e.setAdapter((ListAdapter) this.f29967g);
        this.f29965e.setOnScrollListener(this);
    }

    private void P0() {
        I0(18);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0() {
        I0(0);
        P0();
        if (com.join.android.app.common.utils.f.j(this)) {
            Q0();
            return;
        }
        showToast(getString(R.string.net_connect_failed));
        I0(17);
    }

    private void Y0() {
        int i2 = 0;
        while (true) {
            List<DownloadTask> list = this.B;
            if (list == null || i2 >= list.size()) {
                return;
            }
            U0(g1.f.G().B(this.B.get(i2).getCrc_link_type_val()), 4);
            i2++;
        }
    }

    private void a1(ForumBean.ForumPostsBean forumPostsBean, boolean z3) {
        boolean z4;
        boolean z5;
        String message;
        if (com.join.mgps.Util.d2.h(forumPostsBean.getSubject()) || com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim())) {
            z4 = z3;
            z5 = false;
        } else {
            ForumBaseAdapter.ViewType viewType = ForumBaseAdapter.ViewType.P_SUBJECT;
            boolean z6 = forumPostsBean.getBest() > 0;
            boolean z7 = forumPostsBean.getFirst() > 0;
            String subject = forumPostsBean.getSubject();
            int pid = forumPostsBean.getPid();
            int fid = forumPostsBean.getFid();
            boolean z8 = forumPostsBean.getHelp() > 0;
            this.E.add(new ForumBaseAdapter.n1(viewType, new ForumBaseAdapter.n1.p(true, z6, z7, subject, pid, fid, z8, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info(), forumPostsBean.getTags(), forumPostsBean.getFname(), forumPostsBean.getSolve_flg())));
            z5 = true;
            z4 = true;
        }
        if (!z5) {
            ForumBaseAdapter.ViewType viewType2 = ForumBaseAdapter.ViewType.P_SUBJECT;
            boolean z9 = forumPostsBean.getBest() > 0;
            boolean z10 = forumPostsBean.getFirst() > 0;
            String message2 = forumPostsBean.getMessage();
            int pid2 = forumPostsBean.getPid();
            int fid2 = forumPostsBean.getFid();
            boolean z11 = forumPostsBean.getHelp() > 0;
            this.E.add(new ForumBaseAdapter.n1(viewType2, new ForumBaseAdapter.n1.p(true, z9, z10, message2, pid2, fid2, z11, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info(), forumPostsBean.getTags(), forumPostsBean.getFname(), forumPostsBean.getSolve_flg())));
        } else {
            boolean z12 = forumPostsBean.getSubject() == null || com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim());
            if (!com.join.mgps.Util.d2.h(forumPostsBean.getMessage()) && !com.join.mgps.Util.d2.h(forumPostsBean.getMessage().trim())) {
                ArrayList arrayList = new ArrayList();
                if (forumPostsBean.getBest() > 0) {
                    ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
                    tagInfo.setName("精");
                    tagInfo.setColor("#00FFFFFF");
                    tagInfo.setFont_color("#FF8378FF");
                    tagInfo.setBorder_color("#FF8378FF");
                    arrayList.add(0, tagInfo);
                }
                if (forumPostsBean.getFirst() > 0) {
                    ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
                    tagInfo2.setName("顶");
                    tagInfo2.setColor("#00FFFFFF");
                    tagInfo2.setFont_color("#FFFF6464");
                    tagInfo2.setBorder_color("#FFFF6464");
                    arrayList.add(0, tagInfo2);
                }
                if (forumPostsBean.getTag_info() != null) {
                    arrayList.addAll(forumPostsBean.getTag_info());
                }
                String message3 = forumPostsBean.getMessage();
                boolean z13 = forumPostsBean.getHelp() > 0;
                SpannableStringBuilder m02 = com.join.mgps.Util.i0.m0(this, message3, z12, z13, forumPostsBean.getHelp_money() + "", arrayList);
                boolean z14 = z4 ^ true;
                boolean z15 = z12 && forumPostsBean.getBest() > 0;
                boolean z16 = z12 && forumPostsBean.getFirst() > 0;
                String message4 = forumPostsBean.getMessage();
                int pid3 = forumPostsBean.getPid();
                int fid3 = forumPostsBean.getFid();
                boolean z17 = z12 && forumPostsBean.getHelp() > 0;
                ForumBaseAdapter.n1.o oVar = new ForumBaseAdapter.n1.o(z14, z15, z16, message4, pid3, fid3, z17, forumPostsBean.getHelp_money() + "", z12 ? forumPostsBean.getTag_info() : null, z12, m02);
                this.E.add(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.P_MESSAGE, oVar));
                this.f29967g.s().e(oVar);
            }
        }
        boolean z18 = (forumPostsBean.getRelation_game() == null || TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id())) ? false : true;
        if (!z18) {
            List<ForumBean.ForumPostsBean.ResBean> rs_list = forumPostsBean.getRs_list();
            ArrayList arrayList2 = new ArrayList();
            boolean isAttach_video = forumPostsBean.isAttach_video();
            String str = "";
            String str2 = str;
            for (int i2 = 0; rs_list != null && i2 < rs_list.size(); i2++) {
                ForumBean.ForumPostsBean.ResBean resBean = rs_list.get(i2);
                if (resBean.getType().equals("pic")) {
                    arrayList2.add(resBean.getRaw());
                } else if (resBean.getType().equals("video") && com.join.mgps.Util.d2.h(str2)) {
                    str = resBean.getThumb();
                    str2 = resBean.getRaw();
                }
            }
            if (com.join.mgps.Util.d2.i(forumPostsBean.getSubject())) {
                message = forumPostsBean.getSubject();
            } else {
                message = com.join.mgps.Util.d2.i(forumPostsBean.getMessage()) ? forumPostsBean.getMessage() : "";
            }
            if (isAttach_video) {
                this.E.add(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.n1.q(str, str2, message)));
            } else if (rs_list != null && rs_list.size() != 0) {
                this.E.add(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.n1.n(rs_list, arrayList2, forumPostsBean.getPid())));
            }
        }
        if (z18) {
            X0(forumPostsBean.getRelation_game());
            ForumBaseAdapter.ViewType viewType3 = ForumBaseAdapter.ViewType.POST_GAME;
            if (!TextUtils.isEmpty(forumPostsBean.getResource_url())) {
                viewType3 = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
            }
            this.E.add(new ForumBaseAdapter.n1(viewType3, new ForumBaseAdapter.n1.s(true, forumPostsBean.getPid() + "", forumPostsBean.getRelation_game(), forumPostsBean.getResource_url())));
        }
        this.E.add(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.n1.m(1, forumPostsBean.getAvatar_src(), forumPostsBean.getLast_comment_time(), forumPostsBean.getNickname(), forumPostsBean.getPraise(), forumPostsBean.getCommit(), forumPostsBean.getPid(), forumPostsBean.getView(), forumPostsBean.is_praise(), forumPostsBean.getUid())));
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(this);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.B.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f29985y.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            U0(downloadTask, 2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f29985y;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            U0(downloadTask, 3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.B, downloadTask);
        if (!this.f29985y.containsKey(downloadTask.getCrc_link_type_val())) {
            this.B.add(downloadTask);
            this.f29985y.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        U0(downloadTask, 0);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f29985y;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.B.add(downloadTask);
            this.f29985y.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f29985y.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        U0(downloadTask, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(int i2) {
        int i4 = this.f29982v;
        if (i4 == 32) {
            return;
        }
        if (i2 == 32) {
            this.f29982v = 32;
            this.f29963c.j(2);
        } else if (i2 == 0) {
            this.f29982v = 0;
            this.f29963c.m();
            this.f29963c.j(1);
        } else {
            this.f29982v = i2 | i4;
            if (J0(-11)) {
                this.f29982v = 16;
                ForumLoadingView forumLoadingView = this.f29963c;
                forumLoadingView.setListener(new e(forumLoadingView));
                this.f29963c.j(9);
            } else if (J0(22)) {
                this.f29982v = 16;
                this.f29963c.setFailedMsg("还没有发布帖子~");
                ForumLoadingView forumLoadingView2 = this.f29963c;
                forumLoadingView2.setListener(new f(forumLoadingView2));
                this.f29963c.j(10);
                this.f29963c.setReloadingVisibility(0);
                this.f29963c.setFailedReloadingRes(R.drawable.papa_loading_null);
            } else if (!J0(31) && !J0(26)) {
                if (J0(17)) {
                    this.f29982v = 16;
                    ForumLoadingView forumLoadingView3 = this.f29963c;
                    forumLoadingView3.setListener(new h(forumLoadingView3));
                    this.f29963c.j(9);
                }
            } else {
                this.f29982v = 16;
                this.f29963c.setFailedMsg("加载失败，再试试吧~");
                ForumLoadingView forumLoadingView4 = this.f29963c;
                forumLoadingView4.setListener(new g(forumLoadingView4));
                this.f29963c.j(16);
            }
        }
    }

    boolean J0(int i2) {
        return (this.f29982v & i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.C == 1) {
                return;
            }
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                    ResultMainBean<List<DetailResultBean>> R = this.f29984x.R(RequestBeanUtil.getInstance(this).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                    if (R != null && R.getFlag() != 0) {
                        List<DetailResultBean> data = R.getMessages().getData();
                        if (data.size() != 0) {
                            DetailResultBean detailResultBean = data.get(0);
                            if (this.D) {
                                startDown(detailResultBean);
                            }
                        }
                    } else if (R != null && R.getFlag() != 0) {
                        showToast("获取游戏信息失败");
                    } else {
                        showToast("获取游戏信息失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showToast("获取游戏信息失败");
                }
                return;
            } finally {
                this.C = 0;
                this.D = false;
            }
        }
        showToast("获取游戏信息失败");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
        if (r11.f29974n != (-1)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009f, code lost:
        if (r11.f29974n == (-1)) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a1, code lost:
        r11.f29974n = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a3, code lost:
        d1();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void M0(int r12) {
        /*
            r11 = this;
            int r0 = r11.f29974n
            if (r12 != r0) goto L5
            return
        L5:
            r1 = -1
            if (r0 != r1) goto Lb
            r11.d1()
        Lb:
            r11.f29974n = r12
            boolean r0 = com.join.android.app.common.utils.f.j(r11)
            if (r0 == 0) goto Lb1
            r0 = 1
            r2 = 0
            if (r12 <= r0) goto L1a
            r11.c1()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
        L1a:
            com.join.mgps.dto.AccountBean r3 = com.join.mgps.Util.i0.T(r11)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            boolean r4 = com.join.mgps.Util.i0.Y0(r11)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r4 == 0) goto L88
            com.join.mgps.rpc.h r5 = r11.f29972l     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            int r6 = r3.getUid()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            java.lang.String r7 = r3.getToken()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            int r9 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            java.lang.String r10 = ""
            r8 = r12
            com.join.mgps.dto.ForumResponse r3 = r5.k(r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            r4 = 20
            if (r3 == 0) goto L77
            java.lang.Object r3 = r3.getData()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            com.join.mgps.dto.ForumData$ForumProfilePostsData r3 = (com.join.mgps.dto.ForumData.ForumProfilePostsData) r3     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r3 == 0) goto L66
            java.util.List r5 = r3.getPosts_list()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r5 == 0) goto L66
            java.util.List r5 = r3.getPosts_list()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            int r5 = r5.size()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r5 == 0) goto L66
            r11.f29973m = r12     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            java.util.List r0 = r3.getPosts_list()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            r11.e1(r0, r12)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            r12 = 32
            r11.I0(r12)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            int r12 = r11.f29974n
            if (r12 == r1) goto La3
            goto La1
        L66:
            r11.f29974n = r1     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r12 != r0) goto L6d
            r11.I0(r4)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
        L6d:
            int r12 = r11.f29974n
            if (r12 == r1) goto L73
            r11.f29974n = r2
        L73:
            r11.d1()
            return
        L77:
            r11.f29974n = r2     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r12 != r0) goto L7e
            r11.I0(r4)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
        L7e:
            int r12 = r11.f29974n
            if (r12 == r1) goto L84
            r11.f29974n = r2
        L84:
            r11.d1()
            return
        L88:
            int r12 = r11.f29974n
            if (r12 == r1) goto L8e
            r11.f29974n = r2
        L8e:
            r11.d1()
            return
        L92:
            r12 = move-exception
            goto La7
        L94:
            r12 = move-exception
            r0 = 24
            r11.I0(r0)     // Catch: java.lang.Throwable -> L92
            r12.printStackTrace()     // Catch: java.lang.Throwable -> L92
            int r12 = r11.f29974n
            if (r12 == r1) goto La3
        La1:
            r11.f29974n = r2
        La3:
            r11.d1()
            goto Lc0
        La7:
            int r0 = r11.f29974n
            if (r0 == r1) goto Lad
            r11.f29974n = r2
        Lad:
            r11.d1()
            throw r12
        Lb1:
            r12 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r12 = r11.getString(r12)
            r11.showToast(r12)
            r12 = 17
            r11.I0(r12)
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumMyPostsActivity.M0(int):void");
    }

    public void N0() {
        this.f29984x = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q0() {
        M0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        ForumBaseAdapter forumBaseAdapter = this.f29967g;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    synchronized void T0() {
        if (this.f29966f == null) {
            this.f29966f = new ArrayList();
        }
        this.E.clear();
        int i2 = 0;
        while (i2 < this.f29966f.size()) {
            a1(this.f29966f.get(i2), i2 == 0);
            i2++;
        }
        ForumBaseAdapter forumBaseAdapter = this.f29967g;
        if (forumBaseAdapter != null && forumBaseAdapter.r() != null) {
            this.f29967g.r().clear();
        }
        this.f29967g.f(this.E);
        S0();
    }

    void U0(DownloadTask downloadTask, int i2) {
        boolean z3 = false;
        for (int i4 = 0; i4 < this.f29966f.size(); i4++) {
            try {
                ForumBean.ForumPostsBean forumPostsBean = this.f29966f.get(i4);
                if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    forumPostsBean.getRelation_game().setDownloadTask(downloadTask);
                    z3 |= true;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        if (z3) {
            T0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void V0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumBaseAdapter forumBaseAdapter = this.f29967g;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0(int i2) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this, i2);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f29972l.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                Z0(i2);
                b1();
                return;
            }
            ForumData.ForumPostsPraiseData data = o3.getData();
            data.isResult();
            com.join.mgps.Util.i0.m1(e02, data);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void X0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask B = g1.f.G().B(gameInfo.getGame_id());
                gameInfo.setDownloadTask(B);
                Map<String, DownloadTask> map = this.f29985y;
                if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                    return;
                }
                this.B.add(B);
                this.f29985y.put(B.getCrc_link_type_val(), B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    void Z0(int i2) {
        ForumBean.ForumPostsBean next;
        List<ForumBean.ForumPostsBean> list = this.f29966f;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = this.f29966f.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getPid() == i2) {
                next.setPraise(next.is_praise() ? next.getPraise() - 1 : next.getPraise() + 1);
                next.setIs_praise(!next.is_praise());
                T0();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29972l = com.join.mgps.rpc.impl.f.A0();
        this.f29971k = new com.join.android.app.component.video.c(this, this.f29970j);
        N0();
        O0();
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1() {
        com.join.mgps.Util.a0.c0(this).m(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
    }

    void changeDownloadTaskNumber(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            return;
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        if (i2 == 2) {
            if (!this.f29986z.containsKey(crc_link_type_val)) {
                this.f29986z.put(crc_link_type_val, downloadTask);
            }
            if (this.A.containsKey(crc_link_type_val)) {
                return;
            }
            this.A.put(crc_link_type_val, downloadTask);
        } else if (i2 != 3) {
            if (i2 != 5) {
                if (i2 == 6) {
                    if (this.A.containsKey(crc_link_type_val)) {
                        this.A.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 7) {
                    if (this.f29986z.containsKey(crc_link_type_val)) {
                        this.f29986z.remove(crc_link_type_val);
                    }
                    if (this.A.containsKey(crc_link_type_val)) {
                        this.A.remove(crc_link_type_val);
                        return;
                    }
                    return;
                } else if (i2 == 10) {
                    if (!this.f29986z.containsKey(crc_link_type_val)) {
                        this.f29986z.put(crc_link_type_val, downloadTask);
                    }
                    if (this.A.containsKey(crc_link_type_val)) {
                        return;
                    }
                    this.A.put(crc_link_type_val, downloadTask);
                    return;
                } else if (i2 != 11) {
                    return;
                }
            } else if (this.f29986z.containsKey(crc_link_type_val)) {
                this.f29986z.remove(crc_link_type_val);
            }
            if (this.A.containsKey(crc_link_type_val)) {
                this.A.remove(crc_link_type_val);
            }
        } else if (this.A.containsKey(crc_link_type_val)) {
            this.A.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d1() {
        if (this.f29965e.i()) {
            this.f29983w.sendEmptyMessageDelayed(0, 100L);
        } else {
            this.f29983w.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e1(List<ForumBean.ForumPostsBean> list, int i2) {
        if (i2 == 1) {
            this.f29966f.clear();
            this.f29973m = 1;
            d1();
        }
        if (list != null && list.size() != 0) {
            this.f29966f.addAll(list);
        }
        d1();
        T0();
    }

    boolean f1() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
        com.join.android.app.component.video.c cVar = this.f29971k;
        if (cVar != null) {
            cVar.z();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
        StringBuilder sb = new StringBuilder();
        sb.append("zip DownloadStatus =");
        sb.append(lVar.c());
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
                    updateUI(a4, 4);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.f29971k;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.f29971k;
        if (cVar != null) {
            cVar.B();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f29971k.e(absListView, i2, i4, i5);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f29971k.i(absListView, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startDown(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < this.f29966f.size(); i2++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f29966f.get(i2);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadtaskDown.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadtaskDown);
                z3 |= true;
            }
        }
        if (z3) {
            T0();
        }
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(this, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.T0(this, downloadtaskDown)) {
            return;
        }
        if (detailResultBean.getDown_status() == 5) {
            UtilsMy.R0(this, downloadtaskDown);
        } else {
            UtilsMy.F0(this, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            if (i2 != 4) {
                return;
            }
            Y0();
            return;
        }
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
                Y0();
                return;
            case 5:
                receiveSuccess(downloadTask);
                return;
            case 6:
                receiveError(downloadTask);
                return;
            default:
                return;
        }
    }
}
