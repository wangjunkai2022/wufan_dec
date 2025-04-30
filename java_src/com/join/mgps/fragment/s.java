package com.join.mgps.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.i;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.BreakBeanMain;
import com.join.mgps.dto.CollectionBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.lang.reflect.Field;
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
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: CollectionModuleTwoFragment.java */
@EFragment(R.layout.collection_break)
/* loaded from: classes.dex */
public class s extends Fragment implements AbsListView.OnScrollListener {

    /* renamed from: b  reason: collision with root package name */
    private Context f50152b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    PtrClassicFrameLayout f50153c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f50154d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f50155e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f50156f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f50157g;

    /* renamed from: h  reason: collision with root package name */
    private CollectionBean f50158h;

    /* renamed from: i  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f50159i;

    /* renamed from: j  reason: collision with root package name */
    private com.join.mgps.adapter.i f50160j;

    /* renamed from: k  reason: collision with root package name */
    private CollectionDataBean f50161k;

    /* renamed from: l  reason: collision with root package name */
    private String f50162l;

    /* renamed from: m  reason: collision with root package name */
    private String f50163m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.d f50164n;
    @StringRes(resName = "net_excption")

    /* renamed from: o  reason: collision with root package name */
    String f50165o;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: p  reason: collision with root package name */
    String f50166p;

    /* renamed from: s  reason: collision with root package name */
    private String f50169s;

    /* renamed from: t  reason: collision with root package name */
    private SimpleDraweeView f50170t;

    /* renamed from: u  reason: collision with root package name */
    private TextView f50171u;

    /* renamed from: w  reason: collision with root package name */
    private BreakBeanMain f50173w;

    /* renamed from: x  reason: collision with root package name */
    List<DownloadTask> f50174x;

    /* renamed from: a  reason: collision with root package name */
    private final String f50151a = "CollectionModuleTwoFragment";

    /* renamed from: q  reason: collision with root package name */
    private AtomicInteger f50167q = new AtomicInteger(1);

    /* renamed from: r  reason: collision with root package name */
    private int f50168r = 10;

    /* renamed from: v  reason: collision with root package name */
    private String f50172v = "";

    /* renamed from: y  reason: collision with root package name */
    private Map<String, DownloadTask> f50175y = new ConcurrentHashMap();

    /* renamed from: z  reason: collision with root package name */
    private int f50176z = 0;
    private CollectionDataBean A = null;
    private int B = 0;
    private boolean C = false;

