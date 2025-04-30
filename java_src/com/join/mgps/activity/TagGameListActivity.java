package com.join.mgps.activity;

import android.content.Context;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.i;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.helper.MGFightUtils;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
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
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.category_collection_rank)
/* loaded from: classes.dex */
public class TagGameListActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
    @ViewById
    RelativeLayout F;
    @ViewById
    ImageView G;
    @ViewById
    TextView H;

    /* renamed from: a  reason: collision with root package name */
    private Context f35854a;

    /* renamed from: b  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f35855b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.adapter.i f35856c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f35857d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f35858e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView2 f35859f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f35860g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f35861h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f35862i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f35863j;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: k  reason: collision with root package name */
    ImageView f35864k;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: l  reason: collision with root package name */
    CustomerDownloadView f35865l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.d f35866m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.j f35867n;
    @StringRes(resName = "net_excption")

    /* renamed from: o  reason: collision with root package name */
    String f35868o;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: p  reason: collision with root package name */
    String f35869p;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    int f35871r;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    int f35872s;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    String f35873t;
    @Extra

    /* renamed from: u  reason: collision with root package name */
    String f35874u;
    @Extra

    /* renamed from: v  reason: collision with root package name */
    String f35875v;
    @Extra

    /* renamed from: w  reason: collision with root package name */
    boolean f35876w;

    /* renamed from: x  reason: collision with root package name */
    List<DownloadTask> f35877x;

    /* renamed from: q  reason: collision with root package name */
    private int f35870q = 1;

    /* renamed from: y  reason: collision with root package name */
    private int f35878y = 0;

    /* renamed from: z  reason: collision with root package name */
    private Map<String, DownloadTask> f35879z = new ConcurrentHashMap();
    Map<String, DownloadTask> A = new HashMap();
    Map<String, DownloadTask> B = new HashMap();
    private String C = "";
    private int D = 0;
    private boolean E = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (TagGameListActivity.this.E) {
                return;
            }
            TagGameListActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (TagGameListActivity.this.E) {
                return;
            }
            TagGameListActivity.this.f35870q = 1;
            TagGameListActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 > TagGameListActivity.this.f35855b.size() || i2 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) TagGameListActivity.this.f35855b.get(i2);
            if (collectionBeanSub.getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(TagGameListActivity.this.f35854a, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    private void R0(List<CollectionBeanSubBusiness> list) {
        if (this.f35877x == null) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            for (DownloadTask downloadTask : this.f35877x) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f35879z.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f35879z.get(mod_info.getMod_game_id());
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

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f35877x.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f35879z.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f35855b) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f35879z.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f35879z.get(collectionBeanSubBusiness.getGame_id());
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
        this.f35859f.requestLayout();
        this.f35856c.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f35879z;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f35856c.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.f35877x, downloadTask);
        Map<String, DownloadTask> map = this.f35879z;
        if (map != null) {
            if (map.containsKey(downloadTask.getCrc_link_type_val())) {
                this.f35879z.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                this.f35877x.add(downloadTask);
                this.f35879z.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        updateDowStateList(downloadTask);
        this.f35856c.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f35879z;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f35877x.add(downloadTask);
            this.f35879z.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.f35879z.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f35859f.requestLayout();
        this.f35856c.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f35855b) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f35879z.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f35879z.get(mod_info.getMod_game_id());
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
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i2 = this.D; i2 <= this.f35878y; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f35859f.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f35859f.getChildAt(i2 - this.D);
                if (childAt.getTag() instanceof i.b) {
                    i.b bVar = (i.b) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = bVar.f42245j;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = bVar.f42245j;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            bVar.f42248m.setProgress((int) f4.getProgress());
                        } else {
                            bVar.f42247l.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
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
    }

    public ResponseModel<List<CollectionBeanSub>> H0() {
        RequestModel requestModel = new RequestModel(this.f35854a);
        int i2 = this.f35870q;
        requestModel.setArgs(new RequestGameIdArgs(i2, this.f35872s + "", this.f35873t, this.f35874u));
        return this.f35867n.d(requestModel.makeSign());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        List<CollectionBeanSub> data;
        ArrayList<CollectionBeanSub> arrayList = new ArrayList();
        if (com.join.android.app.common.utils.f.j(this.f35854a)) {
            this.E = true;
            try {
                try {
                    if (this.f35871r == 2) {
                        com.papa.sim.statistic.p.l(this.f35854a).K1(Event.goGameListPage, new Ext().setFrom(PayCenterOrderRequest.PAY_TYPE_RECHARGE));
                        data = H0().getData();
                    } else {
                        data = J0().getMessages().getData();
                    }
                    if (data != null) {
                        for (CollectionBeanSub collectionBeanSub : data) {
                            arrayList.add(new CollectionBeanSubBusiness(collectionBeanSub));
                        }
                    }
                    if (arrayList.size() > 0) {
                        this.f35870q++;
                    } else {
                        L0();
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (CollectionBeanSub collectionBeanSub2 : arrayList) {
                        collectionBeanSub2.set_from(111);
                        collectionBeanSub2.set_from_type(121);
                        arrayList2.add(new CollectionBeanSubBusiness(collectionBeanSub2));
                    }
                    N0(arrayList2);
                    S0();
                } catch (Exception e4) {
                    e4.printStackTrace();
                    S0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.E = false;
            }
        }
        S0();
        showLodingFailed();
    }

    public ResultMainBean<List<CollectionBeanSub>> J0() {
        int i2 = this.f35871r;
        if (i2 == 0) {
            if (this.f35876w) {
                return this.f35866m.q1(RequestBeanUtil.getInstance(this.f35854a).getTagGameListData(this.f35870q, this.f35872s));
            }
            return this.f35866m.p(RequestBeanUtil.getInstance(this.f35854a).getTagGameListData(this.f35870q, this.f35872s));
        } else if (i2 == 1) {
            return this.f35866m.z(RequestBeanUtil.getInstance(this.f35854a).getCompanyGameListData(this.f35870q, this.f35875v));
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        this.f35870q = 1;
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        XListView2 xListView2 = this.f35859f;
        if (xListView2 == null) {
            return;
        }
        xListView2.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void M0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.i iVar = this.f35856c;
        if (iVar != null) {
            iVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0(List<CollectionBeanSubBusiness> list) {
        String str;
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                this.f35861h.setVisibility(8);
                this.f35860g.setVisibility(8);
                this.f35857d.setVisibility(0);
                if (this.f35870q == 2) {
                    this.f35855b.clear();
                }
                MGFightUtils.updateStatus(this, list, this.f35877x, this.f35879z);
                this.f35855b.addAll(list);
                if (this.f35870q == 2) {
                    int i2 = this.f35871r;
                    if (i2 == 0) {
                        String str2 = this.f35873t;
                        if (str2 != null) {
                            this.f35858e.setText(str2);
                        }
                    } else if (i2 == 1) {
                        String str3 = this.f35875v;
                        if (str3 != null) {
                            this.f35858e.setText(str3);
                        }
                    } else if (i2 == 2 && (str = this.f35873t) != null) {
                        this.f35858e.setText(str);
                    }
                    this.f35855b.size();
                    this.f35856c.notifyDataSetChanged();
                    return;
                }
                this.f35856c.notifyDataSetChanged();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(int i2, int i4) {
        if (i2 == 1) {
            this.F.setVisibility(0);
            this.G.setVisibility(0);
            if (i4 > 0) {
                this.H.setVisibility(0);
            }
            TextView textView = this.H;
            textView.setText(i4 + "");
            return;
        }
        this.F.setVisibility(8);
        this.G.setVisibility(8);
        this.H.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        SearchHintActivity_.S1(this.f35854a).start();
        com.papa.sim.statistic.p.l(this.f35854a).m2(Where.modufour, AccountUtil_.getInstance_(this.f35854a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        XListView2 xListView2 = this.f35859f;
        if (xListView2 == null) {
            return;
        }
        xListView2.u();
        this.f35859f.t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f35866m = com.join.mgps.rpc.impl.c.P1();
        this.f35867n = com.join.mgps.rpc.impl.h.L();
        try {
            com.join.mgps.Util.c0.a().d(this);
            this.f35854a = this;
            this.f35877x = g1.f.G().d();
            getDownloadTaskInfo();
            this.f35864k.setVisibility(0);
            this.f35865l.setVisibility(0);
            List<DownloadTask> list = this.f35877x;
            if (list != null && list.size() > 0) {
                for (DownloadTask downloadTask : this.f35877x) {
                    this.f35879z.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.f35856c = new com.join.mgps.adapter.i(this.f35854a);
            this.f35855b = new ArrayList();
            this.f35855b = this.f35856c.c();
            showLoding();
            I0();
            this.f35859f.setPreLoadCount(10);
            this.f35859f.setPullLoadEnable(new a());
            this.f35859f.setPullRefreshEnable(new b());
            this.f35859f.setOnItemClickListener(new c());
            this.f35859f.setOnScrollListener(this);
            this.f35859f.setAdapter((ListAdapter) this.f35856c);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.A
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.A
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.A
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.A
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.A
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.A
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.A
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.A
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.TagGameListActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.B.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
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
                    Map<String, DownloadTask> map = this.f35879z;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
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

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f35878y = (i4 + i2) - 1;
        this.D = i2;
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
        this.f35870q = 1;
        showLoding();
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f35854a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f35860g.setVisibility(0);
            this.f35861h.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CollectionBeanSubBusiness> list = this.f35855b;
            if (list == null || list.size() == 0) {
                this.f35861h.setVisibility(0);
                this.f35860g.setVisibility(8);
                this.f35857d.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        Map<String, DownloadTask> map;
        if (this.f35865l == null || (map = this.A) == null) {
            return;
        }
        int size = map.size();
        int size2 = this.B.size();
        this.f35865l.setDownloadGameNum(size);
        if (size2 > 0) {
            this.f35865l.d();
        } else {
            this.f35865l.g();
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
