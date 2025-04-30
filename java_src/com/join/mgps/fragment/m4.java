package com.join.mgps.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.adapter.y4;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.io.Serializable;
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
/* compiled from: RankingItemV2Fragment.java */
@EFragment(R.layout.fragment_rank_item)
/* loaded from: classes.dex */
public class m4 extends d implements AbsListView.OnScrollListener {
    private RecomDatabean A;
    private int B;
    View E;
    SimpleDraweeView F;

    /* renamed from: a  reason: collision with root package name */
    private Context f49368a;

    /* renamed from: c  reason: collision with root package name */
    private y4 f49370c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    RelativeLayout f49371d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f49372e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    PtrClassicFrameLayout f49373f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f49374g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f49375h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f49376i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f49377j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.d f49378k;

    /* renamed from: m  reason: collision with root package name */
    List<DownloadTask> f49380m;

    /* renamed from: v  reason: collision with root package name */
    private boolean f49389v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f49390w;

    /* renamed from: x  reason: collision with root package name */
    List<PAPAHomeBeanV7.HomeBeanDTO> f49391x;

    /* renamed from: b  reason: collision with root package name */
    private List<PAPAHomeBeanV7.HomeBeanDTO> f49369b = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private int f49379l = 1;

    /* renamed from: n  reason: collision with root package name */
    private int f49381n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f49382o = 0;

    /* renamed from: p  reason: collision with root package name */
    private Map<String, DownloadTask> f49383p = new ConcurrentHashMap();

    /* renamed from: q  reason: collision with root package name */
    private int f49384q = 1;

    /* renamed from: r  reason: collision with root package name */
    private String f49385r = "";

    /* renamed from: s  reason: collision with root package name */
    private int f49386s = 0;

    /* renamed from: t  reason: collision with root package name */
    private String f49387t = "";

    /* renamed from: u  reason: collision with root package name */
    private boolean f49388u = false;

    /* renamed from: y  reason: collision with root package name */
    String f49392y = "";

    /* renamed from: z  reason: collision with root package name */
    String f49393z = "";
    final AtomicInteger C = new AtomicInteger(0);
    List<String> D = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankingItemV2Fragment.java */
    /* loaded from: classes4.dex */
    public class a implements y4.a {
        a() {
        }

        @Override // com.join.mgps.adapter.y4.a
        public void a(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            m4.this.R(homeBeanDTO.getG_info().getId(), homeBeanDTO);
            if (m4.this.f49368a instanceof MGMainActivity) {
                ((MGMainActivity) m4.this.f49368a).setPapaMainFragmentLastPosition(homeBeanDTO.getPosition());
            }
        }
    }

