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
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
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
import com.join.mgps.dto.BreakBeanMain;
import com.join.mgps.dto.CollectionBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
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
@EActivity(R.layout.category_collection_break)
/* loaded from: classes.dex */
public class CollectionModuleTwoActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {

    /* renamed from: n0  reason: collision with root package name */
    private static final String f28990n0 = "CollectionModuleTwoActivity";
    private BreakBeanMain A;
    List<DownloadTask> F;
    @ViewById
    RelativeLayout I;
    @ViewById
    ImageView J;
    @ViewById
    TextView K;

    /* renamed from: a  reason: collision with root package name */
    private Context f28991a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    PtrClassicFrameLayout f28992b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f28993c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f28994d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f28995e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f28996f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f28997g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ImageView f28998h;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: i  reason: collision with root package name */
    ImageView f28999i;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: j  reason: collision with root package name */
    CustomerDownloadView f29000j;

    /* renamed from: k  reason: collision with root package name */
    private CollectionBean f29001k;

    /* renamed from: l  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f29002l;

    /* renamed from: m  reason: collision with root package name */
    private com.join.mgps.adapter.i f29003m;

    /* renamed from: n  reason: collision with root package name */
    private CollectionDataBean f29004n;

    /* renamed from: o  reason: collision with root package name */
    private String f29005o;

    /* renamed from: p  reason: collision with root package name */
    private String f29006p;

    /* renamed from: q  reason: collision with root package name */
    private String f29007q;

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.rpc.d f29008r;
    @StringRes(resName = "net_excption")

    /* renamed from: s  reason: collision with root package name */
    String f29009s;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: t  reason: collision with root package name */
    String f29010t;
    @Extra

    /* renamed from: w  reason: collision with root package name */
    String f29013w;
    @Extra

    /* renamed from: x  reason: collision with root package name */
    ExtBean f29014x;

    /* renamed from: y  reason: collision with root package name */
    private SimpleDraweeView f29015y;

    /* renamed from: z  reason: collision with root package name */
    private TextView f29016z;

    /* renamed from: u  reason: collision with root package name */
    private int f29011u = 1;

