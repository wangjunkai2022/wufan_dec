package com.join.mgps.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.adapter.w4;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RankingMainDataBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Ext;
import com.psk.eventmodule.Event;
import com.psk.eventmodule.StatFactory;
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
/* compiled from: RankingItemFragment.java */
@EFragment(R.layout.fragment_rank_item)
/* loaded from: classes.dex */
public class j4 extends d implements AbsListView.OnScrollListener {
    private RecomDatabean A;
    View H;
    SimpleDraweeView I;

    /* renamed from: a  reason: collision with root package name */
    private Context f49098a;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.adapter.w4 f49100c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    RelativeLayout f49101d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f49102e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    PtrClassicFrameLayout f49103f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f49104g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f49105h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f49106i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f49107j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.d f49108k;

    /* renamed from: m  reason: collision with root package name */
    List<DownloadTask> f49110m;

    /* renamed from: v  reason: collision with root package name */
    private boolean f49119v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f49120w;

    /* renamed from: x  reason: collision with root package name */
    List<CollectionBeanSub> f49121x;

    /* renamed from: b  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f49099b = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private int f49109l = 1;

    /* renamed from: n  reason: collision with root package name */
    private int f49111n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f49112o = 0;

    /* renamed from: p  reason: collision with root package name */
    private Map<String, DownloadTask> f49113p = new ConcurrentHashMap();

    /* renamed from: q  reason: collision with root package name */
    private int f49114q = 1;

    /* renamed from: r  reason: collision with root package name */
    private String f49115r = "";

    /* renamed from: s  reason: collision with root package name */
    private int f49116s = 0;

    /* renamed from: t  reason: collision with root package name */
    private String f49117t = "";

    /* renamed from: u  reason: collision with root package name */
    private boolean f49118u = false;

    /* renamed from: y  reason: collision with root package name */
    String f49122y = "";

    /* renamed from: z  reason: collision with root package name */
    String f49123z = "";
    final AtomicInteger B = new AtomicInteger(0);
    private int C = 0;
    private int D = 0;
    Handler E = new Handler();
    Runnable F = new Runnable() { // from class: com.join.mgps.fragment.i4
        @Override // java.lang.Runnable
        public final void run() {
            j4.this.d0();
        }
    };
    List<String> G = new ArrayList();

