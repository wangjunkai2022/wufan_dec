package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.t3;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionInfo;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.StandAloneListBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.ptr.PtrClassicFrameLayout;
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
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: PaPaStandAloneV2Fragment.java */
@EFragment(R.layout.fragment_papa_standalone_v2)
/* loaded from: classes.dex */
public class y3 extends Fragment implements AbsListView.OnScrollListener {

    /* renamed from: v  reason: collision with root package name */
    private static final int f50782v = 20;

    /* renamed from: w  reason: collision with root package name */
    private static final int f50783w = 3;

    /* renamed from: x  reason: collision with root package name */
    public static final int f50784x = 1;

    /* renamed from: y  reason: collision with root package name */
    public static final int f50785y = 2;

    /* renamed from: z  reason: collision with root package name */
    public static final int f50786z = 3;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.d f50790d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f50791e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.adapter.t3 f50792f;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f50794h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f50795i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    PtrClassicFrameLayout f50796j;

    /* renamed from: k  reason: collision with root package name */
    private Activity f50797k;

    /* renamed from: l  reason: collision with root package name */
    String f50798l;

    /* renamed from: m  reason: collision with root package name */
    String f50799m;

    /* renamed from: n  reason: collision with root package name */
    private PaPaBean f50800n;

    /* renamed from: q  reason: collision with root package name */
    private int f50803q;

    /* renamed from: r  reason: collision with root package name */
    private int f50804r;

    /* renamed from: a  reason: collision with root package name */
    int f50787a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f50788b = 1;

    /* renamed from: c  reason: collision with root package name */
    private boolean f50789c = false;

    /* renamed from: g  reason: collision with root package name */
    List<PaPaBean> f50793g = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    private List<DownloadTask> f50801o = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    private Map<String, DownloadTask> f50802p = new ConcurrentHashMap();

    /* renamed from: s  reason: collision with root package name */
    private boolean f50805s = false;

    /* renamed from: t  reason: collision with root package name */
    private final View.OnClickListener f50806t = new d();