    private void P(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        String plugin_num = gameBean.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(gameBean.getDown_url_remote());
            if (downloadTask == null) {
                downloadTask = gameBean.getDownloadtaskDown();
            }
            UtilsMy.h2(downloadTask, this.f49368a);
            IntentUtil.getInstance().intentActivity(this.f49368a, intentDateBean);
        } else if (downloadTask == null) {
            if (UtilsMy.e0(gameBean.getTag_info())) {
                if (gameBean.getMod_info() == null) {
                    if (com.join.android.app.common.utils.a.g0(this.f49368a).c(this.f49368a, gameBean.getPackageName())) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f49368a).k(this.f49368a, gameBean.getPackageName());
                        if (!com.join.mgps.Util.d2.i(gameBean.getVer()) || k4.d() >= Integer.parseInt(gameBean.getVer())) {
                            com.join.android.app.common.utils.a.g0(this.f49368a);
                            APKUtils.X(this.f49368a, gameBean.getPackageName());
                            return;
                        }
                    }
                } else {
                    boolean c4 = com.join.android.app.common.utils.a.g0(this.f49368a).c(this.f49368a, gameBean.getPackageName());
                    boolean D = com.join.mgps.va.overmind.e.p().D(gameBean.getPackageName());
                    if (c4 || D) {
                        com.join.android.app.common.utils.a.g0(this.f49368a);
                        APKUtils.S(this.f49368a, gameBean.getMod_info());
                        return;
                    }
                }
            }
            if (UtilsMy.o0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                UtilsMy.m3(this.f49368a, gameBean.getCrc_sign_id());
            } else {
                UtilsMy.J0(this.f49368a, gameBean);
            }
        } else {
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status != 13) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(this.f49368a, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        }
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(gameBean.getVer());
                                        downloadTask.setVer_name(gameBean.getVer_name());
                                        downloadTask.setUrl(gameBean.getDown_url_remote());
                                        UtilsMy.w3(this.f49368a, downloadTask);
                                        return;
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(this.f49368a)) {
                                                    com.join.mgps.Util.i2.a(this.f49368a).b("无网络连接");
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                                    if (UtilsMy.T0(this.f49368a, downloadTask)) {
                                                        return;
                                                    }
                                                    if (gameBean.getDown_status() == 5) {
                                                        UtilsMy.R0(this.f49368a, downloadTask);
                                                        return;
                                                    }
                                                    downloadTask.setId(B.getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(gameBean.getVer());
                                                    downloadTask.setVer_name(gameBean.getVer_name());
                                                    downloadTask.setUrl(gameBean.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, this.f49368a);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, this.f49368a);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, this.f49368a);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(this.f49368a, downloadTask);
                return;
            }
            if (UtilsMy.o0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                UtilsMy.m3(this.f49368a, gameBean.getCrc_sign_id());
                return;
            }
            UtilsMy.c1(downloadTask, gameBean);
            if (UtilsMy.T0(this.f49368a, downloadTask)) {
                return;
            }
            if (gameBean.getDown_status() == 5) {
                UtilsMy.R0(this.f49368a, downloadTask);
            } else {
                UtilsMy.F0(this.f49368a, downloadTask, gameBean.getTp_down_url(), gameBean.getOther_down_switch(), gameBean.getCdn_down_switch());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W(AdapterView adapterView, View view, int i2, long j4) {
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = this.f49369b.get(i2);
        if (homeBeanDTO != null) {
            IntentUtil.getInstance().intentActivity(this.f49368a, homeBeanDTO.getIntentDataBean());
        }
    }

    public static Fragment Z(String str, String str2) {
        n4 n4Var = new n4();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bundle.putString("title", str2);
        n4Var.setArguments(bundle);
        return n4Var;
    }

    public static Fragment a0(boolean z3, String str, String str2, List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        n4 n4Var = new n4();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bundle.putBoolean("fromHome", z3);
        bundle.putString("title", str2);
        bundle.putSerializable("datas", (Serializable) list);
        n4Var.setArguments(bundle);
        return n4Var;
    }

    public static Fragment b0(boolean z3, String str, List<PAPAHomeBeanV7.HomeBeanDTO> list, int i2) {
        n4 n4Var = new n4();
        Bundle bundle = new Bundle();
        bundle.putBoolean("fromHome", z3);
        bundle.putString("title", str);
        bundle.putSerializable("datas", (Serializable) list);
        bundle.putInt("from", i2);
        n4Var.setArguments(bundle);
        return n4Var;
    }

    private void e0(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f49369b) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(null);
            }
        }
        this.f49370c.notifyDataSetChanged();
    }

    private void f0(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f49369b) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        this.f49370c.notifyDataSetChanged();
    }

    private void g0(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f49369b) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        this.f49370c.notifyDataSetChanged();
    }

    private void h0(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f49369b) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        this.f49370c.notifyDataSetChanged();
    }

    private void m0(List<CollectionBeanSubBusiness> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.f49380m) == null || list2.size() == 0) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.f49380m.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f49383p.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                        DownloadTask downloadTask2 = this.f49383p.get(mod_info.getMod_game_id());
                        z3 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : false;
                        if (z3 && z4) {
                            if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                                collectionBeanSubBusiness.setDownloadTask(next);
                            }
                        } else if (z3) {
                            if (collectionBeanSubBusiness.getMod_info() != null && next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                                collectionBeanSubBusiness.setDownloadTask(next);
                            }
                        } else if (z4) {
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
                            }
                        }
                    } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getGame_id())) {
                        collectionBeanSubBusiness.setDownloadTask(next);
                        break;
                    }
                }
            }
        }
    }

    private void n0() {
        if (this.f49382o < 0 || this.f49381n >= this.f49372e.getCount()) {
            return;
        }
        for (int i2 = this.f49382o; i2 <= this.f49372e.getCount() - 1; i2++) {
            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) this.f49372e.getItemAtPosition(i2);
            if (homeBeanDTO != null) {
                p0();
                DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
                if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f49372e.getChildAt(i2 - this.f49382o);
                    if (childAt.getTag() instanceof y4.b) {
                        y4.b bVar = (y4.b) childAt.getTag();
                        try {
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                            if (f4 == null) {
                                return;
                            }
                            long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTask.getSize() == 0) {
                                TextView textView = bVar.f44595f;
                                textView.setText(UtilsMy.f(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble));
                            } else {
                                TextView textView2 = bVar.f44595f;
                                textView2.setText(UtilsMy.f(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble));
                            }
                            if (downloadTask.getStatus() == 12) {
                                bVar.f44597h.setProgress((int) f4.getProgress());
                            } else {
                                bVar.f44598i.setProgress((int) f4.getProgress());
                            }
                            if (downloadTask.getStatus() == 2) {
                                TextView textView3 = bVar.f44596g;
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
    }

    private void p0() {
        List<PAPAHomeBeanV7.HomeBeanDTO> list = this.f49391x;
        if (list == null || list.size() <= 0) {
            return;
        }
        List<DownloadTask> d4 = g1.f.G().d();
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f49391x) {
            Iterator<DownloadTask> it2 = d4.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (TextUtils.equals(next.getCrc_link_type_val(), homeBeanDTO.getG_info().getMod_id())) {
                        homeBeanDTO.setDownloadTask(next);
                        break;
                    } else if (TextUtils.equals(next.getCrc_link_type_val(), homeBeanDTO.getG_info().getId())) {
                        homeBeanDTO.setDownloadTask(next);
                    }
                }
            }
        }
        this.f49370c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void O() {
        if (this.f49389v || !isVisible()) {
            return;
        }
        S(this.f49385r, this.f49387t);
        O();
        this.f49389v = true;
    }

    public CommonRequestBean Q(String str, String str2, String str3) {
        return RequestBeanUtil.getInstance(this.f49368a).getGameListRequestBean(this.f49379l, 10, str, str2, this.f49384q, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R(String str, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        CollectionBeanSub data;
        if (homeBeanDTO.getGameBean() != null) {
            P(homeBeanDTO);
            return;
        }
        if (com.join.android.app.common.utils.f.j(this.f49368a)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f49368a).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f49368a);
                requestModel.setArgs(new RequestGameIdArgs(str, 1, accountData.getUid()));
                ResponseModel<CollectionBeanSub> body = com.join.mgps.rpc.impl.h.L().J().A0(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    data.set_from(homeBeanDTO.get_from());
                    data.set_from_type(homeBeanDTO.get_from_type());
                    homeBeanDTO.setGameBean(data);
                    P(homeBeanDTO);
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                com.join.mgps.Util.i2.a(this.f49368a).b("获取下载信息失败");
            }
        } else {
            com.join.mgps.Util.i2.a(this.f49368a).b("当前网络不可用");
        }
        i0(homeBeanDTO);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S(String str, String str2) {
    }

    void U() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f49392y = arguments.getString("type");
        this.f49390w = arguments.getBoolean("fromHome");
        this.f49393z = arguments.getString("title");
        this.f49391x = (List) arguments.getSerializable("datas");
        this.B = arguments.getInt("from");
        this.f49385r = this.f49392y;
    }

    void V() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X() {
        this.f49379l = 1;
        S(this.f49385r, this.f49387t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        U();
        com.join.mgps.Util.c0.a().d(this);
        this.f49374g.setBackgroundResource(R.color.activity_default_background);
        this.f49368a = getActivity();
        y4 y4Var = new y4(this.f49368a, this.f49392y);
        this.f49370c = y4Var;
        if (this.f49390w) {
            y4Var.d();
        }
        this.f49370c.e(new a());
        this.f49369b = this.f49370c.b();
        this.f49372e.setAdapter((ListAdapter) this.f49370c);
        showLoding();
        if (this.f49391x != null) {
            showMain(new ArrayList(this.f49391x));
        }
        this.f49372e.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.fragment.l4
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j4) {
                m4.this.W(adapterView, view, i2, j4);
            }
        });
        List<DownloadTask> d4 = g1.f.G().d();
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f49391x) {
            Iterator<DownloadTask> it2 = d4.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (TextUtils.equals(next.getCrc_link_type_val(), homeBeanDTO.getG_info().getMod_id())) {
                        homeBeanDTO.setDownloadTask(next);
                        break;
                    } else if (TextUtils.equals(next.getCrc_link_type_val(), homeBeanDTO.getG_info().getId())) {
                        homeBeanDTO.setDownloadTask(next);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c0() {
        if (this.f49384q != 1001) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void d0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        y4 y4Var = this.f49370c;
        if (y4Var != null) {
            y4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        homeBeanDTO.setRequesting(false);
        this.f49370c.notifyDataSetChanged();
    }

    public void j0(List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        if (list == null) {
            return;
        }
        this.f49391x = list;
        showMain(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void k0() {
        com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l0(boolean z3) {
        XListView2 xListView2 = this.f49372e;
        if (xListView2 != null) {
            xListView2.t();
            this.f49372e.u();
        }
        if (!z3) {
            if (this.f49379l == 1 && this.f49369b.size() == 0) {
                LinearLayout linearLayout = this.f49375h;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
                LinearLayout linearLayout2 = this.f49374g;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                PtrClassicFrameLayout ptrClassicFrameLayout = this.f49373f;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.setVisibility(8);
                }
                LinearLayout linearLayout3 = this.f49376i;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(8);
                    return;
                }
                return;
            }
            try {
                com.join.mgps.Util.i2.a(this.f49368a).b(getString(R.string.net_connect_failed));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (z3 && this.f49379l == 1 && this.f49369b.size() == 0) {
            LinearLayout linearLayout4 = this.f49375h;
            if (linearLayout4 != null) {
                linearLayout4.setVisibility(8);
            }
            LinearLayout linearLayout5 = this.f49374g;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(8);
            }
            PtrClassicFrameLayout ptrClassicFrameLayout2 = this.f49373f;
            if (ptrClassicFrameLayout2 != null) {
                ptrClassicFrameLayout2.setVisibility(8);
            }
            LinearLayout linearLayout6 = this.f49376i;
            if (linearLayout6 != null) {
                linearLayout6.setVisibility(0);
            }
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
        O();
    }

    void o0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    g0(downloadTask);
                    return;
                case 3:
                    e0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    h0(downloadTask);
                    return;
                case 6:
                    f0(downloadTask);
                    return;
            }
        }
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
            o0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    o0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    o0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    n0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            o0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            o0(a4, 8);
                            return;
                        case 13:
                            o0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            o0(a4, 5);
        } else {
            o0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        y4 y4Var;
        super.onHiddenChanged(z3);
        if (z3 || (y4Var = this.f49370c) == null) {
            return;
        }
        y4Var.notifyDataSetChanged();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f49381n = (i4 + i2) - 1;
        this.f49382o = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.d
    public void onVisible() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f49379l = 1;
        showLoding();
        S(this.f49385r, this.f49387t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f49368a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.f49374g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49375h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49373f;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f49376i;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        try {
            LinearLayout linearLayout = this.f49375h;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.f49374g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            PtrClassicFrameLayout ptrClassicFrameLayout = this.f49373f;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.setVisibility(0);
            }
            LinearLayout linearLayout3 = this.f49376i;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            XListView2 xListView2 = this.f49372e;
            if (xListView2 != null) {
                xListView2.t();
                this.f49372e.u();
            }
            if (this.f49379l == 1) {
                this.f49369b.clear();
            }
            this.f49369b.addAll(list);
            if (this.f49372e != null) {
                this.f49370c.notifyDataSetChanged();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
