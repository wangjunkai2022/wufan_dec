package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.adapter.m5;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchGameFavoriteListBean;
import com.join.mgps.dto.SearchIntegratedBean;
import com.join.mgps.dto.SearchIntegratedFavoriteBean;
import com.join.mgps.dto.SearchPostsBean;
import com.join.mgps.dto.SearchResultAdinfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: SearchListFragment.java */
@EFragment(R.layout.fragment_search_list)
/* loaded from: classes.dex */
public class s4 extends com.join.mgps.fragment.d implements m5.g, l1.i {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    XListView2 f50267a;

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.rpc.d f50268b;

    /* renamed from: c  reason: collision with root package name */
    m5 f50269c;
    @FragmentArg

    /* renamed from: d  reason: collision with root package name */
    int f50270d;
    @FragmentArg

    /* renamed from: e  reason: collision with root package name */
    String f50271e;

    /* renamed from: h  reason: collision with root package name */
    int f50274h;

    /* renamed from: i  reason: collision with root package name */
    int f50275i;

    /* renamed from: j  reason: collision with root package name */
    int f50276j;

    /* renamed from: l  reason: collision with root package name */
    int f50278l;

    /* renamed from: m  reason: collision with root package name */
    private Context f50279m;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    View f50281o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    View f50282p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    View f50283q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f50284r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f50285s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f50286t;
    @FragmentArg

    /* renamed from: f  reason: collision with root package name */
    String f50272f = "";

    /* renamed from: g  reason: collision with root package name */
    List<m5.o> f50273g = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    int f50277k = 10;

    /* renamed from: n  reason: collision with root package name */
    private boolean f50280n = false;

    /* renamed from: u  reason: collision with root package name */
    List<DownloadTask> f50287u = new ArrayList();

    /* renamed from: v  reason: collision with root package name */
    Map<String, DownloadTask> f50288v = new ConcurrentHashMap();

    /* renamed from: w  reason: collision with root package name */
    private int f50289w = 0;

    /* renamed from: x  reason: collision with root package name */
    private int f50290x = 0;

