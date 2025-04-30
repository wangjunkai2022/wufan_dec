package com.join.mgps.activity;

import android.content.Context;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.i;
import com.join.mgps.adapter.p5;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SimulatorAreaDataBean;
import com.join.mgps.enums.ConstantIntEnum;
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
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_simulator_area)
/* loaded from: classes.dex */
public class SimulatorAreaActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f35634b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f35635c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f35636d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f35637e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f35638f;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: g  reason: collision with root package name */
    CustomerDownloadView f35639g;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    String f35641i;

    /* renamed from: l  reason: collision with root package name */
    List<DownloadTask> f35644l;

    /* renamed from: n  reason: collision with root package name */
    private com.join.mgps.rpc.impl.c f35646n;

    /* renamed from: o  reason: collision with root package name */
    private p5 f35647o;

    /* renamed from: a  reason: collision with root package name */
    private Context f35633a = this;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    int f35640h = ConstantIntEnum.FBA.value();

    /* renamed from: j  reason: collision with root package name */
    Map<String, DownloadTask> f35642j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    Map<String, DownloadTask> f35643k = new HashMap();

    /* renamed from: m  reason: collision with root package name */
    private Map<String, DownloadTask> f35645m = new ConcurrentHashMap();

    /* renamed from: p  reason: collision with root package name */
    private List<p5.g> f35648p = new ArrayList();

    /* renamed from: q  reason: collision with root package name */
    private int f35649q = 1;

    /* renamed from: r  reason: collision with root package name */
    private String f35650r = "m1";

    /* renamed from: s  reason: collision with root package name */
    private boolean f35651s = false;

    /* renamed from: t  reason: collision with root package name */
    private int f35652t = 0;

    /* renamed from: u  reason: collision with root package name */
    private int f35653u = 0;

    /* renamed from: v  reason: collision with root package name */
    private List<Map<String, Object>> f35654v = null;

    /* renamed from: w  reason: collision with root package name */
    private List<SimulatorAreaDataBean.GameTypeBean> f35655w = new ArrayList();

    /* renamed from: x  reason: collision with root package name */
    int f35656x = 0;

    /* renamed from: y  reason: collision with root package name */
    int f35657y = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (SimulatorAreaActivity.this.f35651s) {
                return;
            }
            SimulatorAreaActivity.this.f35650r = "m2";
            SimulatorAreaActivity simulatorAreaActivity = SimulatorAreaActivity.this;
            simulatorAreaActivity.I0(simulatorAreaActivity.f35650r, SimulatorAreaActivity.this.f35649q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (SimulatorAreaActivity.this.f35651s) {
                return;
            }
            SimulatorAreaActivity.this.f35649q = 1;
            SimulatorAreaActivity.this.f35650r = "m1";
            SimulatorAreaActivity simulatorAreaActivity = SimulatorAreaActivity.this;
            simulatorAreaActivity.I0(simulatorAreaActivity.f35650r, 1);
        }
    }

    private void P0(SimulatorAreaDataBean simulatorAreaDataBean) {
        List<DownloadTask> list;
        if (simulatorAreaDataBean == null || (list = this.f35644l) == null || list.size() == 0) {
            return;
        }
        List<CollectionBeanSubBusiness> top_5 = simulatorAreaDataBean.getTop_5();
        if (top_5 != null && top_5.size() > 0) {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : top_5) {
                Iterator<DownloadTask> it2 = this.f35644l.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        DownloadTask next = it2.next();
                        if (collectionBeanSubBusiness.getMod_info() != null) {
                            ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                            DownloadTask downloadTask = this.f35645m.get(mod_info.getMain_game_id());
                            boolean z3 = true;
                            boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                            DownloadTask downloadTask2 = this.f35645m.get(mod_info.getMod_game_id());
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
        List<CollectionBeanSubBusiness> the_new_release = simulatorAreaDataBean.getThe_new_release();
        if (the_new_release != null && the_new_release.size() > 0) {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness2 : the_new_release) {
                Iterator<DownloadTask> it3 = this.f35644l.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        DownloadTask next2 = it3.next();
                        if (next2.getCrc_link_type_val().equals(collectionBeanSubBusiness2.getCrc_sign_id())) {
                            collectionBeanSubBusiness2.setDownloadTask(next2);
                            break;
                        }
                    }
                }
            }
        }
        List<SimulatorAreaDataBean.CollectionRecommendBean> collection_recommend = simulatorAreaDataBean.getCollection_recommend();
        if (collection_recommend == null || collection_recommend.size() <= 0) {
            return;
        }
        for (SimulatorAreaDataBean.CollectionRecommendBean collectionRecommendBean : collection_recommend) {
            List<CollectionBeanSubBusiness> game_list = collectionRecommendBean.getGame_list();
            if (game_list != null && game_list.size() > 0) {
                for (CollectionBeanSubBusiness collectionBeanSubBusiness3 : game_list) {
                    Iterator<DownloadTask> it4 = this.f35644l.iterator();
                    while (true) {
                        if (it4.hasNext()) {
                            DownloadTask next3 = it4.next();
                            if (next3.getCrc_link_type_val().equals(collectionBeanSubBusiness3.getCrc_sign_id())) {
                                collectionBeanSubBusiness3.setDownloadTask(next3);
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f35644l.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f35645m.remove(next.getCrc_link_type_val());
                it2.remove();
                for (p5.g gVar : this.f35648p) {
                    if (gVar.f43284b == 2) {
                        CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) gVar.f43283a;
                        if (collectionBeanSubBusiness.getMod_info() != null) {
                            DownloadTask downloadTask2 = this.f35645m.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                            DownloadTask downloadTask3 = this.f35645m.get(collectionBeanSubBusiness.getGame_id());
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
        }
        this.f35647o.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f35645m;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f35647o.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.f35644l, downloadTask);
        Map<String, DownloadTask> map = this.f35645m;
        if (map != null) {
            if (map.containsKey(downloadTask.getCrc_link_type_val())) {
                this.f35645m.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                this.f35644l.add(downloadTask);
                for (p5.g gVar : this.f35648p) {
                    if (gVar.f43284b == 2) {
                        CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) gVar.f43283a;
                        if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    }
                }
                this.f35645m.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f35647o.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f35645m;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f35644l.add(downloadTask);
            for (p5.g gVar : this.f35648p) {
                if (gVar.f43284b == 2) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) gVar.f43283a;
                    if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        collectionBeanSubBusiness.setDownloadTask(downloadTask);
                    }
                }
            }
            this.f35645m.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f35645m.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f35647o.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(String str, int i2) {
        ResultMainBean<SimulatorAreaDataBean> K1;
        if (com.join.android.app.common.utils.f.j(this.f35633a.getApplicationContext())) {
            try {
                this.f35651s = true;
                if (this.f35640h == ConstantIntEnum.FBA.value()) {
                    K1 = this.f35646n.K1(RequestBeanUtil.getInstance(this.f35633a).getSimulatorIndexRequestBean(str, i2));
                } else if (this.f35640h == ConstantIntEnum.FC.value()) {
                    K1 = this.f35646n.N1(RequestBeanUtil.getInstance(this.f35633a).getSimulatorIndexRequestBean(str, i2));
                } else if (this.f35640h == ConstantIntEnum.GBA.value()) {
                    K1 = this.f35646n.L1(RequestBeanUtil.getInstance(this.f35633a).getSimulatorIndexRequestBean(str, i2));
                } else if (this.f35640h == ConstantIntEnum.PSP.value()) {
                    K1 = this.f35646n.M1(RequestBeanUtil.getInstance(this.f35633a).getSimulatorIndexRequestBean(str, i2));
                } else {
                    K1 = this.f35646n.K1(RequestBeanUtil.getInstance(this.f35633a).getSimulatorIndexRequestBean(str, i2));
                }
                if (K1 != null && K1.getFlag() == 1 && K1.getMessages() != null) {
                    SimulatorAreaDataBean data = K1.getMessages().getData();
                    if (data != null) {
                        M0(data);
                        return;
                    } else {
                        L0();
                        return;
                    }
                } else if (this.f35647o.getCount() == 0) {
                    L0();
                    return;
                } else {
                    Q0(false);
                    return;
                }
            } catch (Exception e4) {
                L0();
                e4.printStackTrace();
                return;
            }
        }
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        this.f35635c.setVisibility(8);
        this.f35634b.setVisibility(0);
        this.f35636d.setVisibility(8);
        this.f35649q = 1;
        this.f35650r = "m1";
        I0("m1", 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void K0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        p5 p5Var = this.f35647o;
        if (p5Var != null) {
            p5Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        this.f35635c.setVisibility(0);
        this.f35634b.setVisibility(8);
        this.f35636d.setVisibility(8);
        Q0(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:74:0x025e  */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void M0(com.join.mgps.dto.SimulatorAreaDataBean r13) {
        /*
            Method dump skipped, instructions count: 615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.SimulatorAreaActivity.M0(com.join.mgps.dto.SimulatorAreaDataBean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        SearchHintActivity_.S1(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0(boolean z3) {
        List<SimulatorAreaDataBean.GameTypeBean> list;
        this.f35651s = false;
        this.f35636d.t();
        this.f35636d.u();
        if (z3) {
            return;
        }
        this.f35636d.setNoMore();
        if (this.f35647o.h() || (list = this.f35655w) == null || list.size() <= 0) {
            return;
        }
        this.f35648p.add(new p5.g("游戏分类", 4));
        for (SimulatorAreaDataBean.GameTypeBean gameTypeBean : this.f35655w) {
            this.f35648p.add(new p5.g(gameTypeBean, 5));
        }
        this.f35647o.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.f35646n = com.join.mgps.rpc.impl.c.P1();
        org.greenrobot.eventbus.c.f().t(this.f35633a);
        this.f35638f.setVisibility(0);
        this.f35639g.setVisibility(0);
        String str = this.f35641i;
        if (str != null && !str.isEmpty()) {
            this.f35637e.setText(this.f35641i);
        } else {
            this.f35637e.setText("街机");
        }
        getDownloadTaskInfo();
        List<DownloadTask> d4 = g1.f.G().d();
        this.f35644l = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f35644l) {
                this.f35645m.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f35636d.setPreLoadCount(10);
        this.f35636d.setVerticalScrollBarEnabled(false);
        this.f35636d.setPullLoadEnable(new a());
        this.f35636d.setPullRefreshEnable(new b());
        this.f35636d.setOnScrollListener(this);
        p5 p5Var = new p5(this.f35633a, this.f35640h, this.f35637e.getText().toString());
        this.f35647o = p5Var;
        this.f35648p = p5Var.g();
        this.f35636d.setAdapter((ListAdapter) this.f35647o);
        I0(this.f35650r, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f35643k
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f35643k
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f35642j
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f35642j
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35643k
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35643k
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35642j
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35642j
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35642j
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35642j
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35643k
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35643k
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35642j
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35642j
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35642j
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f35642j
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f35643k
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f35643k
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f35642j
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f35642j
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.SimulatorAreaActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f35643k.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f35642j.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this.f35633a);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask downloadTask;
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
        if (lVar.c() == 8) {
            for (int i2 = this.f35652t; i2 <= this.f35653u; i2++) {
                p5.g gVar = (p5.g) this.f35636d.getItemAtPosition(i2);
                if (gVar != null && gVar.f43284b == 2 && (downloadTask = ((CollectionBeanSubBusiness) gVar.f43283a).getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f35636d.getChildAt(i2 - this.f35652t);
                    if (childAt.getTag() instanceof i.b) {
                        i.b bVar = (i.b) childAt.getTag();
                        try {
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                            if (f4 == null) {
                                return;
                            }
                            long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                            if (a4.getSize() == 0) {
                                TextView textView = bVar.f42245j;
                                textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                TextView textView2 = bVar.f42245j;
                                textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            if (a4.getStatus() == 12) {
                                bVar.f42248m.setProgress((int) f4.getProgress());
                            } else {
                                bVar.f42247l.setProgress((int) f4.getProgress());
                            }
                            if (a4.getStatus() == 2) {
                                TextView textView3 = bVar.f42246k;
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
        } else {
            for (int i4 = 0; i4 < this.f35648p.size(); i4++) {
                p5.g gVar2 = this.f35648p.get(i4);
                if (gVar2 != null && gVar2.f43284b == 2 && a4.getCrc_link_type_val().equals(((CollectionBeanSubBusiness) gVar2.f43283a).getCrc_sign_id())) {
                    ((CollectionBeanSubBusiness) this.f35648p.get(i4).f43283a).setDownloadTask(a4);
                }
            }
        }
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 != 6) {
                    if (c4 != 7) {
                        if (c4 != 48) {
                            switch (c4) {
                                case 10:
                                    updateUI(a4, 7);
                                    break;
                                case 12:
                                    updateUI(a4, 8);
                                    break;
                                case 13:
                                    updateUI(a4, 9);
                                    break;
                            }
                        }
                    } else {
                        updateUI(a4, 3);
                    }
                } else {
                    updateUI(a4, 6);
                }
            }
            updateUI(a4, 5);
        } else {
            updateUI(a4, 2);
        }
        this.f35647o.notifyDataSetChanged();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f35653u = (i4 + i2) - 1;
        this.f35652t = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f35643k.size();
        int size2 = this.f35642j.size();
        this.f35639g.setDownloadGameNum(size);
        if (size2 > 0) {
            this.f35639g.d();
        } else {
            this.f35639g.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
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
                default:
                    return;
                case 5:
                    receiveSuccess(downloadTask);
                    return;
                case 6:
                    receiveError(downloadTask);
                    return;
            }
        }
    }
}
