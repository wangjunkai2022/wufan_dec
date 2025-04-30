package com.join.mgps.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.i;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CollectionMessageBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.helper.MGFightUtils;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: CollectionModuleFourFragment.java */
@EFragment(R.layout.collection_rank)
/* loaded from: classes.dex */
public class q extends Fragment implements AbsListView.OnScrollListener {

    /* renamed from: w  reason: collision with root package name */
    private static final String f49834w = "CollectionModuleFourFragment";
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    PtrClassicFrameLayout f49835a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f49836b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f49837c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f49838d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f49839e;

    /* renamed from: f  reason: collision with root package name */
    private Context f49840f;

    /* renamed from: g  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f49841g;

    /* renamed from: h  reason: collision with root package name */
    private com.join.mgps.adapter.i f49842h;

    /* renamed from: i  reason: collision with root package name */
    List<DownloadTask> f49843i;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.d f49845k;
    @StringRes(resName = "net_excption")

    /* renamed from: l  reason: collision with root package name */
    String f49846l;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: m  reason: collision with root package name */
    String f49847m;

    /* renamed from: o  reason: collision with root package name */
    private String f49849o;

    /* renamed from: p  reason: collision with root package name */
    private String f49850p;

    /* renamed from: q  reason: collision with root package name */
    private String f49851q;

    /* renamed from: r  reason: collision with root package name */
    private int f49852r;

    /* renamed from: j  reason: collision with root package name */
    private Map<String, DownloadTask> f49844j = new ConcurrentHashMap();

    /* renamed from: n  reason: collision with root package name */
    private int f49848n = 1;

    /* renamed from: s  reason: collision with root package name */
    private int f49853s = 0;

    /* renamed from: t  reason: collision with root package name */
    private CollectionDataBean f49854t = null;

    /* renamed from: u  reason: collision with root package name */
    private boolean f49855u = false;

    /* renamed from: v  reason: collision with root package name */
    private boolean f49856v = false;

