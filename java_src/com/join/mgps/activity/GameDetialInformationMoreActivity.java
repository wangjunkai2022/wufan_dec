package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialIntentBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameDetialStrategyTag;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.detial_more_imformation_layout)
/* loaded from: classes3.dex */
public class GameDetialInformationMoreActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
    com.join.mgps.dialog.x0 B;
    List<GameDetialStrategyTag> C;

    /* renamed from: a  reason: collision with root package name */
    private Context f31252a;

    /* renamed from: b  reason: collision with root package name */
    private List<RecommendInfomationBean> f31253b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.adapter.t0 f31254c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f31255d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f31256e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView2 f31257f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f31258g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f31259h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f31260i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f31261j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    LinearLayout f31262k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    LinearLayout f31263l;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: m  reason: collision with root package name */
    ImageView f31264m;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: n  reason: collision with root package name */
    CustomerDownloadView f31265n;

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.rpc.d f31266o;
    @StringRes(resName = "net_excption")

    /* renamed from: p  reason: collision with root package name */
    String f31267p;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: q  reason: collision with root package name */
    String f31268q;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    DetialIntentBean f31270s;

    /* renamed from: r  reason: collision with root package name */
    private int f31269r = 1;

    /* renamed from: t  reason: collision with root package name */
    private int f31271t = 0;

    /* renamed from: u  reason: collision with root package name */
    private Map<String, DownloadTask> f31272u = new ConcurrentHashMap();

    /* renamed from: v  reason: collision with root package name */
    Map<String, DownloadTask> f31273v = new HashMap();

    /* renamed from: w  reason: collision with root package name */
    Map<String, DownloadTask> f31274w = new HashMap();

    /* renamed from: x  reason: collision with root package name */
    private String f31275x = "";

    /* renamed from: y  reason: collision with root package name */
    private int f31276y = 0;

    /* renamed from: z  reason: collision with root package name */
    private boolean f31277z = false;
    private int A = 0;

    /* loaded from: classes3.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameDetialInformationMoreActivity.this.f31277z) {
                return;
            }
            GameDetialInformationMoreActivity.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (GameDetialInformationMoreActivity.this.f31277z) {
                return;
            }
            GameDetialInformationMoreActivity.this.f31269r = 1;
            GameDetialInformationMoreActivity.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            try {
                if (i2 <= GameDetialInformationMoreActivity.this.f31253b.size() && i2 >= 0) {
                    ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                    forumPostsBean.setPid(((RecommendInfomationBean) GameDetialInformationMoreActivity.this.f31253b.get(i2)).getPost_id());
                    com.join.mgps.Util.i0.v0(GameDetialInformationMoreActivity.this.f31252a, forumPostsBean);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameDetialStrategyTag f31281a;

        d(GameDetialStrategyTag gameDetialStrategyTag) {
            this.f31281a = gameDetialStrategyTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialInformationMoreActivity.this.A = this.f31281a.getTag_id();
            GameDetialInformationMoreActivity.this.f31269r = 1;
            GameDetialInformationMoreActivity.this.B.b();
            GameDetialInformationMoreActivity.this.J0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0() {
        com.join.mgps.dialog.x0 x0Var = this.B;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.B.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0() {
        ResultMainBean<List<RecommendInfomationBean>> j02;
        new ArrayList();
        if (com.join.android.app.common.utils.f.j(this.f31252a)) {
            this.f31277z = true;
            try {
                try {
                    CommonRequestBean<RequestGameIdArgs> K0 = K0(this.f31270s.getGameId(), this.f31269r, this.A);
                    if (this.f31270s.getIntentType() == 2) {
                        j02 = this.f31266o.F(K0);
                    } else {
                        j02 = this.f31266o.j0(K0);
                    }
                    ResultMessageBean<List<RecommendInfomationBean>> messages = j02.getMessages();
                    if (messages != null) {
                        List<RecommendInfomationBean> data = messages.getData();
                        if (data != null && data.size() > 0) {
                            if (data.size() == 0) {
                                M0();
                            } else {
                                this.f31269r++;
                            }
                            O0(data);
                            R0();
                        } else {
                            M0();
                        }
                    } else {
                        R0();
                        showLodingFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    R0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f31277z = false;
                I0();
            }
        }
        R0();
        showLodingFailed();
        I0();
    }

    public CommonRequestBean K0(String str, int i2, int i4) {
        return RequestBeanUtil.getInstance(this.f31252a).getDetialImfMore(str, i2, i4, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        this.f31269r = 1;
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        this.f31257f.setNoMore();
    }

    public void N0(ViewGroup viewGroup, List<GameDetialStrategyTag> list) {
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        if (list == null || list.size() == 0) {
            return;
        }
        TextView[] textViewArr = null;
        for (int i2 = 0; i2 < list.size(); i2++) {
            GameDetialStrategyTag gameDetialStrategyTag = list.get(i2);
            int i4 = i2 % 4;
            if (i4 == 0) {
                View inflate = LayoutInflater.from(this.f31252a).inflate(R.layout.forum_theme_category_item, (ViewGroup) null);
                TextView[] textViewArr2 = {(TextView) inflate.findViewById(R.id.tv1), (TextView) inflate.findViewById(R.id.tv2), (TextView) inflate.findViewById(R.id.tv3), (TextView) inflate.findViewById(R.id.tv4)};
                viewGroup.addView(inflate);
                textViewArr = textViewArr2;
            }
            String tag_name = gameDetialStrategyTag.getTag_name();
            int color = this.f31252a.getResources().getColor(R.color.game_detail_tab_text_color);
            TextView textView = textViewArr[i4];
            textView.setVisibility(0);
            textView.setText(tag_name);
            textView.setTextColor(color);
            if (this.A == gameDetialStrategyTag.getTag_id()) {
                textView.setSelected(true);
            } else {
                textView.setSelected(false);
            }
            textView.setOnClickListener(new d(gameDetialStrategyTag));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(List<RecommendInfomationBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        N0(this.f31263l, this.C);
        this.f31259h.setVisibility(8);
        this.f31258g.setVisibility(8);
        this.f31255d.setVisibility(0);
        if (this.f31269r <= 2) {
            this.f31253b.clear();
        }
        this.f31253b.addAll(list);
        if (this.f31269r == 2) {
            this.f31253b.size();
            this.f31254c.notifyDataSetChanged();
            return;
        }
        this.f31254c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        SearchHintActivity_.S1(this.f31252a).start();
        com.papa.sim.statistic.p.l(this.f31252a).m2(Where.modufour, AccountUtil_.getInstance_(this.f31252a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        this.f31257f.u();
        this.f31257f.t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f31266o = com.join.mgps.rpc.impl.c.P1();
        this.f31252a = this;
        this.B = com.join.mgps.Util.a0.c0(this).x(this.f31252a);
        this.A = this.f31270s.getStartegyTab();
        if (this.f31270s.getIntentType() != 1 && this.f31270s.getIntentType() != 5) {
            this.f31262k.setVisibility(8);
            this.f31256e.setText("最新资讯");
        } else {
            this.f31262k.setVisibility(0);
            List<GameDetialStrategyTag> strategyTags = this.f31270s.getStrategyTags();
            this.C = strategyTags;
            N0(this.f31263l, strategyTags);
            this.f31256e.setText("攻略");
        }
        com.join.mgps.adapter.t0 t0Var = new com.join.mgps.adapter.t0(this.f31252a);
        this.f31254c = t0Var;
        this.f31253b = t0Var.c();
        showLoding();
        J0();
        this.f31257f.setPreLoadCount(10);
        this.f31257f.setPullLoadEnable(new a());
        this.f31257f.setPullRefreshEnable(new b());
        this.f31257f.setOnItemClickListener(new c());
        this.f31257f.setOnScrollListener(this);
        this.f31257f.setAdapter((ListAdapter) this.f31254c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f31271t = (i4 + i2) - 1;
        this.f31276y = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f31269r = 1;
        showLoding();
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f31252a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f31258g.setVisibility(0);
        this.f31259h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<RecommendInfomationBean> list = this.f31253b;
        if (list == null || list.size() == 0) {
            this.f31259h.setVisibility(0);
            this.f31258g.setVisibility(8);
            this.f31255d.setVisibility(8);
        }
    }
}
