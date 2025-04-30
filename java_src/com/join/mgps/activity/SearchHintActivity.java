package com.join.mgps.activity;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.search.SearchAutoData;
import com.join.mgps.activity.search.SearchIndexData;
import com.join.mgps.activity.search.SearchRankingFragment;
import com.join.mgps.adapter.x;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.db.tables.SearchRecordTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.FavoriteBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RecommendAdInfoBean;
import com.join.mgps.dto.RequestKeywordArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SearchAutoDataBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.EditorAction;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.search_hint_activity)
/* loaded from: classes.dex */
public class SearchHintActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    public static boolean I0 = false;
    public static final String J0 = "key";
    @ViewById
    View A;
    SearchIndexData A0;
    @ViewById
    ListView B;
    private List<Object> C;
    private List<SearchAutoDataBean> D;
    private o E;
    private ResponseModel<SearchAutoData> F;
    List<DownloadTask> G0;
    private ArrayList<String> I;
    com.join.mgps.rpc.d J;
    @StringRes(resName = "net_excption")
    String K;
    @Extra

    /* renamed from: a  reason: collision with root package name */
    String f35014a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    int f35015b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    ArrayList<String> f35016c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    int f35017d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ForumLoadingView f35018e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    View f35019f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ViewFlipper f35020g;

    /* renamed from: h  reason: collision with root package name */
    private Context f35021h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    EditText f35022i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f35023j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    ImageView f35024k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    View f35025l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f35026m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f35027n;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: n0  reason: collision with root package name */
    String f35028n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    WrapContentGridView f35029o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    WrapContentGridView f35031p;

    /* renamed from: p0  reason: collision with root package name */
    private String f35032p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    FlowLayout f35033q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    View f35035r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    View f35037s;

    /* renamed from: s0  reason: collision with root package name */
    private n f35038s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    View f35039t;

    /* renamed from: t0  reason: collision with root package name */
    private m f35040t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    View f35041u;

    /* renamed from: u0  reason: collision with root package name */
    private ResponseModel<SearchIndexData> f35042u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    SimpleDraweeView f35043v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    ViewPager f35045w;
    @Pref

    /* renamed from: w0  reason: collision with root package name */
    PrefDef_ f35046w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    TabLayout f35047x;

    /* renamed from: x0  reason: collision with root package name */
    com.join.mgps.adapter.x f35048x0;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    FlowLayout f35049y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    FlowLayout f35051z;
    private int G = 1;
    private int H = 50;

    /* renamed from: o0  reason: collision with root package name */
    private int f35030o0 = 0;

    /* renamed from: q0  reason: collision with root package name */
    int f35034q0 = 0;

    /* renamed from: r0  reason: collision with root package name */
    boolean f35036r0 = false;

    /* renamed from: v0  reason: collision with root package name */
    private String f35044v0 = "搜索游戏、厂商、帖子";

    /* renamed from: y0  reason: collision with root package name */
    private String[] f35050y0 = {"热搜榜", "网游榜", "模拟器榜", "单机榜"};

    /* renamed from: z0  reason: collision with root package name */
    String f35052z0 = "";
    List<x.a> B0 = new ArrayList();
    List<CollectionBeanSubBusiness> C0 = new ArrayList();
    private boolean D0 = false;
    private int E0 = 0;
    private int F0 = 0;
    private Map<String, DownloadTask> H0 = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ForumLoadingView.e {
        a(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            SearchHintActivity.this.c1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ForumLoadingView.e {
        b(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            SearchHintActivity.this.c1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            com.join.mgps.Util.u0.e("onFocusChange", "hasFocus=" + z3);
            SearchHintActivity.this.z1();
            ViewFlipper viewFlipper = SearchHintActivity.this.f35020g;
            if (viewFlipper != null) {
                if (z3) {
                    viewFlipper.stopFlipping();
                    SearchHintActivity.this.f35020g.setVisibility(8);
                    if (SearchHintActivity.this.f35020g.getCurrentView() == null || !(SearchHintActivity.this.f35020g.getCurrentView() instanceof TextView)) {
                        return;
                    }
                    SearchHintActivity searchHintActivity = SearchHintActivity.this;
                    searchHintActivity.f35022i.setHint(((TextView) searchHintActivity.f35020g.getCurrentView()).getText());
                    y1.a.c(SearchHintActivity.this.f35022i);
                    return;
                }
                viewFlipper.startFlipping();
                SearchHintActivity.this.f35020g.setVisibility(0);
                SearchHintActivity.this.f35022i.setHint("");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnKeyListener {
        d() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            if (i2 == 66) {
                SearchHintActivity.this.X0();
                String replaceAll = SearchHintActivity.this.f35022i.getText().toString().replaceAll(" ", "");
                SearchHintActivity.this.f35022i.clearFocus();
                SearchHintActivity.this.f35025l.clearFocus();
                com.join.mgps.Util.u0.e("setOnKeyListener", "keyword=" + replaceAll);
                if (replaceAll.length() > 0) {
                    SearchHintActivity.this.W0(replaceAll, "");
                } else if (SearchHintActivity.this.f35052z0.length() > 0) {
                    SearchHintActivity searchHintActivity = SearchHintActivity.this;
                    searchHintActivity.W0(searchHintActivity.f35052z0, "");
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements TextWatcher {
        e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            com.join.mgps.Util.u0.e("afterTextChanged", "keyword=" + SearchHintActivity.this.f35022i.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            com.join.mgps.Util.u0.e("beforeTextChanged", "keyword=" + SearchHintActivity.this.f35022i.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            com.join.mgps.Util.u0.e("onTextChanged", "keyword=" + SearchHintActivity.this.f35022i.getText().toString());
            SearchHintActivity.this.z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements AdapterView.OnItemClickListener {
        f() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            Object obj = SearchHintActivity.this.C.get(i2);
            if (obj instanceof SearchAutoDataBean) {
                SearchAutoDataBean searchAutoDataBean = (SearchAutoDataBean) obj;
                String str = searchAutoDataBean.getGame_name().toString();
                SearchHintActivity.this.W0(str, searchAutoDataBean.getCrc_sign_id());
                String crc_sign_id = searchAutoDataBean.getCrc_sign_id();
                SearchHintActivity.this.j1(str, crc_sign_id);
                SearchHintActivity.this.m1(crc_sign_id);
            } else if (obj instanceof CollectionBeanSub) {
                CollectionBeanSub collectionBeanSub = (CollectionBeanSub) obj;
                IntentUtil.getInstance().intentActivity(SearchHintActivity.this.f35021h, SearchHintActivity.this.N0(collectionBeanSub.getIntentDataBean()));
                Ext ext = new Ext();
                ext.setPosition("searchSuggest");
                ext.setGameId(collectionBeanSub.getGame_id());
                com.papa.sim.statistic.p.l(SearchHintActivity.this.f35021h).K1(Event.clickDetailFromSearchResult, ext);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements ViewPager.OnPageChangeListener {
        g() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(SearchHintActivity.this.f35021h);
            Event event = Event.switchRankingList;
            Ext ext = new Ext();
            l4.K1(event, ext.setFrom((i2 + 1) + ""));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements TabLayout.d {
        h() {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void a(TabLayout.g gVar) {
            SearchHintActivity.this.n1(gVar);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g gVar) {
            SearchHintActivity.this.n1(gVar);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g gVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchAutoDataBean f35061a;

        i(SearchAutoDataBean searchAutoDataBean) {
            this.f35061a = searchAutoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity.this.W0(this.f35061a.getGame_name(), this.f35061a.getGame_id());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameInfoBean f35063a;

        j(GameInfoBean gameInfoBean) {
            this.f35063a = gameInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2;
            SearchHintActivity.this.W0(this.f35063a.getGame_name(), this.f35063a.getGame_id());
            if (this.f35063a.isThe_hot()) {
                i2 = 1;
            } else {
                i2 = this.f35063a.isThe_score() ? 2 : 0;
            }
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(SearchHintActivity.this.f35021h);
            Event event = Event.clickSearchRecommend;
            Ext ext = new Ext();
            l4.K1(event, ext.setFrom(i2 + ""));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends ForumLoadingView.e {
        k(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            SearchHintActivity.this.c1();
        }
    }

    /* loaded from: classes3.dex */
    public static class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f35066a;

        /* renamed from: b  reason: collision with root package name */
        Context f35067b;

        /* renamed from: c  reason: collision with root package name */
        String f35068c;

        public l(CollectionBeanSubBusiness collectionBeanSubBusiness, Context context, String str) {
            this.f35066a = collectionBeanSubBusiness;
            this.f35067b = context;
            this.f35068c = str;
        }

        void a(DownloadTask downloadTask) {
            if (downloadTask == null) {
                return;
            }
            ExtBean extBean = new ExtBean();
            extBean.setFrom("103");
            extBean.setLocation(this.f35068c);
            downloadTask.setExt(JsonMapper.toJsonString(extBean));
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f35066a.getDownloadTask();
            if (downloadTask == null) {
                if (this.f35066a.getMod_info() == null && UtilsMy.e0(this.f35066a.getTag_info())) {
                    if (this.f35066a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(this.f35067b).c(this.f35067b, this.f35066a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f35067b).k(this.f35067b, this.f35066a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f35066a.getVer()) || k4.d() >= Integer.parseInt(this.f35066a.getVer())) {
                                com.join.android.app.common.utils.a.g0(this.f35067b);
                                APKUtils.X(this.f35067b, this.f35066a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(this.f35067b).c(this.f35067b, this.f35066a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f35066a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(this.f35067b);
                            APKUtils.S(this.f35067b, this.f35066a.getMod_info());
                            return;
                        }
                        return;
                    }
                }
                UtilsMy.J0(this.f35067b, this.f35066a);
                return;
            }
            if (downloadTask != null) {
                downloadTask.setKeyword(this.f35068c);
                downloadTask.set_from(1);
                a(downloadTask);
            }
            String plugin_num = this.f35066a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f35066a.getDown_url_remote());
                UtilsMy.h2(downloadTask, this.f35067b);
                IntentUtil.getInstance().intentActivity(this.f35067b, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f35066a.getPay_tag_info(), this.f35066a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status != 13) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(this.f35067b, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        }
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(this.f35066a.getVer());
                                        downloadTask.setVer_name(this.f35066a.getVer_name());
                                        downloadTask.setUrl(this.f35066a.getDown_url_remote());
                                        UtilsMy.w3(this.f35067b, downloadTask);
                                        return;
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(this.f35067b)) {
                                                    com.join.mgps.Util.i2.a(this.f35067b).b("无网络连接");
                                                    return;
                                                } else if (UtilsMy.T0(this.f35067b, downloadTask)) {
                                                    return;
                                                } else {
                                                    if (this.f35066a.getDown_status() == 5) {
                                                        UtilsMy.R0(this.f35067b, downloadTask);
                                                        return;
                                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                        return;
                                                    } else {
                                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                        com.php25.PDownload.d.b(downloadTask);
                                                        downloadTask.setVer(this.f35066a.getVer());
                                                        downloadTask.setVer_name(this.f35066a.getVer_name());
                                                        downloadTask.setUrl(this.f35066a.getDown_url_remote());
                                                        com.php25.PDownload.d.c(downloadTask, this.f35067b);
                                                        return;
                                                    }
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, this.f35067b);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, this.f35067b);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(this.f35067b, downloadTask);
                return;
            }
            if (this.f35066a != null) {
                Ext ext = new Ext();
                ext.setPosition("searchSuggest");
                ext.setGameId(this.f35066a.getGame_id());
                com.papa.sim.statistic.p.l(this.f35067b).K1(Event.downloadFromSearchResult, ext);
                if (UtilsMy.o0(this.f35066a.getPay_tag_info(), this.f35066a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(this.f35067b, downloadTask.getCrc_link_type_val());
                    return;
                }
                UtilsMy.c1(downloadTask, this.f35066a);
                if (UtilsMy.T0(this.f35067b, downloadTask)) {
                    return;
                }
                if (this.f35066a.getDown_status() == 5) {
                    UtilsMy.R0(this.f35067b, downloadTask);
                } else {
                    UtilsMy.F0(this.f35067b, downloadTask, this.f35066a.getTp_down_url(), this.f35066a.getOther_down_switch(), this.f35066a.getCdn_down_switch());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<FavoriteBean> f35069a = new ArrayList();

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ FavoriteBean f35071a;

            a(FavoriteBean favoriteBean) {
                this.f35071a = favoriteBean;
            }

            void a(Context context, String str, String str2, String str3, String str4) {
                if (context == null) {
                    return;
                }
                Intent intent = new Intent(context, GameDetailActivity_.class);
                intent.putExtra("fromid", str);
                intent.putExtra("groupuid", TextUtils.isEmpty(str2) ? 0 : Integer.parseInt(str2));
                intent.putExtra("gameid", str3);
                intent.putExtra("company_id", str4);
                context.startActivity(intent);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Context context = view.getContext();
                a(context, this.f35071a.getId() + "", this.f35071a.getUid(), "0", "0");
                com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(view.getContext());
                l4.g0("fromSearchP1", this.f35071a.getId() + "", this.f35071a.getUid());
            }
        }

        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            public SimpleDraweeView f35073a;

            /* renamed from: b  reason: collision with root package name */
            public TextView f35074b;

            b() {
            }
        }

        public m() {
        }

        public List<FavoriteBean> a(FavoriteBean favoriteBean) {
            if (favoriteBean == null) {
                return this.f35069a;
            }
            if (this.f35069a == null) {
                this.f35069a = new ArrayList();
            }
            this.f35069a.add(favoriteBean);
            return this.f35069a;
        }

        public List<FavoriteBean> b(List<FavoriteBean> list) {
            if (list == null) {
                return this.f35069a;
            }
            if (this.f35069a == null) {
                this.f35069a = new ArrayList();
            }
            this.f35069a.addAll(list);
            return this.f35069a;
        }

        public List<FavoriteBean> c() {
            return this.f35069a;
        }

        public void d(List<FavoriteBean> list) {
            this.f35069a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<FavoriteBean> list = this.f35069a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<FavoriteBean> list = this.f35069a;
            if (list != null) {
                return list.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return super.getItemViewType(i2);
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            b bVar;
            if (view != null) {
                bVar = (b) view.getTag();
            } else {
                bVar = new b();
                view = LayoutInflater.from(SearchHintActivity.this).inflate(R.layout.search_hint_game_item, (ViewGroup) null);
                bVar.f35073a = (SimpleDraweeView) view.findViewById(R.id.icon);
                bVar.f35074b = (TextView) view.findViewById(R.id.name);
                view.setTag(bVar);
            }
            FavoriteBean favoriteBean = (FavoriteBean) getItem(i2);
            MyImageLoader.h(bVar.f35073a, favoriteBean.getPic());
            bVar.f35074b.setText(favoriteBean.getTitle());
            view.setOnClickListener(new a(favoriteBean));
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<GameInfoBean> f35076a = new ArrayList();

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameInfoBean f35078a;

            a(GameInfoBean gameInfoBean) {
                this.f35078a = gameInfoBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SearchHintActivity.this.W0(this.f35078a.getGame_name(), this.f35078a.getGame_id());
            }
        }

        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            public TextView f35080a;

            /* renamed from: b  reason: collision with root package name */
            public TextView f35081b;

            /* renamed from: c  reason: collision with root package name */
            public TextView f35082c;

            b() {
            }
        }

        public n() {
        }

        public List<GameInfoBean> a(GameInfoBean gameInfoBean) {
            if (gameInfoBean == null) {
                return this.f35076a;
            }
            if (this.f35076a == null) {
                this.f35076a = new ArrayList();
            }
            this.f35076a.add(gameInfoBean);
            return this.f35076a;
        }

        public List<GameInfoBean> b(List<GameInfoBean> list) {
            if (list == null) {
                return this.f35076a;
            }
            if (this.f35076a == null) {
                this.f35076a = new ArrayList();
            }
            this.f35076a.addAll(list);
            return this.f35076a;
        }

        public List<GameInfoBean> c() {
            return this.f35076a;
        }

        public void d(List<GameInfoBean> list) {
            this.f35076a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<GameInfoBean> list = this.f35076a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<GameInfoBean> list = this.f35076a;
            if (list != null) {
                return list.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return super.getItemViewType(i2);
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            b bVar;
            if (view != null) {
                bVar = (b) view.getTag();
            } else {
                bVar = new b();
                view = LayoutInflater.from(SearchHintActivity.this).inflate(R.layout.search_hint_hot_item, (ViewGroup) null);
                bVar.f35080a = (TextView) view.findViewById(R.id.icon);
                bVar.f35081b = (TextView) view.findViewById(R.id.rank);
                bVar.f35082c = (TextView) view.findViewById(R.id.name);
                view.setTag(bVar);
            }
            GameInfoBean gameInfoBean = (GameInfoBean) getItem(i2);
            int[] iArr = {R.drawable.search_rank_1, R.drawable.search_rank_2, R.drawable.search_rank_3};
            if (i2 < 3) {
                bVar.f35080a.setVisibility(0);
                bVar.f35081b.setVisibility(8);
                bVar.f35080a.setBackgroundResource(iArr[i2]);
            } else {
                bVar.f35080a.setVisibility(8);
                bVar.f35081b.setVisibility(0);
                TextView textView = bVar.f35081b;
                textView.setText("" + (i2 + 1));
            }
            bVar.f35082c.setText(gameInfoBean.getGame_name());
            view.setOnClickListener(new a(gameInfoBean));
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    /* loaded from: classes3.dex */
    public static class p {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f35096a;

        /* renamed from: b  reason: collision with root package name */
        public ImageView f35097b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f35098c;

        /* renamed from: d  reason: collision with root package name */
        public RelativeLayout f35099d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f35100e;

        /* renamed from: f  reason: collision with root package name */
        public View f35101f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f35102g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f35103h;

        /* renamed from: i  reason: collision with root package name */
        public LinearLayout f35104i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f35105j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f35106k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f35107l;

        /* renamed from: m  reason: collision with root package name */
        public ProgressBar f35108m;

        /* renamed from: n  reason: collision with root package name */
        public ProgressBar f35109n;
    }

    private void V0() {
        if (this.f35047x.getTabCount() == 0) {
            return;
        }
        for (int i2 = 0; i2 < this.f35047x.getTabCount(); i2++) {
            View inflate = LayoutInflater.from(this).inflate(R.layout.search_tab_item_layout, (ViewGroup) null);
            ((TextView) inflate.findViewById(R.id.f17875tv)).setText(this.f35050y0[i2]);
            this.f35047x.z(i2).v(inflate);
        }
        TextView textView = (TextView) this.f35047x.z(0).g().findViewById(R.id.f17875tv);
        textView.setTextColor(-16777216);
        textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
        textView.setTypeface(textView.getTypeface(), 1);
        this.f35047x.z(0).g().findViewById(R.id.iv).setVisibility(0);
    }

    private void a1() {
        ViewFlipper viewFlipper;
        ArrayList<String> arrayList = this.f35016c;
        if (arrayList == null || arrayList.size() <= 0 || (viewFlipper = this.f35020g) == null) {
            return;
        }
        viewFlipper.stopFlipping();
        this.f35020g.removeAllViews();
        Iterator<String> it2 = this.f35016c.iterator();
        while (it2.hasNext()) {
            TextView textView = (TextView) LayoutInflater.from(this.f35021h).inflate(R.layout.item_search_hint_viewflipper, (ViewGroup) null);
            textView.setText(it2.next());
            textView.setTextSize(2, 14.0f);
            textView.setTextColor(Color.parseColor("#8A8A8A"));
            this.f35020g.addView(textView);
        }
        if (this.f35017d < 1) {
            this.f35017d = 1;
        }
        this.f35020g.setFlipInterval(this.f35017d * 1000);
        this.f35020g.startFlipping();
        this.f35020g.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b1(SearchIndexData searchIndexData, View view) {
        if (searchIndexData.getAd_info().getSub() == null || searchIndexData.getAd_info().getSub().size() == 0) {
            return;
        }
        RecommendAdInfoBean recommendAdInfoBean = searchIndexData.getAd_info().getSub().get(0);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setCrc_link_type_val(recommendAdInfoBean.getCrc_link_type_val());
        intentDateBean.setJump_type(recommendAdInfoBean.getJump_type());
        intentDateBean.setTpl_type(recommendAdInfoBean.getTpl_type());
        intentDateBean.setLink_type(recommendAdInfoBean.getLink_type());
        intentDateBean.setLink_type_val(recommendAdInfoBean.getLink_type_val());
        intentDateBean.setExtBean(new ExtBean(113));
        IntentUtil.getInstance().intentActivity(this.f35021h, intentDateBean);
        String uid = AccountUtil_.getInstance_(view.getContext()).getUid();
        if (TextUtils.isEmpty(uid)) {
            uid = "";
        }
        String crc_link_type_val = (recommendAdInfoBean.getLink_type() == 21 || recommendAdInfoBean.getLink_type() == 1) ? recommendAdInfoBean.getCrc_link_type_val() : "";
        com.papa.sim.statistic.p.l(view.getContext()).J("searchBanner", uid, TextUtils.isEmpty(crc_link_type_val) ? "" : crc_link_type_val);
    }

    private View e1(Context context, GameInfoBean gameInfoBean) {
        View inflate;
        View view = null;
        try {
            inflate = View.inflate(context, R.layout.forum_group_tag_item, null);
        } catch (Exception e4) {
            e = e4;
        }
        try {
            inflate.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
            TextView textView = (TextView) inflate.findViewById(R.id.tagTv);
            if (textView == null) {
                return null;
            }
            textView.setBackgroundResource(R.drawable.search_history_tag_back);
            textView.setTextColor(Color.parseColor("#777777"));
            textView.setText(gameInfoBean.getGame_name());
            textView.setTextSize(0, context.getResources().getDimensionPixelSize(R.dimen.wdp26));
            if (gameInfoBean.isThe_hot()) {
                Drawable drawable = getResources().getDrawable(R.drawable.icon_hot);
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                textView.setCompoundDrawables(drawable, null, null, null);
                textView.setCompoundDrawablePadding(getResources().getDimensionPixelOffset(R.dimen.wdp8));
            } else if (gameInfoBean.isThe_score()) {
                Drawable drawable2 = getResources().getDrawable(R.drawable.icon_prise);
                drawable2.setBounds(0, 0, drawable2.getMinimumWidth(), drawable2.getMinimumHeight());
                textView.setCompoundDrawables(drawable2, null, null, null);
                textView.setCompoundDrawablePadding(getResources().getDimensionPixelOffset(R.dimen.wdp8));
            }
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.wdp14);
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.wdp16);
            textView.setPadding(dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset);
            textView.setOnClickListener(new j(gameInfoBean));
            return inflate;
        } catch (Exception e5) {
            e = e5;
            view = inflate;
            e.printStackTrace();
            return view;
        }
    }

    private View f1(Context context, SearchAutoDataBean searchAutoDataBean) {
        View inflate;
        View view = null;
        try {
            inflate = View.inflate(context, R.layout.forum_group_tag_item, null);
        } catch (Exception e4) {
            e = e4;
        }
        try {
            inflate.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
            TextView textView = (TextView) inflate.findViewById(R.id.tagTv);
            if (textView == null) {
                return null;
            }
            textView.setBackgroundResource(R.drawable.search_history_tag_back);
            textView.setTextColor(Color.parseColor("#777777"));
            textView.setText(searchAutoDataBean.getGame_name());
            textView.setTextSize(0, context.getResources().getDimensionPixelSize(R.dimen.wdp26));
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.wdp14);
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.wdp24);
            textView.setPadding(dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset);
            textView.setOnClickListener(new i(searchAutoDataBean));
            return inflate;
        } catch (Exception e5) {
            e = e5;
            view = inflate;
            e.printStackTrace();
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1(String str, String str2) {
        try {
            List<SearchRecordTable> d4 = n1.h0.n().d();
            if (d4 == null && d4.size() == 0) {
                SearchRecordTable searchRecordTable = new SearchRecordTable();
                searchRecordTable.setName(str);
                searchRecordTable.setCreate_time(System.currentTimeMillis());
                n1.h0.n().m(searchRecordTable);
            } else if (d4.size() > 100) {
                n1.h0.n().delete((Collection) n1.h0.n().i(10L, d4.size(), "create_time", false));
            } else {
                for (SearchRecordTable searchRecordTable2 : d4) {
                    if (searchRecordTable2.getName().equals(str)) {
                        n1.h0.n().delete((n1.h0) searchRecordTable2);
                    }
                }
                SearchRecordTable searchRecordTable3 = new SearchRecordTable();
                searchRecordTable3.setName(str);
                searchRecordTable3.setCreate_time(System.currentTimeMillis());
                n1.h0.n().m(searchRecordTable3);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n1(TabLayout.g gVar) {
        if (this.f35047x.getTabCount() == 0) {
            return;
        }
        for (int i2 = 0; i2 < this.f35047x.getTabCount(); i2++) {
            View g4 = this.f35047x.z(i2).g();
            if (g4 != null) {
                if (i2 == gVar.k()) {
                    g4.findViewById(R.id.iv).setVisibility(0);
                    TextView textView = (TextView) g4.findViewById(R.id.f17875tv);
                    textView.setTextColor(-16777216);
                    textView.setTypeface(textView.getTypeface(), 1);
                    textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
                } else {
                    g4.findViewById(R.id.iv).setVisibility(4);
                    TextView textView2 = (TextView) g4.findViewById(R.id.f17875tv);
                    textView2.setTextColor(Color.parseColor("#535353"));
                    textView2.setTypeface(textView2.getTypeface(), 0);
                    textView2.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp28));
                }
            }
        }
    }

    private void o1(SearchIndexData searchIndexData) {
        this.A0 = searchIndexData;
        this.B0.clear();
        this.B0.add(new x.a(this.f35050y0[0], SearchRankingFragment.getInstance(1)));
        this.B0.add(new x.a(this.f35050y0[1], SearchRankingFragment.getInstance(2)));
        this.B0.add(new x.a(this.f35050y0[2], SearchRankingFragment.getInstance(3)));
        this.B0.add(new x.a(this.f35050y0[3], SearchRankingFragment.getInstance(4)));
        this.f35048x0.notifyDataSetChanged();
        V0();
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.G0.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.H0.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.C0) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.H0.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.H0.get(collectionBeanSubBusiness.getGame_id());
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
        this.E.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.H0;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.E.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.G0, downloadTask);
        if (!this.H0.containsKey(downloadTask.getCrc_link_type_val())) {
            this.G0.add(downloadTask);
            this.H0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        this.E.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.H0;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.G0.add(downloadTask);
            Iterator<CollectionBeanSubBusiness> it2 = this.C0.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                CollectionBeanSubBusiness next = it2.next();
                if (next.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    next.setDownloadTask(downloadTask);
                    break;
                }
            }
            this.H0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.H0.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.E.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.C0) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.H0.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.H0.get(mod_info.getMod_game_id());
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

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i2 = this.F0; i2 <= this.E0 && !(this.B.getItemAtPosition(i2) instanceof SearchAutoDataBean); i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.B.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.B.getChildAt(i2 - this.F0);
                if (childAt.getTag() instanceof p) {
                    p pVar = (p) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = pVar.f35105j;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = pVar.f35105j;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            pVar.f35109n.setProgress((int) f4.getProgress());
                        } else {
                            pVar.f35108m.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = pVar.f35107l;
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

    private List<CollectionBeanSubBusiness> v1(List<CollectionBeanSubBusiness> list) {
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            for (DownloadTask downloadTask : this.G0) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.H0.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.H0.get(mod_info.getMod_game_id());
                    z3 = (downloadTask3 == null || downloadTask3.getStatus() != 5) ? false : false;
                    if (z3 && z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else if (z3) {
                        if (collectionBeanSubBusiness.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else if (z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else {
                        DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? g1.f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                        if (B == null) {
                            B = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                        }
                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    }
                } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                }
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(int i2) {
        ForumLoadingView forumLoadingView = this.f35018e;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            forumLoadingView.j(1);
        } else if (i2 == 2) {
            forumLoadingView.j(2);
            z1();
        } else if (i2 == 4) {
            forumLoadingView.j(4);
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.f35018e;
            forumLoadingView2.setListener(new b(forumLoadingView2));
            this.f35018e.j(16);
        } else if (i2 == 9) {
            forumLoadingView.setListener(new k(forumLoadingView));
            this.f35018e.j(9);
        } else if (i2 != 10) {
        } else {
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.f35018e;
            forumLoadingView3.setListener(new a(forumLoadingView3));
            this.f35018e.setReloadingVisibility(0);
            this.f35018e.j(10);
        }
    }

    void J0() {
        this.f35022i.clearFocus();
        this.f35019f.setFocusable(true);
        this.f35019f.setFocusableInTouchMode(true);
        this.f35019f.requestFocus();
        this.f35019f.requestFocusFromTouch();
        X0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        n1.h0.n().a();
        z1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        ArrayList<String> arrayList = this.I;
        if (arrayList != null) {
            arrayList.clear();
        }
        K0();
        p1();
    }

    void M0(String str) {
        try {
            List<SearchRecordTable> d4 = n1.h0.n().d();
            if (d4 == null && d4.size() == 0) {
                return;
            }
            for (SearchRecordTable searchRecordTable : d4) {
                if (searchRecordTable.getName().equals(str)) {
                    n1.h0.n().delete((n1.h0) searchRecordTable);
                    return;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    IntentDateBean N0(IntentDateBean intentDateBean) {
        ExtBean extBean = intentDateBean.getExtBean();
        if (extBean == null) {
            extBean = new ExtBean();
        }
        extBean.setFrom("112");
        EditText editText = this.f35022i;
        if (editText != null) {
            extBean.setLocation(editText.getText().toString());
        }
        intentDateBean.setExtBean(extBean);
        return intentDateBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0(String str) {
        if (com.join.android.app.common.utils.f.j(this.f35021h)) {
            ArrayList arrayList = new ArrayList();
            try {
                try {
                    RequestModel<RequestKeywordArgs> requestModel = new RequestModel<>();
                    requestModel.setDefault(this.f35021h);
                    requestModel.setArgs(new RequestKeywordArgs(str, this.G, this.H, 0, 0));
                    ResponseModel<SearchAutoData> body = com.join.mgps.rpc.impl.h.M().J().z0(requestModel).execute().body();
                    this.F = body;
                    y1(body.getData().getSearch_list(), 0);
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    serverConnectionException();
                    y1(arrayList, 0);
                    return;
                }
            } catch (Throwable th) {
                y1(arrayList, 0);
                throw th;
            }
        }
        g1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P0() {
        if (com.join.android.app.common.utils.f.j(this.f35021h)) {
            try {
                RequestModel<RequestUidtagidTagdes> requestModel = new RequestModel<>();
                requestModel.setDefault(this.f35021h);
                RequestUidtagidTagdes requestUidtagidTagdes = new RequestUidtagidTagdes();
                AccountBean accountData = AccountUtil_.getInstance_(this.f35021h).getAccountData();
                requestUidtagidTagdes.setUid(accountData.getUid());
                requestUidtagidTagdes.setToken(accountData.getToken());
                requestModel.setArgs(requestUidtagidTagdes);
                ResponseModel<SearchIndexData> body = com.join.mgps.rpc.impl.h.M().J().y0(requestModel).execute().body();
                this.f35042u0 = body;
                SearchIndexData data = body.getData();
                if (data != null && (data.getHot_search_ranking() != null || data.getSearch_key() != null)) {
                    w1(data);
                    z1();
                    I0(2);
                    return;
                }
                I0(4);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                serverConnectionException();
                I0(4);
                return;
            }
        }
        g1();
        I0(9);
    }

    public CommonRequestBean Q0() {
        String uid = AccountUtil_.getInstance_(this.f35021h).getUid();
        return RequestBeanUtil.getInstance(this.f35021h).getSearchPageRequestBean(Integer.parseInt(uid), AccountUtil_.getInstance_(this.f35021h).getToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R0() {
        try {
            ArrayList arrayList = new ArrayList();
            List<SearchRecordTable> i2 = n1.h0.n().i(0L, 20, "create_time", false);
            if (this.I == null) {
                this.I = new ArrayList<>();
            }
            this.I.clear();
            for (SearchRecordTable searchRecordTable : i2) {
                this.I.add(searchRecordTable.getName());
            }
            h1();
            if (this.I.size() > 0) {
                for (int i4 = 0; i4 < this.I.size(); i4++) {
                    SearchAutoDataBean searchAutoDataBean = new SearchAutoDataBean();
                    if (i4 >= this.I.size()) {
                        break;
                    }
                    searchAutoDataBean.setGame_name(this.I.get(i4));
                    searchAutoDataBean.setCrc_sign_id("");
                    searchAutoDataBean.setIsHistory(true);
                    arrayList.add(searchAutoDataBean);
                }
                q1();
                y1(arrayList, 1);
                return;
            }
            p1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public List<GameInfoBean> S0(int i2) {
        SearchIndexData searchIndexData = this.A0;
        if (searchIndexData != null) {
            if (i2 == 1) {
                return searchIndexData.getHot_search_ranking();
            }
            if (i2 == 2) {
                return searchIndexData.getNet_search_ranking();
            }
            if (i2 == 3) {
                return searchIndexData.getSimulator_search_ranking();
            }
            if (i2 == 4) {
                return searchIndexData.getStandalone_search_ranking();
            }
        }
        return new ArrayList();
    }

    public CommonRequestBean T0(String str) {
        return RequestBeanUtil.getInstance(this.f35021h).getSearchAutoRequestBean("searchAuto", str, this.G, this.H, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U0(String str, int i2) {
        if (i2 == 0) {
            O0(str);
        } else if (i2 != 1) {
        } else {
            R0();
        }
    }

    public void W0(String str, String str2) {
        j1(str, "");
        if (com.join.mgps.Util.d2.i(str2)) {
            SearchListActivity1_.s1(this.f35021h).d(str).c(this.f35036r0).a(0).b(str2).start();
        } else if (this.f35015b == 1) {
            SearchListActivity1_.s1(this.f35021h).d(str).c(this.f35036r0).a(2).start();
        } else {
            SearchListActivity1_.s1(this.f35021h).d(str).c(this.f35036r0).start();
        }
        if (!TextUtils.isEmpty(str)) {
            com.papa.sim.statistic.p.l(this.f35021h).h1(Event.clickSearchButton, str, null);
        }
        finish();
    }

    void X0() {
        y1.a.b(this.f35022i);
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Y0() {
        try {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            finish();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        if (this.f35022i.getText().length() > 0) {
            W0(this.f35022i.getText().toString(), "");
        } else if (!TextUtils.isEmpty(this.f35014a)) {
            W0(this.f35014a, "");
        } else {
            ViewFlipper viewFlipper = this.f35020g;
            if (viewFlipper == null || viewFlipper.getCurrentView() == null || !(this.f35020g.getCurrentView() instanceof TextView) || TextUtils.isEmpty(((TextView) this.f35020g.getCurrentView()).getText())) {
                return;
            }
            W0(((TextView) this.f35020g.getCurrentView()).getText().toString(), "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    @TargetApi(12)
    public void afterViews() {
        this.J = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        if (this.f35015b == 4) {
            I0 = true;
        }
        List<DownloadTask> d4 = g1.f.G().d();
        this.G0 = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.G0) {
                this.H0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        try {
            this.f35021h = this;
            this.f35022i.setOnFocusChangeListener(new c());
            this.f35022i.setOnKeyListener(new d());
            this.f35022i.addTextChangedListener(new e());
            if (this.f35038s0 == null) {
                this.f35038s0 = new n();
            }
            this.f35029o.setAdapter((ListAdapter) this.f35038s0);
            if (this.f35040t0 == null) {
                this.f35040t0 = new m();
            }
            this.f35031p.setAdapter((ListAdapter) this.f35040t0);
            this.C = new ArrayList();
            o oVar = new o(this.f35021h, this.C);
            this.E = oVar;
            this.B.setAdapter((ListAdapter) oVar);
            this.B.setOnScrollListener(this);
            this.B.setOnItemClickListener(new f());
            this.I = new ArrayList<>();
            this.D = new ArrayList();
            ArrayList<String> arrayList = this.f35016c;
            if (arrayList == null || arrayList.size() <= 0) {
                if (!TextUtils.isEmpty(this.f35014a)) {
                    this.f35044v0 = this.f35014a;
                }
                EditText editText = this.f35022i;
                editText.setHint(" " + this.f35044v0);
            }
            k1();
            com.join.mgps.adapter.x xVar = new com.join.mgps.adapter.x(getSupportFragmentManager(), this.B0);
            this.f35048x0 = xVar;
            this.f35045w.setAdapter(xVar);
            this.f35047x.setupWithViewPager(this.f35045w);
            this.f35045w.addOnPageChangeListener(new g());
            V0();
            this.f35047x.d(new h());
            d1();
            c1();
            if (I0) {
                q1();
                r1();
            } else {
                J0();
            }
            a1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.papa.sim.statistic.p.l(this.f35021h).K1(Event.visitTopSearchPage, new Ext());
    }

    void c1() {
        I0(1);
        P0();
        z1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d1() {
        SearchIndexData searchIndexData;
        String d4 = this.f35046w0.searchHintCache().d();
        if (TextUtils.isEmpty(d4) || (searchIndexData = (SearchIndexData) com.papa.sim.statistic.JsonMapper.e().fromJson(d4, SearchIndexData.class)) == null) {
            return;
        }
        if (searchIndexData.getHot_search_ranking() == null && searchIndexData.getSearch_key() == null) {
            return;
        }
        w1(searchIndexData);
        z1();
        I0(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1() {
        com.join.android.app.common.manager.a.h().j(this.f35021h, this.K, 1);
    }

    public CommonRequestBean getRequestBean(int i2) {
        return RequestBeanUtil.getInstance(this.f35021h).getSearchRecommendBean(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h1() {
        this.E.notifyDataSetChanged();
    }

    void i1() {
        this.f35022i.requestFocus();
        this.f35022i.requestFocusFromTouch();
        y1.a.c(this.f35022i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void k1() {
        this.f35022i.setText("");
        z1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @EditorAction
    public boolean l1(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 6) {
            O0(this.f35022i.getText().toString());
            j1(this.f35022i.getText().toString(), "");
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void m1(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        y1.a.b(this.f35022i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.E0 = (i4 + i2) - 1;
        this.F0 = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p1() {
        com.join.mgps.Util.u0.e("showHint", "keyword=" + this.f35022i.getText().toString());
        if (I0) {
            return;
        }
        String obj = this.f35022i.getText().toString();
        if (TextUtils.isEmpty(obj) && TextUtils.isEmpty(obj.trim())) {
            if (this.f35022i.isFocused()) {
                return;
            }
            this.f35027n.setVisibility(0);
            this.B.setVisibility(8);
            this.f35026m.setVisibility(8);
            return;
        }
        this.f35027n.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q1() {
        com.join.mgps.Util.u0.e("showHistory", "keyword=" + this.f35022i.getText().toString());
        this.f35027n.setVisibility(8);
        ArrayList<String> arrayList = this.I;
        if (arrayList != null && arrayList.size() > 0) {
            this.f35026m.setVisibility(0);
        } else {
            this.f35026m.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 300)
    public void r1() {
        this.f35022i.setText("");
        this.f35024k.setVisibility(8);
        i1();
        I0 = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s1() {
        com.join.mgps.Util.u0.e("showRecommend", "keyword=" + this.f35022i.getText().toString());
        this.f35027n.setVisibility(8);
        this.B.setVisibility(0);
        this.f35026m.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this.f35021h, this.f35028n0, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void t1() {
        if (this.f35022i.getText().length() > 0) {
            W0(this.f35022i.getText().toString(), "");
        } else if (!TextUtils.isEmpty(this.f35014a)) {
            W0(this.f35014a, "");
        } else {
            ViewFlipper viewFlipper = this.f35020g;
            if (viewFlipper == null || viewFlipper.getCurrentView() == null || !(this.f35020g.getCurrentView() instanceof TextView) || TextUtils.isEmpty(((TextView) this.f35020g.getCurrentView()).getText())) {
                return;
            }
            W0(((TextView) this.f35020g.getCurrentView()).getText().toString(), "");
        }
    }

    void u1(List<SearchAutoDataBean> list, int i2) {
        ResponseModel<SearchAutoData> responseModel;
        this.C.clear();
        if (i2 == 0 && (responseModel = this.F) != null && responseModel.getData() != null && this.F.getData().getGame_list() != null) {
            this.C0.clear();
            for (CollectionBeanSub collectionBeanSub : this.F.getData().getGame_list()) {
                collectionBeanSub.set_from(103);
                collectionBeanSub.set_from_type(112);
                collectionBeanSub.setReMarks("0");
                CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                this.C.add(collectionBeanSubBusiness);
                this.C0.add(collectionBeanSubBusiness);
            }
            v1(this.C0);
        }
        if (list != null && list.size() > 0) {
            this.C.addAll(list);
        }
        List<Object> list2 = this.C;
        this.f35036r0 = list2 == null || list2.size() <= 0;
        this.E.notifyDataSetChanged();
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
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
        this.E.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w1(final SearchIndexData searchIndexData) {
        if (searchIndexData == null) {
            return;
        }
        this.f35046w0.searchHintCache().g(com.papa.sim.statistic.JsonMapper.e().toJson(searchIndexData));
        if (com.join.mgps.Util.d2.i(searchIndexData.getSearch_key())) {
            this.f35052z0 = searchIndexData.getSearch_key();
            EditText editText = this.f35022i;
            editText.setHint(" " + this.f35052z0);
        }
        p1();
        int i2 = 0;
        if (searchIndexData.getAd_info() != null && searchIndexData.getAd_info().getMain() != null && !TextUtils.isEmpty(searchIndexData.getAd_info().getMain().getAd_switch()) && searchIndexData.getAd_info().getMain().getAd_switch().equals("1")) {
            this.f35041u.setVisibility(0);
            MyImageLoader.p(this.f35043v, searchIndexData.getAd_info().getMain().getPic_remote(), r.c.f12144g);
            this.f35043v.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.p2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchHintActivity.this.b1(searchIndexData, view);
                }
            });
        } else {
            this.f35041u.setVisibility(8);
        }
        if (searchIndexData.getGuess_you_like_info() != null && searchIndexData.getGuess_you_like_info().size() > 0) {
            this.A.setVisibility(0);
            this.f35051z.removeAllViews();
            List<GameInfoBean> guess_you_like_info = searchIndexData.getGuess_you_like_info();
            this.f35046w0.searchguesslikeData().g(com.papa.sim.statistic.JsonMapper.e().toJson(guess_you_like_info));
            while (i2 < guess_you_like_info.size()) {
                View e12 = e1(this, guess_you_like_info.get(i2));
                if (e12 != null) {
                    this.f35051z.addView(e12);
                }
                i2++;
            }
            this.f35051z.setHorizontalDivider(getResources().getDimensionPixelOffset(R.dimen.wdp30));
            this.f35051z.setVerticalDivider(getResources().getDimensionPixelOffset(R.dimen.wdp18));
        } else {
            String d4 = this.f35046w0.searchguesslikeData().d();
            if (com.join.mgps.Util.d2.i(d4)) {
                List list = (List) com.papa.sim.statistic.JsonMapper.e().fromJson(d4, com.papa.sim.statistic.JsonMapper.e().createCollectionType(List.class, GameInfoBean.class));
                if (list != null) {
                    this.A.setVisibility(0);
                    this.f35051z.removeAllViews();
                    while (i2 < list.size()) {
                        View e13 = e1(this, (GameInfoBean) list.get(i2));
                        if (e13 != null) {
                            this.f35051z.addView(e13);
                        }
                        i2++;
                    }
                    this.f35051z.setHorizontalDivider(getResources().getDimensionPixelOffset(R.dimen.wdp30));
                    this.f35051z.setVerticalDivider(getResources().getDimensionPixelOffset(R.dimen.wdp18));
                } else {
                    this.f35051z.removeAllViews();
                    this.A.setVisibility(8);
                }
            } else {
                this.f35051z.removeAllViews();
                this.A.setVisibility(8);
            }
        }
        o1(searchIndexData);
    }

    void x1(List<SearchAutoDataBean> list) {
        this.D.clear();
        this.C0.clear();
        if (list != null) {
            this.D.addAll(list);
        }
        this.f35049y.removeAllViews();
        try {
            FlowLayout flowLayout = this.f35049y;
            flowLayout.setHorizontalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp30));
            FlowLayout flowLayout2 = this.f35049y;
            flowLayout2.setVerticalDivider(flowLayout2.getResources().getDimensionPixelOffset(R.dimen.wdp18));
            this.f35049y.setNumberRows(3);
            for (int i2 = 0; i2 < this.D.size(); i2++) {
                View f12 = f1(this, this.D.get(i2));
                if (f12 != null) {
                    this.f35049y.addView(f12);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y1(List<SearchAutoDataBean> list, int i2) {
        if (i2 == 0) {
            this.D0 = false;
            u1(list, 0);
        } else if (i2 != 1) {
        } else {
            this.D0 = true;
            x1(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z1() {
        String obj = this.f35022i.getText().toString();
        if (obj.length() > 0) {
            s1();
            O0(obj);
            this.f35024k.setVisibility(0);
        } else if (this.B.getVisibility() == 0 && this.D0) {
        } else {
            if (com.join.mgps.Util.d2.i(this.f35052z0)) {
                this.f35022i.setHint("");
                p1();
                EditText editText = this.f35022i;
                editText.setHint(" " + this.f35052z0);
            }
            if (this.f35022i.hasFocus()) {
                R0();
            } else {
                this.f35024k.setVisibility(8);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class o extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private Context f35084a;

        /* renamed from: b  reason: collision with root package name */
        private LayoutInflater f35085b;

        /* renamed from: c  reason: collision with root package name */
        private List<Object> f35086c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35088a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ SearchAutoDataBean f35089b;

            a(String str, SearchAutoDataBean searchAutoDataBean) {
                this.f35088a = str;
                this.f35089b = searchAutoDataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SearchHintActivity.this.M0(this.f35088a);
                o.this.f35086c.remove(this.f35089b);
                o.this.notifyDataSetChanged();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class b {

            /* renamed from: a  reason: collision with root package name */
            public ImageView f35091a;

            /* renamed from: b  reason: collision with root package name */
            public ImageView f35092b;

            /* renamed from: c  reason: collision with root package name */
            public View f35093c;

            /* renamed from: d  reason: collision with root package name */
            public TextView f35094d;

            private b() {
            }

            /* synthetic */ b(o oVar, c cVar) {
                this();
            }
        }

        public o(Context context) {
            this.f35084a = context;
        }

        public View b(int i2, View view, ViewGroup viewGroup) {
            b bVar;
            if (view == null) {
                view = this.f35085b.inflate(R.layout.simple_listview_item1, (ViewGroup) null);
                bVar = new b(this, null);
                bVar.f35094d = (TextView) view.findViewById(R.id.lv_tv_title);
                bVar.f35092b = (ImageView) view.findViewById(R.id.dotHistory);
                bVar.f35093c = view.findViewById(R.id.rlClearHistory);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            SearchAutoDataBean searchAutoDataBean = (SearchAutoDataBean) this.f35086c.get(i2);
            String game_name = searchAutoDataBean.getGame_name();
            String obj = SearchHintActivity.this.f35022i.getText().toString();
            TextView textView = bVar.f35094d;
            textView.setText(Html.fromHtml(game_name.replace(obj, "<font color=#f47500>" + obj + "</font>")), TextView.BufferType.SPANNABLE);
            if (searchAutoDataBean.getIsHistory()) {
                if (bVar.f35092b.getVisibility() != 0) {
                    bVar.f35092b.setVisibility(0);
                }
                if (bVar.f35093c.getVisibility() != 0) {
                    bVar.f35093c.setVisibility(0);
                }
                bVar.f35093c.setOnClickListener(new a(game_name, searchAutoDataBean));
            } else if (bVar.f35093c.getVisibility() != 8) {
                bVar.f35093c.setVisibility(8);
            }
            return view;
        }

        public View c(int i2, View view, ViewGroup viewGroup) {
            p pVar;
            View view2;
            if (view == null) {
                View inflate = this.f35085b.inflate(R.layout.searchauto_app_listview_item, (ViewGroup) null);
                p pVar2 = new p();
                pVar2.f35096a = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
                pVar2.f35097b = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
                pVar2.f35098c = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
                pVar2.f35099d = (RelativeLayout) inflate.findViewById(R.id.rLayoutRight);
                pVar2.f35100e = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
                pVar2.f35102g = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
                pVar2.f35103h = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
                pVar2.f35104i = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
                pVar2.f35106k = (TextView) inflate.findViewById(R.id.tipSText);
                pVar2.f35105j = (TextView) inflate.findViewById(R.id.appSize);
                pVar2.f35107l = (TextView) inflate.findViewById(R.id.loding_info);
                pVar2.f35108m = (ProgressBar) inflate.findViewById(R.id.progressBar);
                pVar2.f35109n = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
                pVar2.f35101f = inflate.findViewById(R.id.line);
                inflate.setTag(pVar2);
                pVar = pVar2;
                view2 = inflate;
            } else {
                pVar = (p) view.getTag();
                view2 = view;
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f35086c.get(i2);
            DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
            if (collectionBeanSubBusiness.getGift_package_switch() != 1) {
                pVar.f35097b.setVisibility(8);
            }
            pVar.f35098c.setText(collectionBeanSubBusiness.getGame_name());
            pVar.f35102g.setText(collectionBeanSubBusiness.getInfo());
            long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
            MyImageLoader.h(pVar.f35096a, collectionBeanSubBusiness.getIco_remote().trim());
            collectionBeanSubBusiness.getTag_info();
            TextView textView = pVar.f35106k;
            textView.setText(collectionBeanSubBusiness.getSp_tag_info().getModel().getName() + " · " + UtilsMy.Y1(parseDouble));
            String plugin_num = collectionBeanSubBusiness.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                pVar.f35100e.setText("开始");
                pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_blue_color));
                pVar.f35104i.setVisibility(8);
                pVar.f35097b.setVisibility(8);
            } else if (downloadTask == null) {
                d(pVar, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                    boolean c4 = com.join.android.app.common.utils.a.g0(this.f35084a).c(this.f35084a, collectionBeanSubBusiness.getPackage_name());
                    if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                        c4 = false;
                    }
                    if (c4) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f35084a).k(this.f35084a, collectionBeanSubBusiness.getPackage_name());
                        if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                            pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                            pVar.f35100e.setText("更新");
                            pVar.f35100e.setTextColor(-9263087);
                        } else {
                            pVar.f35100e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            pVar.f35100e.setText(this.f35084a.getResources().getString(R.string.download_status_finished));
                            pVar.f35100e.setTextColor(-688602);
                        }
                    } else {
                        pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                        UtilsMy.n2(pVar.f35100e, pVar.f35099d, collectionBeanSubBusiness);
                    }
                } else {
                    pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                    UtilsMy.n2(pVar.f35100e, pVar.f35099d, collectionBeanSubBusiness);
                }
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        pVar.f35100e.setText("暂停中");
                    } else if (status == 48) {
                        pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                        pVar.f35100e.setText("安装中");
                        pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_blue_color));
                        d(pVar, Boolean.TRUE, Boolean.FALSE);
                    } else if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                if (status != 6) {
                                    if (status != 7) {
                                        if (status != 42) {
                                            if (status != 43) {
                                                switch (status) {
                                                    case 9:
                                                        pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                                                        pVar.f35100e.setText("更新");
                                                        pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_green_color));
                                                        d(pVar, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 10:
                                                        pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        pVar.f35100e.setText("等待");
                                                        pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_blue_color));
                                                        Boolean bool = Boolean.FALSE;
                                                        d(pVar, bool, bool);
                                                        TextView textView2 = pVar.f35105j;
                                                        textView2.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        try {
                                                            pVar.f35108m.setProgress((int) downloadTask.getProgress());
                                                        } catch (Exception e4) {
                                                            e4.printStackTrace();
                                                        }
                                                        pVar.f35107l.setText("等待中");
                                                        break;
                                                    case 11:
                                                        pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                                                        pVar.f35100e.setText("安装");
                                                        pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_green_color));
                                                        d(pVar, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 12:
                                                        d(pVar, Boolean.FALSE, Boolean.TRUE);
                                                        TextView textView3 = pVar.f35105j;
                                                        textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        pVar.f35107l.setText("解压中..");
                                                        pVar.f35109n.setProgress((int) downloadTask.getProgress());
                                                        pVar.f35100e.setBackgroundResource(R.drawable.extract);
                                                        pVar.f35100e.setText("解压中");
                                                        pVar.f35100e.setTextColor(-4868683);
                                                        break;
                                                    case 13:
                                                        d(pVar, Boolean.FALSE, Boolean.TRUE);
                                                        TextView textView4 = pVar.f35105j;
                                                        textView4.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        pVar.f35107l.setText("点击重新解压");
                                                        pVar.f35109n.setProgress((int) downloadTask.getProgress());
                                                        pVar.f35100e.setBackgroundResource(R.drawable.reextract);
                                                        pVar.f35100e.setText("解压");
                                                        pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_grey_color));
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            pVar.f35100e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            pVar.f35100e.setText(this.f35084a.getResources().getString(R.string.download_status_finished));
                            pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_main_color));
                            Boolean bool2 = Boolean.TRUE;
                            d(pVar, bool2, bool2);
                        }
                        pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                        pVar.f35100e.setText("继续");
                        pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_blue_color));
                        Boolean bool3 = Boolean.FALSE;
                        d(pVar, bool3, bool3);
                        try {
                            if (downloadTask.getSize() == 0) {
                                TextView textView5 = pVar.f35105j;
                                textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                TextView textView6 = pVar.f35105j;
                                textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            pVar.f35108m.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        pVar.f35107l.setText("暂停中");
                    } else {
                        UtilsMy.C3(downloadTask);
                        pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                        pVar.f35100e.setText("暂停");
                        pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_blue_color));
                        Boolean bool4 = Boolean.FALSE;
                        d(pVar, bool4, bool4);
                        if (downloadTask.getSize() == 0) {
                            TextView textView7 = pVar.f35105j;
                            textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView8 = pVar.f35105j;
                            textView8.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        pVar.f35108m.setProgress((int) downloadTask.getProgress());
                        String speed = downloadTask.getSpeed();
                        TextView textView9 = pVar.f35107l;
                        textView9.setText(speed + "/S");
                    }
                }
                pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.n2(pVar.f35100e, pVar.f35099d, collectionBeanSubBusiness);
                pVar.f35100e.setTextColor(this.f35084a.getResources().getColor(R.color.app_blue_color));
                d(pVar, Boolean.TRUE, Boolean.FALSE);
            }
            EditText editText = SearchHintActivity.this.f35022i;
            pVar.f35099d.setOnClickListener(new l(collectionBeanSubBusiness, this.f35084a, editText != null ? editText.getText().toString() : ""));
            return view2;
        }

        void d(p pVar, Boolean bool, Boolean bool2) {
            if (bool.booleanValue()) {
                pVar.f35103h.setVisibility(8);
                pVar.f35108m.setVisibility(8);
                pVar.f35109n.setVisibility(8);
                pVar.f35104i.setVisibility(0);
                return;
            }
            pVar.f35103h.setVisibility(0);
            if (bool2.booleanValue()) {
                pVar.f35108m.setVisibility(8);
                pVar.f35109n.setVisibility(0);
            } else {
                pVar.f35109n.setVisibility(8);
                pVar.f35108m.setVisibility(0);
            }
            pVar.f35104i.setVisibility(8);
            pVar.f35102g.setVisibility(8);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f35086c.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return this.f35086c.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return this.f35086c.get(i2) instanceof SearchAutoDataBean ? 1 : 2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (getItemViewType(i2) == 1) {
                return b(i2, view, viewGroup);
            }
            return c(i2, view, viewGroup);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
        }

        public o(Context context, List<Object> list) {
            this.f35084a = context;
            this.f35086c = list;
            this.f35085b = LayoutInflater.from(context);
        }
    }
}
