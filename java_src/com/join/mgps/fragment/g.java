package com.join.mgps.fragment;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.c;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.FirstIntentData;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.HomeGameCarefullyBean;
import com.join.mgps.dto.TodayWufunBroadcast;
import com.join.mgps.dto.TodayWufunEmuClassify;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
/* compiled from: ChoiceFragment.java */
@EFragment(R.layout.choice_fragment)
/* loaded from: classes4.dex */
public class g extends com.join.mgps.fragment.d {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f48698a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f48699b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ForumLoadingView f48700c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.d f48701d;

    /* renamed from: e  reason: collision with root package name */
    Context f48702e;
    @Pref

    /* renamed from: f  reason: collision with root package name */
    PrefDef_ f48703f;

    /* renamed from: g  reason: collision with root package name */
    String f48704g;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    XRecyclerView f48710m;

    /* renamed from: n  reason: collision with root package name */
    private com.join.mgps.adapter.c f48711n;

    /* renamed from: o  reason: collision with root package name */
    private LinearLayoutManager f48712o;

    /* renamed from: q  reason: collision with root package name */
    XRecyclerView.f f48714q;

    /* renamed from: h  reason: collision with root package name */
    private boolean f48705h = false;

    /* renamed from: i  reason: collision with root package name */
    private int f48706i = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f48707j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f48708k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f48709l = 0;