    private StatFactory.VolcanoOther V(CollectionBeanSub collectionBeanSub) {
        List<CollectionBeanSub> list = this.f49121x;
        if (list != null && list.size() > 0) {
            for (CollectionBeanSub collectionBeanSub2 : this.f49121x) {
                if (TextUtils.equals(collectionBeanSub2.getGame_id(), collectionBeanSub.getGame_id())) {
                    return collectionBeanSub2.getPosition_path();
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z() {
        if (this.f49118u) {
            return;
        }
        this.f49109l++;
        U(this.f49115r, this.f49117t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a0() {
        if (this.f49118u) {
            return;
        }
        this.f49109l = 1;
        U(this.f49115r, this.f49117t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b0(AdapterView adapterView, View view, int i2, long j4) {
        if (this.f49100c.d() && i2 == 0) {
            return;
        }
        if (this.f49100c.d()) {
            i2--;
        }
        if (i2 < 0 || i2 >= this.f49099b.size()) {
            return;
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f49099b.get(i2);
        if (collectionBeanSubBusiness.getCrc_sign_id() != null) {
            IntentUtil.getInstance().intentActivity(this.f49098a, collectionBeanSubBusiness.getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0(View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        if (this.A.getSub() != null && this.A.getSub().size() > 0) {
            intentDateBean = this.A.getSub().get(0).getIntentDataBean();
        }
        IntentUtil.getInstance().intentActivity(view.getContext(), intentDateBean);
    }

    public static Fragment f0(String str, String str2) {
        k4 k4Var = new k4();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bundle.putString("title", str2);
        k4Var.setArguments(bundle);
        return k4Var;
    }

    public static Fragment g0(boolean z3, String str, String str2, List<CollectionBeanSub> list) {
        k4 k4Var = new k4();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bundle.putBoolean("fromHome", z3);
        bundle.putString("title", str2);
        bundle.putSerializable("datas", (Serializable) list);
        k4Var.setArguments(bundle);
        return k4Var;
    }

    private void k0(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f49110m.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f49113p.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f49099b) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f49113p.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f49113p.get(collectionBeanSubBusiness.getGame_id());
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
        this.f49100c.notifyDataSetChanged();
    }

    private void l0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f49113p;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f49100c.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void m0(DownloadTask downloadTask) {
        UtilsMy.D3(this.f49110m);
        if (!this.f49113p.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49110m.add(downloadTask);
            this.f49113p.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        w0(downloadTask);
        this.f49100c.notifyDataSetChanged();
    }

    private void n0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f49113p;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f49110m.add(downloadTask);
            this.f49113p.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        w0(downloadTask);
        DownloadTask downloadTask2 = this.f49113p.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f49100c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public void d0() {
        for (int i2 = 0; i2 < this.f49099b.size(); i2++) {
            if (i2 <= this.f49111n) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = this.f49099b.get(i2);
                String str = this.f49120w ? "home" : "ranking";
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                int i4 = i2 + 1;
                sb.append(i4);
                String sb2 = sb.toString();
                if (!this.G.contains(sb2)) {
                    this.G.add(sb2);
                    StatFactory companion = StatFactory.Companion.getInstance(this.f49098a);
                    Event event = Event.exposure;
                    String game_id = collectionBeanSubBusiness.getGame_id();
                    companion.sendEvent(new StatFactory.VolcanoEvent(event, game_id, new StatFactory.SpmData("wufun", str, "ranking", i4 + "", false), collectionBeanSubBusiness.getPosition_path(), UtilsMy.F1(collectionBeanSubBusiness.getTag_info())));
                }
            }
        }
    }

    private void w0(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f49099b) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f49113p.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f49113p.get(mod_info.getMod_game_id());
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

    private void x0(List<CollectionBeanSubBusiness> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.f49110m) == null || list2.size() == 0) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.f49110m.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f49113p.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                        DownloadTask downloadTask2 = this.f49113p.get(mod_info.getMod_game_id());
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

    private void y0() {
        DownloadTask downloadTask;
        if (this.f49112o < 0 || this.f49111n >= this.f49102e.getCount()) {
            return;
        }
        for (int i2 = this.f49112o; i2 <= this.f49111n; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f49102e.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f49102e.getChildAt(i2 - this.f49112o);
                if (childAt.getTag() instanceof w4.c) {
                    w4.c cVar = (w4.c) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = cVar.f44482m;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = cVar.f44482m;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            cVar.f44485p.setProgress((int) f4.getProgress());
                        } else {
                            cVar.f44484o.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = cVar.f44483n;
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
    @UiThread(delay = 400)
    public void R() {
        if (this.f49119v || !isVisible()) {
            return;
        }
        U(this.f49115r, this.f49117t);
        R();
        this.f49119v = true;
    }

    public CommonRequestBean S(String str, String str2, String str3) {
        return RequestBeanUtil.getInstance(this.f49098a).getGameListRequestBean(this.f49109l, 10, str, str2, this.f49114q, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U(String str, String str2) {
        if (this.f49121x != null) {
            return;
        }
        if (com.join.android.app.common.utils.f.j(this.f49098a)) {
            this.f49118u = true;
            AtomicInteger atomicInteger = this.B;
            atomicInteger.set(atomicInteger.get() + 1);
            ArrayList arrayList = new ArrayList();
            try {
                try {
                    RequestModel requestModel = new RequestModel(this.f49098a);
                    LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
                    luckHistoryrequest.setType(Integer.parseInt(this.f49122y));
                    luckHistoryrequest.setPage(this.f49109l);
                    luckHistoryrequest.setUid(AccountUtil_.getInstance_(this.f49098a).getAccountData().getUid());
                    requestModel.setArgs(luckHistoryrequest);
                    ResponseModel<RankingMainDataBean> body = com.join.mgps.rpc.impl.h.L().J().f0(requestModel.makeSign()).execute().body();
                    AtomicInteger atomicInteger2 = this.B;
                    atomicInteger2.set(atomicInteger2.get() - 1);
                    List<CollectionBeanSub> list = null;
                    if (body != null && body.getData() != null) {
                        list = body.getData().getRank_list();
                        if (body.getData().getRank_type() != null && body.getData().getRank_type().size() > 0) {
                            new PrefDef_(this.f49098a).rankingMenu2().g(JsonMapper.toJsonString(body.getData().getRank_type()));
                        }
                    }
                    if (list != null) {
                        Iterator<CollectionBeanSub> it2 = list.iterator();
                        int i2 = 0;
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            CollectionBeanSub next = it2.next();
                            i2++;
                            if (this.f49120w && i2 > 3) {
                                h0();
                                break;
                            }
                            next.set_from_type(this.D);
                            next.set_from(this.C);
                            String str3 = this.f49120w ? "home" : "ranking";
                            next.setRecPosition(str3 + "-ranking-" + (arrayList.size() + i2 + 1));
                            arrayList.add(new CollectionBeanSubBusiness(next));
                        }
                    }
                    if (arrayList.size() > 0) {
                        showMain(arrayList);
                    } else if (this.f49109l == 1 && arrayList.size() == 0) {
                        v0(true);
                    } else {
                        h0();
                    }
                } catch (Exception e4) {
                    AtomicInteger atomicInteger3 = this.B;
                    atomicInteger3.set(atomicInteger3.get() - 1);
                    e4.printStackTrace();
                    if (this.f49109l == 1 && arrayList.size() == 0) {
                        v0(false);
                    } else {
                        h0();
                    }
                }
                return;
            } finally {
                this.f49118u = false;
            }
        }
        v0(false);
    }

    void W() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f49122y = arguments.getString("type");
        this.f49120w = arguments.getBoolean("fromHome");
        this.f49123z = arguments.getString("title");
        this.f49121x = (List) arguments.getSerializable("datas");
        String str = this.f49122y;
        this.f49115r = str;
        if ("1".equals(str)) {
            this.C = 10903;
            this.D = 10903;
        } else if (PayCenterOrderRequest.PAY_TYPE_RECHARGE.equals(this.f49122y)) {
            this.C = 10902;
            this.D = 10902;
        } else if ("3".equals(this.f49122y)) {
            this.C = 10901;
            this.D = 10901;
        } else if ("6".equals(this.f49122y)) {
            this.C = 10904;
            this.D = 10904;
        } else if ("7".equals(this.f49122y)) {
            this.C = 10905;
            this.D = 10905;
        } else if ("8".equals(this.f49122y)) {
            this.C = 10906;
            this.D = 10906;
        }
    }

    void X() {
        XListView2 xListView2;
        if (TextUtils.isEmpty(this.f49122y) || (xListView2 = this.f49102e) == null) {
            return;
        }
        View view = this.H;
        if (view != null) {
            xListView2.removeHeaderView(view);
            this.f49100c.g(false);
            this.H = null;
            return;
        }
        RecomDatabean recomDatabean = this.A;
        if (recomDatabean == null || recomDatabean.getMain() == null || this.A.getSub() == null || this.A.getSub().size() <= 0) {
            return;
        }
        if (this.H == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_ranking_item_header, (ViewGroup) null, false);
            this.H = inflate;
            this.I = (SimpleDraweeView) inflate.findViewById(R.id.cover);
            xListView2.addHeaderView(this.H);
            this.f49100c.g(true);
        }
        MyImageLoader.d(this.I, R.drawable.img_qs, this.A.getMain() != null ? this.A.getMain().getPic_remote() : "");
        this.H.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.e4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                j4.this.c0(view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        Fragment parentFragment;
        W();
        this.f49108k = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        this.f49104g.setBackgroundResource(R.color.activity_default_background);
        this.f49098a = getActivity();
        this.f49109l = 1;
        List<DownloadTask> d4 = g1.f.G().d();
        this.f49110m = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f49110m) {
                this.f49113p.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f49100c = new com.join.mgps.adapter.w4(this.f49098a, this.f49122y);
        if (com.join.mgps.Util.d2.i(this.f49122y)) {
            this.f49100c.h(Integer.parseInt("0"));
        }
        if (this.f49120w) {
            this.f49100c.f();
        }
        this.f49099b = this.f49100c.e();
        this.f49102e.setAdapter((ListAdapter) this.f49100c);
        this.f49102e.setPreLoadCount(10);
        this.f49119v = false;
        showLoding();
        if (this.f49121x != null) {
            ArrayList arrayList = new ArrayList();
            for (CollectionBeanSub collectionBeanSub : this.f49121x) {
                arrayList.add(new CollectionBeanSubBusiness(collectionBeanSub));
            }
            showMain(arrayList);
            this.f49102e.setNoMore();
        }
        this.f49102e.setPullLoadEnable(new com.join.mgps.customview.i() { // from class: com.join.mgps.fragment.g4
            @Override // com.join.mgps.customview.i
            public final void onLoadMore() {
                j4.this.Z();
            }
        });
        this.f49102e.setPullRefreshEnable(new com.join.mgps.customview.j() { // from class: com.join.mgps.fragment.h4
            @Override // com.join.mgps.customview.j
            public final void onRefresh() {
                j4.this.a0();
            }
        });
        this.f49102e.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.fragment.f4
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j4) {
                j4.this.b0(adapterView, view, i2, j4);
            }
        });
        this.f49102e.setOnScrollListener(this);
        if (this.isVisible && (parentFragment = getParentFragment()) != null && parentFragment.isVisible()) {
            Ext ext = new Ext();
            ext.setFrom(this.C + "");
            com.papa.sim.statistic.p.l(this.f49098a).K1(com.papa.sim.statistic.Event.goGameRankGame, ext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e0() {
        this.f49109l = 1;
        U(this.f49115r, this.f49117t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        XListView2 xListView2 = this.f49102e;
        if (xListView2 != null) {
            xListView2.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void i0() {
        if (this.f49114q != 1001) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void j0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.w4 w4Var = this.f49100c;
        if (w4Var != null) {
            w4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.d
    public void lazyLoad() {
        R();
    }

    public void o0(List<CollectionBeanSub> list, int i2) {
        if (list == null || list.equals(this.f49121x)) {
            return;
        }
        this.f49121x = list;
        ArrayList arrayList = new ArrayList();
        for (CollectionBeanSub collectionBeanSub : list) {
            collectionBeanSub.set_from_type(i2);
            collectionBeanSub.set_from(i2);
            arrayList.add(new CollectionBeanSubBusiness(collectionBeanSub));
        }
        this.f49099b.clear();
        showMain(arrayList);
        this.f49102e.setNoMore();
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
            z0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    z0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    z0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.f49113p;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    y0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            z0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            z0(a4, 8);
                            return;
                        case 13:
                            z0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            z0(a4, 5);
        } else {
            z0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        com.join.mgps.adapter.w4 w4Var;
        super.onHiddenChanged(z3);
        if (z3 || (w4Var = this.f49100c) == null) {
            return;
        }
        w4Var.notifyDataSetChanged();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f49111n = (i4 + i2) - 1;
        this.f49112o = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 0 && "1".equals(this.f49122y)) {
            this.E.removeCallbacks(this.F);
            this.E.postDelayed(this.F, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.d
    public void onVisible() {
        super.onVisible();
        if (this.isVisible && isAdded()) {
            Ext ext = new Ext();
            ext.setFrom(this.C + "");
            com.papa.sim.statistic.p.l(this.f49098a).K1(com.papa.sim.statistic.Event.goGameRankGame, ext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void q0() {
        com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(0));
    }

    public void r0(String str) {
        if (str.equals(this.f49115r)) {
            return;
        }
        this.f49115r = str;
        this.f49102e.k();
        this.f49109l = 1;
        showLoding();
        this.f49099b.clear();
        this.f49100c.notifyDataSetChanged();
        this.f49103f.setVisibility(8);
        U(this.f49115r, this.f49117t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f49109l = 1;
        showLoding();
        U(this.f49115r, this.f49117t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f49098a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.f49104g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49105h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49103f;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f49106i;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSubBusiness> list) {
        try {
            if (this.B.get() > 0) {
                return;
            }
            LinearLayout linearLayout = this.f49105h;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.f49104g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            PtrClassicFrameLayout ptrClassicFrameLayout = this.f49103f;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.setVisibility(0);
            }
            LinearLayout linearLayout3 = this.f49106i;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            XListView2 xListView2 = this.f49102e;
            if (xListView2 != null) {
                xListView2.t();
                this.f49102e.u();
            }
            if (this.f49109l == 1) {
                this.f49099b.clear();
                X();
            }
            x0(list);
            this.f49099b.addAll(list);
            if (this.f49102e != null) {
                if (list.size() == 0) {
                    this.f49102e.setNoMore();
                }
                this.f49100c.notifyDataSetChanged();
                if (this.f49109l == 1) {
                    onScrollStateChanged(null, 0);
                    this.f49102e.setSelection(0);
                }
            }
            if (this.f49102e.getLastVisiblePosition() == this.f49102e.getAdapter().getCount() - 1 && this.f49109l == 1) {
                this.f49102e.r();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void t0(String str) {
        String str2 = this.f49117t;
        if (str2 == null || str == null || str.equals(str2)) {
            return;
        }
        this.f49117t = str;
        XListView2 xListView2 = this.f49102e;
        if (xListView2 != null) {
            xListView2.k();
        }
        this.f49109l = 1;
        showLoding();
        this.f49099b.clear();
        com.join.mgps.adapter.w4 w4Var = this.f49100c;
        if (w4Var != null) {
            w4Var.notifyDataSetChanged();
        }
        this.f49103f.setVisibility(8);
        U(this.f49115r, this.f49117t);
    }

    public void u0(String str, String str2) {
        this.f49117t = str2;
        this.f49115r = str;
        this.f49102e.k();
        this.f49109l = 1;
        showLoding();
        this.f49099b.clear();
        this.f49100c.notifyDataSetChanged();
        this.f49103f.setVisibility(8);
        U(this.f49115r, this.f49117t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0(boolean z3) {
        XListView2 xListView2 = this.f49102e;
        if (xListView2 != null) {
            xListView2.t();
            this.f49102e.u();
        }
        if (!z3) {
            if (this.f49109l == 1 && this.f49099b.size() == 0) {
                LinearLayout linearLayout = this.f49105h;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
                LinearLayout linearLayout2 = this.f49104g;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                PtrClassicFrameLayout ptrClassicFrameLayout = this.f49103f;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.setVisibility(8);
                }
                LinearLayout linearLayout3 = this.f49106i;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(8);
                    return;
                }
                return;
            }
            try {
                com.join.mgps.Util.i2.a(this.f49098a).b(getString(R.string.net_connect_failed));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (z3 && this.f49109l == 1 && this.f49099b.size() == 0) {
            LinearLayout linearLayout4 = this.f49105h;
            if (linearLayout4 != null) {
                linearLayout4.setVisibility(8);
            }
            LinearLayout linearLayout5 = this.f49104g;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(8);
            }
            PtrClassicFrameLayout ptrClassicFrameLayout2 = this.f49103f;
            if (ptrClassicFrameLayout2 != null) {
                ptrClassicFrameLayout2.setVisibility(8);
            }
            LinearLayout linearLayout6 = this.f49106i;
            if (linearLayout6 != null) {
                linearLayout6.setVisibility(0);
            }
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
                    m0(downloadTask);
                    return;
                case 3:
                    k0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    n0(downloadTask);
                    return;
                case 6:
                    l0(downloadTask);
                    return;
            }
        }
    }
}
