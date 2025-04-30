package com.join.mgps.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RequestTypePn;
import com.join.mgps.dto.ResultMainBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: ClassifyListGameFragment.java */
@EFragment(R.layout.classify_list_recy_layout)
/* loaded from: classes.dex */
public class f extends Fragment implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f36974a;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.adapter.v0 f36976c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XRecyclerView f36977d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f36978e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f36979f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f36980g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ImageView f36981h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f36982i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.d f36983j;

    /* renamed from: k  reason: collision with root package name */
    LinearLayoutManager f36984k;

    /* renamed from: m  reason: collision with root package name */
    List<DownloadTask> f36986m;

    /* renamed from: u  reason: collision with root package name */
    private ClassifyGameActivity f36994u;

    /* renamed from: b  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f36975b = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private int f36985l = 1;

    /* renamed from: n  reason: collision with root package name */
    private int f36987n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f36988o = 0;

    /* renamed from: p  reason: collision with root package name */
    private Map<String, DownloadTask> f36989p = new ConcurrentHashMap();

    /* renamed from: q  reason: collision with root package name */
    private int f36990q = 1;

    /* renamed from: r  reason: collision with root package name */
    private String f36991r = "";

    /* renamed from: s  reason: collision with root package name */
    private String f36992s = "";

    /* renamed from: t  reason: collision with root package name */
    private boolean f36993t = false;

    /* renamed from: v  reason: collision with root package name */
    final AtomicInteger f36995v = new AtomicInteger(0);

    /* renamed from: w  reason: collision with root package name */
    private String f36996w = "default";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClassifyListGameFragment.java */
    /* loaded from: classes3.dex */
    public class a implements XRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (f.this.f36993t) {
                return;
            }
            f.O(f.this);
            f fVar = f.this;
            fVar.S(fVar.f36991r, f.this.f36992s);
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    static /* synthetic */ int O(f fVar) {
        int i2 = fVar.f36985l;
        fVar.f36985l = i2 + 1;
        return i2;
    }

    public static f U(int i2, String str) {
        g gVar = new g();
        Bundle bundle = new Bundle();
        bundle.putString("romType", str);
        bundle.putInt("rankingType", i2);
        gVar.setArguments(bundle);
        return gVar;
    }

    public static f V(String str, String str2) {
        g gVar = new g();
        Bundle bundle = new Bundle();
        bundle.putString("romType", str2);
        bundle.putString("type", str);
        gVar.setArguments(bundle);
        return gVar;
    }

    public static f W(int i2, String str) {
        g gVar = new g();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bundle.putInt("rankingType", i2);
        gVar.setArguments(bundle);
        return gVar;
    }

    private void b0(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f36986m.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f36989p.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f36975b) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f36989p.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f36989p.get(collectionBeanSubBusiness.getGame_id());
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
        this.f36976c.notifyDataSetChanged();
    }

    private void c0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f36989p;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f36976c.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void d0(DownloadTask downloadTask) {
        UtilsMy.D3(this.f36986m);
        if (!this.f36989p.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f36986m.add(downloadTask);
            this.f36989p.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        l0(downloadTask);
        this.f36976c.notifyDataSetChanged();
    }

    private void e0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f36989p;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f36986m.add(downloadTask);
            this.f36989p.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        l0(downloadTask);
        DownloadTask downloadTask2 = this.f36989p.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f36976c.notifyDataSetChanged();
    }

    private void l0(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f36975b) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f36989p.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f36989p.get(mod_info.getMod_game_id());
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

    private void m0(List<CollectionBeanSubBusiness> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.f36986m) == null || list2.size() == 0) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.f36986m.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f36989p.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                        DownloadTask downloadTask2 = this.f36989p.get(mod_info.getMod_game_id());
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

    private void o0() {
        DownloadTask downloadTask;
        try {
            this.f36988o = this.f36984k.findFirstVisibleItemPosition();
            this.f36987n = this.f36984k.findLastVisibleItemPosition();
            for (int i2 = this.f36988o; i2 <= this.f36987n; i2++) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = this.f36976c.b().get(i2);
                if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f36977d.getChildAt(i2 - this.f36988o);
                    try {
                        TextView textView = (TextView) childAt.findViewById(R.id.appSize);
                        TextView textView2 = (TextView) childAt.findViewById(R.id.loding_info);
                        ProgressBar progressBar = (ProgressBar) childAt.findViewById(R.id.progressBarZip);
                        ProgressBar progressBar2 = (ProgressBar) childAt.findViewById(R.id.progressBar);
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            progressBar.setProgress((int) f4.getProgress());
                        } else {
                            progressBar2.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            textView2.setText(f4.getSpeed() + "/S");
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public void M() {
        XRecyclerView xRecyclerView;
        if (getActivity() == null || this.f36976c == null || ((ClassifyGameActivity) getActivity()).G0().equals(this.f36996w)) {
            return;
        }
        if (com.join.mgps.Util.d2.h(this.f36991r) && com.join.mgps.Util.d2.h(this.f36992s)) {
            return;
        }
        if (this.f36993t && (xRecyclerView = this.f36977d) != null) {
            xRecyclerView.y1();
            this.f36977d.z1();
            this.f36994u.N0(false);
        }
        LinearLayout linearLayout = this.f36979f;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f36978e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        XRecyclerView xRecyclerView2 = this.f36977d;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f36980g;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        this.f36985l = 1;
        S(this.f36991r, this.f36992s);
    }

    public CommonRequestBean R(String str, String str2, String str3) {
        return RequestBeanUtil.getInstance(this.f36974a).getGameListRequestBean(this.f36985l, 10, str, str2, this.f36990q, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S(String str, String str2) {
        ResultMainBean<List<CollectionBeanSub>> I0;
        if (com.join.android.app.common.utils.f.j(this.f36974a)) {
            if (getActivity() instanceof ClassifyGameActivity) {
                this.f36996w = ((ClassifyGameActivity) getActivity()).G0();
            }
            this.f36993t = true;
            AtomicInteger atomicInteger = this.f36995v;
            atomicInteger.set(atomicInteger.get() + 1);
            ArrayList arrayList = new ArrayList();
            try {
                try {
                    if (this.f36990q == 1001) {
                        I0 = this.f36983j.g0(RequestBeanUtil.getInstance(this.f36974a).getRankingV3(new RequestTypePn(Integer.parseInt(str), this.f36985l)));
                    } else {
                        I0 = this.f36983j.I0(R(str, str2, this.f36996w));
                    }
                    AtomicInteger atomicInteger2 = this.f36995v;
                    atomicInteger2.set(atomicInteger2.get() - 1);
                    for (CollectionBeanSub collectionBeanSub : I0.getMessages().getData()) {
                        arrayList.add(new CollectionBeanSubBusiness(collectionBeanSub));
                    }
                    if (arrayList.size() > 0) {
                        showMain(arrayList);
                    } else if (this.f36985l == 1 && arrayList.size() == 0) {
                        k0(true);
                    } else {
                        X();
                    }
                } catch (Exception e4) {
                    AtomicInteger atomicInteger3 = this.f36995v;
                    atomicInteger3.set(atomicInteger3.get() - 1);
                    e4.printStackTrace();
                    if (this.f36985l == 1 && arrayList.size() == 0) {
                        k0(false);
                    } else {
                        X();
                    }
                }
                return;
            } finally {
                this.f36993t = false;
            }
        }
        k0(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T() {
        this.f36985l = 1;
        S(this.f36991r, this.f36992s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X() {
        XRecyclerView xRecyclerView = this.f36977d;
        if (xRecyclerView != null) {
            xRecyclerView.setNoMore();
        }
        this.f36994u.N0(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z() {
        if (this.f36990q != 1001) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void a0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.v0 v0Var = this.f36976c;
        if (v0Var != null) {
            v0Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f36983j = com.join.mgps.rpc.impl.c.P1();
        this.f36994u = (ClassifyGameActivity) getActivity();
        com.join.mgps.Util.c0.a().d(this);
        this.f36978e.setBackgroundResource(R.color.activity_default_background);
        this.f36974a = getActivity();
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f36991r = arguments.getString("type");
        this.f36992s = arguments.getString("romType");
        int i2 = arguments.getInt("rankingType");
        this.f36990q = i2;
        if (i2 == 0) {
            this.f36990q = 1;
        }
        this.f36985l = 1;
        List<DownloadTask> d4 = g1.f.G().d();
        this.f36986m = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f36986m) {
                this.f36989p.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        com.join.mgps.adapter.v0 v0Var = new com.join.mgps.adapter.v0(this.f36974a);
        this.f36976c = v0Var;
        this.f36975b = v0Var.b();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f36974a);
        this.f36984k = linearLayoutManager;
        this.f36977d.setLayoutManager(linearLayoutManager);
        this.f36977d.setAdapter(this.f36976c);
        this.f36977d.setPreLoadCount(10);
        showLoding();
        S(this.f36991r, this.f36992s);
        this.f36977d.setLoadingMoreEnabled(true);
        this.f36977d.setLoadingListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void f0() {
        if (this.f36990q != 1001) {
            getActivity().finish();
        }
    }

    public void g0(String str) {
        if (str.equals(this.f36991r)) {
            return;
        }
        this.f36991r = str;
        this.f36977d.t1();
        this.f36985l = 1;
        showLoding();
        this.f36975b.clear();
        this.f36976c.notifyDataSetChanged();
        this.f36977d.setVisibility(8);
        S(this.f36991r, this.f36992s);
    }

    public void h0() {
        if (this.f36993t) {
            return;
        }
        this.f36985l = 1;
        this.f36977d.t1();
        S(this.f36991r, this.f36992s);
    }

    public void i0(String str) {
        String str2 = this.f36992s;
        if (str2 == null || str == null || str.equals(str2)) {
            return;
        }
        this.f36992s = str;
        XRecyclerView xRecyclerView = this.f36977d;
        if (xRecyclerView != null) {
            xRecyclerView.t1();
        }
        this.f36985l = 1;
        showLoding();
        this.f36975b.clear();
        com.join.mgps.adapter.v0 v0Var = this.f36976c;
        if (v0Var != null) {
            v0Var.notifyDataSetChanged();
        }
        this.f36977d.setVisibility(8);
        S(this.f36991r, this.f36992s);
    }

    public void j0(String str, String str2) {
        this.f36992s = str2;
        this.f36991r = str;
        this.f36977d.t1();
        this.f36985l = 1;
        showLoding();
        this.f36975b.clear();
        this.f36976c.notifyDataSetChanged();
        this.f36977d.setVisibility(8);
        S(this.f36991r, this.f36992s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k0(boolean z3) {
        XRecyclerView xRecyclerView = this.f36977d;
        if (xRecyclerView != null) {
            xRecyclerView.y1();
            this.f36977d.z1();
            this.f36994u.N0(false);
        }
        if (!z3) {
            if (this.f36985l == 1 && this.f36975b.size() == 0) {
                LinearLayout linearLayout = this.f36979f;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
                LinearLayout linearLayout2 = this.f36978e;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                XRecyclerView xRecyclerView2 = this.f36977d;
                if (xRecyclerView2 != null) {
                    xRecyclerView2.setVisibility(8);
                }
                LinearLayout linearLayout3 = this.f36980g;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(8);
                    return;
                }
                return;
            }
            try {
                com.join.mgps.Util.i2.a(this.f36974a).b(getString(R.string.net_connect_failed));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (z3 && this.f36985l == 1 && this.f36975b.size() == 0) {
            LinearLayout linearLayout4 = this.f36979f;
            if (linearLayout4 != null) {
                linearLayout4.setVisibility(8);
            }
            LinearLayout linearLayout5 = this.f36978e;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(8);
            }
            XRecyclerView xRecyclerView3 = this.f36977d;
            if (xRecyclerView3 != null) {
                xRecyclerView3.setVisibility(8);
            }
            LinearLayout linearLayout6 = this.f36980g;
            if (linearLayout6 != null) {
                linearLayout6.setVisibility(0);
            }
        } else if (z3 && this.f36985l == 1 && this.f36975b.size() > 0) {
            LinearLayout linearLayout7 = this.f36979f;
            if (linearLayout7 != null) {
                linearLayout7.setVisibility(8);
            }
            LinearLayout linearLayout8 = this.f36978e;
            if (linearLayout8 != null) {
                linearLayout8.setVisibility(8);
            }
            XRecyclerView xRecyclerView4 = this.f36977d;
            if (xRecyclerView4 != null) {
                xRecyclerView4.setVisibility(8);
            }
            LinearLayout linearLayout9 = this.f36980g;
            if (linearLayout9 != null) {
                linearLayout9.setVisibility(0);
            }
        }
    }

    public void n0(String str, String str2) {
        this.f36977d.t1();
        this.f36985l = 1;
        this.f36991r = str;
        this.f36992s = str2;
        S(str, str2);
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
            p0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    p0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    p0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.f36989p;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    o0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            p0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            p0(a4, 8);
                            return;
                        case 13:
                            p0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            p0(a4, 5);
        } else {
            p0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        com.join.mgps.adapter.v0 v0Var;
        super.onHiddenChanged(z3);
        if (z3 || (v0Var = this.f36976c) == null) {
            return;
        }
        v0Var.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f36987n = (i4 + i2) - 1;
        this.f36988o = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    void p0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    d0(downloadTask);
                    return;
                case 3:
                    b0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    e0(downloadTask);
                    return;
                case 6:
                    c0(downloadTask);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f36985l = 1;
        showLoding();
        S(this.f36991r, this.f36992s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f36974a);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        super.setUserVisibleHint(z3);
        if (z3 && (getActivity() instanceof ClassifyGameActivity)) {
            M();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.f36978e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f36979f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f36977d;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f36980g;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSubBusiness> list) {
        try {
            if (this.f36995v.get() > 0) {
                return;
            }
            LinearLayout linearLayout = this.f36979f;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.f36978e;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            XRecyclerView xRecyclerView = this.f36977d;
            if (xRecyclerView != null) {
                xRecyclerView.setVisibility(0);
            }
            LinearLayout linearLayout3 = this.f36980g;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            XRecyclerView xRecyclerView2 = this.f36977d;
            if (xRecyclerView2 != null) {
                xRecyclerView2.y1();
                this.f36977d.z1();
                this.f36994u.N0(false);
            }
            if (this.f36985l == 1) {
                this.f36975b.clear();
            }
            m0(list);
            this.f36975b.addAll(list);
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
                collectionBeanSubBusiness.set_from(108);
                collectionBeanSubBusiness.set_from_type(118);
            }
            if (this.f36977d != null) {
                if (list.size() == 0) {
                    this.f36977d.setNoMore();
                }
                this.f36976c.notifyDataSetChanged();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