    /* renamed from: p  reason: collision with root package name */
    private List<c.i0> f48713p = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceFragment.java */
    /* loaded from: classes4.dex */
    public class a implements XRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.f.j(g.this.f48702e)) {
                g.this.showMessage("当前网络不可用!");
                g.this.f48710m.z1();
                return;
            }
            g gVar = g.this;
            gVar.W(gVar.f48708k + 1);
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            if (!com.join.android.app.common.utils.f.j(g.this.f48702e)) {
                g.this.showMessage("当前网络不可用!");
                g.this.e0();
                return;
            }
            g.this.f48710m.setLoadingMoreEnabled(true);
            g.this.V();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceFragment.java */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XRecyclerView xRecyclerView = g.this.f48710m;
            if (xRecyclerView == null) {
                return;
            }
            xRecyclerView.z1();
            g.this.f48710m.y1();
            if (g.this.f48709l == -1) {
                g.this.f48710m.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceFragment.java */
    /* loaded from: classes4.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XRecyclerView xRecyclerView = g.this.f48710m;
            if (xRecyclerView == null) {
                return;
            }
            xRecyclerView.z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceFragment.java */
    /* loaded from: classes4.dex */
    public class d extends ForumLoadingView.e {
        d(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            g.this.P(1);
            g.this.V();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceFragment.java */
    /* loaded from: classes4.dex */
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
            g.this.P(1);
            g.this.V();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceFragment.java */
    /* loaded from: classes4.dex */
    public class f extends ForumLoadingView.e {
        f(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            g.this.P(1);
            g.this.V();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceFragment.java */
    /* renamed from: com.join.mgps.fragment.g$g  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0207g extends ForumLoadingView.e {
        C0207g(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            g.this.P(1);
            g.this.V();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        this.f48709l = 0;
        this.f48708k = 0;
        com.join.mgps.adapter.c cVar = this.f48711n;
        if (cVar != null) {
            cVar.C(0);
        }
        W(1);
    }

    void J() {
        U();
        V();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P(int i2) {
        ForumLoadingView forumLoadingView = this.f48700c;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            forumLoadingView.m();
            this.f48700c.j(1);
        } else if (i2 == 2) {
            forumLoadingView.m();
            this.f48700c.j(2);
            d0();
        } else if (i2 == 4) {
            forumLoadingView.j(4);
            ForumLoadingView forumLoadingView2 = this.f48700c;
            forumLoadingView2.setListener(new d(forumLoadingView2));
            d0();
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView3 = this.f48700c;
            forumLoadingView3.setListener(new C0207g(forumLoadingView3));
            this.f48700c.j(16);
        } else if (i2 == 9) {
            forumLoadingView.j(9);
            ForumLoadingView forumLoadingView4 = this.f48700c;
            forumLoadingView4.setListener(new e(forumLoadingView4));
            this.f48700c.j(9);
        } else if (i2 != 10) {
        } else {
            forumLoadingView.setFailedMsg("没有更多精选哦~");
            ForumLoadingView forumLoadingView5 = this.f48700c;
            forumLoadingView5.setListener(new f(forumLoadingView5));
            this.f48700c.setReloadingVisibility(0);
            this.f48700c.j(10);
            this.f48700c.setFailedImgVisibility(8);
            this.f48700c.setReloadingVisibility(0);
            this.f48700c.setFailedReloadingRes(R.drawable.papa_loading_null);
        }
    }

    public int Q() {
        com.join.mgps.adapter.c cVar = this.f48711n;
        if (cVar == null) {
            return 0;
        }
        return cVar.d();
    }

    HomeGameCarefullyBean R() {
        try {
            String args2 = n1.t.p().o(ForumBean.ForumEvent.HomeGameCarefully).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return (HomeGameCarefullyBean) JsonMapper.getInstance().fromJson(args2, JsonMapper.getInstance().createCollectionType(HomeGameCarefullyBean.class, new Class[0]));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    void S() {
        this.f48711n = new com.join.mgps.adapter.c(this.f48702e, this.f48713p);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f48702e);
        this.f48712o = linearLayoutManager;
        this.f48710m.setLayoutManager(linearLayoutManager);
        this.f48710m.setAdapter(this.f48711n);
        this.f48710m.setPreLoadCount(10);
        this.f48710m.setPullRefreshEnabled(true);
        this.f48710m.setLoadingMoreEnabled(true);
        a aVar = new a();
        this.f48714q = aVar;
        this.f48710m.setLoadingListener(aVar);
    }

    void U() {
        HomeGameCarefullyBean R = R();
        c0(R, 1, 1);
        if (R != null) {
            P(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b5, code lost:
        if (r7.f48709l != (-1)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d0, code lost:
        if (r7.f48709l == (-1)) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d2, code lost:
        r7.f48709l = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d4, code lost:
        e0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void W(int r8) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.g.W(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X(HomeGameCarefullyBean homeGameCarefullyBean) {
        try {
            String json = JsonMapper.nonDefaultMapper().toJson(homeGameCarefullyBean);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.HomeGameCarefully.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(json);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            n1.t.p().u(forumTable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z() {
        com.papa.sim.statistic.p.l(getContext()).m2(Where.index, AccountUtil_.getInstance_(getActivity()).getUid());
        String charSequence = this.f48699b.getText().toString();
        IntentUtil.getInstance().goSearchHintActivity(getContext(), (TextUtils.isEmpty(charSequence) || charSequence.equals(getString(R.string.search_content_default))) ? "" : "");
    }

    public void a0(int i2) {
        com.join.mgps.adapter.c cVar = this.f48711n;
        if (cVar == null) {
            return;
        }
        cVar.C(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48702e = getActivity();
        this.f48701d = com.join.mgps.rpc.impl.c.P1();
        FirstIntentData a4 = com.join.mgps.Util.b1.a(this.f48702e);
        if (a4 != null && this.f48703f.isShowEditorRecoomand().d().booleanValue() && a4.isIntent() && a4.isCustomApk()) {
            IntentDateBean intentDateBean = a4.getIntentDateBean();
            if (a4.isAutoDownload()) {
                intentDateBean.setObject(Boolean.TRUE);
            }
            this.f48704g = intentDateBean.getCrc_link_type_val();
            this.f48705h = true;
        }
        S();
        P(1);
        if (System.currentTimeMillis() - this.f48703f.isFirstRunGameCarefullyLong().e(0L).longValue() > TimeUnit.DAYS.toMillis(1L) || this.f48705h) {
            this.f48706i = 1;
        }
        J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(HomeGameCarefullyBean homeGameCarefullyBean, int i2) {
        if (i2 == 1) {
            if (this.f48706i == 1) {
                this.f48706i = 0;
            }
            this.f48703f.isFirstRunGameCarefullyLong().g(Long.valueOf(System.currentTimeMillis()));
        }
        c0(homeGameCarefullyBean, i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0(HomeGameCarefullyBean homeGameCarefullyBean, int i2, int i4) {
        TodayWufunBroadcast editor_recommend_game;
        int i5;
        int i6;
        if (homeGameCarefullyBean == null) {
            return;
        }
        if (this.f48713p == null) {
            this.f48713p = new ArrayList();
        }
        if (i2 == 1) {
            try {
                this.f48713p.clear();
                if (this.f48703f.isShowEditorRecoomand().d().booleanValue() && homeGameCarefullyBean.getVisitor_recommend_game() != null && !TextUtils.isEmpty(homeGameCarefullyBean.getVisitor_recommend_game().getGame_id())) {
                    editor_recommend_game = homeGameCarefullyBean.getVisitor_recommend_game();
                    this.f48703f.isShowEditorRecoomand().g(Boolean.FALSE);
                    i5 = 1;
                } else {
                    editor_recommend_game = homeGameCarefullyBean.getEditor_recommend_game();
                    i5 = 0;
                }
                if (editor_recommend_game != null && !TextUtils.isEmpty(editor_recommend_game.getGame_id())) {
                    editor_recommend_game.set_from_type(101);
                    this.f48713p.add(new c.i0(1, editor_recommend_game).k(i5));
                    this.f48713p.add(new c.i0(2, editor_recommend_game));
                    if (i4 != 1) {
                        com.papa.sim.statistic.p.l(this.f48702e).e2(AccountUtil_.getInstance_(this.f48702e).getUid(), editor_recommend_game.getGame_id(), "eidtButton", "", "编辑推荐");
                    }
                }
                if (homeGameCarefullyBean.getBuy_advert_recommend() != null) {
                    TodayWufunBroadcast buy_advert_recommend = homeGameCarefullyBean.getBuy_advert_recommend();
                    buy_advert_recommend.set_from_type(102);
                    this.f48713p.add(new c.i0(1, buy_advert_recommend).k(2));
                    this.f48713p.add(new c.i0(3, buy_advert_recommend));
                    this.f48713p.add(new c.i0(4, buy_advert_recommend));
                    if (i4 != 1) {
                        com.papa.sim.statistic.p.l(this.f48702e).e2(AccountUtil_.getInstance_(this.f48702e).getUid(), buy_advert_recommend.getGame_id(), "adButton", "", "广告赞助");
                    }
                }
                if (homeGameCarefullyBean.getGame_prefecture() != null && homeGameCarefullyBean.getGame_prefecture().size() > 0) {
                    TodayWufunEmuClassify todayWufunEmuClassify = new TodayWufunEmuClassify();
                    int Q = Q();
                    for (int i7 = 0; i7 < homeGameCarefullyBean.getGame_prefecture().size(); i7++) {
                        if (Q == 0 && i7 == 0) {
                            int id = homeGameCarefullyBean.getGame_prefecture().get(i7).getId();
                            a0(id);
                            todayWufunEmuClassify = homeGameCarefullyBean.getGame_prefecture().get(i7);
                            Q = id;
                        } else if (Q == homeGameCarefullyBean.getGame_prefecture().get(i7).getId()) {
                            todayWufunEmuClassify = homeGameCarefullyBean.getGame_prefecture().get(i7);
                        }
                        TodayWufunEmuClassify todayWufunEmuClassify2 = homeGameCarefullyBean.getGame_prefecture().get(i7);
                        if (todayWufunEmuClassify2.getGame_list() != null) {
                            for (TodayWufunBroadcast todayWufunBroadcast : todayWufunEmuClassify2.getGame_list()) {
                                todayWufunBroadcast.set_from_type(103);
                            }
                        }
                    }
                    this.f48713p.add(new c.i0(0, null));
                    this.f48713p.add(new c.i0(16, homeGameCarefullyBean.getGame_prefecture()));
                    this.f48713p.add(new c.i0(17, todayWufunEmuClassify));
                }
                if (homeGameCarefullyBean.getToday_refresh() == null || (homeGameCarefullyBean.getToday_refresh().getGame_discover() == null && homeGameCarefullyBean.getToday_refresh().getGame_information() == null)) {
                    i6 = 0;
                } else {
                    HomeGameCarefullyBean.DayRecommand today_refresh = homeGameCarefullyBean.getToday_refresh();
                    this.f48713p.add(new c.i0(5, Long.valueOf(today_refresh.getAddTimes())));
                    if (today_refresh.getGame_discover() != null) {
                        today_refresh.getGame_discover().set_from_type(104);
                        String str = "1-1";
                        this.f48713p.add(new c.i0(6, today_refresh.getGame_discover()).l(str));
                        this.f48713p.add(new c.i0(7, today_refresh.getGame_discover()).l(str));
                        if (i4 != 1) {
                            com.papa.sim.statistic.p.l(this.f48702e).e2(AccountUtil_.getInstance_(this.f48702e).getUid(), today_refresh.getGame_discover() != null ? today_refresh.getGame_discover().getGame_id() : "", "todayButton", str, "今日悟饭");
                        }
                        i6 = 1;
                    } else {
                        i6 = 0;
                    }
                    if (today_refresh.getGame_information() != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("1-");
                        i6++;
                        sb.append(i6);
                        String sb2 = sb.toString();
                        this.f48713p.add(new c.i0(13, today_refresh.getGame_information()).i(2).l(sb2));
                        this.f48713p.add(new c.i0(14, today_refresh.getGame_information()).i(2).l(sb2));
                        if (i4 != 1) {
                            com.papa.sim.statistic.p.l(this.f48702e).e2(AccountUtil_.getInstance_(this.f48702e).getUid(), today_refresh.getGame_discover() != null ? today_refresh.getGame_discover().getGame_id() : "", "todayButton", sb2, "今日悟饭");
                        }
                    }
                }
                if (homeGameCarefullyBean.getCarefully_special() != null && homeGameCarefullyBean.getCarefully_special().size() > 0) {
                    this.f48713p.add(new c.i0(8, null));
                    for (int i8 = 0; i8 < homeGameCarefullyBean.getCarefully_special().size(); i8++) {
                        BannerBean bannerBean = homeGameCarefullyBean.getCarefully_special().get(i8);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("1-");
                        i6++;
                        sb3.append(i6);
                        String sb4 = sb3.toString();
                        this.f48713p.add(new c.i0(9, bannerBean).j(i8).l(sb4));
                        com.papa.sim.statistic.p.l(this.f48702e).e2(AccountUtil_.getInstance_(this.f48702e).getUid(), bannerBean.getCrc_link_type_val(), "todayButton", sb4, "精选专题");
                    }
                    this.f48713p.add(new c.i0(12, null));
                }
                if (homeGameCarefullyBean.getGame_bespeak_recommend() != null && homeGameCarefullyBean.getGame_bespeak_recommend().size() > 0) {
                    this.f48713p.add(new c.i0(10, homeGameCarefullyBean.getBespeak_list_url()));
                    for (int i9 = 0; i9 < homeGameCarefullyBean.getGame_bespeak_recommend().size(); i9++) {
                        TodayWufunBroadcast todayWufunBroadcast2 = homeGameCarefullyBean.getGame_bespeak_recommend().get(i9);
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("1-");
                        i6++;
                        sb5.append(i6);
                        String sb6 = sb5.toString();
                        this.f48713p.add(new c.i0(11, todayWufunBroadcast2).j(i9).l(sb6));
                        com.papa.sim.statistic.p.l(this.f48702e).e2(AccountUtil_.getInstance_(this.f48702e).getUid(), todayWufunBroadcast2 != null ? todayWufunBroadcast2.getGame_id() : "", "todayButton", sb6, "新游预约");
                    }
                    this.f48713p.add(new c.i0(12, null));
                }
                this.f48707j = 1;
            } catch (Exception e4) {
                e4.printStackTrace();
                e4.getMessage();
            }
        }
        if (homeGameCarefullyBean.getBefore_refresh() != null) {
            for (int i10 = 0; i10 < homeGameCarefullyBean.getBefore_refresh().size(); i10++) {
                this.f48707j++;
                HomeGameCarefullyBean.DayRecommand dayRecommand = homeGameCarefullyBean.getBefore_refresh().get(i10);
                this.f48713p.add(new c.i0(5, Long.valueOf(dayRecommand.getAddTimes())));
                if (dayRecommand.getGame_discover() != null) {
                    dayRecommand.getGame_discover().set_from_type(104);
                    String str2 = this.f48707j + "-1";
                    this.f48713p.add(new c.i0(6, dayRecommand.getGame_discover()).l(str2).m(this.f48707j));
                    this.f48713p.add(new c.i0(7, dayRecommand.getGame_discover()).l(str2).m(this.f48707j));
                    if (this.f48707j <= 7) {
                        com.papa.sim.statistic.p.l(this.f48702e).e2(AccountUtil_.getInstance_(this.f48702e).getUid(), dayRecommand.getGame_discover() != null ? dayRecommand.getGame_discover().getGame_id() : "", "todayButton", str2, "今日悟饭");
                    }
                }
                if (dayRecommand.getGame_information() != null) {
                    String str3 = this.f48707j + "-2";
                    this.f48713p.add(new c.i0(13, dayRecommand.getGame_information()).i(2).l(str3).m(this.f48707j));
                    this.f48713p.add(new c.i0(14, dayRecommand.getGame_information()).i(2).l(str3).m(this.f48707j));
                    if (this.f48707j <= 7) {
                        com.papa.sim.statistic.p.l(this.f48702e).e2(AccountUtil_.getInstance_(this.f48702e).getUid(), dayRecommand.getGame_discover() != null ? dayRecommand.getGame_discover().getGame_id() : "", "todayButton", str3, "今日悟饭");
                    }
                }
            }
        }
        this.f48711n.D(this.f48713p);
        this.f48711n.notifyDataSetChanged();
    }

    void d0() {
        XRecyclerView xRecyclerView = this.f48710m;
        if (xRecyclerView != null) {
            xRecyclerView.postDelayed(new c(), 800L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        XRecyclerView xRecyclerView = this.f48710m;
        if (xRecyclerView != null) {
            xRecyclerView.postDelayed(new b(), 800L);
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f48702e).b(str);
    }
}
