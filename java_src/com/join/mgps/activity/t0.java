package com.join.mgps.activity;

import android.content.Context;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.dao.ForeignCollection;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.FightDataBean;
import com.join.mgps.dto.FightMainDataBean;
import com.join.mgps.dto.FightSubDataBean;
import com.join.mgps.dto.LoadWarCenterBean;
import com.join.mgps.dto.WarIndexDataBean;
import com.join.mgps.dto.WarIndexResultMainBean;
import com.join.mgps.helper.MGFightUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: MGFightFragment.java */
@EFragment(R.layout.mg_fight_layout)
/* loaded from: classes.dex */
public class t0 extends com.join.mgps.basefragment.a implements AbsListView.OnScrollListener {

    /* renamed from: b  reason: collision with root package name */
    private Context f38379b;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f38381d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.d f38382e;

    /* renamed from: f  reason: collision with root package name */
    private com.join.mgps.adapter.t f38383f;

    /* renamed from: g  reason: collision with root package name */
    private List<DownloadTask> f38384g;

    /* renamed from: q  reason: collision with root package name */
    private LoadWarCenterBean f38394q;

    /* renamed from: r  reason: collision with root package name */
    private long f38395r;

    /* renamed from: t  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f38397t;

    /* renamed from: u  reason: collision with root package name */
    private List<FightMainTable> f38398u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    RelativeLayout f38399v;

    /* renamed from: w  reason: collision with root package name */
    private int f38400w;

    /* renamed from: c  reason: collision with root package name */
    private String f38380c = getClass().getSimpleName();

    /* renamed from: h  reason: collision with root package name */
    private Map<String, DownloadTask> f38385h = new ConcurrentHashMap();

    /* renamed from: i  reason: collision with root package name */
    private List<FightMainTable> f38386i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f38387j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f38388k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f38389l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f38390m = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f38391n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f38392o = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f38393p = new ArrayList();

    /* renamed from: s  reason: collision with root package name */
    private boolean f38396s = false;

    /* renamed from: x  reason: collision with root package name */
    private int f38401x = 0;

