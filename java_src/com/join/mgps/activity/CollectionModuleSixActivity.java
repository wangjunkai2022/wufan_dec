package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.j;
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
@EActivity(R.layout.activity_collection_module_six)
/* loaded from: classes.dex */
public class CollectionModuleSixActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {

    /* renamed from: y0  reason: collision with root package name */
    private static final String f28884y0 = "CollectionModuleSixActivity";
    @StringRes(resName = "connect_server_excption")
    String A;
    @Extra
    String D;
    @Extra
    ExtBean E;
    private SimpleDraweeView F;
    private LinearLayout G;
    private TextView H;
    private BreakBeanMain I;

    /* renamed from: a  reason: collision with root package name */
    private Context f28885a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    PtrClassicFrameLayout f28886b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f28887c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f28888d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f28889e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f28890f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f28891g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ImageView f28892h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f28893i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    RelativeLayout f28894j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    RelativeLayout f28895k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    RelativeLayout f28896l;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: m  reason: collision with root package name */
    ImageView f28897m;
    @ViewById(R.id.title_normal_search_img_rl)

    /* renamed from: n  reason: collision with root package name */
    ImageView f28898n;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: o  reason: collision with root package name */
    CustomerDownloadView f28900o;
    @ViewById(R.id.downLayout)

    /* renamed from: p  reason: collision with root package name */
    RelativeLayout f28902p;

    /* renamed from: p0  reason: collision with root package name */
    List<DownloadTask> f28903p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f28904q;

    /* renamed from: r  reason: collision with root package name */
    private CollectionBean f28906r;

    /* renamed from: s  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f28908s;

    /* renamed from: t  reason: collision with root package name */
    private com.join.mgps.adapter.j f28910t;

    /* renamed from: t0  reason: collision with root package name */
    com.join.android.app.component.video.c f28911t0;

    /* renamed from: u  reason: collision with root package name */
    private CollectionDataBean f28912u;

    /* renamed from: v  reason: collision with root package name */
    private String f28914v;
    @ViewById

    /* renamed from: v0  reason: collision with root package name */
    ImageView f28915v0;

    /* renamed from: w  reason: collision with root package name */
    private String f28916w;
    @ViewById

    /* renamed from: w0  reason: collision with root package name */
    ImageView f28917w0;

    /* renamed from: x  reason: collision with root package name */
    private String f28918x;

    /* renamed from: x0  reason: collision with root package name */
    private Animation f28919x0;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.rpc.d f28920y;
    @StringRes(resName = "net_excption")

    /* renamed from: z  reason: collision with root package name */
    String f28921z;
    private int B = 1;
    private int C = 10;
    private int J = 0;
    private Map<String, DownloadTask> K = new ConcurrentHashMap();

    /* renamed from: n0  reason: collision with root package name */
    Map<String, DownloadTask> f28899n0 = new HashMap();

    /* renamed from: o0  reason: collision with root package name */
    Map<String, DownloadTask> f28901o0 = new HashMap();

    /* renamed from: q0  reason: collision with root package name */
    private int f28905q0 = 0;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f28907r0 = false;

    /* renamed from: s0  reason: collision with root package name */
    private int f28909s0 = 0;

