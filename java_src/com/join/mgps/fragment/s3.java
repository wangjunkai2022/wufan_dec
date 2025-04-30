package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
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
import com.join.mgps.adapter.s3;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionInfo;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.GameFactoryListBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.GameListAndCollectionInfo;
import com.join.mgps.dto.GameListAndHeadAdAndCollectionInfoBean;
import com.join.mgps.dto.GameListAndHeadAdBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.dto.RequestGoogleRankArgs;
import com.join.mgps.dto.RequestPnAndPcArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.ConstantIntEnum;
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
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: PaPaBannerListFragment.java */
@EFragment(R.layout.fragment_papa_banner_list)
/* loaded from: classes.dex */
public class s3 extends Fragment implements AbsListView.OnScrollListener {
    public static final int A = 12;
    public static final int B = 13;
    public static final int C = 14;
    public static final int D = 15;
    public static final int E = 16;
    public static final int F = 17;
    public static final int G = 18;
    public static final int H = 19;

    /* renamed from: w  reason: collision with root package name */
    private static final int f50236w = 20;

    /* renamed from: x  reason: collision with root package name */
    private static final int f50237x = 3;

    /* renamed from: y  reason: collision with root package name */
    public static final int f50238y = 1;

    /* renamed from: z  reason: collision with root package name */
    public static final int f50239z = 11;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.d f50243d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f50244e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.adapter.s3 f50245f;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f50247h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f50248i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    PtrClassicFrameLayout f50249j;

    /* renamed from: k  reason: collision with root package name */
    private Activity f50250k;

    /* renamed from: m  reason: collision with root package name */
    String f50252m;

    /* renamed from: n  reason: collision with root package name */
    String f50253n;

    /* renamed from: o  reason: collision with root package name */
    String f50254o;

    /* renamed from: r  reason: collision with root package name */
    private int f50257r;

    /* renamed from: s  reason: collision with root package name */
    private int f50258s;

    /* renamed from: a  reason: collision with root package name */
    int f50240a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f50241b = 1;

    /* renamed from: c  reason: collision with root package name */
    private boolean f50242c = false;

    /* renamed from: g  reason: collision with root package name */
    List<PaPaBean> f50246g = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    int f50251l = 0;

    /* renamed from: p  reason: collision with root package name */
    private List<DownloadTask> f50255p = new ArrayList();

    /* renamed from: q  reason: collision with root package name */
    private Map<String, DownloadTask> f50256q = new ConcurrentHashMap();

    /* renamed from: t  reason: collision with root package name */
    private boolean f50259t = false;

    /* renamed from: u  reason: collision with root package name */
    private final View.OnClickListener f50260u = new d();

    /* renamed from: v  reason: collision with root package name */
    private View.OnClickListener f50261v = new e();

