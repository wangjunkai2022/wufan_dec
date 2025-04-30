package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.u0;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: ClassifyListFragment.java */
@EFragment(R.layout.classify_list_layout)
/* loaded from: classes.dex */
public class d extends Fragment implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f36919a;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.adapter.u0 f36921c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    RelativeLayout f36922d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f36923e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    PtrClassicFrameLayout f36924f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f36925g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f36926h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f36927i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f36928j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    ImageView f36929k;

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.rpc.d f36930l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.j f36931m;

    /* renamed from: o  reason: collision with root package name */
    List<DownloadTask> f36933o;

    /* renamed from: x  reason: collision with root package name */
    private String f36942x;

    /* renamed from: y  reason: collision with root package name */
    private String f36943y;

    /* renamed from: b  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f36920b = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    private int f36932n = 1;

    /* renamed from: p  reason: collision with root package name */
    private int f36934p = 0;

    /* renamed from: q  reason: collision with root package name */
    private int f36935q = 0;

    /* renamed from: r  reason: collision with root package name */
    private Map<String, DownloadTask> f36936r = new ConcurrentHashMap();

    /* renamed from: s  reason: collision with root package name */
    private int f36937s = 1;

    /* renamed from: t  reason: collision with root package name */
    private String f36938t = "";

    /* renamed from: u  reason: collision with root package name */
    private int f36939u = 0;

    /* renamed from: v  reason: collision with root package name */
    private String f36940v = "";

    /* renamed from: w  reason: collision with root package name */
    private boolean f36941w = false;

    /* renamed from: z  reason: collision with root package name */
    final AtomicInteger f36944z = new AtomicInteger(0);
    private String A = "";
    private int B = 0;
    private int C = 0;

    /* compiled from: ClassifyListFragment.java */
    /* loaded from: classes3.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (d.this.f36941w) {
                return;
            }
            d.P(d.this);
            d dVar = d.this;
            dVar.V(dVar.f36938t, d.this.f36940v);
        }
    }

    /* compiled from: ClassifyListFragment.java */
    /* loaded from: classes3.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (d.this.f36941w) {
                return;
            }
            d.this.f36932n = 1;
            d dVar = d.this;
            dVar.V(dVar.f36938t, d.this.f36940v);
        }
    }

    /* compiled from: ClassifyListFragment.java */
    /* loaded from: classes3.dex */
    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 > d.this.f36920b.size() || i2 < 0) {
                return;
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) d.this.f36920b.get(i2);
            if (collectionBeanSubBusiness.getCrc_sign_id() != null) {
                IntentUtil.getInstance().intentActivity(d.this.f36919a, collectionBeanSubBusiness.getIntentDataBean());
            }
        }
    }

    static /* synthetic */ int P(d dVar) {
        int i2 = dVar.f36932n;
        dVar.f36932n = i2 + 1;
        return i2;
    }

    public static d X(int i2, String str) {
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putString("romType", str);
        bundle.putInt("uiType", 0);
        bundle.putInt("rankingType", i2);
        eVar.setArguments(bundle);
        return eVar;
    }

    public static d Z(String str, String str2) {
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putString("romType", str2);
        bundle.putString("type", str);
        bundle.putInt("uiType", 0);
        eVar.setArguments(bundle);
        return eVar;
    }

    public static d a0(int i2, String str, String str2, String str3) {
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        int i4 = 0;
        bundle.putInt("uiType", 0);
        bundle.putInt("rankingType", i2);
        if ("4".equals(str)) {
            bundle.putString(RankingHomeActivity_.f34981r, str2);
            bundle.putString(RankingHomeActivity_.f34982s, str3);
        }
        int i5 = 119;
        if (i2 != 1001) {
            i4 = 109;
        } else if ("1".equals(str)) {
            i4 = 10902;
            i5 = 10902;
        } else if (PayCenterOrderRequest.PAY_TYPE_RECHARGE.equals(str)) {
            i4 = 10901;
            i5 = 10901;
        } else if ("3".equals(str)) {
            i4 = 10903;
            i5 = 10903;
        } else if ("4".equals(str)) {
            i4 = 12101;
            i5 = 12101;
        }
        bundle.putInt(DownloadMethodPromptDialog_.F, i4);
        bundle.putInt(DownloadMethodPromptDialog_.G, i5);
        eVar.setArguments(bundle);
        return eVar;
    }

    public static d b0(int i2, String str) {
        return a0(i2, str, "", "0");
    }

    public static d c0(int i2, String str, int i4) {
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bundle.putInt("uiType", i4);
        bundle.putInt("rankingType", i2);
        bundle.putInt(DownloadMethodPromptDialog_.F, 107);
        bundle.putInt(DownloadMethodPromptDialog_.G, 117);
        eVar.setArguments(bundle);
        return eVar;
    }

    private void g0(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f36933o.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f36936r.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f36920b) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.f36936r.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.f36936r.get(collectionBeanSubBusiness.getGame_id());
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
        this.f36921c.notifyDataSetChanged();
    }

    private void h0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f36936r;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f36921c.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void i0(DownloadTask downloadTask) {
        UtilsMy.D3(this.f36933o);
        if (!this.f36936r.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f36933o.add(downloadTask);
            this.f36936r.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        p0(downloadTask);
        this.f36921c.notifyDataSetChanged();
    }

    private void j0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f36936r;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f36933o.add(downloadTask);
            this.f36936r.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        p0(downloadTask);
        DownloadTask downloadTask2 = this.f36936r.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f36921c.notifyDataSetChanged();
    }

    private void p0(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.f36920b) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.f36936r.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f36936r.get(mod_info.getMod_game_id());
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

    private void q0(List<CollectionBeanSubBusiness> list) {
        List<DownloadTask> list2;
        if (list == null || list.size() == 0 || (list2 = this.f36933o) == null || list2.size() == 0) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = this.f36933o.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = this.f36936r.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                        DownloadTask downloadTask2 = this.f36936r.get(mod_info.getMod_game_id());
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

    private void t0() {
        DownloadTask downloadTask;
        if (this.f36935q < 0 || this.f36934p >= this.f36923e.getCount()) {
            return;
        }
        for (int i2 = this.f36935q; i2 <= this.f36934p; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f36923e.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f36923e.getChildAt(i2 - this.f36935q);
                if (childAt.getTag() instanceof u0.b) {
                    u0.b bVar = (u0.b) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = bVar.f44281l;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = bVar.f44281l;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            bVar.f44284o.setProgress((int) f4.getProgress());
                        } else {
                            bVar.f44283n.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = bVar.f44282m;
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

    public void M() {
        XListView2 xListView2;
        if (getActivity() == null || this.f36921c == null || ((ClassifyGameActivity) getActivity()).G0() == this.A) {
            return;
        }
        if (com.join.mgps.Util.d2.h(this.f36938t) && com.join.mgps.Util.d2.h(this.f36940v)) {
            return;
        }
        if (this.f36941w && (xListView2 = this.f36923e) != null) {
            xListView2.t();
            this.f36923e.u();
        }
        LinearLayout linearLayout = this.f36926h;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f36925g;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f36924f;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f36927i;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        this.f36932n = 1;
        V(this.f36938t, this.f36940v);
    }

    public CommonRequestBean U(String str, String str2, String str3) {
        return RequestBeanUtil.getInstance(this.f36919a).getGameListRequestBean(this.f36932n, 10, str, str2, this.f36937s, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d0 A[Catch: all -> 0x010f, Exception -> 0x0111, TryCatch #0 {Exception -> 0x0111, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f3, B:30:0x00f9, B:31:0x00fd, B:33:0x0101, B:35:0x0107, B:36:0x010b, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f9 A[Catch: all -> 0x010f, Exception -> 0x0111, TryCatch #0 {Exception -> 0x0111, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f3, B:30:0x00f9, B:31:0x00fd, B:33:0x0101, B:35:0x0107, B:36:0x010b, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fd A[Catch: all -> 0x010f, Exception -> 0x0111, TryCatch #0 {Exception -> 0x0111, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f3, B:30:0x00f9, B:31:0x00fd, B:33:0x0101, B:35:0x0107, B:36:0x010b, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #1 }] */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void V(java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.d.V(java.lang.String, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W() {
        this.f36932n = 1;
        V(this.f36938t, this.f36940v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f36930l = com.join.mgps.rpc.impl.c.P1();
        this.f36931m = com.join.mgps.rpc.impl.h.L();
        com.join.mgps.Util.c0.a().d(this);
        this.f36925g.setBackgroundResource(R.color.activity_default_background);
        this.f36919a = getActivity();
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f36938t = arguments.getString("type");
        this.f36939u = arguments.getInt("uiType");
        this.f36940v = arguments.getString("romType");
        this.f36937s = arguments.getInt("rankingType");
        this.B = arguments.getInt(DownloadMethodPromptDialog_.F);
        this.C = arguments.getInt(DownloadMethodPromptDialog_.G);
        this.f36942x = arguments.getString(RankingHomeActivity_.f34981r);
        this.f36943y = arguments.getString(RankingHomeActivity_.f34982s);
        if ("4".equals(this.f36938t)) {
            com.papa.sim.statistic.p.l(this.f36919a).K1(Event.goGameListPage, new Ext().setFrom("1"));
        }
        if (this.f36939u > 0) {
            this.f36922d.setBackgroundColor(Color.parseColor("#efeff4"));
        }
        if (this.f36937s == 0) {
            this.f36937s = 1;
        }
        this.f36932n = 1;
        List<DownloadTask> d4 = g1.f.G().d();
        this.f36933o = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f36933o) {
                this.f36936r.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        com.join.mgps.adapter.u0 u0Var = new com.join.mgps.adapter.u0(this.f36919a);
        this.f36921c = u0Var;
        u0Var.c(this.f36939u);
        this.f36920b = this.f36921c.b();
        this.f36923e.setAdapter((ListAdapter) this.f36921c);
        this.f36923e.setPreLoadCount(10);
        showLoding();
        V(this.f36938t, this.f36940v);
        this.f36923e.setPullLoadEnable(new a());
        this.f36923e.setPullRefreshEnable(new b());
        this.f36923e.setOnItemClickListener(new c());
        this.f36923e.setOnScrollListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        XListView2 xListView2 = this.f36923e;
        if (xListView2 != null) {
            xListView2.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e0() {
        if (this.f36937s != 1001) {
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void f0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        com.join.mgps.adapter.u0 u0Var = this.f36921c;
        if (u0Var != null) {
            u0Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void k0() {
        if (this.f36937s != 1001) {
            getActivity().finish();
        }
    }

    public void l0(String str) {
        if (str.equals(this.f36938t)) {
            return;
        }
        this.f36938t = str;
        this.f36923e.k();
        this.f36932n = 1;
        showLoding();
        this.f36920b.clear();
        this.f36921c.notifyDataSetChanged();
        this.f36924f.setVisibility(8);
        V(this.f36938t, this.f36940v);
    }

    public void m0(String str) {
        String str2 = this.f36940v;
        if (str2 == null || str == null || str.equals(str2)) {
            return;
        }
        this.f36940v = str;
        XListView2 xListView2 = this.f36923e;
        if (xListView2 != null) {
            xListView2.k();
        }
        this.f36932n = 1;
        showLoding();
        this.f36920b.clear();
        com.join.mgps.adapter.u0 u0Var = this.f36921c;
        if (u0Var != null) {
            u0Var.notifyDataSetChanged();
        }
        this.f36924f.setVisibility(8);
        V(this.f36938t, this.f36940v);
    }

    public void n0(String str, String str2) {
        this.f36940v = str2;
        this.f36938t = str;
        this.f36923e.k();
        this.f36932n = 1;
        showLoding();
        this.f36920b.clear();
        this.f36921c.notifyDataSetChanged();
        this.f36924f.setVisibility(8);
        V(this.f36938t, this.f36940v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o0(boolean z3) {
        XListView2 xListView2 = this.f36923e;
        if (xListView2 != null) {
            xListView2.t();
            this.f36923e.u();
        }
        if (!z3) {
            if (this.f36932n == 1 && this.f36920b.size() == 0) {
                LinearLayout linearLayout = this.f36926h;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
                LinearLayout linearLayout2 = this.f36925g;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                PtrClassicFrameLayout ptrClassicFrameLayout = this.f36924f;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.setVisibility(8);
                }
                LinearLayout linearLayout3 = this.f36927i;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(8);
                    return;
                }
                return;
            }
            try {
                com.join.mgps.Util.i2.a(this.f36919a).b(getString(R.string.net_connect_failed));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (z3 && this.f36932n == 1 && this.f36920b.size() == 0) {
            LinearLayout linearLayout4 = this.f36926h;
            if (linearLayout4 != null) {
                linearLayout4.setVisibility(8);
            }
            LinearLayout linearLayout5 = this.f36925g;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(8);
            }
            PtrClassicFrameLayout ptrClassicFrameLayout2 = this.f36924f;
            if (ptrClassicFrameLayout2 != null) {
                ptrClassicFrameLayout2.setVisibility(8);
            }
            LinearLayout linearLayout6 = this.f36927i;
            if (linearLayout6 != null) {
                linearLayout6.setVisibility(0);
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
            u0(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    u0(a4, 6);
                    return;
                } else if (c4 == 7) {
                    u0(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.f36936r;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    t0();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            u0(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            u0(a4, 8);
                            return;
                        case 13:
                            u0(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            u0(a4, 5);
        } else {
            u0(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        com.join.mgps.adapter.u0 u0Var;
        super.onHiddenChanged(z3);
        if (z3 || (u0Var = this.f36921c) == null) {
            return;
        }
        u0Var.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f36934p = (i4 + i2) - 1;
        this.f36935q = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    public void r0(String str, String str2) {
        this.f36932n = 1;
        V(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f36932n = 1;
        showLoding();
        V(this.f36938t, this.f36940v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f36919a);
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
        LinearLayout linearLayout = this.f36925g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f36926h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f36924f;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f36927i;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSubBusiness> list) {
        try {
            if (this.f36944z.get() > 0) {
                return;
            }
            LinearLayout linearLayout = this.f36926h;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.f36925g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            PtrClassicFrameLayout ptrClassicFrameLayout = this.f36924f;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.setVisibility(0);
            }
            LinearLayout linearLayout3 = this.f36927i;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            XListView2 xListView2 = this.f36923e;
            if (xListView2 != null) {
                xListView2.t();
                this.f36923e.u();
            }
            if (this.f36932n == 1) {
                this.f36920b.clear();
            }
            q0(list);
            this.f36920b.addAll(list);
            if (this.f36923e != null) {
                if (list.size() == 0) {
                    this.f36923e.setNoMore();
                }
                this.f36921c.notifyDataSetChanged();
                if (this.f36932n == 1) {
                    this.f36923e.setSelection(0);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void u0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    i0(downloadTask);
                    return;
                case 3:
                    g0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    j0(downloadTask);
                    return;
                case 6:
                    h0(downloadTask);
                    return;
            }
        }
    }
}
