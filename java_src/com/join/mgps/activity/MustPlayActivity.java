package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.b3;
import com.join.mgps.adapter.i;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.MustPlayAd;
import com.join.mgps.dto.MustPlayAdSub;
import com.join.mgps.dto.MustPlayData;
import com.join.mgps.dto.MustPlayNetDataBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.helper.MGFightUtils;
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
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.must_play_layout)
/* loaded from: classes.dex */
public class MustPlayActivity extends BaseActivity implements AbsListView.OnScrollListener, View.OnClickListener {

    /* renamed from: z  reason: collision with root package name */
    private static final String f33864z = "MustPlayActivity";

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.rpc.d f33865a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f33866b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    PtrClassicFrameLayout f33867c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f33868d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f33869e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f33870f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f33871g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ImageView f33872h;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: i  reason: collision with root package name */
    ImageView f33873i;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: j  reason: collision with root package name */
    CustomerDownloadView f33874j;

    /* renamed from: k  reason: collision with root package name */
    private Context f33875k;

    /* renamed from: l  reason: collision with root package name */
    private List<k1.c> f33876l;

    /* renamed from: m  reason: collision with root package name */
    private b3 f33877m;

    /* renamed from: o  reason: collision with root package name */
    List<DownloadTask> f33879o;

    /* renamed from: u  reason: collision with root package name */
    private LinearLayout f33885u;

    /* renamed from: v  reason: collision with root package name */
    private LinearLayout f33886v;

    /* renamed from: w  reason: collision with root package name */
    private SimpleDraweeView f33887w;

    /* renamed from: x  reason: collision with root package name */
    private SimpleDraweeView f33888x;

    /* renamed from: n  reason: collision with root package name */
    private int f33878n = 1;

    /* renamed from: p  reason: collision with root package name */
    private int f33880p = 0;

    /* renamed from: q  reason: collision with root package name */
    private Map<String, DownloadTask> f33881q = new ConcurrentHashMap();

    /* renamed from: r  reason: collision with root package name */
    Map<String, DownloadTask> f33882r = new HashMap();

    /* renamed from: s  reason: collision with root package name */
    Map<String, DownloadTask> f33883s = new HashMap();

    /* renamed from: t  reason: collision with root package name */
    private int f33884t = 0;

    /* renamed from: y  reason: collision with root package name */
    boolean f33889y = false;