    /* renamed from: u0  reason: collision with root package name */
    int f28913u0 = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CollectionModuleSixActivity.this.f28907r0) {
                return;
            }
            CollectionModuleSixActivity.this.K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CollectionModuleSixActivity.this.f28907r0) {
                return;
            }
            CollectionModuleSixActivity.this.B = 1;
            CollectionModuleSixActivity.this.K0();
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
            if (i4 >= CollectionModuleSixActivity.this.f28908s.size() || i4 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) CollectionModuleSixActivity.this.f28908s.get(i4);
            if (collectionBeanSub.getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(CollectionModuleSixActivity.this.f28885a, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Animation.AnimationListener {
        d() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    private List<CollectionBeanSubBusiness> V0(List<CollectionBeanSubBusiness> list) {
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            for (DownloadTask downloadTask : this.f28903p0) {
                if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getGame_id())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                }
            }
        }
        return list;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f28903p0.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.K.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f28908s) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.K.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.K.get(collectionBeanSubBusiness.getGame_id());
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
        this.f28887c.requestLayout();
        this.f28910t.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.K;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f28910t.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.D3(this.f28903p0);
        if (!this.K.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f28903p0.add(downloadTask);
            this.K.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        this.f28910t.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.K;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f28903p0.add(downloadTask);
            this.K.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.K.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f28887c.requestLayout();
        this.f28910t.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f28908s) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.K.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.K.get(mod_info.getMod_game_id());
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
        for (int i2 = this.f28913u0; i2 <= this.J; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f28887c.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f28887c.getChildAt(i2 - this.f28913u0);
                if (childAt.getTag() instanceof j.b) {
                    j.b bVar = (j.b) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = bVar.f42285m;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = bVar.f42285m;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            bVar.f42288p.setProgress((int) f4.getProgress());
                        } else {
                            bVar.f42287o.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = bVar.f42286n;
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
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        IntentUtil.getInstance().goCollectionCommentActivity(this, this.D);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        if (com.join.android.app.common.utils.f.j(this.f28885a)) {
            this.f28907r0 = true;
            try {
                try {
                    CollectionBean G1 = this.f28920y.G1(L0(this.D, this.B));
                    this.f28906r = G1;
                    if (G1 != null) {
                        if (G1.getMessages().getData() != null && this.f28906r.getMessages().getData().size() > 0) {
                            CollectionDataBean collectionDataBean = this.f28906r.getMessages().getData().get(0);
                            this.f28912u = collectionDataBean;
                            if (collectionDataBean.getInfo().size() > 0) {
                                List<CollectionBeanSub> sub = this.f28912u.getInfo().get(0).getSub();
                                BreakBeanMain main = this.f28912u.getInfo().get(0).getMain();
                                this.I = main;
                                if (main != null) {
                                    this.f28914v = main.getCollection_title();
                                    this.f28916w = this.I.getTpl_pic();
                                    this.f28918x = this.I.getInfo();
                                }
                                this.B++;
                                ArrayList arrayList = new ArrayList();
                                for (CollectionBeanSub collectionBeanSub : sub) {
                                    ExtBean extBean = this.E;
                                    if (extBean != null && extBean.get_from_type() == 134) {
                                        collectionBeanSub.set_from(13401);
                                        collectionBeanSub.set_from_type(13401);
                                    } else {
                                        collectionBeanSub.set_from(111);
                                        collectionBeanSub.set_from_type(121);
                                    }
                                    arrayList.add(new CollectionBeanSubBusiness(collectionBeanSub));
                                }
                                Q0(V0(arrayList));
                            } else if (this.B == 1) {
                                showLodingFailed();
                                W0();
                            } else {
                                O0();
                                W0();
                            }
                        } else {
                            showLodingFailed();
                            W0();
                        }
                    } else {
                        showLodingFailed();
                        W0();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    W0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f28907r0 = false;
            }
        }
        W0();
        showLodingFailed();
    }

    public CommonRequestBean L0(String str, int i2) {
        return RequestBeanUtil.getInstance(this.f28885a).getCollectionRequestBean(str, i2, this.C, "", "", this.E);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        showLoding();
        this.B = 1;
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        com.join.android.app.common.manager.a.h().j(this.f28885a, this.f28921z, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        this.f28887c.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void P0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.j jVar = this.f28910t;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0(List<CollectionBeanSubBusiness> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                this.f28890f.setVisibility(8);
                this.f28889e.setVisibility(8);
                this.f28886b.setVisibility(0);
                if (this.B == 2) {
                    this.f28908s.clear();
                }
                this.E = null;
                this.f28908s.addAll(list);
                if (this.B == 2) {
                    String str = this.f28914v;
                    if (str != null) {
                        this.f28888d.setText(str);
                    }
                    String str2 = this.f28918x;
                    if (str2 != null) {
                        this.H.setText(str2);
                    }
                    String str3 = this.f28916w;
                    if (str3 != null) {
                        MyImageLoader.d(this.F, R.drawable.banner_normal_icon, str3.trim());
                    }
                    if (list.size() < 10) {
                        O0();
                    }
                }
                this.f28910t.notifyDataSetChanged();
                W0();
                this.f28911t0.F(1);
                this.f28911t0.m(this.f28887c);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0(int i2, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        SearchHintActivity_.S1(this.f28885a).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        SearchHintActivity_.S1(this.f28885a).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        this.f28887c.t();
        this.f28887c.u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f28920y = com.join.mgps.rpc.impl.c.P1();
        try {
            this.f28885a = this;
            this.f28911t0 = new com.join.android.app.component.video.c(this, f28884y0);
            com.join.mgps.Util.c0.a().d(this);
            List<DownloadTask> d4 = g1.f.G().d();
            this.f28903p0 = d4;
            if (d4 != null && d4.size() > 0) {
                for (DownloadTask downloadTask : this.f28903p0) {
                    this.K.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            getDownloadTaskInfo();
            this.f28897m.setVisibility(0);
            this.f28898n.setVisibility(0);
            this.f28900o.setVisibility(0);
            this.f28902p.setVisibility(0);
            showLoding();
            this.f28896l.setVisibility(8);
            this.f28896l.setAlpha(0.0f);
            this.f28894j.setBackgroundColor(Color.parseColor("#212F3C"));
            View inflate = LayoutInflater.from(this.f28885a).inflate(R.layout.collection_six_new_header, (ViewGroup) null);
            this.F = (SimpleDraweeView) inflate.findViewById(R.id.imgBreak);
            int width = getWindowManager().getDefaultDisplay().getWidth();
            this.f28909s0 = (width * 526) / 720;
            this.F.setLayoutParams(new RelativeLayout.LayoutParams(width, this.f28909s0));
            this.H = (TextView) inflate.findViewById(R.id.textViewBreak);
            this.G = (LinearLayout) inflate.findViewById(R.id.headerViewLl);
            this.f28887c.addHeaderView(inflate);
            com.join.mgps.adapter.j jVar = new com.join.mgps.adapter.j(this.f28885a, this.f28911t0);
            this.f28910t = jVar;
            this.f28908s = jVar.d();
            this.f28887c.setAdapter((ListAdapter) this.f28910t);
            this.f28887c.setPreLoadCount(10);
            K0();
            this.f28887c.setPullLoadEnable(new a());
            this.f28887c.setPullRefreshEnable(new b());
            this.f28887c.setOnItemClickListener(new c());
            this.f28887c.setOnScrollListener(this);
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28899n0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28899n0
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28901o0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28901o0
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28899n0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28899n0
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28901o0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28901o0
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28901o0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28901o0
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28899n0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28899n0
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28901o0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28901o0
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28901o0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28901o0
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28899n0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28899n0
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28901o0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28901o0
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.CollectionModuleSixActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f28899n0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f28901o0.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (com.join.android.app.component.video.a.c0(this, f28884y0)) {
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.android.app.component.video.c cVar = this.f28911t0;
        if (cVar != null) {
            cVar.z();
        }
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
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.f28911t0;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.f28911t0;
        if (cVar != null) {
            cVar.B();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f28911t0.e(absListView, i2, i4, i5);
        this.J = (i4 + i2) - 1;
        this.f28913u0 = i2;
        View childAt = this.f28887c.getChildAt(0);
        if (childAt != null) {
            int firstVisiblePosition = (-childAt.getTop()) + (this.f28887c.getFirstVisiblePosition() * childAt.getHeight());
            int height = this.f28909s0 - this.G.getHeight();
            if (firstVisiblePosition == 0) {
                this.f28895k.setVisibility(0);
                this.f28896l.setVisibility(8);
                this.f28896l.setAlpha(0.0f);
            } else if (firstVisiblePosition >= height) {
                this.f28895k.setVisibility(8);
                this.f28896l.setVisibility(0);
                this.f28896l.setAlpha(1.0f);
            } else {
                this.f28895k.setVisibility(0);
                this.f28896l.setVisibility(0);
                this.f28896l.setAlpha(firstVisiblePosition / height);
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 0 && Fresco.getImagePipeline().H()) {
            Fresco.getImagePipeline().N();
        }
        this.f28911t0.i(absListView, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.join.mgps.Util.t0.c("onstop");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.B = 1;
        showLoding();
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this.f28885a, this.A, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f28885a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f28889e.setVisibility(0);
            this.f28890f.setVisibility(8);
            this.f28886b.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CollectionBeanSubBusiness> list = this.f28908s;
            if (list != null || list.size() == 0) {
                this.f28890f.setVisibility(0);
                this.f28889e.setVisibility(8);
                this.f28886b.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void startLineAnimation() {
        this.f28917w0.setImageResource(R.drawable.line_blue_bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f28885a, R.anim.img_translate);
        this.f28919x0 = loadAnimation;
        loadAnimation.setFillAfter(true);
        this.f28915v0.setVisibility(0);
        this.f28915v0.startAnimation(this.f28919x0);
        this.f28919x0.setAnimationListener(new d());
    }

    void stopLineAnimation() {
        this.f28915v0.clearAnimation();
        this.f28915v0.setVisibility(8);
        this.f28917w0.setImageResource(R.drawable.line_white_bg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int i2;
        try {
            Map<String, DownloadTask> map = this.f28899n0;
            int i4 = 0;
            if (map != null) {
                i4 = map.size();
                i2 = this.f28901o0.size();
            } else {
                i2 = 0;
            }
            this.f28900o.setDownloadGameNum(i4);
            if (i2 > 0) {
                startLineAnimation();
                this.f28900o.d();
            } else {
                stopLineAnimation();
                this.f28900o.g();
            }
            updateDownloadingPoint(i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int i2) {
        if (i2 == 0) {
            this.f28904q.setVisibility(4);
            this.f28904q.setText("");
            return;
        }
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f28904q.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
            this.f28904q.setLayoutParams(layoutParams);
            this.f28904q.setCompoundDrawables(null, null, null, null);
            this.f28904q.setBackgroundResource(R.drawable.mygame_big_round);
            this.f28904q.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f28904q.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
            this.f28904q.setGravity(17);
            this.f28904q.setLayoutParams(layoutParams2);
            this.f28904q.setCompoundDrawables(null, null, null, null);
            this.f28904q.setBackgroundResource(R.drawable.message_round);
            this.f28904q.setPadding(1, 0, 2, 1);
        }
        this.f28904q.setVisibility(0);
        TextView textView = this.f28904q;
        textView.setText(i2 + "");
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
        this.f28887c.requestLayout();
        this.f28910t.notifyDataSetChanged();
    }
}