    /* compiled from: MGFightFragment.java */
    /* loaded from: classes3.dex */
    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (t0.this.f38396s) {
                return;
            }
            t0.this.b0();
        }
    }

    private WarMatchAndLocalTable X(WarMatchAndLocalTable warMatchAndLocalTable) {
        if (this.f38385h != null && warMatchAndLocalTable.getCrc_link_type_val() != null) {
            if (this.f38385h.containsKey(warMatchAndLocalTable.getCrc_link_type_val())) {
                DownloadTask downloadTask = this.f38385h.get(warMatchAndLocalTable.getCrc_link_type_val());
                downloadTask.setCdn_down_switch(warMatchAndLocalTable.getCdn_down_switch());
                downloadTask.setOther_down_switch(warMatchAndLocalTable.getOther_down_switch());
                downloadTask.setPay_game_amount(warMatchAndLocalTable.getPay_game_amount());
                ForeignCollection<DownloadUrlTable> tp_down_url = warMatchAndLocalTable.getTp_down_url();
                ArrayList arrayList = new ArrayList();
                for (DownloadUrlTable downloadUrlTable : tp_down_url) {
                    arrayList.add(downloadUrlTable.getDownUrlBean());
                }
                downloadTask.setTp_down_url(arrayList);
                this.f38385h.put(warMatchAndLocalTable.getCrc_link_type_val(), downloadTask);
            } else {
                this.f38385h.put(warMatchAndLocalTable.getCrc_link_type_val(), MGFightUtils.warDataToTask(warMatchAndLocalTable));
            }
        }
        return warMatchAndLocalTable;
    }

    private void c0(DownloadTask downloadTask) {
        if (this.f38385h == null || downloadTask.getCrc_link_type_val() == null || !this.f38385h.containsKey(downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.f38385h.get(downloadTask.getCrc_link_type_val()).setStatus(0);
        this.f38385h.get(downloadTask.getCrc_link_type_val()).setSpeed("0");
        this.f38385h.get(downloadTask.getCrc_link_type_val()).setCurrentSize(0L);
        this.f38383f.notifyDataSetChanged();
    }

    private void d0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f38385h;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            map.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            boolean z3 = false;
            for (DownloadTask downloadTask2 : this.f38384g) {
                if (downloadTask.getCrc_link_type_val().equals(downloadTask2.getCrc_link_type_val())) {
                    downloadTask2.setStatus(downloadTask.getStatus());
                    z3 = true;
                    continue;
                }
                if (z3) {
                    break;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f38383f.notifyDataSetChanged();
    }

    private void e0(DownloadTask downloadTask) {
        try {
            if (this.f38385h != null && downloadTask.getCrc_link_type_val() != null) {
                if (this.f38385h.containsKey(downloadTask.getCrc_link_type_val())) {
                    this.f38385h.put(downloadTask.getCrc_link_type_val(), downloadTask);
                } else {
                    this.f38384g.add(downloadTask);
                    this.f38385h.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f38394q.setDownloadTasksMap(this.f38385h);
        this.f38383f.h(this.f38394q);
    }

    private void f0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f38385h;
        if (map == null || downloadTask == null) {
            return;
        }
        if (map != null && downloadTask.getCrc_link_type_val() != null && !this.f38385h.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f38384g.add(downloadTask);
            this.f38385h.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        if (this.f38385h.get(downloadTask.getCrc_link_type_val()) == null) {
            return;
        }
        if (this.f38385h.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f38385h.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        for (DownloadTask downloadTask2 : this.f38384g) {
            if (downloadTask.getCrc_link_type_val().equals(downloadTask2.getCrc_link_type_val())) {
                downloadTask2.setStatus(downloadTask.getStatus());
                downloadTask2.setVer(downloadTask.getVer());
                downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
                downloadTask2.setSource_ver(downloadTask.getSource_ver());
                downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
            }
        }
        this.f38383f.notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0385 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0385 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k0() {
        /*
            Method dump skipped, instructions count: 906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.t0.k0():void");
    }

    @Override // com.join.mgps.basefragment.a
    protected int N() {
        return R.layout.mg_fight_layout;
    }

    @Override // com.join.mgps.basefragment.a
    protected int O() {
        return R.id.container;
    }

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return com.join.mgps.Util.b0.a(getActivity(), 48.0f);
    }

    public CommonRequestBean Z(int i2) {
        return RequestBeanUtil.getInstance(this.f38379b).loadWarIndexRequestBean(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void a0() {
        List<FightMainTable> list;
        this.f38397t = n1.o0.n().d();
        this.f38398u = n1.r.n().d();
        List<WarMatchAndLocalTable> list2 = this.f38397t;
        if ((list2 != null && list2.size() > 0) || ((list = this.f38398u) != null && list.size() > 0)) {
            List<FightMainTable> list3 = this.f38398u;
            if (list3 != null && list3.size() > 0) {
                this.f38386i.clear();
                this.f38386i.addAll(this.f38398u);
            }
            List<WarMatchAndLocalTable> list4 = this.f38397t;
            if (list4 != null && list4.size() > 0) {
                this.f38387j.clear();
                this.f38388k.clear();
                this.f38389l.clear();
                this.f38390m.clear();
                this.f38391n.clear();
                this.f38392o.clear();
                this.f38393p.clear();
                for (int i2 = 0; i2 < this.f38397t.size(); i2++) {
                    WarMatchAndLocalTable warMatchAndLocalTable = this.f38397t.get(i2);
                    switch (warMatchAndLocalTable.getWarType()) {
                        case 0:
                            this.f38387j.add(X(warMatchAndLocalTable));
                            break;
                        case 1:
                            this.f38388k.add(X(warMatchAndLocalTable));
                            break;
                        case 2:
                            this.f38389l.add(X(warMatchAndLocalTable));
                            break;
                        case 3:
                            this.f38390m.add(X(warMatchAndLocalTable));
                            break;
                        case 4:
                            this.f38391n.add(X(warMatchAndLocalTable));
                            break;
                        case 5:
                            this.f38392o.add(X(warMatchAndLocalTable));
                            break;
                        case 6:
                            this.f38393p.add(X(warMatchAndLocalTable));
                            break;
                    }
                }
            }
            i0();
        }
        b0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f38382e = com.join.mgps.rpc.impl.c.P1();
        this.f38399v.setVisibility(8);
        this.f38379b = getActivity();
        com.join.mgps.Util.c0.a().d(this);
        com.papa.sim.statistic.p.l(this.f38379b).i2(AccountUtil_.getInstance_(getActivity()).getUid());
        com.papa.sim.statistic.p.l(this.f38379b).n2(AccountUtil_.getInstance_(getActivity()).getUid());
        List<DownloadTask> d4 = g1.f.G().d();
        this.f38384g = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f38384g) {
                this.f38385h.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f38394q = new LoadWarCenterBean();
        com.join.mgps.adapter.t tVar = new com.join.mgps.adapter.t(this);
        this.f38383f = tVar;
        this.f38381d.setAdapter((ListAdapter) tVar);
        this.f38383f.h(this.f38394q);
        this.f38381d.setOnScrollListener(this);
        this.f38381d.setPullRefreshEnable(new a());
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b0() {
        WarIndexResultMainBean<List<WarIndexDataBean>> i2;
        if (com.join.android.app.common.utils.f.j(this.f38379b)) {
            this.f38396s = true;
            new ArrayList();
            try {
                try {
                    i2 = this.f38382e.i(Z(1));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (i2 != null) {
                    List<WarIndexDataBean> data = i2.getMessages().getData();
                    if (data != null && data.size() > 0) {
                        j0(data.get(0));
                    } else {
                        h0();
                    }
                    this.f38396s = false;
                    return;
                }
                h0();
                this.f38396s = false;
                return;
            } catch (Throwable th) {
                h0();
                this.f38396s = false;
                throw th;
            }
        }
        h0();
    }

    void g0(List<FightDataBean> list, int i2) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            FightMainDataBean main = list.get(i4).getMain();
            FightSubDataBean fightSubDataBean = list.get(i4).getSub().get(0);
            if (i2 == 0) {
                FightMainTable fightMainTable = new FightMainTable();
                fightMainTable.setTitle(main.getTitle());
                fightMainTable.setLabel(main.getLabel());
                fightMainTable.setPic_remote(main.getPic_remote());
                fightMainTable.setIco_remote(main.getIco_remote());
                fightMainTable.setTitle_type(main.getTitle_type());
                fightMainTable.setMargin(main.getMargin());
                fightMainTable.setSub_title(main.getSub_title());
                fightMainTable.setModel_type(main.getModel_type());
                fightMainTable.setCrc_link_type_val(fightSubDataBean.getCrc_link_type_val());
                fightMainTable.setLink_type(fightSubDataBean.getLink_type());
                fightMainTable.setJump_type(fightSubDataBean.getJump_type());
                fightMainTable.setTpl_type(fightSubDataBean.getTpl_type());
                fightMainTable.setLink_type_val(fightSubDataBean.getLink_type_val());
                fightMainTable.setDown_status(fightSubDataBean.getGame_info().getDown_status());
                fightMainTable.setPay_game_amount((fightSubDataBean.getGame_info() == null || fightSubDataBean.getGame_info().getPay_tag_info() == null) ? 0 : fightSubDataBean.getGame_info().getPay_tag_info().getPay_game_amount());
                n1.r.n().k(fightMainTable);
                if (fightMainTable.getLink_type() == 1) {
                    WarMatchAndLocalTable warDataToTable = MGFightUtils.warDataToTable(fightSubDataBean.getGame_info());
                    warDataToTable.setWarType(i2);
                    warDataToTable.setPic_remote(main.getPic_remote());
                    if (fightSubDataBean.getGame_info() != null && fightSubDataBean.getGame_info().getPay_tag_info() != null) {
                        warDataToTable.setPay_game_amount(fightSubDataBean.getGame_info().getPay_tag_info().getPay_game_amount());
                    }
                    n1.o0.n().k(warDataToTable);
                }
            } else {
                WarMatchAndLocalTable warDataToTable2 = MGFightUtils.warDataToTable(fightSubDataBean.getGame_info());
                warDataToTable2.setWarType(i2);
                warDataToTable2.setPic_remote(main.getPic_remote());
                warDataToTable2.setMain_title(main.getTitle());
                warDataToTable2.setMain_sub_title(main.getSub_title());
                if (fightSubDataBean.getGame_info() != null && fightSubDataBean.getGame_info().getPay_tag_info() != null) {
                    warDataToTable2.setPay_game_amount(fightSubDataBean.getGame_info().getPay_tag_info().getPay_game_amount());
                }
                n1.o0.n().k(warDataToTable2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        List<FightMainTable> list;
        try {
            List<WarMatchAndLocalTable> list2 = this.f38397t;
            if ((list2 == null || list2.size() <= 0) && ((list = this.f38398u) == null || list.size() <= 0)) {
                S();
            }
            com.join.mgps.Util.i2.a(this.f38379b).b(getString(R.string.net_connect_failed));
            this.f38381d.u();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0() {
        Q();
        this.f38394q.setDownloadTasksMap(this.f38385h);
        this.f38394q.setFightMainTables(this.f38386i);
        this.f38394q.setWaradInfoDataBeans(this.f38387j);
        this.f38394q.setHotGameInfoDataBeans(this.f38388k);
        this.f38394q.setPkGameInfoDataBeans(this.f38389l);
        this.f38394q.setPkPassInfoDataBeans(this.f38390m);
        this.f38394q.setPkMatchingInfoDataBeans(this.f38391n);
        this.f38394q.setPkLocalInfoDataBeans(this.f38392o);
        this.f38394q.setPkRoomInfoDataBeans(this.f38393p);
        this.f38383f.h(this.f38394q);
        this.f38383f.notifyDataSetChanged();
        this.f38381d.u();
        this.f38381d.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void j0(WarIndexDataBean warIndexDataBean) {
        List<FightMainTable> list;
        this.f38395r = System.currentTimeMillis();
        List<FightDataBean> warad = warIndexDataBean.getWarad();
        List<FightDataBean> hotgame = warIndexDataBean.getHotgame();
        List<FightDataBean> pkgame = warIndexDataBean.getPkgame();
        List<FightDataBean> pkpass = warIndexDataBean.getPkpass();
        List<FightDataBean> pkmatching = warIndexDataBean.getPkmatching();
        List<FightDataBean> pklocal = warIndexDataBean.getPklocal();
        List<FightDataBean> pkroom = warIndexDataBean.getPkroom();
        n1.o0.n().a();
        n1.r.n().a();
        g0(warad, 0);
        g0(hotgame, 1);
        g0(pkgame, 2);
        g0(pkpass, 3);
        g0(pkmatching, 4);
        g0(pklocal, 5);
        g0(pkroom, 6);
        this.f38397t = n1.o0.n().d();
        this.f38398u = n1.r.n().d();
        List<WarMatchAndLocalTable> list2 = this.f38397t;
        if ((list2 != null && list2.size() > 0) || ((list = this.f38398u) != null && list.size() > 0)) {
            List<FightMainTable> list3 = this.f38398u;
            if (list3 != null && list3.size() > 0) {
                this.f38386i.clear();
                this.f38386i.addAll(this.f38398u);
            }
            List<WarMatchAndLocalTable> list4 = this.f38397t;
            if (list4 != null && list4.size() > 0) {
                this.f38387j.clear();
                this.f38388k.clear();
                this.f38389l.clear();
                this.f38390m.clear();
                this.f38391n.clear();
                this.f38392o.clear();
                this.f38393p.clear();
                for (int i2 = 0; i2 < this.f38397t.size(); i2++) {
                    WarMatchAndLocalTable warMatchAndLocalTable = this.f38397t.get(i2);
                    switch (warMatchAndLocalTable.getWarType()) {
                        case 0:
                            this.f38387j.add(X(warMatchAndLocalTable));
                            break;
                        case 1:
                            this.f38388k.add(X(warMatchAndLocalTable));
                            break;
                        case 2:
                            this.f38389l.add(X(warMatchAndLocalTable));
                            break;
                        case 3:
                            this.f38390m.add(X(warMatchAndLocalTable));
                            break;
                        case 4:
                            this.f38391n.add(X(warMatchAndLocalTable));
                            break;
                        case 5:
                            this.f38392o.add(X(warMatchAndLocalTable));
                            break;
                        case 6:
                            this.f38393p.add(X(warMatchAndLocalTable));
                            break;
                    }
                }
            }
            i0();
            return;
        }
        h0();
    }

    void l0(DownloadTask downloadTask, int i2) {
        if (i2 == 4) {
            Map<String, DownloadTask> map = this.f38385h;
            if (map == null || map.isEmpty()) {
                return;
            }
            k0();
        } else if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                    e0(downloadTask);
                    return;
                case 3:
                    c0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    f0(downloadTask);
                    return;
                case 6:
                    d0(downloadTask);
                    return;
            }
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected void loadData() {
        a0();
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
            l0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    l0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    a4.setStatus(7);
                    l0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    l0(a4, 4);
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            if (a4 == null) {
                                return;
                            }
                            l0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            l0(a4, 8);
                            return;
                        case 13:
                            l0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            l0(a4, 5);
        } else {
            l0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (isHidden() || System.currentTimeMillis() - this.f38395r < 7200000) {
            return;
        }
        b0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f38400w = (i4 + i2) - 1;
        this.f38401x = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }
}