    /* compiled from: SearchListFragment.java */
    /* loaded from: classes4.dex */
    class a implements AbsListView.OnScrollListener {
        a() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
            s4.this.f50289w = (i4 + i2) - 1;
            s4.this.f50290x = i2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
        }
    }

    /* compiled from: SearchListFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            s4.this.S();
        }
    }

    /* compiled from: SearchListFragment.java */
    /* loaded from: classes4.dex */
    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            s4.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListFragment.java */
    /* loaded from: classes4.dex */
    public class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            s4.this.S();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListFragment.java */
    /* loaded from: classes4.dex */
    public class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            s4.this.J();
        }
    }

    private void a0(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f50287u.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f50288v.remove(next.getCrc_link_type_val());
                it2.remove();
                for (m5.o oVar : this.f50273g) {
                    if (oVar.f42931a == 7) {
                        CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) oVar.f42932b;
                        if (collectionBeanSubBusiness.getMod_info() != null) {
                            DownloadTask downloadTask2 = this.f50288v.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                            DownloadTask downloadTask3 = this.f50288v.get(collectionBeanSubBusiness.getGame_id());
                            if (downloadTask2 == null && downloadTask3 == null) {
                                collectionBeanSubBusiness.setDownloadTask(null);
                            } else if (downloadTask2 != null) {
                                collectionBeanSubBusiness.setDownloadTask(downloadTask2);
                            } else if (downloadTask3 != null) {
                                collectionBeanSubBusiness.setDownloadTask(downloadTask3);
                            } else if (collectionBeanSubBusiness.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                collectionBeanSubBusiness.setDownloadTask(null);
                            }
                        } else if (collectionBeanSubBusiness.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(null);
                        }
                    }
                }
            }
        }
        Z();
    }

    private void b0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50288v;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            Z();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void c0(DownloadTask downloadTask) {
        UtilsMy.D3(this.f50287u);
        if (!this.f50288v.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50287u.add(downloadTask);
            this.f50288v.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        l0(downloadTask);
        Z();
    }

    private void d0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50288v;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50287u.add(downloadTask);
            this.f50288v.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        l0(downloadTask);
        DownloadTask downloadTask2 = this.f50288v.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        Z();
    }

    private void i0(ForumBean.ForumSearchQueryBean forumSearchQueryBean) {
        R();
        boolean z3 = true;
        if (forumSearchQueryBean.getSubject() != null && !com.join.mgps.Util.d2.h(forumSearchQueryBean.getSubject().trim())) {
            this.f50273g.add(new m5.o(1, forumSearchQueryBean));
            z3 = false;
        }
        if (!com.join.mgps.Util.d2.h(forumSearchQueryBean.getMessage()) && !com.join.mgps.Util.d2.h(forumSearchQueryBean.getMessage().trim())) {
            forumSearchQueryBean.setShowDivider(z3);
            this.f50273g.add(new m5.o(2, forumSearchQueryBean));
        }
        this.f50273g.add(new m5.o(3, forumSearchQueryBean));
    }

    private void l0(DownloadTask downloadTask) {
        try {
            for (m5.o oVar : this.f50273g) {
                if (oVar.f42931a == 7) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) oVar.f42932b;
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask2 = this.f50288v.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.f50288v.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z3 = false;
                        }
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
            this.f50269c.I(this.f50273g);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void m0(List<CollectionBeanSubBusiness> list) {
        if (this.f50287u == null) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            for (DownloadTask downloadTask : this.f50287u) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f50288v.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f50288v.get(mod_info.getMod_game_id());
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
                } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                }
            }
        }
    }

    private void n0() {
        DownloadTask downloadTask;
        Object itemAtPosition;
        if (this.f50290x < 0 || this.f50289w >= this.f50267a.getCount()) {
            return;
        }
        for (int i2 = this.f50290x; i2 <= this.f50289w; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = null;
            try {
                itemAtPosition = this.f50267a.getItemAtPosition(i2);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (CollectionBeanSubBusiness.class.isInstance(itemAtPosition)) {
                collectionBeanSubBusiness = (CollectionBeanSubBusiness) itemAtPosition;
                if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f50267a.getChildAt(i2 - this.f50290x);
                    if (childAt.getTag() instanceof m5.t) {
                        m5.t tVar = (m5.t) childAt.getTag();
                        try {
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                            if (f4 == null) {
                                return;
                            }
                            long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTask.getSize() == 0) {
                                TextView textView = tVar.f42963j;
                                textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                TextView textView2 = tVar.f42963j;
                                textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            if (downloadTask.getStatus() == 12) {
                                tVar.f42966m.setProgress((int) f4.getProgress());
                            } else {
                                tVar.f42965l.setProgress((int) f4.getProgress());
                            }
                            if (downloadTask.getStatus() == 2) {
                                TextView textView3 = tVar.f42964k;
                                textView3.setText(f4.getSpeed() + "/S");
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    @Override // l1.i
    public void J() {
        this.f50276j = 0;
        this.f50278l = 0;
        XListView2 xListView2 = this.f50267a;
        if (xListView2 != null) {
            xListView2.setPullLoadEnable(new d());
            this.f50267a.setPullRefreshEnable(new e());
            if (this.f50273g.size() != 0) {
                this.f50267a.smoothScrollToPosition(0);
            }
        }
        Context context = this.f50279m;
        if (context != null && (context instanceof SearchListActivity1)) {
            this.f50274h = ((SearchListActivity1) context).M0();
            this.f50275i = ((SearchListActivity1) this.f50279m).L0();
            this.f50271e = ((SearchListActivity1) this.f50279m).getGameId();
        }
        this.f50273g.clear();
        showLoadingView();
        this.f50272f = R();
        X();
        int i2 = this.f50270d;
        if (i2 == 0) {
            U(1);
        } else if (i2 == 2) {
            V(1);
        } else if (i2 != 3) {
        } else {
            W(1);
        }
    }

    void M(Context context, String str, String str2, String str3, String str4) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, GameDetailActivity_.class);
        intent.putExtra("fromid", str);
        intent.putExtra(DownloadMethodPromptDialog_.F, 11102);
        intent.putExtra("groupuid", TextUtils.isEmpty(str2) ? 0 : Integer.parseInt(str2));
        intent.putExtra("gameid", str3);
        intent.putExtra("company_id", str4);
        context.startActivity(intent);
    }

    List<CollectionBeanSubBusiness> P(List<CollectionBeanSubBusiness> list, SearchResultAdinfo searchResultAdinfo) {
        if (searchResultAdinfo != null) {
            this.f50269c.G(searchResultAdinfo);
        }
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(list);
            if (searchResultAdinfo != null) {
                try {
                    arrayList2.add(searchResultAdinfo.getPosition(), new CollectionBeanSubBusiness(searchResultAdinfo.getGame_info()));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                if (searchResultAdinfo != null && i2 == searchResultAdinfo.getPosition()) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness((CollectionBeanSub) arrayList2.get(i2));
                    collectionBeanSubBusiness.setViewType(2);
                    arrayList.add(collectionBeanSubBusiness);
                    ((CollectionBeanSubBusiness) arrayList2.get(i2)).setAd(true);
                    arrayList.add((CollectionBeanSubBusiness) arrayList2.get(i2));
                    if ((((CollectionBeanSubBusiness) arrayList2.get(i2)).getPic_info() != null && ((CollectionBeanSubBusiness) arrayList2.get(i2)).getPic_info().size() > 0) || (com.join.mgps.Util.d2.i(((CollectionBeanSubBusiness) arrayList2.get(i2)).getVedio_cover_pic()) && com.join.mgps.Util.d2.i(((CollectionBeanSubBusiness) arrayList2.get(i2)).getVedio_url()))) {
                        CollectionBeanSubBusiness collectionBeanSubBusiness2 = new CollectionBeanSubBusiness((CollectionBeanSub) arrayList2.get(i2));
                        collectionBeanSubBusiness2.setViewType(1);
                        arrayList.add(collectionBeanSubBusiness2);
                    }
                } else {
                    arrayList.add((CollectionBeanSubBusiness) arrayList2.get(i2));
                    if ((((CollectionBeanSubBusiness) arrayList2.get(i2)).getPic_info() != null && ((CollectionBeanSubBusiness) arrayList2.get(i2)).getPic_info().size() > 0) || (com.join.mgps.Util.d2.i(((CollectionBeanSubBusiness) arrayList2.get(i2)).getVedio_cover_pic()) && com.join.mgps.Util.d2.i(((CollectionBeanSubBusiness) arrayList2.get(i2)).getVedio_url()))) {
                        CollectionBeanSubBusiness collectionBeanSubBusiness3 = new CollectionBeanSubBusiness((CollectionBeanSub) arrayList2.get(i2));
                        collectionBeanSubBusiness3.setViewType(1);
                        arrayList.add(collectionBeanSubBusiness3);
                    }
                }
            }
        }
        return arrayList;
    }

    boolean Q(String str) {
        Context context = this.f50279m;
        if (context == null || !(context instanceof SearchListActivity1)) {
            return false;
        }
        return ((SearchListActivity1) context).R0(str);
    }

    String R() {
        Context context = this.f50279m;
        return (context == null || !(context instanceof SearchListActivity1)) ? "" : ((SearchListActivity1) context).S0();
    }

    void S() {
        Context context = this.f50279m;
        if (context != null && (context instanceof SearchListActivity1)) {
            this.f50274h = ((SearchListActivity1) context).M0();
            this.f50275i = ((SearchListActivity1) this.f50279m).L0();
        }
        int i2 = this.f50270d;
        if (i2 == 0) {
            U(this.f50276j + 1);
        } else if (i2 == 2) {
            V(this.f50276j + 1);
        } else if (i2 != 3) {
        } else {
            W(this.f50276j + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d
    @UiThread
    public void T(String str) {
        com.join.mgps.Util.i2.a(this.f50279m).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U(int i2) {
        List<m5.o> list;
        if (com.join.android.app.common.utils.f.j(this.f50279m)) {
            int i4 = this.f50278l;
            if (i2 != i4) {
                if (i4 == -1) {
                    return;
                }
                this.f50278l = i2;
                showLoadingView();
                try {
                    try {
                        try {
                            ResultMainBean<SearchIntegratedBean> D1 = this.f50268b.D1(RequestBeanUtil.getInstance(this.f50279m).getSearchIntegratedRequestBean(R(), i2, this.f50277k, this.f50274h, this.f50275i, this.f50271e));
                            if (D1 != null && D1.getFlag() == 1 && D1.getMessages() != null && D1.getMessages().getData() != null) {
                                g0(D1.getMessages().getData(), i2);
                            }
                            hideLoading();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                            showLoadFailed();
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    return;
                } finally {
                    this.f50278l = -1;
                    k0();
                }
            }
            return;
        }
        if (i2 == 1 && ((list = this.f50273g) == null || list.size() == 0)) {
            showLoadFailed();
        }
        Context context = this.f50279m;
        if (context != null) {
            T(context.getResources().getString(R.string.net_connect_failed));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a5, code lost:
        if (r4 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b2, code lost:
        if (r4 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b4, code lost:
        r11.f50278l = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b7, code lost:
        r11.f50276j = r12;
        r11.f50278l = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bb, code lost:
        k0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0077 A[Catch: Exception -> 0x009b, all -> 0x00bf, TRY_ENTER, TryCatch #2 {Exception -> 0x009b, blocks: (B:27:0x0077, B:32:0x0097, B:30:0x0088), top: B:73:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v28 */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void V(int r12) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.s4.V(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bd, code lost:
        if (r4 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ca, code lost:
        if (r4 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00cc, code lost:
        r11.f50278l = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00cf, code lost:
        r11.f50276j = r12;
        r11.f50278l = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d3, code lost:
        k0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:?, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008f A[Catch: Exception -> 0x00b3, all -> 0x00d7, TRY_ENTER, TryCatch #2 {all -> 0x00d7, blocks: (B:29:0x008f, B:34:0x00af, B:32:0x00a0, B:40:0x00b7, B:49:0x00c7), top: B:75:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009d  */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v33 */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void W(int r12) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.s4.W(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X() {
        String n02 = com.join.mgps.Util.i0.n0(this.f50270d + "");
        if (TextUtils.isEmpty(n02)) {
            return;
        }
        int i2 = this.f50270d;
        if (i2 == 0) {
            SearchIntegratedBean searchIntegratedBean = (SearchIntegratedBean) JsonMapper.getInstance().fromJson(n02, SearchIntegratedBean.class);
            if (TextUtils.isEmpty(searchIntegratedBean.getKeyword()) || !searchIntegratedBean.getKeyword().equals(R())) {
                return;
            }
            g0(searchIntegratedBean, 1);
            hideLoading();
        } else if (i2 == 2) {
            SearchGameFavoriteListBean searchGameFavoriteListBean = (SearchGameFavoriteListBean) JsonMapper.getInstance().fromJson(n02, SearchGameFavoriteListBean.class);
            if (TextUtils.isEmpty(searchGameFavoriteListBean.getKeyword()) || !searchGameFavoriteListBean.getKeyword().equals(R())) {
                return;
            }
            f0(searchGameFavoriteListBean, 1);
            hideLoading();
        } else if (i2 == 3) {
            SearchPostsBean searchPostsBean = (SearchPostsBean) JsonMapper.getInstance().fromJson(n02, SearchPostsBean.class);
            if (TextUtils.isEmpty(searchPostsBean.getKeyword()) || !searchPostsBean.getKeyword().equals(R())) {
                return;
            }
            h0(searchPostsBean, 1);
            hideLoading();
        }
    }

    void Z() {
        m5 m5Var = this.f50269c;
        if (m5Var != null) {
            m5Var.L(R());
            this.f50269c.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50279m = getActivity();
        this.f50268b = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        m5 m5Var = new m5(this.f50279m);
        this.f50269c = m5Var;
        m5Var.F(this);
        this.f50269c.L(R());
        this.f50267a.setOnScrollListener(new a());
        this.f50267a.setAdapter((ListAdapter) this.f50269c);
        this.f50267a.setPreLoadCount(5);
        e0();
        J();
        this.f50280n = true;
    }

    @Override // com.join.mgps.adapter.m5.g
    public void b(String str) {
    }

    @Override // com.join.mgps.adapter.m5.g
    public void c(String str) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(Integer.parseInt(str));
        com.join.mgps.Util.i0.v0(this.f50279m, forumPostsBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e0() {
        List<DownloadTask> d4 = g1.f.G().d();
        this.f50287u = d4;
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f50287u) {
            if (downloadTask.getCrc_link_type_val() != null) {
                this.f50288v.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0(SearchGameFavoriteListBean searchGameFavoriteListBean, int i2) {
        if (searchGameFavoriteListBean == null) {
            return;
        }
        if (i2 == 1) {
            this.f50273g.clear();
            if (!TextUtils.isEmpty(this.f50271e)) {
                this.f50273g.add(new m5.o(5, R()));
            }
            searchGameFavoriteListBean.setKeyword(this.f50272f);
            com.join.mgps.Util.i0.t1(PayCenterOrderRequest.PAY_TYPE_RECHARGE, JsonMapper.toJsonString(searchGameFavoriteListBean));
        }
        if (searchGameFavoriteListBean.getList() != null && searchGameFavoriteListBean.getList().size() != 0) {
            for (SearchIntegratedFavoriteBean.FavoriteBean favoriteBean : searchGameFavoriteListBean.getList()) {
                this.f50273g.add(new m5.o(6, favoriteBean));
            }
        } else {
            this.f50273g.add(new m5.o(11, 2));
            if (searchGameFavoriteListBean.getRecommend_list() != null && searchGameFavoriteListBean.getRecommend_list().size() != 0) {
                for (SearchIntegratedFavoriteBean.FavoriteBean favoriteBean2 : searchGameFavoriteListBean.getRecommend_list()) {
                    this.f50273g.add(new m5.o(6, favoriteBean2));
                }
            }
        }
        this.f50269c.I(this.f50273g);
        if (this.f50269c != null) {
            Z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0(SearchIntegratedBean searchIntegratedBean, int i2) {
        if (i2 == 1) {
            this.f50273g.clear();
            if (searchIntegratedBean != null) {
                searchIntegratedBean.setKeyword(this.f50272f);
            }
            com.join.mgps.Util.i0.t1("0", JsonMapper.toJsonString(searchIntegratedBean));
        }
        if (searchIntegratedBean != null) {
            this.f50273g.add(new m5.o(10, 1));
            if (searchIntegratedBean.getGame_list() != null) {
                if (searchIntegratedBean.getGame_list().getAd_info() != null) {
                    this.f50269c.G(searchIntegratedBean.getGame_list().getAd_info());
                    CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(searchIntegratedBean.getGame_list().getAd_info().getGame_info());
                    int i4 = this.f50270d;
                    if (i4 == 0) {
                        collectionBeanSubBusiness.setReMarks("1");
                    } else if (i4 == 1) {
                        collectionBeanSubBusiness.setReMarks(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    }
                    for (DownloadTask downloadTask : this.f50287u) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    }
                    collectionBeanSubBusiness.set_from(147);
                    collectionBeanSubBusiness.set_from_type(147);
                    this.f50273g.add(new m5.o(9, collectionBeanSubBusiness));
                    this.f50273g.add(new m5.o(7, collectionBeanSubBusiness));
                    if ((collectionBeanSubBusiness.getPic_info() != null && collectionBeanSubBusiness.getPic_info().size() > 0) || (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVedio_cover_pic()) && com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVedio_url()))) {
                        new CollectionBeanSubBusiness(collectionBeanSubBusiness).setViewType(1);
                        this.f50273g.add(new m5.o(8, collectionBeanSubBusiness));
                    }
                }
                if (searchIntegratedBean.getGame_list().getList() == null || searchIntegratedBean.getGame_list().getList().size() == 0) {
                    this.f50273g.add(new m5.o(11, 1));
                    if (searchIntegratedBean.getGame_list().getRecommend_list() != null && searchIntegratedBean.getGame_list().getRecommend_list().size() != 0) {
                        m0(searchIntegratedBean.getGame_list().getRecommend_list());
                        for (CollectionBeanSubBusiness collectionBeanSubBusiness2 : searchIntegratedBean.getGame_list().getRecommend_list()) {
                            collectionBeanSubBusiness2.set_from(103);
                            collectionBeanSubBusiness2.set_from_type(112);
                            int i5 = this.f50270d;
                            if (i5 == 0) {
                                collectionBeanSubBusiness2.setReMarks("1");
                            } else if (i5 == 1) {
                                collectionBeanSubBusiness2.setReMarks(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                            }
                            this.f50273g.add(new m5.o(7, collectionBeanSubBusiness2).a(true));
                        }
                    }
                } else {
                    m0(searchIntegratedBean.getGame_list().getList());
                    if (searchIntegratedBean.getGame_list().getList() != null && searchIntegratedBean.getGame_list().getList().size() != 0) {
                        for (CollectionBeanSubBusiness collectionBeanSubBusiness3 : searchIntegratedBean.getGame_list().getList()) {
                            collectionBeanSubBusiness3.set_from(103);
                            collectionBeanSubBusiness3.set_from_type(112);
                            int i6 = this.f50270d;
                            if (i6 == 0) {
                                collectionBeanSubBusiness3.setReMarks("1");
                            } else if (i6 == 1) {
                                collectionBeanSubBusiness3.setReMarks(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                            }
                            this.f50273g.add(new m5.o(7, collectionBeanSubBusiness3).a(true));
                        }
                    }
                    if (searchIntegratedBean.getGame_list().getList().size() >= 5) {
                        this.f50273g.add(new m5.o(12, 1));
                    }
                }
            }
            this.f50273g.add(new m5.o(10, 2));
            if (searchIntegratedBean.getGame_favorite_list() != null) {
                if (searchIntegratedBean.getGame_favorite_list().getList() != null && searchIntegratedBean.getGame_favorite_list().getList().size() != 0) {
                    for (SearchIntegratedFavoriteBean.FavoriteBean favoriteBean : searchIntegratedBean.getGame_favorite_list().getList()) {
                        this.f50273g.add(new m5.o(6, favoriteBean));
                    }
                    if (searchIntegratedBean.getGame_favorite_list().getList().size() >= 5) {
                        this.f50273g.add(new m5.o(12, 2));
                    }
                } else {
                    this.f50273g.add(new m5.o(11, 2));
                    if (searchIntegratedBean.getGame_favorite_list().getRecommend_list() != null && searchIntegratedBean.getGame_favorite_list().getRecommend_list().size() != 0) {
                        for (SearchIntegratedFavoriteBean.FavoriteBean favoriteBean2 : searchIntegratedBean.getGame_favorite_list().getRecommend_list()) {
                            this.f50273g.add(new m5.o(6, favoriteBean2));
                        }
                    }
                }
            }
            if ((searchIntegratedBean.getPosts_list() != null && searchIntegratedBean.getPosts_list().getList() != null && searchIntegratedBean.getPosts_list().getList().size() != 0) || searchIntegratedBean.getPosts_list().getTop_area() != null) {
                this.f50273g.add(new m5.o(10, 3));
                if (searchIntegratedBean.getPosts_list().getTop_area() != null) {
                    this.f50273g.add(new m5.o(4, searchIntegratedBean.getPosts_list().getTop_area()));
                }
                if (searchIntegratedBean.getPosts_list().getList() != null) {
                    for (ForumBean.ForumSearchQueryBean forumSearchQueryBean : searchIntegratedBean.getPosts_list().getList()) {
                        i0(forumSearchQueryBean);
                    }
                    if (searchIntegratedBean.getPosts_list().getList().size() >= 5) {
                        this.f50273g.add(new m5.o(12, 3));
                    }
                }
            } else if (searchIntegratedBean.getPosts_list().getRecommend_list() != null && searchIntegratedBean.getPosts_list().getRecommend_list().size() != 0) {
                this.f50273g.add(new m5.o(10, 3));
                this.f50273g.add(new m5.o(11, 3));
                for (ForumBean.ForumSearchQueryBean forumSearchQueryBean2 : searchIntegratedBean.getPosts_list().getRecommend_list()) {
                    i0(forumSearchQueryBean2);
                }
            }
            this.f50269c.I(this.f50273g);
            if (this.f50269c != null) {
                Z();
            }
            XListView2 xListView2 = this.f50267a;
            if (xListView2 != null) {
                xListView2.requestLayout();
                return;
            }
            return;
        }
        this.f50269c.I(this.f50273g);
        if (this.f50269c != null) {
            Z();
        }
    }

    @Override // com.join.mgps.adapter.m5.g
    public void h(String str) {
        com.papa.sim.statistic.p.l(this.f50279m).b0(this.f50270d == 0 ? "searchTotalList" : "searchGameList", str, AccountUtil_.getInstance_(this.f50279m).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0(SearchPostsBean searchPostsBean, int i2) {
        if (searchPostsBean == null) {
            return;
        }
        if (i2 == 1) {
            this.f50273g.clear();
            searchPostsBean.setKeyword(this.f50272f);
            com.join.mgps.Util.i0.t1("3", JsonMapper.toJsonString(searchPostsBean));
        }
        if ((searchPostsBean.getPosts_list() != null && searchPostsBean.getPosts_list().getList() != null && searchPostsBean.getPosts_list().getList().size() != 0) || searchPostsBean.getPosts_list().getTop_area() != null) {
            if (searchPostsBean.getPosts_list().getTop_area() != null && i2 == 1) {
                this.f50273g.add(new m5.o(4, searchPostsBean.getPosts_list().getTop_area()));
            }
            if (searchPostsBean.getPosts_list().getList() != null) {
                for (ForumBean.ForumSearchQueryBean forumSearchQueryBean : searchPostsBean.getPosts_list().getList()) {
                    i0(forumSearchQueryBean);
                }
            }
        } else {
            this.f50273g.add(new m5.o(11, 3));
            if (searchPostsBean.getPosts_list().getRecommend_list() != null) {
                for (ForumBean.ForumSearchQueryBean forumSearchQueryBean2 : searchPostsBean.getPosts_list().getRecommend_list()) {
                    i0(forumSearchQueryBean2);
                }
            }
        }
        this.f50269c.I(this.f50273g);
        if (this.f50269c != null) {
            Z();
        }
        XListView2 xListView2 = this.f50267a;
        if (xListView2 != null) {
            xListView2.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        View view = this.f50281o;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f50282p;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        XListView2 xListView2 = this.f50267a;
        if (xListView2 != null) {
            xListView2.setVisibility(0);
        }
    }

    @Override // com.join.mgps.adapter.m5.g
    public void i(String str) {
        com.papa.sim.statistic.p.l(this.f50279m).D(this.f50270d == 0 ? "searchTotalList" : "searchGameList", str, AccountUtil_.getInstance_(this.f50279m).getUid());
    }

    public void j0(int i2) {
        this.f50270d = i2;
        if (i2 == 0) {
            this.f50267a.d();
        } else {
            this.f50267a.setPullLoadEnable(new b());
            this.f50267a.setPullRefreshEnable(new c());
        }
        J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k0() {
        XListView2 xListView2 = this.f50267a;
        if (xListView2 == null) {
            return;
        }
        if (this.f50278l == -1) {
            xListView2.setNoMore();
        } else {
            xListView2.t();
        }
    }

    @Override // com.join.mgps.adapter.m5.g
    public void l(Context context, String str, String str2, String str3, String str4) {
        String str5 = !TextUtils.isEmpty(this.f50271e) ? "fromSearchP2" : "fromSearchP3";
        if (this.f50270d == 0) {
            str5 = "fromSearchP4";
        }
        M(context, str, str2, str3, str4);
        com.papa.sim.statistic.p.l(context).g0(str5, str, str2);
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    void o0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    c0(downloadTask);
                    return;
                case 3:
                    a0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    d0(downloadTask);
                    return;
                case 6:
                    b0(downloadTask);
                    return;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            o0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    o0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    a4.setStatus(7);
                    o0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.f50288v;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    n0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            if (a4 == null) {
                                return;
                            }
                            o0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            o0(a4, 8);
                            return;
                        case 13:
                            o0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            o0(a4, 5);
        } else {
            o0(a4, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.d
    public void onVisible() {
        super.onVisible();
        if (this.f50280n && Q(this.f50272f)) {
            J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f50279m);
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadingView() {
        if (this.f50273g.size() > 0) {
            XListView2 xListView2 = this.f50267a;
            if (xListView2 != null && xListView2.getVisibility() == 8) {
                this.f50267a.setVisibility(0);
            }
            View view = this.f50281o;
            if (view != null && view.getVisibility() == 0) {
                this.f50281o.setVisibility(8);
            }
        } else {
            XListView2 xListView22 = this.f50267a;
            if (xListView22 != null) {
                xListView22.setVisibility(8);
            }
            View view2 = this.f50281o;
            if (view2 != null) {
                view2.setVisibility(0);
            }
        }
        View view3 = this.f50282p;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadFailed(String str) {
        XListView2 xListView2 = this.f50267a;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
        View view = this.f50281o;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f50282p;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }
}