    /* loaded from: classes3.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            MustPlayActivity mustPlayActivity = MustPlayActivity.this;
            if (mustPlayActivity.f33889y) {
                return;
            }
            mustPlayActivity.loadData(mustPlayActivity.f33878n);
        }
    }

    /* loaded from: classes3.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            MustPlayActivity mustPlayActivity = MustPlayActivity.this;
            if (mustPlayActivity.f33889y) {
                return;
            }
            mustPlayActivity.f33878n = 1;
            MustPlayActivity.this.loadData(1);
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f33879o.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f33881q.remove(next.getCrc_link_type_val());
                it2.remove();
                for (k1.c cVar : this.f33876l) {
                    if (!cVar.c()) {
                        for (CollectionBeanSubBusiness collectionBeanSubBusiness : cVar.a()) {
                            if (collectionBeanSubBusiness.getMod_info() != null) {
                                DownloadTask downloadTask2 = this.f33881q.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                                DownloadTask downloadTask3 = this.f33881q.get(collectionBeanSubBusiness.getCrc_sign_id());
                                if (downloadTask2 == null && downloadTask3 == null) {
                                    collectionBeanSubBusiness.setDownloadTask(null);
                                } else if (downloadTask2 != null) {
                                    collectionBeanSubBusiness.setDownloadTask(downloadTask2);
                                } else if (downloadTask3 != null) {
                                    collectionBeanSubBusiness.setDownloadTask(downloadTask3);
                                } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                    collectionBeanSubBusiness.setDownloadTask(null);
                                }
                            } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            }
                        }
                    }
                }
            }
        }
        this.f33866b.requestLayout();
        this.f33877m.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f33881q;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            map.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            this.f33866b.requestLayout();
            this.f33877m.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.f33879o, downloadTask);
        if (this.f33881q.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f33881q.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
        } else {
            this.f33879o.add(downloadTask);
            this.f33881q.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        this.f33877m.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f33881q;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f33879o.add(downloadTask);
            this.f33881q.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.f33881q.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f33866b.requestLayout();
        this.f33877m.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (k1.c cVar : this.f33876l) {
                if (!cVar.c()) {
                    Iterator<CollectionBeanSubBusiness> it2 = cVar.a().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            CollectionBeanSubBusiness next = it2.next();
                            if (next.getMod_info() != null) {
                                ModInfoBean mod_info = next.getMod_info();
                                DownloadTask downloadTask2 = this.f33881q.get(mod_info.getMain_game_id());
                                boolean z3 = true;
                                boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                                DownloadTask downloadTask3 = this.f33881q.get(mod_info.getMod_game_id());
                                if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                                    z3 = false;
                                }
                                if (!z3 || !z4) {
                                    if (z3) {
                                        if (next.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(next.getMod_info().getMod_game_id())) {
                                            next.setDownloadTask(downloadTask);
                                            break;
                                        }
                                    } else if (z4) {
                                        if (downloadTask.getCrc_link_type_val().equals(next.getCrc_sign_id())) {
                                            next.setDownloadTask(downloadTask);
                                            break;
                                        }
                                    } else {
                                        DownloadTask B = next.getMod_info() != null ? g1.f.G().B(next.getMod_info().getMod_game_id()) : null;
                                        if (B == null) {
                                            B = g1.f.G().B(next.getCrc_sign_id());
                                        }
                                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                            next.setDownloadTask(downloadTask);
                                            break;
                                        }
                                    }
                                } else if (downloadTask.getCrc_link_type_val().equals(next.getCrc_sign_id())) {
                                    next.setDownloadTask(downloadTask);
                                    break;
                                }
                            } else if (next.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                next.setDownloadTask(downloadTask);
                                break;
                            }
                        }
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i2 = this.f33884t; i2 <= this.f33880p; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f33866b.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f33866b.getChildAt(i2 - this.f33884t);
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
    public void G0() {
        this.f33878n = 1;
        loadData(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        this.f33866b.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void I0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        b3 b3Var = this.f33877m;
        if (b3Var != null) {
            b3Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(List<MustPlayAd> list) {
        for (int i2 = 0; i2 < 2; i2++) {
            MustPlayAd mustPlayAd = list.get(i2);
            this.f33886v.setVisibility(0);
            if (i2 == 0) {
                MyImageLoader.h(this.f33887w, mustPlayAd.getMain().getPic_remote());
                IntentDateBean intentDateBean = new IntentDateBean();
                MustPlayAdSub mustPlayAdSub = mustPlayAd.getSub().get(0);
                if (mustPlayAdSub != null) {
                    intentDateBean.setLink_type_val(mustPlayAdSub.getLink_type_val());
                    intentDateBean.setJump_type(Integer.parseInt(mustPlayAdSub.getJump_type()));
                    intentDateBean.setCrc_link_type_val(mustPlayAdSub.getCrc_link_type_val());
                    intentDateBean.setLink_type(Integer.parseInt(mustPlayAdSub.getLink_type()));
                    intentDateBean.setTpl_type(mustPlayAdSub.getTpl_type());
                }
                this.f33887w.setTag(intentDateBean);
                this.f33887w.setVisibility(0);
            } else if (i2 == 1) {
                MyImageLoader.h(this.f33888x, mustPlayAd.getMain().getPic_remote());
                IntentDateBean intentDateBean2 = new IntentDateBean();
                MustPlayAdSub mustPlayAdSub2 = mustPlayAd.getSub().get(0);
                if (mustPlayAdSub2 != null) {
                    intentDateBean2.setLink_type_val(mustPlayAdSub2.getLink_type_val());
                    intentDateBean2.setJump_type(Integer.parseInt(mustPlayAdSub2.getJump_type()));
                    intentDateBean2.setCrc_link_type_val(mustPlayAdSub2.getCrc_link_type_val());
                    intentDateBean2.setLink_type(Integer.parseInt(mustPlayAdSub2.getLink_type()));
                    intentDateBean2.setTpl_type(mustPlayAdSub2.getTpl_type());
                }
                this.f33888x.setTag(intentDateBean2);
                this.f33888x.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(List<k1.c> list, int i2) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.join.mgps.Util.t0.c("mustplay mustPlayx.size= " + list.size() + " mustPlay.size=" + this.f33876l.size() + "   pn=" + i2);
        this.f33871g.setVisibility(8);
        this.f33870f.setVisibility(8);
        this.f33867c.setVisibility(0);
        for (k1.c cVar : list) {
            if (!cVar.c()) {
                MGFightUtils.updateStatus(this, cVar.a(), this.f33879o, this.f33881q);
            }
        }
        if (i2 == 2) {
            this.f33876l.clear();
            this.f33876l.addAll(list);
        } else {
            this.f33876l.addAll(list);
        }
        this.f33877m.c(this.f33876l);
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        this.f33866b.t();
        this.f33866b.u();
        this.f33889y = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f33865a = com.join.mgps.rpc.impl.c.P1();
        try {
            this.f33875k = this;
            com.join.mgps.Util.c0.a().d(this);
            List<DownloadTask> d4 = g1.f.G().d();
            this.f33879o = d4;
            if (d4 != null && d4.size() > 0) {
                for (DownloadTask downloadTask : this.f33879o) {
                    this.f33881q.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.f33869e.setText("必玩游戏");
            this.f33873i.setVisibility(0);
            this.f33874j.setVisibility(0);
            getDownloadTaskInfo();
            this.f33876l = new ArrayList();
            this.f33877m = new b3(this, this.f33876l);
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this).inflate(R.layout.layout_play_must_header, (ViewGroup) null);
            this.f33885u = linearLayout;
            this.f33886v = (LinearLayout) linearLayout.findViewById(R.id.palyMustHeaderLayout);
            this.f33887w = (SimpleDraweeView) this.f33885u.findViewById(R.id.playLeft);
            this.f33888x = (SimpleDraweeView) this.f33885u.findViewById(R.id.playRight);
            this.f33887w.setOnClickListener(this);
            this.f33888x.setOnClickListener(this);
            this.f33866b.addHeaderView(this.f33885u);
            this.f33866b.setAdapter((ListAdapter) this.f33877m);
            this.f33866b.setPreLoadCount(15);
            this.f33866b.setPullLoadEnable(new a());
            this.f33866b.setPullRefreshEnable(new b());
            loadData(this.f33878n);
            this.f33866b.setOnScrollListener(this);
        } catch (Exception unused) {
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33882r
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33882r
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33883s
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33883s
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33882r
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33882r
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33883s
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33883s
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33883s
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33883s
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33882r
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33882r
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33883s
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33883s
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33883s
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f33883s
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33882r
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33882r
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33883s
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f33883s
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MustPlayActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f33882r.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f33883s.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadData(int i2) {
        try {
            if (com.join.android.app.common.utils.f.j(this.f33875k) && !this.f33889y) {
                try {
                    this.f33889y = true;
                    ArrayList arrayList = new ArrayList();
                    ResultMainBean<MustPlayData> s12 = this.f33865a.s1(RequestBeanUtil.getInstance(getApplicationContext()).getMustplay(i2));
                    if (s12 != null) {
                        if (s12.getFlag() == 1) {
                            List<MustPlayAd> head_ad = s12.getMessages().getData().getHead_ad();
                            if (head_ad != null && head_ad.size() > 0) {
                                J0(head_ad);
                            }
                            List<MustPlayNetDataBean> list = s12.getMessages().getData().getList();
                            if (list != null) {
                                if (list.size() > 0) {
                                    for (MustPlayNetDataBean mustPlayNetDataBean : list) {
                                        arrayList.add(new k1.c(true, mustPlayNetDataBean.getTitle()));
                                        List<CollectionBeanSub> gamelist = mustPlayNetDataBean.getGamelist();
                                        ArrayList arrayList2 = new ArrayList();
                                        for (CollectionBeanSub collectionBeanSub : gamelist) {
                                            arrayList2.add(new CollectionBeanSubBusiness(collectionBeanSub));
                                            if (arrayList2.size() == 4) {
                                                arrayList.add(new k1.c(false, (List<CollectionBeanSubBusiness>) arrayList2));
                                                arrayList2 = new ArrayList();
                                            }
                                        }
                                        if (arrayList2.size() > 0) {
                                            arrayList.add(new k1.c(false, (List<CollectionBeanSubBusiness>) arrayList2));
                                        }
                                    }
                                    int i4 = this.f33878n + i2;
                                    this.f33878n = i4;
                                    K0(arrayList, i4);
                                } else {
                                    H0();
                                }
                            } else {
                                L0();
                            }
                        } else {
                            H0();
                        }
                    } else {
                        showLodingFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showLodingFailed();
                }
                this.f33889y = false;
                return;
            }
            L0();
            showLodingFailed();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    @Click({R.id.playLeft, R.id.playRight, R.id.title_normal_search_img, R.id.title_normal_download_cdv})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.playLeft /* 2131299358 */:
                IntentUtil.getInstance().intentActivity(this, (IntentDateBean) this.f33887w.getTag());
                return;
            case R.id.playRight /* 2131299359 */:
                IntentUtil.getInstance().intentActivity(this, (IntentDateBean) this.f33888x.getTag());
                return;
            case R.id.title_normal_download_cdv /* 2131300398 */:
                IntentUtil.getInstance().goDownloadCenterActivity(this);
                return;
            case R.id.title_normal_search_img /* 2131300400 */:
                IntentUtil.getInstance().goSearchHintActivity(this);
                com.papa.sim.statistic.p.l(this.f33875k).m2(Where.mustplay, AccountUtil_.getInstance_(this.f33875k).getUid());
                return;
            default:
                return;
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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
                    Map<String, DownloadTask> map = this.f33881q;
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

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f33880p = (i4 + i2) - 1;
        this.f33884t = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f33878n = 1;
        showLoding();
        loadData(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f33875k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f33870f.setVisibility(0);
        this.f33871g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<k1.c> list = this.f33876l;
        if (list == null || list.size() == 0) {
            this.f33871g.setVisibility(0);
            this.f33870f.setVisibility(8);
            this.f33867c.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f33882r.size();
        int size2 = this.f33883s.size();
        this.f33874j.setDownloadGameNum(size);
        StringBuilder sb = new StringBuilder();
        sb.append("updateDownloadView: ");
        sb.append(size2);
        sb.append("::::已经进入下载队列中的数量:::");
        sb.append(size);
        if (size2 > 0) {
            this.f33874j.d();
        } else {
            this.f33874j.g();
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