    /* renamed from: v  reason: collision with root package name */
    private int f29012v = 10;
    private int B = 0;
    private Map<String, DownloadTask> C = new ConcurrentHashMap();
    Map<String, DownloadTask> D = new HashMap();
    Map<String, DownloadTask> E = new HashMap();
    private int G = 0;
    private boolean H = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CollectionModuleTwoActivity.this.H) {
                return;
            }
            CollectionModuleTwoActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CollectionModuleTwoActivity.this.H) {
                return;
            }
            CollectionModuleTwoActivity.this.f29011u = 1;
            CollectionModuleTwoActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            int i4 = i2 - 1;
            if (i4 >= CollectionModuleTwoActivity.this.f29002l.size() || i4 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) CollectionModuleTwoActivity.this.f29002l.get(i4);
            if (collectionBeanSub.getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(CollectionModuleTwoActivity.this.f28991a, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    private List<CollectionBeanSubBusiness> R0(List<CollectionBeanSubBusiness> list) {
        if (this.F == null) {
            return list;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.F.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.C.get(mod_info.getMain_game_id());
                        boolean z3 = false;
                        boolean c4 = (downloadTask == null || downloadTask.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(this).c(this, downloadTask.getPackageName());
                        DownloadTask downloadTask2 = this.C.get(mod_info.getMod_game_id());
                        if (downloadTask2 != null && downloadTask2.getStatus() == 5) {
                            z3 = com.join.mgps.va.overmind.e.p().D(downloadTask2.getPackageName());
                        }
                        if (!z3 || !c4) {
                            if (z3) {
                                if (collectionBeanSubBusiness.getMod_info() != null && next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            } else if (c4) {
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
        return list;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.F.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.C.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f29002l) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.C.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.C.get(collectionBeanSubBusiness.getGame_id());
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
        this.f28993c.requestLayout();
        this.f29003m.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.C;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f29003m.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.D3(this.F);
        if (!this.C.containsKey(downloadTask.getCrc_link_type_val())) {
            this.F.add(downloadTask);
            this.C.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        this.f29003m.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.C;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.F.add(downloadTask);
            this.C.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.C.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f28993c.requestLayout();
        this.f29003m.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f29002l) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.C.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.C.get(mod_info.getMod_game_id());
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
        for (int i2 = this.G; i2 <= this.B; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f28993c.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f28993c.getChildAt(i2 - this.G);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        IntentUtil.getInstance().goCollectionCommentActivity(this, this.f29013w);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        if (com.join.android.app.common.utils.f.j(this.f28991a)) {
            this.H = true;
            try {
                try {
                    CollectionBean G1 = this.f29008r.G1(J0(this.f29013w, this.f29011u));
                    this.f29001k = G1;
                    if (G1 != null) {
                        if (G1.getMessages().getData() != null && this.f29001k.getMessages().getData().size() > 0) {
                            CollectionDataBean collectionDataBean = this.f29001k.getMessages().getData().get(0);
                            this.f29004n = collectionDataBean;
                            try {
                                O0(collectionDataBean.getComment_switch(), this.f29004n.getComment_count());
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            if (this.f29004n.getInfo().size() > 0) {
                                List<CollectionBeanSub> sub = this.f29004n.getInfo().get(0).getSub();
                                BreakBeanMain main = this.f29004n.getInfo().get(0).getMain();
                                this.A = main;
                                if (main != null) {
                                    this.f29005o = main.getCollection_title();
                                    this.f29006p = this.A.getTpl_pic();
                                    this.f29007q = this.A.getInfo();
                                }
                                this.f29011u++;
                                ArrayList arrayList = new ArrayList();
                                for (CollectionBeanSub collectionBeanSub : sub) {
                                    ExtBean extBean = this.f29014x;
                                    if (extBean != null && extBean.get_from_type() == 134) {
                                        collectionBeanSub.set_from(13401);
                                        collectionBeanSub.set_from_type(13401);
                                    } else {
                                        collectionBeanSub.set_from(111);
                                        collectionBeanSub.set_from_type(121);
                                    }
                                    arrayList.add(new CollectionBeanSubBusiness(collectionBeanSub));
                                }
                                N0(R0(arrayList));
                            } else if (this.f29011u == 1) {
                                showLodingFailed();
                                S0();
                            } else {
                                L0();
                                S0();
                            }
                        } else {
                            showLodingFailed();
                            S0();
                        }
                    } else {
                        showLodingFailed();
                        S0();
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                    S0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.H = false;
            }
        }
        S0();
        showLodingFailed();
    }

    public CommonRequestBean J0(String str, int i2) {
        return RequestBeanUtil.getInstance(this.f28991a).getCollectionRequestBean(str, i2, this.f29012v, "", "", this.f29014x);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        com.join.android.app.common.manager.a.h().j(this.f28991a, this.f29009s, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        this.f28993c.setNoMore();
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
        com.join.mgps.adapter.i iVar = this.f29003m;
        if (iVar != null) {
            iVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0(List<CollectionBeanSubBusiness> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                this.f28996f.setVisibility(8);
                this.f28995e.setVisibility(8);
                this.f28992b.setVisibility(0);
                if (this.f29011u == 2) {
                    this.f29002l.clear();
                }
                this.f29014x = null;
                this.f29002l.addAll(list);
                if (this.f29011u == 2) {
                    String str = this.f29005o;
                    if (str != null) {
                        this.f28994d.setText(str);
                    }
                    String str2 = this.f29007q;
                    if (str2 != null) {
                        this.f29016z.setText(str2);
                    }
                    String str3 = this.f29006p;
                    if (str3 != null) {
                        MyImageLoader.d(this.f29015y, R.drawable.banner_normal_icon, str3.trim());
                    }
                    if (list.size() < 10) {
                        L0();
                    }
                }
                this.f29003m.notifyDataSetChanged();
                S0();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(int i2, int i4) {
        if (i2 == 1) {
            this.I.setVisibility(0);
            this.J.setVisibility(0);
            if (i4 > 0) {
                this.K.setVisibility(0);
            }
            TextView textView = this.K;
            textView.setText(i4 + "");
            return;
        }
        this.I.setVisibility(8);
        this.J.setVisibility(8);
        this.K.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        SearchHintActivity_.S1(this.f28991a).start();
        com.papa.sim.statistic.p.l(this.f28991a).m2(Where.modetwo, AccountUtil_.getInstance_(this.f28991a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        this.f28993c.t();
        this.f28993c.u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29008r = com.join.mgps.rpc.impl.c.P1();
        try {
            this.f28991a = this;
            com.join.mgps.Util.c0.a().d(this);
            List<DownloadTask> d4 = g1.f.G().d();
            this.F = d4;
            if (d4 != null && d4.size() > 0) {
                for (DownloadTask downloadTask : this.F) {
                    this.C.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            getDownloadTaskInfo();
            this.f28999i.setVisibility(0);
            this.f29000j.setVisibility(0);
            showLoding();
            View inflate = LayoutInflater.from(this.f28991a).inflate(R.layout.collection_two_header, (ViewGroup) null);
            this.f29015y = (SimpleDraweeView) inflate.findViewById(R.id.imgBreak);
            this.f29016z = (TextView) inflate.findViewById(R.id.textViewBreak);
            this.f28993c.addHeaderView(inflate);
            com.join.mgps.adapter.i iVar = new com.join.mgps.adapter.i(this.f28991a);
            this.f29003m = iVar;
            this.f29002l = iVar.c();
            this.f28993c.setAdapter((ListAdapter) this.f29003m);
            this.f28993c.setPreLoadCount(10);
            I0();
            this.f28993c.setPullLoadEnable(new a());
            this.f28993c.setPullRefreshEnable(new b());
            this.f28993c.setOnItemClickListener(new c());
            this.f28993c.setOnScrollListener(this);
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.E
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.E
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.E
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.E
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.E
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.CollectionModuleTwoActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.D.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.E.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.B = (i4 + i2) - 1;
        this.G = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.join.mgps.Util.t0.c("onstop");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f29011u = 1;
        showLoding();
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this.f28991a, this.f29010t, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f28991a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f28995e.setVisibility(0);
            this.f28996f.setVisibility(8);
            this.f28992b.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CollectionBeanSubBusiness> list = this.f29002l;
            if (list != null || list.size() == 0) {
                this.f28996f.setVisibility(0);
                this.f28995e.setVisibility(8);
                this.f28992b.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int i2;
        try {
            Map<String, DownloadTask> map = this.D;
            int i4 = 0;
            if (map != null) {
                i4 = map.size();
                i2 = this.E.size();
            } else {
                i2 = 0;
            }
            this.f29000j.setDownloadGameNum(i4);
            if (i2 > 0) {
                this.f29000j.d();
            } else {
                this.f29000j.g();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
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
        this.f28993c.requestLayout();
        this.f29003m.notifyDataSetChanged();
    }
}
