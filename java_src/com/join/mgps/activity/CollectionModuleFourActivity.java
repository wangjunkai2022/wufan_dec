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
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.helper.MGFightUtils;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
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
public class CollectionModuleFourActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
    @ViewById
    RelativeLayout A;
    @ViewById
    ImageView B;
    @ViewById
    TextView C;

    /* renamed from: a  reason: collision with root package name */
    private Context f28830a;

    /* renamed from: b  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f28831b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.adapter.i f28832c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f28833d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f28834e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView2 f28835f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f28836g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f28837h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f28838i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f28839j;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: k  reason: collision with root package name */
    ImageView f28840k;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: l  reason: collision with root package name */
    CustomerDownloadView f28841l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.d f28842m;
    @StringRes(resName = "net_excption")

    /* renamed from: n  reason: collision with root package name */
    String f28843n;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: o  reason: collision with root package name */
    String f28844o;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    String f28846q;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    ExtBean f28847r;

    /* renamed from: s  reason: collision with root package name */
    List<DownloadTask> f28848s;

    /* renamed from: p  reason: collision with root package name */
    private int f28845p = 1;

    /* renamed from: t  reason: collision with root package name */
    private int f28849t = 0;

    /* renamed from: u  reason: collision with root package name */
    private Map<String, DownloadTask> f28850u = new ConcurrentHashMap();

    /* renamed from: v  reason: collision with root package name */
    Map<String, DownloadTask> f28851v = new HashMap();

    /* renamed from: w  reason: collision with root package name */
    Map<String, DownloadTask> f28852w = new HashMap();

    /* renamed from: x  reason: collision with root package name */
    private String f28853x = "";

    /* renamed from: y  reason: collision with root package name */
    private int f28854y = 0;

    /* renamed from: z  reason: collision with root package name */
    private boolean f28855z = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CollectionModuleFourActivity.this.f28855z) {
                return;
            }
            CollectionModuleFourActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CollectionModuleFourActivity.this.f28855z) {
                return;
            }
            CollectionModuleFourActivity.this.f28845p = 1;
            CollectionModuleFourActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 > CollectionModuleFourActivity.this.f28831b.size() || i2 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) CollectionModuleFourActivity.this.f28831b.get(i2);
            if (collectionBeanSub.getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(CollectionModuleFourActivity.this.f28830a, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f28848s.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f28850u.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f28831b) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f28850u.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f28850u.get(collectionBeanSubBusiness.getGame_id());
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
        this.f28835f.requestLayout();
        this.f28832c.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f28850u;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f28832c.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.f28848s, downloadTask);
        Map<String, DownloadTask> map = this.f28850u;
        if (map != null) {
            if (map.containsKey(downloadTask.getCrc_link_type_val())) {
                this.f28850u.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                this.f28848s.add(downloadTask);
                this.f28850u.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        updateDowStateList(downloadTask);
        this.f28832c.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f28850u;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f28848s.add(downloadTask);
            this.f28850u.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.f28850u.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f28835f.requestLayout();
        this.f28832c.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f28831b) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f28850u.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f28850u.get(mod_info.getMod_game_id());
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
        for (int i2 = this.f28854y; i2 <= this.f28849t; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f28835f.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f28835f.getChildAt(i2 - this.f28854y);
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
        IntentUtil.getInstance().goCollectionCommentActivity(this, this.f28846q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099 A[Catch: all -> 0x0110, Exception -> 0x0112, TryCatch #2 {Exception -> 0x0112, blocks: (B:5:0x0011, B:7:0x0025, B:9:0x002f, B:14:0x0049, B:16:0x0053, B:18:0x007a, B:21:0x0081, B:23:0x008a, B:24:0x0093, B:26:0x0099, B:28:0x00a3, B:30:0x00ab, B:39:0x00f5, B:31:0x00b4, B:33:0x00b8, B:35:0x00c2, B:37:0x00d0, B:38:0x00eb, B:40:0x00fe, B:22:0x0087, B:13:0x0046, B:41:0x0105, B:42:0x0109), top: B:53:0x0011, outer: #0 }] */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void I0() {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.CollectionModuleFourActivity.I0():void");
    }

    public CommonRequestBean J0(String str, int i2) {
        return RequestBeanUtil.getInstance(this.f28830a).getCollectionRequestBean(str, i2, 10, "", "", this.f28847r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        this.f28845p = 1;
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        XListView2 xListView2 = this.f28835f;
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
        com.join.mgps.adapter.i iVar = this.f28832c;
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
                this.f28837h.setVisibility(8);
                this.f28836g.setVisibility(8);
                this.f28833d.setVisibility(0);
                if (this.f28845p == 2) {
                    this.f28831b.clear();
                }
                MGFightUtils.updateStatus(this, list, this.f28848s, this.f28850u);
                this.f28847r = null;
                this.f28831b.addAll(list);
                if (this.f28845p == 2) {
                    String str = this.f28853x;
                    if (str != null) {
                        this.f28834e.setText(str);
                    }
                    this.f28831b.size();
                    this.f28832c.notifyDataSetChanged();
                    return;
                }
                this.f28832c.notifyDataSetChanged();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(int i2, int i4) {
        if (i2 == 1) {
            this.A.setVisibility(0);
            this.B.setVisibility(0);
            if (i4 > 0) {
                this.C.setVisibility(0);
            }
            TextView textView = this.C;
            textView.setText(i4 + "");
            return;
        }
        this.A.setVisibility(8);
        this.B.setVisibility(8);
        this.C.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        SearchHintActivity_.S1(this.f28830a).start();
        com.papa.sim.statistic.p.l(this.f28830a).m2(Where.modufour, AccountUtil_.getInstance_(this.f28830a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        XListView2 xListView2 = this.f28835f;
        if (xListView2 == null) {
            return;
        }
        xListView2.u();
        this.f28835f.t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f28842m = com.join.mgps.rpc.impl.c.P1();
        try {
            com.join.mgps.Util.c0.a().d(this);
            this.f28830a = this;
            this.f28848s = g1.f.G().d();
            getDownloadTaskInfo();
            this.f28840k.setVisibility(0);
            this.f28841l.setVisibility(0);
            List<DownloadTask> list = this.f28848s;
            if (list != null && list.size() > 0) {
                for (DownloadTask downloadTask : this.f28848s) {
                    this.f28850u.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            com.join.mgps.adapter.i iVar = new com.join.mgps.adapter.i(this.f28830a);
            this.f28832c = iVar;
            this.f28831b = iVar.c();
            showLoding();
            I0();
            this.f28835f.setPreLoadCount(10);
            this.f28835f.setPullLoadEnable(new a());
            this.f28835f.setPullRefreshEnable(new b());
            this.f28835f.setOnItemClickListener(new c());
            this.f28835f.setOnScrollListener(this);
            this.f28835f.setAdapter((ListAdapter) this.f28832c);
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28851v
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28851v
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28852w
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28852w
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28851v
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28851v
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28852w
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28852w
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28852w
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28852w
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28851v
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28851v
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28852w
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28852w
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28852w
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28852w
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28851v
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28851v
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28852w
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28852w
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.CollectionModuleFourActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f28851v.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f28852w.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
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
                    Map<String, DownloadTask> map = this.f28850u;
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
        this.f28849t = (i4 + i2) - 1;
        this.f28854y = i2;
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
        this.f28845p = 1;
        showLoding();
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f28830a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f28836g.setVisibility(0);
            this.f28837h.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CollectionBeanSubBusiness> list = this.f28831b;
            if (list == null || list.size() == 0) {
                this.f28837h.setVisibility(0);
                this.f28836g.setVisibility(8);
                this.f28833d.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        Map<String, DownloadTask> map;
        if (this.f28841l == null || (map = this.f28851v) == null) {
            return;
        }
        int size = map.size();
        int size2 = this.f28852w.size();
        this.f28841l.setDownloadGameNum(size);
        if (size2 > 0) {
            this.f28841l.d();
        } else {
            this.f28841l.g();
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