    /* compiled from: CollectionModuleFourFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (q.this.f49856v) {
                return;
            }
            q.this.f49848n = 1;
            q.this.R();
        }
    }

    /* compiled from: CollectionModuleFourFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (q.this.f49856v) {
                return;
            }
            q.this.R();
        }
    }

    /* compiled from: CollectionModuleFourFragment.java */
    /* loaded from: classes4.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 > q.this.f49841g.size() || i2 < 0 || ((CollectionBeanSubBusiness) q.this.f49841g.get(i2)).getGame_id() == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(q.this.f49840f, ((CollectionBeanSub) q.this.f49841g.get(i2)).getIntentDataBean());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0038, code lost:
        r1 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        if (r1.getMod_info() == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
        r2 = r6.f49844j.get(r1.getMod_info().getMod_game_id());
        r4 = r6.f49844j.get(r1.getGame_id());
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
        if (r2 != null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0063, code lost:
        if (r4 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
        r1.setDownloadTask(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
        if (r2 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
        r1.setDownloadTask(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
        if (r4 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
        r1.setDownloadTask(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0081, code lost:
        if (r1.getGame_id().equals(r7.getCrc_link_type_val()) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
        r1.setDownloadTask(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0093, code lost:
        if (r1.getCrc_sign_id().equals(r7.getCrc_link_type_val()) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0095, code lost:
        r1.setDownloadTask(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        r6.f49844j.remove(r1.getCrc_link_type_val());
        r0.remove();
        r0 = r6.f49841g.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        if (r0.hasNext() == false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void W(com.github.snowdream.android.app.downloader.DownloadTask r7) {
        /*
            r6 = this;
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r0 = r6.f49843i     // Catch: java.lang.Exception -> L99
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L99
        L6:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L99
            if (r1 == 0) goto L9d
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L99
            com.github.snowdream.android.app.downloader.DownloadTask r1 = (com.github.snowdream.android.app.downloader.DownloadTask) r1     // Catch: java.lang.Exception -> L99
            java.lang.String r2 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            java.lang.String r3 = r7.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> L99
            if (r2 == 0) goto L6
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r2 = r6.f49844j     // Catch: java.lang.Exception -> L99
            java.lang.String r1 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            r2.remove(r1)     // Catch: java.lang.Exception -> L99
            r0.remove()     // Catch: java.lang.Exception -> L99
            java.util.List<com.join.mgps.business.CollectionBeanSubBusiness> r0 = r6.f49841g     // Catch: java.lang.Exception -> L99
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L99
        L32:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L99
            if (r1 == 0) goto L9d
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L99
            com.join.mgps.business.CollectionBeanSubBusiness r1 = (com.join.mgps.business.CollectionBeanSubBusiness) r1     // Catch: java.lang.Exception -> L99
            com.join.mgps.dto.ModInfoBean r2 = r1.getMod_info()     // Catch: java.lang.Exception -> L99
            r3 = 0
            if (r2 == 0) goto L87
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r2 = r6.f49844j     // Catch: java.lang.Exception -> L99
            com.join.mgps.dto.ModInfoBean r4 = r1.getMod_info()     // Catch: java.lang.Exception -> L99
            java.lang.String r4 = r4.getMod_game_id()     // Catch: java.lang.Exception -> L99
            java.lang.Object r2 = r2.get(r4)     // Catch: java.lang.Exception -> L99
            com.github.snowdream.android.app.downloader.DownloadTask r2 = (com.github.snowdream.android.app.downloader.DownloadTask) r2     // Catch: java.lang.Exception -> L99
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r6.f49844j     // Catch: java.lang.Exception -> L99
            java.lang.String r5 = r1.getGame_id()     // Catch: java.lang.Exception -> L99
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Exception -> L99
            com.github.snowdream.android.app.downloader.DownloadTask r4 = (com.github.snowdream.android.app.downloader.DownloadTask) r4     // Catch: java.lang.Exception -> L99
            if (r2 != 0) goto L69
            if (r4 != 0) goto L69
            r1.setDownloadTask(r3)     // Catch: java.lang.Exception -> L99
            goto L32
        L69:
            if (r2 == 0) goto L6f
            r1.setDownloadTask(r2)     // Catch: java.lang.Exception -> L99
            goto L32
        L6f:
            if (r4 == 0) goto L75
            r1.setDownloadTask(r4)     // Catch: java.lang.Exception -> L99
            goto L32
        L75:
            java.lang.String r2 = r1.getGame_id()     // Catch: java.lang.Exception -> L99
            java.lang.String r4 = r7.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Exception -> L99
            if (r2 == 0) goto L32
            r1.setDownloadTask(r3)     // Catch: java.lang.Exception -> L99
            goto L32
        L87:
            java.lang.String r2 = r1.getCrc_sign_id()     // Catch: java.lang.Exception -> L99
            java.lang.String r4 = r7.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Exception -> L99
            if (r2 == 0) goto L32
            r1.setDownloadTask(r3)     // Catch: java.lang.Exception -> L99
            goto L32
        L99:
            r7 = move-exception
            r7.printStackTrace()
        L9d:
            com.join.mgps.adapter.i r7 = r6.f49842h
            r7.notifyDataSetChanged()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.q.W(com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    private void X(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f49844j;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f49842h.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void Z(DownloadTask downloadTask) {
        UtilsMy.E3(this.f49843i, downloadTask);
        if (!this.f49844j.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49843i.add(downloadTask);
            this.f49844j.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        d0(downloadTask);
        this.f49842h.notifyDataSetChanged();
    }

    private void a0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f49844j;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49843i.add(downloadTask);
            this.f49844j.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        d0(downloadTask);
        DownloadTask downloadTask2 = this.f49844j.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f49842h.notifyDataSetChanged();
    }

    private void d0(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f49841g) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f49844j.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f49844j.get(mod_info.getMod_game_id());
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

    private void f0() {
        DownloadTask downloadTask;
        for (int i2 = this.f49853s; i2 <= this.f49852r; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f49836b.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f49836b.getChildAt(i2 - this.f49853s);
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
    @Background
    public void Q(CollectionDataBean collectionDataBean) {
        if (collectionDataBean != null) {
            this.f49848n++;
            if (collectionDataBean.getInfo() != null && collectionDataBean.getInfo().size() > 0) {
                collectionDataBean.getInfo().get(0).getSub();
            } else {
                showLodingFailed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        List<CollectionBeanSub> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        if (com.join.android.app.common.utils.f.j(this.f49840f)) {
            this.f49856v = true;
            try {
                try {
                    CollectionMessageBean messages = this.f49845k.G1(S(this.f49849o, this.f49848n)).getMessages();
                    if (messages != null) {
                        if (messages.getData().size() > 0) {
                            CollectionDataBean collectionDataBean = messages.getData().get(0);
                            if (collectionDataBean.getInfo() != null && collectionDataBean.getInfo().size() > 0) {
                                collectionDataBean.getInfo();
                                arrayList = collectionDataBean.getInfo().get(0).getSub();
                            }
                            if (arrayList != null && arrayList.size() != 0) {
                                this.f49848n++;
                                for (CollectionBeanSub collectionBeanSub : arrayList) {
                                    collectionBeanSub.set_from(111);
                                    collectionBeanSub.set_from_type(121);
                                    arrayList2.add(new CollectionBeanSubBusiness(collectionBeanSub));
                                }
                                showMain(arrayList2);
                                e0();
                            }
                            if (this.f49848n == 1) {
                                showLodingFailed();
                            } else {
                                U();
                            }
                            showMain(arrayList2);
                            e0();
                        } else {
                            U();
                        }
                    } else {
                        e0();
                        showLodingFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    e0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f49856v = false;
            }
        }
        e0();
        showLodingFailed();
    }

    public CommonRequestBean S(String str, int i2) {
        return RequestBeanUtil.getInstance(this.f49840f).getCollectionRequestBean(str, i2, 10, this.f49850p, this.f49851q, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T() {
        this.f49848n = 1;
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U() {
        this.f49836b.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void V(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.i iVar = this.f49842h;
        if (iVar != null) {
            iVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f49845k = com.join.mgps.rpc.impl.c.P1();
        this.f49840f = getActivity();
        com.join.mgps.Util.c0.a().d(this);
        List<DownloadTask> d4 = g1.f.G().d();
        this.f49843i = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f49843i) {
                this.f49844j.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.t0.d("infoo", this.f49843i.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.t0.d("infoo", downloadTask.toString());
            }
        }
        Bundle arguments = getArguments();
        this.f49849o = arguments.getString("collection_id");
        this.f49850p = arguments.getString(com.join.mgps.Util.y1.W1);
        this.f49851q = arguments.getString(com.join.mgps.Util.y1.X1);
        com.join.mgps.adapter.i iVar = new com.join.mgps.adapter.i(this.f49840f);
        this.f49842h = iVar;
        this.f49841g = iVar.c();
        showLoding();
        CollectionDataBean collectionDataBean = this.f49854t;
        if (collectionDataBean == null) {
            this.f49848n = 1;
            R();
        } else {
            Q(collectionDataBean);
        }
        this.f49836b.setPreLoadCount(10);
        this.f49836b.setPullRefreshEnable(new a());
        this.f49836b.setPullLoadEnable(new b());
        this.f49836b.setOnItemClickListener(new c());
        this.f49836b.setOnScrollListener(this);
        this.f49836b.setAdapter((ListAdapter) this.f49842h);
    }

    public void b0(CollectionDataBean collectionDataBean) {
        this.f49854t = collectionDataBean;
    }

    public void c0(String str, String str2) {
        this.f49851q = str;
        this.f49850p = str2;
        this.f49848n = 1;
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        this.f49836b.t();
        this.f49836b.u();
    }

    void g0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    Z(downloadTask);
                    return;
                case 3:
                    W(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    a0(downloadTask);
                    return;
                case 6:
                    X(downloadTask);
                    return;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        try {
            Field declaredField = Fragment.class.getDeclaredField("mChildFragmentManager");
            declaredField.setAccessible(true);
            declaredField.set(this, null);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException(e4);
        } catch (NoSuchFieldException e5) {
            throw new RuntimeException(e5);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        Map<String, DownloadTask> map;
        DownloadTask a4 = lVar.a();
        switch (lVar.c()) {
            case 2:
                g0(a4, 1);
                return;
            case 3:
                g0(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                g0(a4, 5);
                return;
            case 6:
                g0(a4, 6);
                return;
            case 7:
                g0(a4, 3);
                return;
            case 8:
                if (isHidden() || (map = this.f49844j) == null || map.isEmpty() || this.f49855u) {
                    return;
                }
                f0();
                return;
            case 10:
                g0(a4, 7);
                return;
            case 12:
                g0(a4, 8);
                return;
            case 13:
                g0(a4, 9);
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f49852r = (i4 + i2) - 1;
        this.f49853s = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f49855u = i2 != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f49848n = 1;
        showLoding();
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f49837c.setVisibility(0);
        this.f49838d.setVisibility(8);
        this.f49835a.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<CollectionBeanSubBusiness> list = this.f49841g;
        if (list == null || list.size() == 0) {
            this.f49838d.setVisibility(0);
            this.f49837c.setVisibility(8);
            this.f49835a.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSubBusiness> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f49838d.setVisibility(8);
        this.f49837c.setVisibility(8);
        this.f49835a.setVisibility(0);
        if (this.f49848n == 2) {
            this.f49841g.clear();
        }
        MGFightUtils.updateStatus(getContext(), list, this.f49843i, this.f49844j);
        this.f49841g.addAll(list);
        if (this.f49848n == 2) {
            this.f49841g.size();
        }
        com.join.mgps.Util.t0.d("infoo", this.f49841g.size() + "   showMain");
        this.f49842h.notifyDataSetChanged();
    }
}