    /* compiled from: CollectionModuleTwoFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (s.this.C) {
                return;
            }
            s.this.Q();
        }
    }

    /* compiled from: CollectionModuleTwoFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (s.this.C) {
                return;
            }
            s.this.f50167q.set(1);
            s.this.Q();
        }
    }

    /* compiled from: CollectionModuleTwoFragment.java */
    /* loaded from: classes4.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            int i4 = i2 - 1;
            if (i4 >= s.this.f50159i.size() || i4 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) s.this.f50159i.get(i4);
            if (collectionBeanSub.getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(s.this.f50152b, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    private void W(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f50174x.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f50175y.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f50159i) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f50175y.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f50175y.get(collectionBeanSubBusiness.getGame_id());
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
        this.f50160j.notifyDataSetChanged();
    }

    private void X(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50175y;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f50160j.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void Z(DownloadTask downloadTask) {
        UtilsMy.E3(this.f50174x, downloadTask);
        if (!this.f50175y.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50174x.add(downloadTask);
            this.f50175y.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        e0(downloadTask);
        this.f50160j.notifyDataSetChanged();
    }

    private void a0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50175y;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50174x.add(downloadTask);
            this.f50175y.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        e0(downloadTask);
        DownloadTask downloadTask2 = this.f50175y.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f50160j.notifyDataSetChanged();
    }

    private List<CollectionBeanSubBusiness> d0(List<CollectionBeanSubBusiness> list) {
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.f50174x.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f50175y.get(mod_info.getMain_game_id());
                        boolean z3 = false;
                        boolean c4 = (downloadTask == null || downloadTask.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask.getPackageName());
                        DownloadTask downloadTask2 = this.f50175y.get(mod_info.getMod_game_id());
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

    private void e0(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f50159i) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f50175y.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f50175y.get(mod_info.getMod_game_id());
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

    private void g0() {
        DownloadTask downloadTask;
        for (int i2 = this.B; i2 <= this.f50176z; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f50154d.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f50154d.getChildAt(i2 - this.B);
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
    public void Q() {
        if (com.join.android.app.common.utils.f.j(this.f50152b)) {
            this.C = true;
            try {
                try {
                    CollectionBean G1 = this.f50164n.G1(S(this.f50169s, this.f50167q.get()));
                    this.f50158h = G1;
                    if (G1 != null) {
                        if (G1.getMessages().getData() != null && this.f50158h.getMessages().getData().size() > 0) {
                            CollectionDataBean collectionDataBean = this.f50158h.getMessages().getData().get(0);
                            this.f50161k = collectionDataBean;
                            if (collectionDataBean.getInfo().size() > 0) {
                                List<CollectionBeanSub> sub = this.f50161k.getInfo().get(0).getSub();
                                BreakBeanMain main = this.f50161k.getInfo().get(0).getMain();
                                this.f50173w = main;
                                if (main != null) {
                                    this.f50162l = main.getTpl_pic();
                                    this.f50163m = this.f50173w.getInfo();
                                }
                                this.f50167q.incrementAndGet();
                                ArrayList arrayList = new ArrayList();
                                for (CollectionBeanSub collectionBeanSub : sub) {
                                    collectionBeanSub.set_from(111);
                                    collectionBeanSub.set_from_type(121);
                                    arrayList.add(new CollectionBeanSubBusiness(collectionBeanSub));
                                }
                                showMain(d0(arrayList));
                            } else if (this.f50167q.get() == 1) {
                                showLodingFailed();
                            } else {
                                U();
                            }
                        }
                    } else {
                        showLodingFailed();
                        f0();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showLodingFailed();
                    f0();
                }
                return;
            } finally {
                this.C = false;
            }
        }
        f0();
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R(CollectionDataBean collectionDataBean) {
        if (collectionDataBean != null) {
            this.f50167q.incrementAndGet();
            List<CollectionBeanSub> sub = collectionDataBean.getInfo().get(0).getSub();
            this.f50162l = collectionDataBean.getInfo().get(0).getMain().getTpl_pic();
            this.f50163m = collectionDataBean.getInfo().get(0).getMain().getInfo();
            ArrayList arrayList = new ArrayList();
            for (CollectionBeanSub collectionBeanSub : sub) {
                arrayList.add(new CollectionBeanSubBusiness(collectionBeanSub));
            }
            showMain(d0(arrayList));
            return;
        }
        Q();
    }

    public CommonRequestBean S(String str, int i2) {
        return RequestBeanUtil.getInstance(this.f50152b).getCollectionRequestBean(str, i2, this.f50168r, "", "", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T() {
        com.join.android.app.common.manager.a.h().j(this.f50152b, this.f50165o, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U() {
        this.f50154d.setNoMore();
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
        com.join.mgps.adapter.i iVar = this.f50160j;
        if (iVar != null) {
            iVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50164n = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        this.f50152b = getActivity();
        List<DownloadTask> d4 = g1.f.G().d();
        this.f50174x = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f50174x) {
                this.f50175y.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f50169s = getArguments().getString("collection_id");
        showLoding();
        R(this.A);
        View inflate = LayoutInflater.from(this.f50152b).inflate(R.layout.collection_two_header, (ViewGroup) null);
        this.f50170t = (SimpleDraweeView) inflate.findViewById(R.id.imgBreak);
        this.f50171u = (TextView) inflate.findViewById(R.id.textViewBreak);
        this.f50154d.addHeaderView(inflate);
        this.f50154d.setPreLoadCount(10);
        com.join.mgps.adapter.i iVar = new com.join.mgps.adapter.i(this.f50152b);
        this.f50160j = iVar;
        this.f50159i = iVar.c();
        this.f50154d.setAdapter((ListAdapter) this.f50160j);
        this.f50154d.setPullLoadEnable(new a());
        this.f50154d.setPullRefreshEnable(new b());
        this.f50154d.setOnItemClickListener(new c());
        this.f50154d.setOnScrollListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0() {
        com.join.android.app.common.manager.a.h().j(this.f50152b, this.f50166p, 1);
    }

    public void c0(CollectionDataBean collectionDataBean) {
        this.A = collectionDataBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        this.f50154d.t();
        this.f50154d.u();
    }

    void h0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    Z(downloadTask);
                    break;
                case 3:
                    W(downloadTask);
                    break;
                case 5:
                    a0(downloadTask);
                    break;
                case 6:
                    X(downloadTask);
                    break;
            }
        }
        this.f50160j.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
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
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            h0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    h0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    h0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    g0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            h0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            h0(a4, 8);
                            return;
                        case 13:
                            h0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            h0(a4, 5);
        } else {
            h0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f50176z = (i4 + i2) - 1;
        this.B = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f50167q.set(1);
        showLoding();
        Q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f50152b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f50155e.setVisibility(0);
        this.f50156f.setVisibility(8);
        this.f50153c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<CollectionBeanSubBusiness> list = this.f50159i;
        if (list != null || list.size() == 0) {
            this.f50156f.setVisibility(0);
            this.f50155e.setVisibility(8);
            this.f50153c.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSubBusiness> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f50156f.setVisibility(8);
        this.f50155e.setVisibility(8);
        this.f50153c.setVisibility(0);
        if (this.f50167q.get() == 2) {
            this.f50159i.clear();
        }
        this.f50159i.addAll(list);
        if (this.f50167q.get() == 2) {
            this.f50172v = list.get(0).getGame_id();
            String str = this.f50163m;
            if (str != null) {
                this.f50171u.setText(str);
            }
            String str2 = this.f50162l;
            if (str2 != null) {
                MyImageLoader.d(this.f50170t, R.drawable.banner_normal_icon, str2.trim());
                this.f50170t.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            if (list.size() < 10) {
                U();
            }
        }
        this.f50160j.notifyDataSetChanged();
        f0();
    }
}