    /* renamed from: u  reason: collision with root package name */
    private View.OnClickListener f50807u = new e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Fragment.java */
    /* loaded from: classes4.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!y3.this.isActivityFinish() && y3.this.f50789c) {
                if (!com.join.android.app.common.utils.f.j(y3.this.f50797k)) {
                    y3.this.f50791e.t();
                    y3 y3Var = y3.this;
                    y3Var.showToast(y3Var.getString(R.string.net_connect_failed));
                    return;
                }
                y3.this.R();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Fragment.java */
    /* loaded from: classes4.dex */
    public class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (y3.this.isActivityFinish()) {
                return;
            }
            if (com.join.android.app.common.utils.f.j(y3.this.f50797k)) {
                y3.this.f50788b = 1;
                y3.this.R();
                return;
            }
            y3.this.f50791e.u();
            y3 y3Var = y3.this;
            y3Var.showToast(y3Var.getString(R.string.net_connect_failed));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneV2Fragment.java */
    /* loaded from: classes4.dex */
    public class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            List<PaPaBean> list = y3.this.f50793g;
            if (list == null || list.size() <= 0 || i2 >= y3.this.f50793g.size() || y3.this.f50793g.get(i2).getType() != PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                return;
            }
            y3.this.T((AppBean) y3.this.f50793g.get(i2).getTypeValue());
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getTag() instanceof AppBean) {
                y3.this.T((AppBean) view.getTag());
            } else if (view.getTag() instanceof CollectionInfo) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(2);
                intentDateBean.setTpl_type("4");
                intentDateBean.setCrc_link_type_val(((CollectionInfo) view.getTag()).getCollection_id());
                IntentUtil.getInstance().intentActivity(y3.this.f50797k, intentDateBean);
            } else if (view.getTag() instanceof GameHeadAd.SubInfo) {
                IntentUtil.getInstance().intentActivity(y3.this.f50797k, ((GameHeadAd.SubInfo) view.getTag()).getIntentDataBean());
            }
        }
    }

    /* compiled from: PaPaStandAloneV2Fragment.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AppBean appBean = (AppBean) view.getTag();
            if (appBean == null) {
                return;
            }
            DownloadTask downloadTask = appBean.getDownloadTask();
            String plugin_num = appBean.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(appBean.getDown_url_remote());
                if (downloadTask == null) {
                    downloadTask = appBean.getDownloadtaskDown();
                }
                UtilsMy.h2(downloadTask, y3.this.f50797k);
                IntentUtil.getInstance().intentActivity(y3.this.f50797k, intentDateBean);
            } else if (downloadTask == null) {
                if (UtilsMy.e0(appBean.getTag_info()) && com.join.android.app.common.utils.a.g0(y3.this.f50797k).c(y3.this.f50797k, appBean.getPackageName())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(y3.this.f50797k).k(y3.this.f50797k, appBean.getPackageName());
                    if (!com.join.mgps.Util.d2.i(appBean.getVer()) || k4.d() >= Integer.parseInt(appBean.getVer())) {
                        com.join.android.app.common.utils.a.g0(y3.this.f50797k);
                        APKUtils.X(y3.this.f50797k, appBean.getPackageName());
                        return;
                    }
                }
                if (UtilsMy.o0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(y3.this.f50797k, appBean.getCrc_sign_id());
                } else {
                    UtilsMy.H0(y3.this.f50797k, appBean);
                }
            } else {
                int status = downloadTask != null ? downloadTask.getStatus() : 0;
                if (UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 13) {
                        com.php25.PDownload.d.k(y3.this.f50797k, downloadTask);
                        return;
                    }
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(y3.this.f50797k, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (!com.join.android.app.common.utils.f.j(y3.this.f50797k)) {
                                            y3.this.showToast("无网络连接");
                                            return;
                                        } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                            downloadTask.setVer(appBean.getVer());
                                            downloadTask.setVer_name(appBean.getVer_name());
                                            downloadTask.setUrl(appBean.getDown_url_remote());
                                            UtilsMy.w3(y3.this.getContext(), downloadTask);
                                            return;
                                        }
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(y3.this.f50797k)) {
                                                    y3.this.showToast("无网络连接");
                                                    return;
                                                } else if (appBean.getDown_status() == 5) {
                                                    UtilsMy.R0(y3.this.f50797k, downloadTask);
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(appBean.getVer());
                                                    downloadTask.setVer_name(appBean.getVer_name());
                                                    downloadTask.setUrl(appBean.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, y3.this.f50797k);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, y3.this.f50797k);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, y3.this.f50797k);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                if (UtilsMy.o0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(y3.this.f50797k, appBean.getCrc_sign_id());
                } else if (appBean.getDown_status() == 5) {
                    UtilsMy.R0(y3.this.f50797k, downloadTask);
                } else {
                    UtilsMy.F0(y3.this.f50797k, downloadTask, appBean.getTp_down_url(), appBean.getOther_down_switch(), appBean.getCdn_down_switch());
                }
            }
        }
    }

    private void P(List<PaPaBean> list, List<DownloadTask> list2) {
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : list2) {
            for (PaPaBean paPaBean : list) {
                boolean z3 = false;
                if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                    for (AppBean appBean : (List) paPaBean.getTypeValue()) {
                        if (appBean.getMod_info() != null) {
                            ModInfoBean mod_info = appBean.getMod_info();
                            DownloadTask downloadTask2 = this.f50802p.get(mod_info.getMain_game_id());
                            boolean c4 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask2.getPackageName());
                            DownloadTask downloadTask3 = this.f50802p.get(mod_info.getMod_game_id());
                            boolean D = (downloadTask3 == null || downloadTask3.getStatus() != 5) ? false : com.join.mgps.va.overmind.e.p().D(downloadTask3.getPackageName());
                            if (D && c4) {
                                if (downloadTask.getCrc_link_type_val().equals(appBean.getCrc_sign_id())) {
                                    appBean.setDownloadTask(downloadTask);
                                }
                            } else if (D) {
                                if (appBean.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(appBean.getMod_info().getMod_game_id())) {
                                    appBean.setDownloadTask(downloadTask);
                                }
                            } else if (c4) {
                                if (downloadTask.getCrc_link_type_val().equals(appBean.getCrc_sign_id())) {
                                    appBean.setDownloadTask(downloadTask);
                                }
                            } else {
                                DownloadTask B = appBean.getMod_info() != null ? g1.f.G().B(appBean.getMod_info().getMod_game_id()) : null;
                                if (B == null) {
                                    B = g1.f.G().B(appBean.getCrc_sign_id());
                                }
                                if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                    appBean.setDownloadTask(downloadTask);
                                }
                            }
                        } else if (appBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                            appBean.setDownloadTask(downloadTask);
                        }
                    }
                } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                    AppBean appBean2 = (AppBean) paPaBean.getTypeValue();
                    if (appBean2.getMod_info() != null) {
                        ModInfoBean mod_info2 = appBean2.getMod_info();
                        DownloadTask downloadTask4 = this.f50802p.get(mod_info2.getMain_game_id());
                        boolean c5 = (downloadTask4 == null || downloadTask4.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask4.getPackageName());
                        DownloadTask downloadTask5 = this.f50802p.get(mod_info2.getMod_game_id());
                        if (downloadTask5 != null && downloadTask5.getStatus() == 5) {
                            z3 = com.join.mgps.va.overmind.e.p().D(downloadTask5.getPackageName());
                        }
                        if (z3 && c5) {
                            if (downloadTask.getCrc_link_type_val().equals(appBean2.getCrc_sign_id())) {
                                appBean2.setDownloadTask(downloadTask);
                            }
                        } else if (z3) {
                            if (appBean2.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(appBean2.getMod_info().getMod_game_id())) {
                                appBean2.setDownloadTask(downloadTask);
                            }
                        } else if (c5) {
                            if (downloadTask.getCrc_link_type_val().equals(appBean2.getCrc_sign_id())) {
                                appBean2.setDownloadTask(downloadTask);
                            }
                        } else {
                            DownloadTask B2 = appBean2.getMod_info() != null ? g1.f.G().B(appBean2.getMod_info().getMod_game_id()) : null;
                            if (B2 == null) {
                                B2 = g1.f.G().B(appBean2.getCrc_sign_id());
                            }
                            if (B2 != null && downloadTask.getCrc_link_type_val().equals(B2.getCrc_link_type_val())) {
                                appBean2.setDownloadTask(downloadTask);
                            }
                        }
                    } else if (appBean2.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        appBean2.setDownloadTask(downloadTask);
                    }
                }
            }
        }
    }

    private void S() {
        if (com.join.android.app.common.utils.f.j(this.f50797k)) {
            g0();
            R();
            return;
        }
        e0();
    }

    private void V(ResultMainBean<List<StandAloneListBean>> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean != null && resultMainBean.getMessages() != null && resultMainBean.getMessages().getData() != null) {
            if (resultMainBean.getFlag() == 0) {
                h0();
                return;
            }
            List<StandAloneListBean> data = resultMainBean.getMessages().getData();
            if (data != null && data.size() > 0) {
                this.f50789c = true;
            } else {
                this.f50789c = false;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(Q(data));
            l0(arrayList);
            hideLoading();
            return;
        }
        f0();
    }

    public static y3 X(int i2) {
        z3 z3Var = new z3();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        z3Var.setArguments(bundle);
        return z3Var;
    }

    private void a0(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f50801o.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f50802p.remove(next.getCrc_link_type_val());
                    it2.remove();
                    for (PaPaBean paPaBean : this.f50793g) {
                        if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                            for (AppBean appBean : (List) paPaBean.getTypeValue()) {
                                if (appBean.getMod_info() != null) {
                                    DownloadTask downloadTask2 = this.f50802p.get(appBean.getMod_info().getMod_game_id());
                                    DownloadTask downloadTask3 = this.f50802p.get(appBean.getGame_id());
                                    if (downloadTask2 == null && downloadTask3 == null) {
                                        appBean.setDownloadTask(null);
                                    } else if (downloadTask2 != null) {
                                        appBean.setDownloadTask(downloadTask2);
                                    } else if (downloadTask3 != null) {
                                        appBean.setDownloadTask(downloadTask3);
                                    } else if (appBean.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                        appBean.setDownloadTask(null);
                                    }
                                } else if (appBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                    appBean.setDownloadTask(null);
                                }
                            }
                        } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                            AppBean appBean2 = (AppBean) paPaBean.getTypeValue();
                            if (appBean2.getMod_info() != null) {
                                DownloadTask B = g1.f.G().B(appBean2.getMod_info().getMod_game_id());
                                DownloadTask B2 = g1.f.G().B(appBean2.getGame_id());
                                if (B == null && B2 == null) {
                                    appBean2.setDownloadTask(null);
                                } else if (B != null) {
                                    appBean2.setDownloadTask(B);
                                } else if (B2 != null) {
                                    appBean2.setDownloadTask(B2);
                                } else if (appBean2.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                    appBean2.setDownloadTask(null);
                                }
                            } else if (appBean2.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                appBean2.setDownloadTask(null);
                            }
                        }
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f50792f.notifyDataSetChanged();
    }

    private void b0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50802p;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f50792f.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void c0(DownloadTask downloadTask) {
        UtilsMy.E3(this.f50801o, downloadTask);
        if (!this.f50802p.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50801o.add(downloadTask);
            this.f50802p.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        i0(downloadTask);
        this.f50792f.notifyDataSetChanged();
    }

    private void d0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50802p;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50801o.add(downloadTask);
            this.f50802p.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        i0(downloadTask);
        DownloadTask downloadTask2 = this.f50802p.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f50792f.notifyDataSetChanged();
    }

    private void i0(DownloadTask downloadTask) {
        try {
            for (PaPaBean paPaBean : this.f50793g) {
                boolean z3 = false;
                if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                    for (AppBean appBean : (List) paPaBean.getTypeValue()) {
                        if (appBean.getMod_info() != null) {
                            ModInfoBean mod_info = appBean.getMod_info();
                            DownloadTask downloadTask2 = this.f50802p.get(mod_info.getMain_game_id());
                            boolean z4 = true;
                            boolean z5 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                            DownloadTask downloadTask3 = this.f50802p.get(mod_info.getMod_game_id());
                            if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                                z4 = false;
                            }
                            if (z4 && z5) {
                                if (downloadTask.getCrc_link_type_val().equals(appBean.getCrc_sign_id())) {
                                    appBean.setDownloadTask(downloadTask);
                                }
                            } else if (z4) {
                                if (appBean.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(appBean.getMod_info().getMod_game_id())) {
                                    appBean.setDownloadTask(downloadTask);
                                }
                            } else if (z5) {
                                if (downloadTask.getCrc_link_type_val().equals(appBean.getCrc_sign_id())) {
                                    appBean.setDownloadTask(downloadTask);
                                }
                            } else {
                                DownloadTask B = appBean.getMod_info() != null ? g1.f.G().B(appBean.getMod_info().getMod_game_id()) : null;
                                if (B == null) {
                                    B = g1.f.G().B(appBean.getCrc_sign_id());
                                }
                                if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                    appBean.setDownloadTask(downloadTask);
                                }
                            }
                        } else if (appBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                            appBean.setDownloadTask(downloadTask);
                        }
                    }
                } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                    AppBean appBean2 = (AppBean) paPaBean.getTypeValue();
                    if (appBean2.getMod_info() != null) {
                        ModInfoBean mod_info2 = appBean2.getMod_info();
                        DownloadTask downloadTask4 = this.f50802p.get(mod_info2.getMain_game_id());
                        boolean c4 = (downloadTask4 == null || downloadTask4.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask4.getPackageName());
                        DownloadTask downloadTask5 = this.f50802p.get(mod_info2.getMod_game_id());
                        if (downloadTask5 != null && downloadTask5.getStatus() == 5) {
                            z3 = com.join.mgps.va.overmind.e.p().D(downloadTask5.getPackageName());
                        }
                        if (z3 && c4) {
                            if (downloadTask.getCrc_link_type_val().equals(appBean2.getCrc_sign_id())) {
                                appBean2.setDownloadTask(downloadTask);
                            }
                        } else if (z3) {
                            if (appBean2.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(appBean2.getMod_info().getMod_game_id())) {
                                appBean2.setDownloadTask(downloadTask);
                            }
                        } else if (c4) {
                            if (downloadTask.getCrc_link_type_val().equals(appBean2.getCrc_sign_id())) {
                                appBean2.setDownloadTask(downloadTask);
                            }
                        } else {
                            DownloadTask B2 = appBean2.getMod_info() != null ? g1.f.G().B(appBean2.getMod_info().getMod_game_id()) : null;
                            if (B2 == null) {
                                B2 = g1.f.G().B(appBean2.getCrc_sign_id());
                            }
                            if (B2 != null && downloadTask.getCrc_link_type_val().equals(B2.getCrc_link_type_val())) {
                                appBean2.setDownloadTask(downloadTask);
                                return;
                            }
                        }
                    } else if (appBean2.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        appBean2.setDownloadTask(downloadTask);
                    }
                } else {
                    continue;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void j0() {
        for (int i2 = this.f50804r; i2 <= this.f50803q; i2++) {
            PaPaBean paPaBean = (PaPaBean) this.f50791e.getItemAtPosition(i2);
            if (paPaBean != null) {
                if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                    if (i2 >= 14) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("tbl>>>i=");
                        sb.append(i2);
                    }
                    DownloadTask downloadTask = ((AppBean) paPaBean.getTypeValue()).getDownloadTask();
                    if (i2 >= 14) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("tbl>>>downloadTask:");
                        sb2.append(downloadTask);
                    }
                    if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        View childAt = this.f50791e.getChildAt(i2 - this.f50804r);
                        if (childAt.getTag() instanceof t3.i) {
                            t3.i iVar = (t3.i) childAt.getTag();
                            try {
                                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                                if (f4 == null) {
                                    return;
                                }
                                long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                                if (downloadTask.getSize() == 0) {
                                    TextView textView = iVar.f44122k;
                                    textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                } else {
                                    TextView textView2 = iVar.f44122k;
                                    textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                }
                                if (downloadTask.getStatus() == 12) {
                                    iVar.f44116e.setProgress((int) f4.getProgress());
                                } else {
                                    iVar.f44117f.setProgress((int) f4.getProgress());
                                }
                                if (downloadTask.getStatus() == 2) {
                                    TextView textView3 = iVar.f44123l;
                                    textView3.setText(f4.getSpeed() + "/S");
                                }
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        } else {
                            continue;
                        }
                    }
                } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                    List list = (List) paPaBean.getTypeValue();
                    for (int i4 = 0; i4 < list.size(); i4++) {
                        DownloadTask downloadTask2 = ((AppBean) list.get(i4)).getDownloadTask();
                        if (downloadTask2 != null && (downloadTask2.getStatus() == 2 || downloadTask2.getStatus() == 12)) {
                            View childAt2 = this.f50791e.getChildAt(i2 - this.f50804r);
                            if (childAt2.getTag() instanceof t3.k) {
                                t3.k kVar = (t3.k) childAt2.getTag();
                                try {
                                    DownloadTask f5 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                                    if (f5 == null) {
                                        return;
                                    }
                                    TextView textView4 = (TextView) kVar.f44127a.getLayoutManager().findViewByPosition(i4).findViewById(R.id.mgListviewItemInstall);
                                    if (textView4 != null) {
                                        textView4.setText(f5.getProgress() + "%");
                                    }
                                } catch (Exception e5) {
                                    e5.printStackTrace();
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            }
        }
    }

    List<PaPaBean> Q(List<StandAloneListBean> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; list.size() > 0 && i2 < list.size(); i2++) {
            StandAloneListBean standAloneListBean = list.get(i2);
            PaPaBean paPaBean = new PaPaBean();
            String title = standAloneListBean.getTitle();
            if (!com.join.mgps.Util.d2.h(title)) {
                CollectionInfo collectionInfo = new CollectionInfo();
                collectionInfo.setTitle(title);
                paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TITLE.value());
                paPaBean.setTypeValue(collectionInfo);
            }
            if (standAloneListBean.getType().equals("game_list_h") && standAloneListBean.getGame_list() != null && standAloneListBean.getGame_list().size() > 0) {
                int i4 = this.f50787a;
                if (i4 == 1) {
                    arrayList.add(this.f50800n);
                    arrayList.add(paPaBean);
                } else if (i4 == 2 && this.f50788b < 2) {
                    arrayList.add(this.f50800n);
                    arrayList.add(paPaBean);
                }
                for (AppBean appBean : standAloneListBean.getGame_list()) {
                    appBean.set_from(107);
                    appBean.set_from_type(117);
                }
                PaPaBean paPaBean2 = new PaPaBean();
                paPaBean2.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value());
                paPaBean2.setTypeValue(standAloneListBean.getGame_list());
                arrayList.add(paPaBean2);
            } else if (standAloneListBean.getType().equals("game_list_v") && standAloneListBean.getGame_list() != null && standAloneListBean.getGame_list().size() > 0) {
                int i5 = this.f50787a;
                if (i5 == 1) {
                    arrayList.add(this.f50800n);
                    arrayList.add(paPaBean);
                } else if (i5 == 2 && this.f50788b < 2) {
                    arrayList.add(this.f50800n);
                    arrayList.add(paPaBean);
                }
                for (int i6 = 0; i6 < standAloneListBean.getGame_list().size(); i6++) {
                    PaPaBean paPaBean3 = new PaPaBean();
                    paPaBean3.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value());
                    AppBean appBean2 = standAloneListBean.getGame_list().get(i6);
                    appBean2.set_from(107);
                    appBean2.set_from_type(117);
                    paPaBean3.setTypeValue(appBean2);
                    arrayList.add(paPaBean3);
                }
            } else if (standAloneListBean.getType().equals("tag_type") && standAloneListBean.getList() != null && standAloneListBean.getList().size() > 0) {
                int i7 = this.f50787a;
                if (i7 == 1) {
                    arrayList.add(this.f50800n);
                    arrayList.add(paPaBean);
                } else if (i7 == 2 && this.f50788b < 2) {
                    arrayList.add(this.f50800n);
                    arrayList.add(paPaBean);
                }
                ArrayList arrayList2 = new ArrayList();
                for (int i8 = 0; i8 < standAloneListBean.getList().size(); i8++) {
                    arrayList2.add(standAloneListBean.getList().get(i8));
                    if (arrayList2.size() == 3 || i8 == standAloneListBean.getList().size() - 1) {
                        ArrayList arrayList3 = new ArrayList();
                        arrayList3.addAll(arrayList2);
                        PaPaBean paPaBean4 = new PaPaBean();
                        paPaBean4.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TAG.value());
                        paPaBean4.setTypeValue(arrayList3);
                        arrayList.add(paPaBean4);
                        arrayList2.clear();
                    }
                }
                PaPaBean paPaBean5 = new PaPaBean();
                paPaBean5.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_40.value());
                arrayList.add(paPaBean5);
            } else if (standAloneListBean.getType().equals("company_type") && standAloneListBean.getList() != null && standAloneListBean.getList().size() > 0) {
                int i9 = this.f50787a;
                if (i9 == 1) {
                    arrayList.add(this.f50800n);
                    arrayList.add(paPaBean);
                } else if (i9 == 2 && this.f50788b < 2) {
                    arrayList.add(this.f50800n);
                    arrayList.add(paPaBean);
                }
                PaPaBean paPaBean6 = new PaPaBean();
                paPaBean6.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_COMPANY.value());
                paPaBean6.setTypeValue(standAloneListBean.getList());
                arrayList.add(paPaBean6);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        try {
            PaPaBean paPaBean = new PaPaBean();
            this.f50800n = paPaBean;
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_20.value());
            int i2 = this.f50787a;
            if (i2 == 1) {
                U(this.f50790d.T0(RequestBeanUtil.getInstance(this.f50797k).getStandAloneOne()));
            } else if (i2 == 2) {
                V(this.f50790d.F1(RequestBeanUtil.getInstance(this.f50797k).getStandAloneTwo(this.f50788b)));
            }
        } catch (Exception e4) {
            com.join.mgps.Util.t0.b("PaPaList", "fetchData exception:" + e4.getMessage());
            f0();
        }
    }

    void T(AppBean appBean) {
        IntentUtil.getInstance().intentActivity(this.f50797k, appBean.getIntentDataBean());
    }

    void U(ResultMainBean<List<StandAloneListBean>> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean != null && resultMainBean.getMessages() != null && resultMainBean.getMessages().getData() != null) {
            if (resultMainBean.getFlag() == 0) {
                h0();
                return;
            }
            List<StandAloneListBean> data = resultMainBean.getMessages().getData();
            if (data.size() > 0) {
                this.f50789c = false;
            }
            l0(Q(data));
            hideLoading();
            return;
        }
        f0();
    }

    void W() {
        List<DownloadTask> d4 = g1.f.G().d();
        this.f50801o = d4;
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f50801o) {
            this.f50802p.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void Z(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.t3 t3Var = this.f50792f;
        if (t3Var != null) {
            t3Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50790d = com.join.mgps.rpc.impl.c.P1();
        W();
        com.join.mgps.adapter.t3 t3Var = new com.join.mgps.adapter.t3(this.f50797k, this.f50793g, this.f50807u);
        this.f50792f = t3Var;
        t3Var.d(this.f50806t);
        this.f50796j.j(true);
        this.f50791e.setPreLoadCount(10);
        this.f50791e.setAdapter((ListAdapter) this.f50792f);
        this.f50791e.setPullLoadEnable(new a());
        this.f50791e.setPullRefreshEnable(new b());
        this.f50791e.setOnItemClickListener(new c());
        this.f50791e.setOnScrollListener(this);
        S();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        this.f50791e.t();
        this.f50791e.u();
        this.f50796j.setVisibility(8);
        this.f50795i.setVisibility(8);
        this.f50794h.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        if (this.f50788b <= 1) {
            e0();
        }
        XListView2 xListView2 = this.f50791e;
        if (xListView2 != null) {
            xListView2.t();
            this.f50791e.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        this.f50796j.setVisibility(8);
        this.f50795i.setVisibility(0);
        this.f50794h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        this.f50789c = false;
        if (this.f50788b <= 1) {
            this.f50796j.setVisibility(8);
            this.f50795i.setVisibility(8);
            this.f50794h.setVisibility(8);
        }
        this.f50791e.u();
        this.f50791e.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        this.f50796j.setVisibility(0);
        this.f50795i.setVisibility(8);
        this.f50794h.setVisibility(8);
    }

    boolean isActivityFinish() {
        Activity activity = this.f50797k;
        if (activity == null || activity.isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && this.f50797k.isDestroyed();
    }

    void k0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    c0(downloadTask);
                    return;
                case 3:
                    a0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    d0(downloadTask);
                    return;
                case 6:
                    b0(downloadTask);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l0(List<PaPaBean> list) {
        if (this.f50788b <= 1) {
            this.f50793g.clear();
            list.add(0, this.f50800n);
        }
        P(list, this.f50801o);
        if (this.f50789c) {
            this.f50788b++;
        }
        if (list != null && list.size() > 0) {
            this.f50793g.addAll(list);
        }
        this.f50791e.t();
        this.f50791e.u();
        if (!this.f50789c) {
            this.f50791e.setNoMore();
            if (this.f50793g.size() <= 0) {
                return;
            }
        }
        this.f50792f.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f50797k = (Activity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.join.mgps.Util.c0.a().d(this);
        this.f50787a = getArguments().getInt("type");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f50797k = null;
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        Map<String, DownloadTask> map;
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            k0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    k0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    k0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    if (isHidden() || (map = this.f50802p) == null || map.isEmpty() || this.f50805s) {
                        return;
                    }
                    j0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            k0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            k0(a4, 8);
                            return;
                        case 13:
                            k0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            k0(a4, 5);
        } else {
            k0(a4, 2);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f50803q = (i4 + i2) - 1;
        this.f50804r = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f50805s = i2 != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        S();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f50797k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (isActivityFinish()) {
            return;
        }
        com.join.mgps.Util.i2.a(this.f50797k).b(str);
    }
}