    /* compiled from: PaPaBannerListFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!s3.this.isActivityFinish() && s3.this.f50242c) {
                if (!com.join.android.app.common.utils.f.j(s3.this.f50250k)) {
                    s3.this.f50244e.t();
                    s3 s3Var = s3.this;
                    s3Var.showToast(s3Var.getString(R.string.net_connect_failed));
                    return;
                }
                s3.this.P();
            }
        }
    }

    /* compiled from: PaPaBannerListFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (s3.this.isActivityFinish()) {
                return;
            }
            if (com.join.android.app.common.utils.f.j(s3.this.f50250k)) {
                s3.this.f50241b = 1;
                s3.this.P();
                return;
            }
            s3.this.f50244e.u();
            s3 s3Var = s3.this;
            s3Var.showToast(s3Var.getString(R.string.net_connect_failed));
        }
    }

    /* compiled from: PaPaBannerListFragment.java */
    /* loaded from: classes4.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            List<PaPaBean> list = s3.this.f50246g;
            if (list == null || list.size() <= 0 || i2 >= s3.this.f50246g.size() || s3.this.f50246g.get(i2).getType() != PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                return;
            }
            s3.this.V((AppBean) s3.this.f50246g.get(i2).getTypeValue());
        }
    }

    /* compiled from: PaPaBannerListFragment.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getTag() instanceof AppBean) {
                s3.this.V((AppBean) view.getTag());
            } else if (view.getTag() instanceof CollectionInfo) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(2);
                intentDateBean.setTpl_type("4");
                intentDateBean.setCrc_link_type_val(((CollectionInfo) view.getTag()).getCollection_id());
                IntentUtil.getInstance().intentActivity(s3.this.f50250k, intentDateBean);
            } else if (view.getTag() instanceof GameHeadAd.SubInfo) {
                IntentUtil.getInstance().intentActivity(s3.this.f50250k, ((GameHeadAd.SubInfo) view.getTag()).getIntentDataBean());
            }
        }
    }

    /* compiled from: PaPaBannerListFragment.java */
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
                UtilsMy.h2(downloadTask, s3.this.f50250k);
                IntentUtil.getInstance().intentActivity(s3.this.f50250k, intentDateBean);
            } else if (downloadTask == null) {
                if (UtilsMy.e0(appBean.getTag_info()) && com.join.android.app.common.utils.a.g0(s3.this.f50250k).c(s3.this.f50250k, appBean.getPackageName())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(s3.this.f50250k).k(s3.this.f50250k, appBean.getPackageName());
                    if (!com.join.mgps.Util.d2.i(appBean.getVer()) || k4.d() >= Integer.parseInt(appBean.getVer())) {
                        com.join.android.app.common.utils.a.g0(s3.this.f50250k);
                        APKUtils.X(s3.this.f50250k, appBean.getPackageName());
                        return;
                    }
                }
                if (UtilsMy.o0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(s3.this.f50250k, appBean.getCrc_sign_id());
                } else {
                    UtilsMy.H0(s3.this.f50250k, appBean);
                }
            } else {
                int status = downloadTask != null ? downloadTask.getStatus() : 0;
                if (UtilsMy.m0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 13) {
                        com.php25.PDownload.d.k(s3.this.f50250k, downloadTask);
                        return;
                    }
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(s3.this.f50250k, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (!com.join.android.app.common.utils.f.j(s3.this.f50250k)) {
                                            s3.this.showToast("无网络连接");
                                            return;
                                        } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                            downloadTask.setVer(appBean.getVer());
                                            downloadTask.setVer_name(appBean.getVer_name());
                                            downloadTask.setUrl(appBean.getDown_url_remote());
                                            UtilsMy.w3(s3.this.getContext(), downloadTask);
                                            return;
                                        }
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (com.join.android.app.common.utils.f.j(s3.this.f50250k)) {
                                                    if (UtilsMy.T0(s3.this.f50250k, downloadTask)) {
                                                        return;
                                                    }
                                                    if (appBean.getDown_status() == 5) {
                                                        UtilsMy.R0(s3.this.f50250k, downloadTask);
                                                        return;
                                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                        return;
                                                    } else {
                                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                        com.php25.PDownload.d.b(downloadTask);
                                                        downloadTask.setVer(appBean.getVer());
                                                        downloadTask.setVer_name(appBean.getVer_name());
                                                        downloadTask.setUrl(appBean.getDown_url_remote());
                                                        com.php25.PDownload.d.c(downloadTask, s3.this.f50250k);
                                                        return;
                                                    }
                                                }
                                                s3.this.showToast("无网络连接");
                                                return;
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, s3.this.f50250k);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, s3.this.f50250k);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                if (UtilsMy.o0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(s3.this.f50250k, appBean.getCrc_sign_id());
                    return;
                }
                UtilsMy.b1(downloadTask, appBean);
                if (UtilsMy.T0(s3.this.f50250k, downloadTask)) {
                    return;
                }
                if (appBean.getDown_status() == 5) {
                    UtilsMy.R0(s3.this.f50250k, downloadTask);
                } else {
                    UtilsMy.F0(s3.this.f50250k, downloadTask, appBean.getTp_down_url(), appBean.getOther_down_switch(), appBean.getCdn_down_switch());
                }
            }
        }
    }

    private void R() {
        if (com.join.android.app.common.utils.f.j(this.f50250k)) {
            l0();
            P();
            return;
        }
        j0();
    }

    private CommonRequestBean<RequestPnAndPcArgs> T() {
        if (this.f50240a == 11) {
            return RequestBeanUtil.getInstance(this.f50250k).getRequestPnAndPc(this.f50241b, 3);
        }
        return RequestBeanUtil.getInstance(this.f50250k).getRequestPnAndPc(this.f50241b, 20);
    }

    private CommonRequestBean<RequestGoogleRankArgs> U() {
        return RequestBeanUtil.getInstance(this.f50250k).getRequestPnAndPcByAreaAndRank(this.f50241b, 20, Q(), S());
    }

    public static s3 c0(int i2) {
        t3 t3Var = new t3();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        t3Var.setArguments(bundle);
        return t3Var;
    }

    public static s3 d0(int i2, HashMap<String, String> hashMap) {
        t3 t3Var = new t3();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        for (String str : hashMap.keySet()) {
            bundle.putString(str, hashMap.get(str));
        }
        t3Var.setArguments(bundle);
        return t3Var;
    }

    private void f0(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f50255p.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f50256q.remove(next.getCrc_link_type_val());
                    it2.remove();
                    Iterator<PaPaBean> it3 = this.f50246g.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            PaPaBean next2 = it3.next();
                            if (next2.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
                                Iterator it4 = ((List) next2.getTypeValue()).iterator();
                                while (true) {
                                    if (it4.hasNext()) {
                                        AppBean appBean = (AppBean) it4.next();
                                        if (appBean.getMod_info() != null) {
                                            DownloadTask downloadTask2 = this.f50256q.get(appBean.getMod_info().getMod_game_id());
                                            DownloadTask downloadTask3 = this.f50256q.get(appBean.getGame_id());
                                            if (downloadTask2 == null && downloadTask3 == null) {
                                                appBean.setDownloadTask(null);
                                            } else if (downloadTask2 != null) {
                                                appBean.setDownloadTask(downloadTask2);
                                            } else if (downloadTask3 != null) {
                                                appBean.setDownloadTask(downloadTask3);
                                            } else {
                                                appBean.setDownloadTask(null);
                                            }
                                        } else if (appBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                            appBean.setDownloadTask(null);
                                            break;
                                        }
                                    }
                                }
                            } else if (next2.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                                AppBean appBean2 = (AppBean) next2.getTypeValue();
                                if (appBean2.getMod_info() != null) {
                                    DownloadTask B2 = g1.f.G().B(appBean2.getMod_info().getMod_game_id());
                                    DownloadTask B3 = g1.f.G().B(appBean2.getGame_id());
                                    if (B2 == null && B3 == null) {
                                        appBean2.setDownloadTask(null);
                                    } else if (B2 != null) {
                                        appBean2.setDownloadTask(B2);
                                    } else if (B3 != null) {
                                        appBean2.setDownloadTask(B3);
                                    } else {
                                        appBean2.setDownloadTask(null);
                                    }
                                } else if (appBean2.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                    appBean2.setDownloadTask(null);
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f50245f.notifyDataSetChanged();
    }

    private void g0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50256q;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f50245f.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void h0(DownloadTask downloadTask) {
        UtilsMy.E3(this.f50255p, downloadTask);
        if (!this.f50256q.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50255p.add(downloadTask);
            this.f50256q.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        n0(downloadTask);
        this.f50245f.notifyDataSetChanged();
    }

    private void i0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f50256q;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f50255p.add(downloadTask);
            this.f50256q.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f50256q.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        n0(downloadTask);
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f50245f.notifyDataSetChanged();
    }

    private void n0(DownloadTask downloadTask) {
        try {
            for (PaPaBean paPaBean : this.f50246g) {
                boolean z3 = false;
                if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
                    Iterator it2 = ((List) paPaBean.getTypeValue()).iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            AppBean appBean = (AppBean) it2.next();
                            if (appBean.getMod_info() != null) {
                                ModInfoBean mod_info = appBean.getMod_info();
                                DownloadTask downloadTask2 = this.f50256q.get(mod_info.getMain_game_id());
                                boolean z4 = true;
                                boolean z5 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                                DownloadTask downloadTask3 = this.f50256q.get(mod_info.getMod_game_id());
                                if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                                    z4 = false;
                                }
                                if (!z4 || !z5) {
                                    if (z4) {
                                        if (appBean.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(appBean.getMod_info().getMod_game_id())) {
                                            appBean.setDownloadTask(downloadTask);
                                            break;
                                        }
                                    } else if (z5) {
                                        if (downloadTask.getCrc_link_type_val().equals(appBean.getCrc_sign_id())) {
                                            appBean.setDownloadTask(downloadTask);
                                            break;
                                        }
                                    } else {
                                        DownloadTask B2 = appBean.getMod_info() != null ? g1.f.G().B(appBean.getMod_info().getMod_game_id()) : null;
                                        if (B2 == null) {
                                            B2 = g1.f.G().B(appBean.getCrc_sign_id());
                                        }
                                        if (B2 != null && downloadTask.getCrc_link_type_val().equals(B2.getCrc_link_type_val())) {
                                            appBean.setDownloadTask(downloadTask);
                                            break;
                                        }
                                    }
                                } else if (downloadTask.getCrc_link_type_val().equals(appBean.getCrc_sign_id())) {
                                    appBean.setDownloadTask(downloadTask);
                                    break;
                                }
                            } else if (appBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                appBean.setDownloadTask(downloadTask);
                                break;
                            }
                        }
                    }
                } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                    AppBean appBean2 = (AppBean) paPaBean.getTypeValue();
                    if (appBean2.getMod_info() != null) {
                        ModInfoBean mod_info2 = appBean2.getMod_info();
                        DownloadTask downloadTask4 = this.f50256q.get(mod_info2.getMain_game_id());
                        boolean c4 = (downloadTask4 == null || downloadTask4.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask4.getPackageName());
                        DownloadTask downloadTask5 = this.f50256q.get(mod_info2.getMod_game_id());
                        if (downloadTask5 != null && downloadTask5.getStatus() == 5) {
                            z3 = com.join.mgps.va.overmind.e.p().D(downloadTask5.getPackageName());
                        }
                        if (z3 && c4) {
                            if (downloadTask.getCrc_link_type_val().equals(appBean2.getCrc_sign_id())) {
                                appBean2.setDownloadTask(downloadTask);
                                return;
                            }
                        } else if (z3) {
                            if (appBean2.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(appBean2.getMod_info().getMod_game_id())) {
                                appBean2.setDownloadTask(downloadTask);
                                return;
                            }
                        } else if (c4) {
                            if (downloadTask.getCrc_link_type_val().equals(appBean2.getCrc_sign_id())) {
                                appBean2.setDownloadTask(downloadTask);
                                return;
                            }
                        } else {
                            DownloadTask B3 = appBean2.getMod_info() != null ? g1.f.G().B(appBean2.getMod_info().getMod_game_id()) : null;
                            if (B3 == null) {
                                B3 = g1.f.G().B(appBean2.getCrc_sign_id());
                            }
                            if (B3 != null && downloadTask.getCrc_link_type_val().equals(B3.getCrc_link_type_val())) {
                                appBean2.setDownloadTask(downloadTask);
                                return;
                            }
                        }
                    } else if (appBean2.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        appBean2.setDownloadTask(downloadTask);
                        return;
                    }
                } else {
                    continue;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void o0(List<PaPaBean> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.f50255p) == null || list2.size() == 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f50255p) {
            Iterator<PaPaBean> it2 = list.iterator();
            while (true) {
                if (it2.hasNext()) {
                    PaPaBean next = it2.next();
                    boolean z3 = false;
                    if (next.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
                        Iterator it3 = ((List) next.getTypeValue()).iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                AppBean appBean = (AppBean) it3.next();
                                if (appBean.getMod_info() != null) {
                                    ModInfoBean mod_info = appBean.getMod_info();
                                    DownloadTask downloadTask2 = this.f50256q.get(mod_info.getMain_game_id());
                                    boolean z4 = true;
                                    boolean z5 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                                    DownloadTask downloadTask3 = this.f50256q.get(mod_info.getMod_game_id());
                                    z4 = (downloadTask3 == null || downloadTask3.getStatus() != 5) ? false : false;
                                    if (!z4 || !z5) {
                                        if (z4) {
                                            if (appBean.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(appBean.getMod_info().getMod_game_id())) {
                                                appBean.setDownloadTask(downloadTask);
                                                break;
                                            }
                                        } else if (z5) {
                                            if (appBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                                appBean.setDownloadTask(downloadTask);
                                                break;
                                            }
                                        } else {
                                            DownloadTask B2 = appBean.getMod_info() != null ? g1.f.G().B(appBean.getMod_info().getMod_game_id()) : null;
                                            if (B2 == null) {
                                                B2 = g1.f.G().B(appBean.getCrc_sign_id());
                                            }
                                            if (B2 != null && downloadTask.getCrc_link_type_val().equals(B2.getCrc_link_type_val())) {
                                                appBean.setDownloadTask(downloadTask);
                                                break;
                                            }
                                        }
                                    } else if (appBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                        appBean.setDownloadTask(downloadTask);
                                        break;
                                    }
                                } else if (appBean.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                    appBean.setDownloadTask(downloadTask);
                                    break;
                                }
                            }
                        }
                    } else if (next.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                        AppBean appBean2 = (AppBean) next.getTypeValue();
                        if (appBean2.getMod_info() != null) {
                            ModInfoBean mod_info2 = appBean2.getMod_info();
                            DownloadTask downloadTask4 = this.f50256q.get(mod_info2.getMain_game_id());
                            boolean c4 = (downloadTask4 == null || downloadTask4.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask4.getPackageName());
                            DownloadTask downloadTask5 = this.f50256q.get(mod_info2.getMod_game_id());
                            if (downloadTask5 != null && downloadTask5.getStatus() == 5) {
                                z3 = com.join.mgps.va.overmind.e.p().D(downloadTask5.getPackageName());
                            }
                            if (!z3 || !c4) {
                                if (!z3) {
                                    if (c4) {
                                        if (appBean2.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                            appBean2.setDownloadTask(downloadTask);
                                            break;
                                        }
                                    } else {
                                        DownloadTask B3 = appBean2.getMod_info() != null ? g1.f.G().B(appBean2.getMod_info().getMod_game_id()) : null;
                                        if (B3 == null) {
                                            B3 = g1.f.G().B(appBean2.getCrc_sign_id());
                                        }
                                        if (B3 != null && downloadTask.getCrc_link_type_val().equals(B3.getCrc_link_type_val())) {
                                            appBean2.setDownloadTask(downloadTask);
                                            break;
                                        }
                                    }
                                } else {
                                    if (appBean2.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(appBean2.getMod_info().getMod_game_id())) {
                                        appBean2.setDownloadTask(downloadTask);
                                        break;
                                    }
                                }
                            } else {
                                if (appBean2.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                    appBean2.setDownloadTask(downloadTask);
                                    break;
                                }
                            }
                        } else if (appBean2.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                            appBean2.setDownloadTask(downloadTask);
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    private void p0() {
        DownloadTask downloadTask;
        for (int i2 = this.f50258s; i2 <= this.f50257r; i2++) {
            PaPaBean paPaBean = (PaPaBean) this.f50244e.getItemAtPosition(i2);
            if (paPaBean != null && paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value() && (downloadTask = ((AppBean) paPaBean.getTypeValue()).getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f50244e.getChildAt(i2 - this.f50258s);
                if (childAt.getTag() instanceof s3.d) {
                    s3.d dVar = (s3.d) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = dVar.f43921j;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = dVar.f43921j;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            dVar.f43915d.setProgress((int) f4.getProgress());
                        } else {
                            dVar.f43916e.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = dVar.f43922k;
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
    public void P() {
        try {
            int i2 = this.f50240a;
            if (i2 != 1) {
                switch (i2) {
                    case 11:
                        Z(this.f50243d.N(T()));
                        break;
                    case 12:
                        a0(this.f50243d.S(T()));
                        break;
                    case 13:
                        a0(this.f50243d.g(T()));
                        break;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                        X(this.f50243d.w0(U()));
                        break;
                }
            } else if ("1".equals(this.f50254o)) {
                W(this.f50243d.M(RequestBeanUtil.getInstance(this.f50250k).getRequestGameFactoryList(Integer.parseInt(this.f50252m), this.f50241b)));
            } else {
                W(this.f50243d.H(RequestBeanUtil.getInstance(this.f50250k).getRequestGameFactoryList(Integer.parseInt(this.f50252m), this.f50241b)));
            }
        } catch (Exception e4) {
            com.join.mgps.Util.t0.b("PaPaList", "fetchData exception:" + e4.getMessage());
            k0();
        }
    }

    int Q() {
        int i2 = this.f50240a;
        if (i2 == 14 || i2 == 15) {
            return 3;
        }
        if (i2 == 16 || i2 == 17) {
            return 1;
        }
        return (i2 == 18 || i2 == 19) ? 2 : 4;
    }

    int S() {
        int i2 = this.f50240a;
        return (i2 == 14 || i2 == 16 || i2 == 18) ? 1 : 2;
    }

    void V(AppBean appBean) {
        IntentUtil.getInstance().intentActivity(this.f50250k, appBean.getIntentDataBean());
    }

    void W(ResultMainBean<GameFactoryListBean> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean != null && resultMainBean.getMessages() != null && resultMainBean.getMessages().getData() != null) {
            if (resultMainBean.getFlag() == 0) {
                m0();
                return;
            }
            GameFactoryListBean data = resultMainBean.getMessages().getData();
            if (data.getGame_list() != null && data.getGame_list().size() >= 20) {
                this.f50242c = true;
            } else {
                this.f50242c = false;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(u0(data));
            r0(arrayList);
            hideLoading();
            return;
        }
        k0();
    }

    void X(ResultMainBean<List<AppBean>> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean != null && resultMainBean.getMessages() != null && resultMainBean.getMessages().getData() != null) {
            if (resultMainBean.getFlag() == 0) {
                m0();
                return;
            }
            List<AppBean> data = resultMainBean.getMessages().getData();
            ArrayList arrayList = new ArrayList();
            boolean z3 = data != null && data.size() > 0;
            if (z3) {
                this.f50242c = data.size() >= 20;
            } else {
                this.f50242c = false;
            }
            if (z3) {
                arrayList.addAll(w0(data));
            }
            r0(arrayList);
            if (this.f50241b <= 1) {
                hideLoading();
                return;
            }
            return;
        }
        k0();
    }

    void Z(ResultMainBean<GameListAndHeadAdAndCollectionInfoBean> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean != null && resultMainBean.getMessages() != null && resultMainBean.getMessages().getData() != null) {
            if (resultMainBean.getFlag() == 0) {
                m0();
                return;
            }
            GameListAndHeadAdAndCollectionInfoBean data = resultMainBean.getMessages().getData();
            List<GameHeadAd> head_ad = data.getHead_ad();
            List<GameListAndCollectionInfo> list = data.getList();
            ArrayList arrayList = new ArrayList();
            boolean z3 = list != null && list.size() > 0;
            if (z3) {
                this.f50242c = list.size() >= 3;
            } else {
                this.f50242c = false;
            }
            if (z3) {
                arrayList.addAll(t0(head_ad, list));
            }
            r0(arrayList);
            if (this.f50241b <= 1) {
                hideLoading();
                return;
            }
            return;
        }
        k0();
    }

    void a0(ResultMainBean<GameListAndHeadAdBean> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean != null && resultMainBean.getMessages() != null && resultMainBean.getMessages().getData() != null) {
            if (resultMainBean.getFlag() == 0) {
                m0();
                return;
            }
            GameListAndHeadAdBean data = resultMainBean.getMessages().getData();
            List<AppBean> game_list = data.getGame_list();
            ArrayList arrayList = new ArrayList();
            boolean z3 = game_list != null && game_list.size() > 0;
            if (z3) {
                this.f50242c = game_list.size() >= 20;
            } else {
                this.f50242c = false;
            }
            if (z3) {
                arrayList.addAll(v0(data));
            }
            r0(arrayList);
            if (this.f50241b <= 1) {
                hideLoading();
                return;
            }
            return;
        }
        k0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50243d = com.join.mgps.rpc.impl.c.P1();
        b0();
        com.join.mgps.adapter.s3 s3Var = new com.join.mgps.adapter.s3(this.f50250k, this.f50246g, this.f50261v);
        this.f50245f = s3Var;
        s3Var.c(this.f50260u);
        this.f50249j.j(true);
        this.f50244e.setPreLoadCount(10);
        this.f50244e.setAdapter((ListAdapter) this.f50245f);
        this.f50244e.setPullLoadEnable(new a());
        this.f50244e.setPullRefreshEnable(new b());
        this.f50244e.setOnItemClickListener(new c());
        this.f50244e.setOnScrollListener(this);
        R();
    }

    void b0() {
        List<DownloadTask> d4 = g1.f.G().d();
        this.f50255p = d4;
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f50255p) {
            this.f50256q.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void e0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.s3 s3Var = this.f50245f;
        if (s3Var != null) {
            s3Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        this.f50249j.setVisibility(0);
        this.f50248i.setVisibility(8);
        this.f50247h.setVisibility(8);
    }

    boolean isActivityFinish() {
        Activity activity = this.f50250k;
        if (activity == null || activity.isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && this.f50250k.isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j0() {
        this.f50244e.t();
        this.f50244e.u();
        this.f50249j.setVisibility(8);
        this.f50248i.setVisibility(8);
        this.f50247h.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k0() {
        if (this.f50241b <= 1) {
            j0();
        }
        XListView2 xListView2 = this.f50244e;
        if (xListView2 != null) {
            xListView2.t();
            this.f50244e.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l0() {
        this.f50249j.setVisibility(8);
        this.f50248i.setVisibility(0);
        this.f50247h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m0() {
        this.f50242c = false;
        if (this.f50241b <= 1) {
            this.f50249j.setVisibility(8);
            this.f50248i.setVisibility(8);
            this.f50247h.setVisibility(8);
        }
        this.f50244e.u();
        this.f50244e.setNoMore();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f50250k = (Activity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.join.mgps.Util.c0.a().d(this);
        Bundle arguments = getArguments();
        int i2 = arguments.getInt("type");
        this.f50240a = i2;
        if (i2 == 1) {
            this.f50253n = arguments.getString("title");
            this.f50254o = arguments.getString("isSingle");
            this.f50252m = arguments.getString("factory_id");
            String string = arguments.getString(DownloadMethodPromptDialog_.F);
            if (com.join.mgps.Util.d2.i(string)) {
                this.f50251l = Integer.parseInt(string);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f50250k = null;
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        Map<String, DownloadTask> map;
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            q0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    q0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    q0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    if (isHidden() || (map = this.f50256q) == null || map.isEmpty() || this.f50259t) {
                        return;
                    }
                    p0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            q0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            q0(a4, 8);
                            return;
                        case 13:
                            q0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            q0(a4, 5);
        } else {
            q0(a4, 2);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f50257r = (i4 + i2) - 1;
        this.f50258s = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f50259t = i2 != 0;
    }

    void q0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    h0(downloadTask);
                    return;
                case 3:
                    f0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    i0(downloadTask);
                    return;
                case 6:
                    g0(downloadTask);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r0(List<PaPaBean> list) {
        if (this.f50241b <= 1) {
            this.f50246g.clear();
        }
        o0(list);
        if (this.f50242c) {
            this.f50241b++;
        }
        if (list != null && list.size() > 0) {
            this.f50246g.addAll(list);
        }
        this.f50244e.t();
        this.f50244e.u();
        if (!this.f50242c) {
            this.f50244e.setNoMore();
            if (this.f50246g.size() <= 0) {
                return;
            }
        }
        this.f50245f.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f50250k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (isActivityFinish()) {
            return;
        }
        com.join.mgps.Util.i2.a(this.f50250k).b(str);
    }

    List<PaPaBean> t0(List<GameHeadAd> list, List<GameListAndCollectionInfo> list2) {
        ArrayList arrayList = new ArrayList();
        if (this.f50241b <= 1 && list != null && list.size() >= 1) {
            PaPaBean paPaBean = new PaPaBean();
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value());
            paPaBean.setTypeValue(list);
            arrayList.add(paPaBean);
        }
        int i2 = 0;
        for (GameListAndCollectionInfo gameListAndCollectionInfo : list2) {
            if (i2 >= 8) {
                break;
            }
            PaPaBean paPaBean2 = new PaPaBean();
            CollectionInfo collection_info = gameListAndCollectionInfo.getCollection_info();
            paPaBean2.setType(PaPaBean.PaPaBeanTypes.TYPE_TITLE_COLLECTION.value());
            paPaBean2.setTypeValue(collection_info);
            arrayList.add(paPaBean2);
            PaPaBean paPaBean3 = new PaPaBean();
            List<AppBean> game_list = gameListAndCollectionInfo.getGame_list();
            paPaBean3.setType(PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value());
            paPaBean3.setTypeValue(game_list);
            arrayList.add(paPaBean3);
            i2++;
        }
        return arrayList;
    }

    List<PaPaBean> u0(GameFactoryListBean gameFactoryListBean) {
        ArrayList arrayList = new ArrayList();
        String head_ad_pic = gameFactoryListBean.getHead_ad_pic();
        if (!TextUtils.isEmpty(head_ad_pic) && this.f50241b == 1) {
            ArrayList arrayList2 = new ArrayList();
            GameHeadAd gameHeadAd = new GameHeadAd();
            GameHeadAd.GameMain gameMain = new GameHeadAd.GameMain();
            gameMain.setAd_switch(1);
            gameMain.setPic_remote(head_ad_pic);
            gameHeadAd.setMain(gameMain);
            arrayList2.add(gameHeadAd);
            PaPaBean paPaBean = new PaPaBean();
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value());
            paPaBean.setTypeValue(arrayList2);
            HashMap hashMap = new HashMap();
            hashMap.put(PaPaBean.KEY_IMAGE_HEADER_HEIGHT, 127);
            paPaBean.setImageHeaderParams(hashMap);
            arrayList.add(paPaBean);
        }
        if (gameFactoryListBean.getLogo_info() != null && !TextUtils.isEmpty(gameFactoryListBean.getLogo_info().getIntroduce()) && this.f50241b == 1) {
            PaPaBean paPaBean2 = new PaPaBean();
            paPaBean2.setType(PaPaBean.PaPaBeanTypes.TYPE_GAMEFACTORY_LIST.value());
            GameFactoryListBean.LogoInfo logo_info = gameFactoryListBean.getLogo_info();
            logo_info.setTitle(this.f50253n);
            paPaBean2.setTypeValue(logo_info);
            arrayList.add(paPaBean2);
        }
        if (gameFactoryListBean.getGame_list() != null && gameFactoryListBean.getGame_list().size() > 0) {
            for (AppBean appBean : gameFactoryListBean.getGame_list()) {
                if (this.f50251l == 121) {
                    appBean.set_from(111);
                    appBean.set_from_type(121);
                }
                PaPaBean paPaBean3 = new PaPaBean();
                paPaBean3.setType(PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value());
                paPaBean3.setTypeValue(appBean);
                arrayList.add(paPaBean3);
            }
        }
        return arrayList;
    }

    List<PaPaBean> v0(GameListAndHeadAdBean gameListAndHeadAdBean) {
        ArrayList arrayList = new ArrayList();
        if (this.f50241b <= 1) {
            PaPaBean paPaBean = new PaPaBean();
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value());
            paPaBean.setTypeValue(gameListAndHeadAdBean.getHead_ad());
            arrayList.add(paPaBean);
        }
        for (AppBean appBean : gameListAndHeadAdBean.getGame_list()) {
            PaPaBean paPaBean2 = new PaPaBean();
            paPaBean2.setType(PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value());
            paPaBean2.setTypeValue(appBean);
            arrayList.add(paPaBean2);
        }
        return arrayList;
    }

    List<PaPaBean> w0(List<AppBean> list) {
        ArrayList arrayList = new ArrayList();
        for (AppBean appBean : list) {
            PaPaBean paPaBean = new PaPaBean();
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value());
            paPaBean.setTypeValue(appBean);
            arrayList.add(paPaBean);
        }
        return arrayList;
    }
}
