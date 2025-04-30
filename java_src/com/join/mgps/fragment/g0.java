package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DownloadCenterActivity;
import com.join.mgps.activity.DownloadSettingActivity_;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.adapter.p;
import com.join.mgps.adapter.q;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadCenterBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.ResponseDownloadCenterAd;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.Iterator;
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
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: DownloadCenterFragment.java */
@EFragment(R.layout.fragment_download_center)
/* loaded from: classes.dex */
public class g0 extends d implements AbsListView.OnScrollListener {

    /* renamed from: b  reason: collision with root package name */
    private Context f48723b;

    /* renamed from: c  reason: collision with root package name */
    DownloadCenterBean f48724c;
    @Pref

    /* renamed from: d  reason: collision with root package name */
    PrefDef_ f48725d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ListView f48726e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f48727f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f48728g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.adapter.q f48729h;

    /* renamed from: i  reason: collision with root package name */
    private List<DownloadTask> f48730i;

    /* renamed from: j  reason: collision with root package name */
    private List<DownloadTask> f48731j;

    /* renamed from: k  reason: collision with root package name */
    private List<DownloadTask> f48732k;

    /* renamed from: l  reason: collision with root package name */
    private List<DownloadTask> f48733l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.d f48734m;

    /* renamed from: n  reason: collision with root package name */
    private String f48735n;

    /* renamed from: o  reason: collision with root package name */
    private int f48736o;

    /* renamed from: p  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f48737p;

    /* renamed from: q  reason: collision with root package name */
    private int f48738q;

    /* renamed from: s  reason: collision with root package name */
    IntentDateBean f48740s;

    /* renamed from: x  reason: collision with root package name */
    List<DownloadTask> f48745x;

    /* renamed from: a  reason: collision with root package name */
    private final String f48722a = "DownloadCenterActivity";

    /* renamed from: r  reason: collision with root package name */
    boolean f48739r = false;

    /* renamed from: t  reason: collision with root package name */
    private int f48741t = 0;

    /* renamed from: u  reason: collision with root package name */
    private int f48742u = 0;

    /* renamed from: v  reason: collision with root package name */
    List<com.join.mgps.event.l> f48743v = new ArrayList();

    /* renamed from: w  reason: collision with root package name */
    boolean f48744w = true;

    /* renamed from: y  reason: collision with root package name */
    private Map<String, DownloadTask> f48746y = new ConcurrentHashMap();

    private void P(DownloadTask downloadTask) {
        if (this.f48729h == null || TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
            return;
        }
        this.f48729h.h(downloadTask.getPlugin_num());
    }

    public static g0 a0(int i2, String str) {
        h0 h0Var = new h0();
        Bundle bundle = new Bundle();
        bundle.putInt("index", i2);
        bundle.putString("title", str);
        h0Var.setArguments(bundle);
        return h0Var;
    }

    private void h0(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f48745x.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f48746y.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f48737p) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f48746y.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f48746y.get(collectionBeanSubBusiness.getGame_id());
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
        this.f48729h.notifyDataSetChanged();
    }

    private void i0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f48746y;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f48729h.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void j0(DownloadTask downloadTask) {
        UtilsMy.D3(this.f48745x);
        if (!this.f48746y.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f48745x.add(downloadTask);
            this.f48746y.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        r0(downloadTask);
        this.f48729h.notifyDataSetChanged();
    }

    private void k0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f48746y;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f48745x.add(downloadTask);
            this.f48746y.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        r0(downloadTask);
        DownloadTask downloadTask2 = this.f48746y.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f48729h.notifyDataSetChanged();
    }

    private void r0(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f48737p) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f48746y.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f48746y.get(mod_info.getMod_game_id());
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

    private void t0(List<CollectionBeanSubBusiness> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.f48745x) == null || list2.size() == 0) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.f48745x.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f48746y.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                        DownloadTask downloadTask2 = this.f48746y.get(mod_info.getMod_game_id());
                        z3 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : false;
                        if (z3 && z4) {
                            if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                                collectionBeanSubBusiness.setDownloadTask(next);
                            }
                        } else if (!z3) {
                            if (z4) {
                                if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
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
                        } else if (collectionBeanSubBusiness.getMod_info() != null && next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                            collectionBeanSubBusiness.setDownloadTask(next);
                        }
                    } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                        collectionBeanSubBusiness.setDownloadTask(next);
                        break;
                    }
                }
            }
        }
        com.join.mgps.adapter.q qVar = this.f48729h;
        if (qVar != null) {
            qVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M() {
        int i2 = (((this.f48730i.size() + this.f48731j.size()) + this.f48732k.size()) + this.f48733l.size()) + this.f48737p.size() == 0 ? 0 : 8;
        LinearLayout linearLayout = this.f48727f;
        if (linearLayout != null) {
            linearLayout.setVisibility(i2);
        }
        if (this.f48730i.size() > 0) {
            for (DownloadTask downloadTask : this.f48730i) {
                if (!UtilsMy.i0(this.f48723b, downloadTask)) {
                    return;
                }
            }
        }
    }

    void N() {
        int i2;
        Iterator<com.join.mgps.event.l> it2 = this.f48743v.iterator();
        while (it2.hasNext() && (i2 = this.f48738q) != 2 && i2 != 1) {
            onEventMainThread(it2.next());
            it2.remove();
        }
    }

    boolean O(com.join.mgps.event.l lVar) {
        int i2 = this.f48738q;
        if (i2 == 2 || i2 == 1) {
            this.f48743v.add(lVar);
            return false;
        }
        return false;
    }

    public int Q() {
        List<DownloadTask> list;
        int i2 = this.f48736o;
        if (i2 == 0) {
            List<DownloadTask> list2 = this.f48730i;
            int size = list2 != null ? 0 + list2.size() : 0;
            List<DownloadTask> list3 = this.f48731j;
            return list3 != null ? size + list3.size() : size;
        }
        if (i2 == 1) {
            List<DownloadTask> list4 = this.f48733l;
            if (list4 != null) {
                return list4.size();
            }
        } else if (i2 == 2 && (list = this.f48732k) != null) {
            return list.size();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        try {
            ResultMainBean<List<RecomDatabean>> y12 = this.f48734m.y1(RequestBeanUtil.getInstance(this.f48723b).getSimulatorRequest("", "", 0));
            if (y12 == null || y12.getMessages() == null || y12.getMessages().getData() == null || y12.getMessages().getData().size() <= 0) {
                return;
            }
            RecomDatabean recomDatabean = y12.getMessages().getData().get(0);
            this.f48740s = recomDatabean.getSub().get(0).getIntentDataBean();
            x0(recomDatabean.getMain().getTitle());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void S() {
        ResponseDownloadCenterAd U = com.join.mgps.Util.i0.U();
        this.f48737p.clear();
        if (U == null) {
            d0();
            return;
        }
        if (U.getLists() != null) {
            this.f48737p.addAll(U.getLists());
        }
        com.join.mgps.adapter.q qVar = this.f48729h;
        if (qVar != null) {
            qVar.r(U.getTitle());
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f48737p) {
            collectionBeanSubBusiness.set_from(104);
            collectionBeanSubBusiness.set_from_type(128);
            DownloadTask downloadTask = this.f48746y.get(collectionBeanSubBusiness.getCrc_sign_id());
            if (downloadTask == null) {
                downloadTask = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                collectionBeanSubBusiness.setDownloadTask(downloadTask);
                UtilsMy.C3(collectionBeanSubBusiness.getDownloadTask());
            } else {
                downloadTask.set_from(104);
                downloadTask.set_from_type(128);
            }
            if (downloadTask != null && collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                collectionBeanSubBusiness.setDownloadTask(downloadTask);
                downloadTask.set_from(104);
                downloadTask.set_from_type(128);
            }
        }
        c0();
        f0();
    }

    public int U() {
        return this.f48736o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V() {
        IntentUtil.getInstance().intentActivity(this.f48723b, this.f48740s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W() {
    }

    void X() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        List<DownloadTask> P = g1.f.G().P();
        arrayList.clear();
        for (int i2 = 0; i2 < P.size(); i2++) {
            if (!Z(P.get(i2))) {
                arrayList.add(0, P.get(i2));
            }
        }
        List<DownloadTask> J = g1.f.G().J(true);
        for (int i4 = 0; i4 < J.size(); i4++) {
            arrayList.add(0, J.get(i4));
        }
        List<DownloadTask> v3 = g1.f.G().v();
        List<DownloadTask> J2 = g1.f.G().J(false);
        new ArrayList();
        J2.iterator();
        arrayList2.clear();
        for (int i5 = 0; i5 < J2.size(); i5++) {
            if (J2.get(i5).getStatus() == 11) {
                arrayList2.add(J2.get(i5));
            }
        }
        for (int i6 = 0; i6 < v3.size(); i6++) {
            if (!Z(v3.get(i6))) {
                arrayList2.add(0, v3.get(i6));
            }
        }
        arrayList3.clear();
        List<DownloadHistoryTable> o3 = n1.k.n().o();
        if (o3 != null) {
            for (DownloadHistoryTable downloadHistoryTable : o3) {
                DownloadTask B = g1.f.G().B(downloadHistoryTable.getCrc_link_type_val());
                if (B != null && (B.getStatus() == 5 || B.getStatus() == 42)) {
                    if (!Z(B)) {
                        arrayList3.add(B);
                    }
                }
            }
        }
        List<DownloadTask> w3 = g1.f.G().w();
        arrayList4.clear();
        if (w3 != null) {
            for (int i7 = 0; i7 < w3.size(); i7++) {
                if (!Z(w3.get(i7))) {
                    arrayList4.add(0, w3.get(i7));
                }
            }
        }
        b0(arrayList, arrayList2, arrayList4, arrayList3);
        M();
        this.f48744w = false;
    }

    boolean Z(DownloadTask downloadTask) {
        return downloadTask != null && !TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.android.name()) && UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48734m = com.join.mgps.rpc.impl.c.P1();
        this.f48723b = getContext();
        com.join.mgps.adapter.q qVar = new com.join.mgps.adapter.q(getActivity());
        this.f48729h = qVar;
        this.f48726e.setAdapter((ListAdapter) qVar);
        this.f48729h.i(this.f48726e);
        this.f48724c = this.f48729h.f();
        this.f48737p = this.f48729h.o();
        this.f48730i = this.f48724c.getDownloadFiles();
        this.f48731j = this.f48724c.getStayInstalledDownloadTasks();
        this.f48732k = this.f48724c.getHistoryDownloadFiles();
        this.f48733l = this.f48724c.getDownloadUpdateFiles();
        this.f48726e.setOnScrollListener(this);
        IntentDateBean intentDateBean = new IntentDateBean();
        this.f48740s = intentDateBean;
        intentDateBean.setLink_type(4);
        IntentDateBean intentDateBean2 = this.f48740s;
        intentDateBean2.setLink_type_val(com.join.mgps.rpc.g.f51524k + "/member/vip_view/welcome?go=vip");
        W();
        com.join.mgps.Util.c0.a().d(this);
        R();
        List<DownloadTask> d4 = g1.f.G().d();
        this.f48745x = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f48745x) {
                this.f48746y.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f48739r = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(List<DownloadTask> list, List<DownloadTask> list2, List<DownloadTask> list3, List<DownloadTask> list4) {
        this.f48733l.clear();
        this.f48732k.clear();
        this.f48730i.clear();
        this.f48731j.clear();
        int i2 = this.f48736o;
        if (i2 == 0) {
            this.f48730i.addAll(list);
            this.f48731j.addAll(list2);
        } else if (i2 == 1) {
            this.f48733l.addAll(list3);
        } else if (i2 == 2) {
            this.f48732k.addAll(list4);
        }
        c0();
    }

    void c0() {
        int i2 = this.f48736o;
        if (i2 == 0) {
            this.f48733l.clear();
            this.f48732k.clear();
        } else if (i2 == 1) {
            this.f48730i.clear();
            this.f48731j.clear();
            this.f48732k.clear();
        } else if (i2 == 2) {
            this.f48730i.clear();
            this.f48731j.clear();
            this.f48733l.clear();
        }
        com.join.mgps.adapter.q qVar = this.f48729h;
        if (qVar != null) {
            qVar.notifyDataSetChanged();
        }
        if (getActivity() instanceof DownloadCenterActivity) {
            ((DownloadCenterActivity) getActivity()).K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        c0();
    }

    void e0() {
        try {
            for (DownloadTask downloadTask : this.f48730i) {
                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                if (f4 != null) {
                    String speed = f4.getSpeed();
                    if (speed.endsWith("M")) {
                        Long.parseLong(speed.replace("M", ""));
                    } else if (speed.endsWith("KB")) {
                        Long.parseLong(speed.replace("KB", ""));
                    } else {
                        Long.parseLong(speed.replace("B", ""));
                    }
                }
            }
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f48737p) {
                if (collectionBeanSubBusiness.getDownloadTask() != null) {
                    UtilsMy.C3(collectionBeanSubBusiness.getDownloadTask());
                }
            }
            com.join.mgps.adapter.q qVar = this.f48729h;
            if (qVar != null) {
                qVar.notifyDataSetChanged();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        t0(this.f48737p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void g0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        try {
            X();
            if (this.f48729h != null) {
                c0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public String getType() {
        return this.f48735n;
    }

    public void l0() {
        M();
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    public void m0(int i2) {
        this.f48736o = i2;
    }

    public void n0(String str) {
        this.f48735n = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void o0() {
        DownloadSettingActivity_.Z0(this.f48723b).start();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f48735n = arguments.getString("title");
            this.f48736o = arguments.getInt("index");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        M();
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            y0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    y0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    a4.setStatus(7);
                    y0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    y0(a4, 4);
                    return;
                } else if (c4 != 27) {
                    switch (c4) {
                        case 10:
                            if (a4 == null) {
                                return;
                            }
                            y0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            y0(a4, 8);
                            return;
                        case 13:
                            y0(a4, 9);
                            return;
                        default:
                            return;
                    }
                } else {
                    y0(a4, 10);
                    return;
                }
            }
            y0(a4, 5);
        } else {
            y0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        try {
            q0();
            X();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f48742u = (i4 + i2) - 1;
        this.f48741t = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f48738q = i2;
        if (i2 == 0) {
            N();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.d
    public void onVisible() {
        super.onVisible();
        if (this.f48737p == null) {
            return;
        }
        f0();
        c0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void p0() {
        this.f48728g.setVisibility(8);
        this.f48725d.FirstShowMYgameTopTip().g(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void q0() {
        APKUtils.a k4;
        try {
            for (DownloadTask downloadTask : g1.f.G().v()) {
                if (com.join.android.app.common.utils.a.g0(this.f48723b).c(this.f48723b, downloadTask.getPackageName()) && (k4 = com.join.android.app.common.utils.a.g0(this.f48723b).k(this.f48723b, downloadTask.getPackageName())) != null && com.join.mgps.Util.d2.i(downloadTask.getVer()) && k4.d() == Integer.parseInt(downloadTask.getVer())) {
                    UtilsMy.g2(downloadTask, 5);
                }
            }
            d0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        getActivity().finish();
        Intent intent = new Intent();
        intent.setClass(this.f48723b, MGMainActivity_.class);
        intent.setFlags(67108864);
        intent.addFlags(536870912);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", 3);
        intent.putExtras(bundle);
        startActivity(intent);
        MApplication.f9221p = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void u0(Context context, String str) {
        g1.f.G().e0(str, true);
    }

    void v0(Object obj, CollectionBeanSubBusiness collectionBeanSubBusiness) {
        DownloadTask downloadTask;
        if (obj == null || collectionBeanSubBusiness == null || (downloadTask = collectionBeanSubBusiness.getDownloadTask()) == null || !(obj instanceof q.d)) {
            return;
        }
        q.d dVar = (q.d) obj;
        try {
            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
            if (f4 == null) {
                return;
            }
            long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
            if (downloadTask.getSize() == 0) {
                TextView textView = dVar.f43341h;
                textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
            } else {
                TextView textView2 = dVar.f43341h;
                textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
            }
            if (downloadTask.getStatus() == 12) {
                dVar.f43345l.setProgress((int) f4.getProgress());
            } else {
                dVar.f43344k.setProgress((int) f4.getProgress());
            }
            if (downloadTask.getStatus() == 2) {
                TextView textView3 = dVar.f43342i;
                textView3.setText(f4.getSpeed() + "/S");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0() {
        try {
            e0();
            for (int i2 = this.f48741t; i2 <= this.f48742u && i2 < this.f48726e.getAdapter().getCount(); i2++) {
                if (i2 != 0 && i2 <= this.f48730i.size()) {
                    DownloadTask downloadTask = (DownloadTask) this.f48726e.getItemAtPosition(i2);
                    if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        View childAt = this.f48726e.getChildAt(i2 - this.f48741t);
                        if (childAt.getTag() instanceof p.o0) {
                            p.o0 o0Var = (p.o0) childAt.getTag();
                            try {
                                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                                if (f4 == null) {
                                    return;
                                }
                                long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                                if (downloadTask.getSize() == 0) {
                                    TextView textView = o0Var.f43169d;
                                    textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                } else {
                                    TextView textView2 = o0Var.f43169d;
                                    textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                }
                                if (downloadTask.getStatus() == 12) {
                                    o0Var.f43176k.setProgress((int) f4.getProgress());
                                } else {
                                    o0Var.f43175j.setProgress((int) f4.getProgress());
                                }
                                if (downloadTask.getStatus() == 2) {
                                    TextView textView3 = o0Var.f43170e;
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
                if (this.f48726e.getItemAtPosition(i2) instanceof CollectionBeanSubBusiness) {
                    v0(this.f48726e.getChildAt(i2 - this.f48741t).getTag(), (CollectionBeanSubBusiness) this.f48726e.getItemAtPosition(i2));
                }
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x0(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y0(DownloadTask downloadTask, int i2) {
        boolean z3;
        boolean z4;
        z0(downloadTask, i2);
        f0();
        if (i2 == 4) {
            w0();
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        UtilsMy.D3(this.f48730i);
        boolean z5 = true;
        if (status == 2 || status == 10 || status == 0) {
            Iterator<DownloadTask> it2 = this.f48730i.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z3 = false;
                    break;
                }
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next.setPath(downloadTask.getPath());
                    next.setStatus(2);
                    if (i2 == 7) {
                        next.setStatus(10);
                    }
                    z3 = true;
                }
            }
            c0();
            if (!z3) {
                DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                if (B == null) {
                    return;
                }
                B.setStatus(2);
                if (i2 == 7) {
                    B.setStatus(10);
                }
                String fileType = downloadTask.getFileType();
                Dtype dtype = Dtype.chajian;
                if (fileType.equals(dtype.name())) {
                    this.f48730i.add(0, B);
                } else if (this.f48730i.size() == 0) {
                    this.f48730i.add(B);
                } else if (this.f48730i.get(0).getFileType().equals(dtype.name())) {
                    this.f48730i.add(1, B);
                } else {
                    this.f48730i.add(0, B);
                }
                c0();
                M();
                return;
            }
            c0();
        } else if (status == 3 || status == 6) {
            Iterator<DownloadTask> it3 = this.f48730i.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z4 = false;
                    break;
                }
                DownloadTask next2 = it3.next();
                if (next2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next2.setPath(downloadTask.getPath());
                    UtilsMy.C3(next2);
                    next2.setStatus(status);
                    z4 = true;
                    break;
                }
            }
            if (!z4) {
                DownloadTask B2 = g1.f.G().B(downloadTask.getCrc_link_type_val());
                if (B2 == null) {
                    return;
                }
                String fileType2 = downloadTask.getFileType();
                Dtype dtype2 = Dtype.chajian;
                if (fileType2.equals(dtype2.name())) {
                    this.f48730i.add(0, B2);
                } else if (this.f48730i.size() == 0) {
                    this.f48730i.add(B2);
                } else if (this.f48730i.get(0).getFileType().equals(dtype2.name())) {
                    this.f48730i.add(1, B2);
                } else {
                    this.f48730i.add(0, B2);
                }
            }
            c0();
        } else if (status == 12 || status == 13) {
            Iterator<DownloadTask> it4 = this.f48730i.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    break;
                }
                DownloadTask next3 = it4.next();
                if (next3.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    UtilsMy.C3(next3);
                    next3.setStatus(status);
                    break;
                }
            }
            c0();
        } else if (status == 11) {
            Iterator<DownloadTask> it5 = this.f48730i.iterator();
            while (true) {
                if (!it5.hasNext()) {
                    break;
                }
                DownloadTask next4 = it5.next();
                if (next4.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next4.setStatus(status);
                    if (next4.getFileType().equals(Dtype.chajian.name()) && next4.getDown_type() == 2) {
                        onResume();
                        return;
                    }
                }
            }
            c0();
        } else if (status == 7) {
            com.join.mgps.Util.t0.c("收到删除消息");
            Iterator<DownloadTask> it6 = this.f48730i.iterator();
            while (true) {
                if (!it6.hasNext()) {
                    break;
                } else if (it6.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    it6.remove();
                    com.join.mgps.Util.t0.c("移除数据");
                    break;
                }
            }
            com.join.mgps.Util.t0.c("开始刷新数据 downloadingTasks。size=" + this.f48730i.size());
            c0();
            M();
        } else if (status == 5) {
            Iterator<DownloadTask> it7 = this.f48730i.iterator();
            while (true) {
                if (!it7.hasNext()) {
                    break;
                }
                DownloadTask next5 = it7.next();
                if (next5.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next5.setGameZipPath(downloadTask.getGameZipPath());
                    next5.setStatus(5);
                    it7.remove();
                    break;
                }
            }
            Iterator<DownloadTask> it8 = this.f48732k.iterator();
            while (true) {
                if (!it8.hasNext()) {
                    z5 = false;
                    break;
                }
                DownloadTask next6 = it8.next();
                if (next6.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    next6.setGameZipPath(downloadTask.getGameZipPath());
                    next6.setStatus(5);
                    break;
                }
            }
            Iterator<DownloadTask> it9 = this.f48731j.iterator();
            while (it9.hasNext()) {
                if (it9.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() != 11) {
                    it9.remove();
                }
            }
            if (this.f48736o == 2 && !z5 && (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name()))) {
                this.f48732k.add(0, downloadTask);
            }
            c0();
            M();
            P(downloadTask);
        } else {
            Iterator<DownloadTask> it10 = this.f48731j.iterator();
            while (it10.hasNext()) {
                if (it10.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() != 11) {
                    it10.remove();
                }
            }
            Iterator<DownloadTask> it11 = this.f48729h.f().getDownloadFiles().iterator();
            while (true) {
                if (!it11.hasNext()) {
                    break;
                }
                DownloadTask next7 = it11.next();
                if (downloadTask != null) {
                    if (downloadTask.getCrc_link_type_val().equals(next7.getCrc_link_type_val())) {
                        next7.setStatus(downloadTask.getStatus());
                        c0();
                        break;
                    }
                } else {
                    return;
                }
            }
            M();
        }
    }

    void z0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    j0(downloadTask);
                    return;
                case 3:
                    h0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    k0(downloadTask);
                    return;
                case 6:
                    i0(downloadTask);
                    return;
            }
        }
    }
}
