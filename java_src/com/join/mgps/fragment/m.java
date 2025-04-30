package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DocumentManageActivity;
import com.join.mgps.activity.GameMainActivity3;
import com.join.mgps.customview.ClouldItemView3;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dialog.w;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArchiveBuyArgs;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.dto.ArchiveevaluateArgs;
import com.join.mgps.dto.ArchiveshopArgs;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: CloudListFragment.java */
@EFragment(R.layout.fragment_cloud_list)
/* loaded from: classes.dex */
public class m extends Fragment implements com.join.mgps.listener.c {
    ArchiveNumDataBean D;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f49293b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f49294c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f49295d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f49296e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f49297f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f49298g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f49299h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f49300i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f49301j;

    /* renamed from: k  reason: collision with root package name */
    IntentFilter f49302k;
    @Pref

    /* renamed from: l  reason: collision with root package name */
    PrefDef_ f49303l;

    /* renamed from: m  reason: collision with root package name */
    private AccountBean f49304m;

    /* renamed from: n  reason: collision with root package name */
    int f49305n;

    /* renamed from: o  reason: collision with root package name */
    int f49306o;

    /* renamed from: p  reason: collision with root package name */
    String f49307p;

    /* renamed from: r  reason: collision with root package name */
    int f49309r;

    /* renamed from: s  reason: collision with root package name */
    com.join.mgps.rpc.c f49310s;

    /* renamed from: t  reason: collision with root package name */
    List<CloudListDataBean> f49311t;

    /* renamed from: u  reason: collision with root package name */
    h f49312u;

    /* renamed from: v  reason: collision with root package name */
    LocalBroadcastManager f49313v;

    /* renamed from: w  reason: collision with root package name */
    GameMainActivity3 f49314w;

    /* renamed from: a  reason: collision with root package name */
    boolean f49292a = false;

    /* renamed from: q  reason: collision with root package name */
    int f49308q = 1;

    /* renamed from: x  reason: collision with root package name */
    boolean f49315x = false;

    /* renamed from: y  reason: collision with root package name */
    boolean f49316y = true;

    /* renamed from: z  reason: collision with root package name */
    private boolean f49317z = true;
    public boolean A = false;
    public boolean B = true;
    public boolean C = true;
    int E = 0;
    List<String> F = new ArrayList(0);
    List<CloudListDataBean> G = new ArrayList(0);

    /* compiled from: CloudListFragment.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m.this.m0();
        }
    }

    /* compiled from: CloudListFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            m mVar = m.this;
            mVar.d0(mVar.f49308q);
            m.this.N();
        }
    }

    /* compiled from: CloudListFragment.java */
    /* loaded from: classes4.dex */
    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            m mVar = m.this;
            mVar.f49308q = 1;
            mVar.N();
            m mVar2 = m.this;
            mVar2.d0(mVar2.f49308q);
        }
    }

    /* compiled from: CloudListFragment.java */
    /* loaded from: classes4.dex */
    class d implements w.e {
        d() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
        }
    }

    /* compiled from: CloudListFragment.java */
    /* loaded from: classes4.dex */
    class e implements CompoundButton.OnCheckedChangeListener {
        e() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                m.this.f49317z = false;
            } else {
                m.this.f49317z = true;
            }
        }
    }

    /* compiled from: CloudListFragment.java */
    /* loaded from: classes4.dex */
    class f implements w.e {
        f() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = m.this.getContext();
            intentUtil.goShareWebActivity(context, "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId=" + m.this.f49307p);
            if (!m.this.f49317z) {
                m.this.f49303l.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            wVar.dismiss();
        }
    }

    /* compiled from: CloudListFragment.java */
    /* loaded from: classes4.dex */
    class g implements w.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49324a;

        g(CloudListDataBean cloudListDataBean) {
            this.f49324a = cloudListDataBean;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            m.this.b0(this.f49324a);
            if (!m.this.f49317z) {
                m.this.f49303l.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            wVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CloudListFragment.java */
    /* loaded from: classes4.dex */
    public class h extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        Context f49326a;

        /* compiled from: CloudListFragment.java */
        /* loaded from: classes4.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            ClouldItemView3 f49328a;

            /* renamed from: b  reason: collision with root package name */
            LinearLayout f49329b;

            /* renamed from: c  reason: collision with root package name */
            TextView f49330c;

            /* renamed from: d  reason: collision with root package name */
            TextView f49331d;

            a() {
            }
        }

        public h(Context context) {
            this.f49326a = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return m.this.f49311t.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return m.this.f49311t.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            try {
                if (view == null) {
                    aVar = new a();
                    view = LayoutInflater.from(this.f49326a).inflate(R.layout.item_cloud_list_item, (ViewGroup) null);
                    aVar.f49328a = (ClouldItemView3) view.findViewById(R.id.coulditem);
                    aVar.f49329b = (LinearLayout) view.findViewById(R.id.ll_show);
                    aVar.f49330c = (TextView) view.findViewById(R.id.tv_today_id);
                    aVar.f49331d = (TextView) view.findViewById(R.id.tv_zong_id);
                    view.setTag(aVar);
                } else {
                    aVar = (a) view.getTag();
                }
                aVar.f49328a.setCloudItemListener(m.this);
                if (m.this.f49311t.size() - 1 == i2) {
                    ClouldItemView3 clouldItemView3 = aVar.f49328a;
                    m mVar = m.this;
                    m mVar2 = m.this;
                    clouldItemView3.setData(mVar.f49307p, mVar.f49311t.get(i2), mVar2.f49306o, mVar2.f49305n, false, true, mVar2);
                } else {
                    ClouldItemView3 clouldItemView32 = aVar.f49328a;
                    m mVar3 = m.this;
                    m mVar4 = m.this;
                    clouldItemView32.setData(mVar3.f49307p, mVar3.f49311t.get(i2), mVar4.f49306o, mVar4.f49305n, false, false, mVar4);
                }
                aVar.f49328a.setGBAType(m.this.f49314w.f31654k1);
                ClouldItemView3 clouldItemView33 = aVar.f49328a;
                GameMainActivity3 gameMainActivity3 = m.this.f49314w;
                clouldItemView33.setPGN(gameMainActivity3.f31656m1, gameMainActivity3.f31657n1);
                if (m.this.f49305n == 4) {
                    aVar.f49329b.setVisibility(0);
                    TextView textView = aVar.f49330c;
                    textView.setText(m.this.f49311t.get(i2).getTodayCoin() + "");
                    TextView textView2 = aVar.f49331d;
                    textView2.setText(m.this.f49311t.get(i2).getTotalCoin() + "");
                } else {
                    aVar.f49329b.setVisibility(8);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }
    }

    private void V(CloudListDataBean cloudListDataBean, boolean z3) {
        if (z3) {
            cloudListDataBean.setArchiveFilePath(com.join.mgps.Util.u.f27850i + File.separator + cloudListDataBean.getArchiveFileName());
        } else {
            cloudListDataBean.setArchiveFilePath(com.join.mgps.Util.u.f27849h + File.separator + cloudListDataBean.getArchiveFileName());
        }
        if (cloudListDataBean.getIsVip() == 1) {
            com.papa.sim.statistic.p.l(getContext()).K1(Event.VipArchive_download_page, new Ext().setGameId(this.f49307p));
        }
        Intent intent = new Intent(f1.a.f65479h0);
        intent.putExtra("downCloud", cloudListDataBean);
        getActivity().sendBroadcast(intent);
    }

    private ArchiveBuyArgs W() {
        if (this.f49304m == null) {
            return null;
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
        String str = this.f49304m.getUid() + "";
        String token = this.f49304m.getToken();
        String str2 = this.f49307p;
        int i2 = this.f49308q;
        this.f49308q = i2 + 1;
        return requestBeanUtil.getArchiveBuy(str, token, str2, i2);
    }

    private ArchiveColudArgs X() {
        if (this.f49304m == null) {
            return RequestBeanUtil.getInstance(getContext()).getArchiveNum("", "", this.f49307p);
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getContext());
        return requestBeanUtil.getArchiveNum(this.f49304m.getUid() + "", this.f49304m.getToken(), this.f49307p);
    }

    private ArchiveevaluateArgs Z(CloudListDataBean cloudListDataBean, int i2) {
        String archiveId;
        if (this.f49304m == null) {
            return null;
        }
        if (this.f49306o == 3) {
            archiveId = cloudListDataBean.getId();
        } else {
            archiveId = cloudListDataBean.getArchiveId();
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
        return requestBeanUtil.getArchiveEvaluate(this.f49304m.getUid() + "", this.f49304m.getToken(), archiveId, i2);
    }

    private ArchiveshopArgs a0() {
        if (this.f49304m == null) {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
            String str = this.f49307p;
            int i2 = this.f49309r;
            int i4 = this.f49308q;
            this.f49308q = i4 + 1;
            return requestBeanUtil.getArchiveshop("", "", str, i2, i4);
        }
        RequestBeanUtil requestBeanUtil2 = RequestBeanUtil.getInstance(getActivity());
        String str2 = this.f49304m.getUid() + "";
        String token = this.f49304m.getToken();
        String str3 = this.f49307p;
        int i5 = this.f49309r;
        int i6 = this.f49308q;
        this.f49308q = i6 + 1;
        return requestBeanUtil2.getArchiveshop(str2, token, str3, i5, i6);
    }

    private void c0() {
        this.F.clear();
        showLoding();
        d0(this.f49308q);
    }

    private boolean e0() {
        if (AccountUtil_.getInstance_(getContext()).isTourist()) {
            IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            return false;
        } else if (AccountUtil_.getInstance_(getContext()).getAccountData().getUid() == 0) {
            IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            return false;
        } else {
            return true;
        }
    }

    @Override // com.join.mgps.listener.c
    public void E(CloudListDataBean cloudListDataBean, int i2) {
        if (e0()) {
            O(cloudListDataBean, i2);
        }
    }

    void M(ArchiveShopDataBean archiveShopDataBean) {
        try {
            f0();
            if (archiveShopDataBean != null && archiveShopDataBean.getCode() == 600) {
                List<CloudListDataBean> marketList = archiveShopDataBean.getData_info().getMarketList();
                if (archiveShopDataBean.getData_info().getMarketList().size() == 0) {
                    q0();
                    return;
                } else {
                    U(marketList);
                    return;
                }
            }
            this.f49316y = true;
            r0();
        } catch (Exception e4) {
            showLodingFailed();
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N() {
        try {
            XListView2 xListView2 = this.f49294c;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O(CloudListDataBean cloudListDataBean, int i2) {
        try {
            if (i2 != 4) {
                ArchiveEvaluteDataBean a4 = this.f49310s.a(Z(cloudListDataBean, i2).getArgs());
                if (a4.getCode() == 600) {
                    showMessage(a4.getData_info().getMsg());
                    m0();
                    return;
                } else if (a4.getCode() == -1) {
                    if ("701".equals(a4.getMsg())) {
                        o0();
                        showMessage("你的登陆已失效，请重新登陆。");
                        return;
                    }
                    showMessage(a4.getMsg());
                    return;
                } else {
                    return;
                }
            }
            HashMap hashMap = new HashMap();
            if (com.join.mgps.Util.d2.h(cloudListDataBean.getArchiveId())) {
                hashMap.put("id", cloudListDataBean.getId());
            } else {
                hashMap.put("id", cloudListDataBean.getArchiveId());
            }
            hashMap.put("uid", this.f49304m.getUid() + "");
            hashMap.put("token", this.f49304m.getToken());
            ArchiveResponseMain<ArchiveResponseMessage> e4 = this.f49310s.e(hashMap);
            if (e4 == null || e4.getCode() != 600) {
                if (e4 != null) {
                    if ("701".equals(e4.getMsg())) {
                        o0();
                        showMessage("你的登陆已失效，请重新登陆。");
                        return;
                    }
                    showMessage(e4.getMsg());
                    return;
                }
                return;
            }
            if (cloudListDataBean.getArchiveFilePath() != null && new File(cloudListDataBean.getArchiveFilePath()).exists()) {
                UtilsMy.delete(new File(cloudListDataBean.getArchiveFilePath()));
            }
            for (CloudDownRecoderTable cloudDownRecoderTable : n1.i.o().n(this.f49307p)) {
                if (cloudDownRecoderTable.getMd5().equals(cloudListDataBean.getFileMd5())) {
                    n1.i.o().delete((n1.i) cloudDownRecoderTable);
                }
            }
            u0(cloudListDataBean);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S(CloudListDataBean cloudListDataBean) {
        AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("id", cloudListDataBean.getId() == null ? cloudListDataBean.getArchiveId() : cloudListDataBean.getId());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        hashMap.put("uid", accountData.getUid() + "");
        hashMap.put("token", accountData.getToken());
        ArchiveResponseMain<ArchiveResponseMessage> b4 = this.f49310s.b(hashMap);
        if (b4.getCode() == 600) {
            v0(cloudListDataBean);
        } else if ("701".equals(b4.getMsg())) {
            o0();
            showMessage("你的登陆已失效，请重新登陆。");
        } else {
            showMessage(b4.getMsg());
        }
    }

    boolean T() {
        if (this.F.size() > 0) {
            this.F.clear();
            this.G.clear();
            this.E = this.f49308q - 1;
            showLoding();
            t0(1);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U(List<CloudListDataBean> list) {
        try {
            if (this.f49308q == 2) {
                this.f49311t.clear();
            }
            y0();
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f49311t.add(list.get(i2));
            }
            this.f49316y = true;
            if (list.size() < 10) {
                p0();
            }
            for (CloudListDataBean cloudListDataBean : this.f49311t) {
                cloudListDataBean.setStatus(6);
            }
            h0();
            y0();
        } catch (Exception e4) {
            showLodingFailed();
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    @RequiresApi(api = 16)
    public void afterView() {
        this.f49305n = getArguments().getInt("type", 9);
        this.f49306o = getArguments().getInt("typeIndex");
        this.f49307p = getArguments().getString("gameid");
        this.f49304m = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f49313v = LocalBroadcastManager.getInstance(getActivity());
        this.f49310s = com.join.mgps.rpc.impl.b.k();
        this.f49311t = new ArrayList();
        org.greenrobot.eventbus.c.f().t(this);
        this.f49312u = new h(getActivity());
        this.f49314w = (GameMainActivity3) getActivity();
        this.f49294c.setAdapter((ListAdapter) this.f49312u);
        int i2 = this.f49305n;
        if (i2 == 1) {
            this.f49309r = 0;
            c0();
        } else if (i2 == 2) {
            this.f49309r = 2;
            c0();
        } else if (i2 == 3) {
            this.f49309r = 1;
            c0();
        } else {
            this.f49309r = 3;
            c0();
        }
        this.f49293b.setOnClickListener(new a());
        this.f49294c.setPullLoadEnable(new b());
        P();
        this.f49294c.setPullRefreshEnable(new c());
        this.f49294c.setPreLoadCount(3);
        this.f49294c.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b0(CloudListDataBean cloudListDataBean) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap hashMap = new HashMap();
            if (this.f49306o == 4) {
                hashMap.put("id", cloudListDataBean.getArchiveId());
            } else {
                hashMap.put("id", cloudListDataBean.getId());
            }
            hashMap.put("uid", accountData.getUid() + "");
            hashMap.put("token", accountData.getToken());
            ArchiveDownDataBean d4 = this.f49310s.d(hashMap);
            if (d4 != null && d4.getCode() == 600) {
                cloudListDataBean.setArchiveFile(d4.getData_info().getDownloadUrl());
                cloudListDataBean.setArchiveFileName(System.currentTimeMillis() + d4.getData_info().getArchiveFileName());
                V(cloudListDataBean, true);
            } else if (d4 != null) {
                if ("701".equals(d4.getMsg())) {
                    o0();
                    showMessage("你的登陆已失效，请重新登陆。");
                    return;
                }
                showMessage(d4.getMsg());
            } else {
                showMessage("购买失败");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d0(int i2) {
        try {
            if (this.f49316y) {
                this.f49316y = false;
                if (this.f49306o == 3) {
                    ArchiveShopDataBean g4 = this.f49310s.g(a0().getArgs());
                    w0();
                    if ((g4 == null || g4.getData_info() == null || g4.getData_info().getMarketList() == null || g4.getData_info().getMarketList().size() == 0) && this.f49308q == 2) {
                        r0();
                        return;
                    } else {
                        M(g4);
                        return;
                    }
                }
                ArchiveBuyArgs W = W();
                if (!AccountUtil_.getInstance_(getActivity()).getToken().equals("") && this.f49304m.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                    ArchiveShopDataBean i4 = this.f49310s.i(W.getArgs());
                    w0();
                    if (i4.getCode() == -1 && i4.getMsg().equals("701") && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                        this.f49316y = true;
                        AccountUtil_.getInstance_(getActivity()).accountLoginOut(getActivity());
                        o0();
                        return;
                    } else if (i4.getData_info().getMarketList().size() == 0 && this.f49308q == 2) {
                        r0();
                        return;
                    } else {
                        M(i4);
                        return;
                    }
                }
                r0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        LinearLayout linearLayout = this.f49297f;
        if (linearLayout == null || this.f49298g == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f49298g.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49295d;
        if (ptrClassicFrameLayout == null || this.f49293b == null) {
            return;
        }
        try {
            ptrClassicFrameLayout.setVisibility(8);
            this.f49293b.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49295d;
        if (ptrClassicFrameLayout == null || this.f49293b == null) {
            return;
        }
        try {
            ptrClassicFrameLayout.setVisibility(0);
            this.f49293b.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0() {
        LinearLayout linearLayout = this.f49293b;
        if (linearLayout == null || this.f49295d == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f49295d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65481i0})
    public void j0(Intent intent) {
        CloudListDataBean cloudListDataBean = (CloudListDataBean) intent.getSerializableExtra("cloud");
        if (cloudListDataBean != null) {
            S(cloudListDataBean);
        }
    }

    public void k0(boolean z3) {
        this.A = z3;
    }

    public void l0() {
        LinearLayout linearLayout = this.f49293b;
        if (linearLayout == null || linearLayout.getVisibility() != 0) {
            return;
        }
        m0();
    }

    @Override // com.join.mgps.listener.c
    public void m(CloudListDataBean cloudListDataBean) {
    }

    public void m0() {
        showLoding();
        List<CloudListDataBean> list = this.f49311t;
        if (list != null && list.size() > 0) {
            this.f49311t.clear();
            y0();
            this.f49308q = 1;
            N();
            i0();
            d0(this.f49308q);
            return;
        }
        this.f49308q = 1;
        N();
        i0();
        d0(this.f49308q);
    }

    public void n0() {
        P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o0() {
        AccountUtil_.getInstance_(getContext()).accountLoginOut(getContext());
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f49292a = true;
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMain(com.join.mgps.event.g gVar) {
        if (this.f49305n != 4) {
            this.f49315x = true;
            String a4 = gVar.a();
            if (this.f49306o == 3 && com.join.mgps.Util.d2.i(a4)) {
                for (CloudListDataBean cloudListDataBean : this.f49311t) {
                    String archiveDesc = cloudListDataBean.getArchiveDesc();
                    if (com.join.mgps.Util.d2.i(archiveDesc) && archiveDesc.equals(a4)) {
                        this.F.add(gVar.a());
                    }
                }
                List<CloudListDataBean> list = this.f49311t;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i2 = 0; i2 < this.f49311t.size(); i2++) {
                    if (this.f49311t.get(i2).getArchiveDesc().equals(a4)) {
                        this.f49311t.remove(i2);
                        y0();
                    }
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.e eVar) {
        h.a aVar;
        ClouldItemView3 clouldItemView3;
        List<CloudListDataBean> list = this.f49311t;
        if (list != null && list.size() != 0) {
            int i2 = 0;
            while (i2 < this.f49311t.size()) {
                CloudListDataBean cloudListDataBean = this.f49311t.get(i2);
                if (eVar.a().getFileMd5().equals(cloudListDataBean.getFileMd5())) {
                    cloudListDataBean.setStatus(eVar.e());
                    int firstVisiblePosition = this.f49294c.getFirstVisiblePosition();
                    int lastVisiblePosition = this.f49294c.getLastVisiblePosition();
                    if (i2 >= firstVisiblePosition && i2 <= lastVisiblePosition && (aVar = (h.a) this.f49294c.getChildAt(i2 - firstVisiblePosition).getTag()) != null && (clouldItemView3 = aVar.f49328a) != null) {
                        clouldItemView3.setData(this.f49307p, cloudListDataBean, this.f49306o, this.f49305n, false, this.f49311t.size() - 1 == i2, this);
                    }
                }
                i2++;
            }
        } else if (this.f49305n == 4) {
            r0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        T();
        if (this.f49306o == 3) {
            l0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f49304m = AccountUtil_.getInstance_(getActivity()).getAccountData();
    }

    @Override // com.join.mgps.listener.c
    public void p(CloudListDataBean cloudListDataBean) {
        if (cloudListDataBean.getIsVip() == 1) {
            com.papa.sim.statistic.p.l(getContext()).K1(Event.VipArchive_startover_page, new Ext().setGameId(this.f49307p));
        }
        if (getActivity() instanceof DocumentManageActivity) {
            DocumentManageActivity documentManageActivity = (DocumentManageActivity) getActivity();
            if (documentManageActivity.Q0()) {
                documentManageActivity.finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p0() {
        XListView2 xListView2 = this.f49294c;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f49294c.u();
                this.f49294c.setNoMore();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.join.mgps.listener.c
    public String q() {
        return this.f49303l.cloudVipLink().d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q0() {
        LinearLayout linearLayout = this.f49293b;
        if (linearLayout == null || this.f49295d == null || this.f49294c == null) {
            return;
        }
        try {
            this.f49316y = true;
            if (this.f49308q == 2) {
                linearLayout.setVisibility(0);
                if (this.f49306o == 3) {
                    this.f49296e.setText("从本地挑一个分享吧");
                } else {
                    this.f49296e.setText("去推荐下载一个吧");
                }
                this.f49295d.setVisibility(8);
                return;
            }
            linearLayout.setVisibility(8);
            this.f49295d.setVisibility(0);
            this.f49294c.t();
            this.f49294c.u();
            this.f49294c.setNoMore();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r0() {
        if (this.f49293b == null || this.f49295d == null) {
            return;
        }
        try {
            f0();
            this.f49316y = true;
            this.f49293b.setVisibility(0);
            if (this.f49306o == 3) {
                this.f49296e.setText("从本地挑一个分享吧");
            } else {
                this.f49296e.setText("去推荐下载一个吧");
            }
            this.f49295d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.listener.c
    public void s(CloudListDataBean cloudListDataBean, boolean z3) {
        if (e0()) {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (AccountUtil_.getInstance_(getContext()).isTourist()) {
                IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            }
            if (accountData.getVip_level() <= 0 && cloudListDataBean.getIsVip() != 1) {
                if (cloudListDataBean.getArchiveCoin() != null && accountData.getPapaMoney() < Integer.parseInt(cloudListDataBean.getArchiveCoin())) {
                    com.join.mgps.Util.i2.a(getContext()).b("剩余铜板不足，去签到领取更多铜板吧");
                    return;
                } else if (this.f49303l.DownloadRecoderNoticeMarcket().d().booleanValue() && cloudListDataBean.getArchiveCoin() != null && Integer.parseInt(cloudListDataBean.getArchiveCoin()) != 0) {
                    com.join.mgps.dialog.w g4 = new com.join.mgps.dialog.w(getActivity(), R.style.MyDialog).g("获取须知");
                    com.join.mgps.dialog.w d4 = g4.d("悟饭平台会员可免费下载该存档。如果你不想成为会员，可以选择扣除" + cloudListDataBean.getArchiveCoin() + "铜板的方式进行下载，铜板将返还至存档作者。");
                    d4.f("下载(扣除" + cloudListDataBean.getArchiveCoin() + ")").b("会员免费下载").e(new g(cloudListDataBean)).a(new f()).c(new e()).h(true).i(new d()).show();
                    return;
                } else {
                    b0(cloudListDataBean);
                    return;
                }
            }
            b0(cloudListDataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f49297f;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f49298g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f49298g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49297f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(getContext()).b(str);
    }

    @Override // com.join.mgps.listener.c
    public void t(CloudListDataBean cloudListDataBean, int i2) {
        S(cloudListDataBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t0(int i2) {
        try {
            ArchiveshopArgs a02 = a0();
            a02.setPn(i2);
            ArchiveShopDataBean.DataInfoBean data_info = this.f49310s.g(a02.getArgs()).getData_info();
            if (i2 == 1 && (data_info == null || data_info.getMarketList().size() == 0)) {
                r0();
                return;
            }
            int i4 = i2 + 1;
            if (data_info != null) {
                List<CloudListDataBean> marketList = data_info.getMarketList();
                if (marketList != null && marketList.size() > 0) {
                    this.G.addAll(marketList);
                    if (i4 <= this.E) {
                        t0(i4);
                        return;
                    }
                    this.f49311t.clear();
                    this.f49311t.addAll(this.G);
                    y0();
                    f0();
                    return;
                }
                f0();
                return;
            }
            f0();
            r0();
        } catch (Exception unused) {
            f0();
            showLodingFailed();
            this.G.clear();
            this.F.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0(CloudListDataBean cloudListDataBean) {
        cloudListDataBean.setStatus(6);
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.e(cloudListDataBean, cloudListDataBean.getStatus()));
        Iterator<CloudListDataBean> it2 = this.f49311t.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (it2.next().getArchiveDesc().equals(cloudListDataBean.getArchiveDesc())) {
                it2.remove();
                break;
            }
        }
        this.f49312u.notifyDataSetChanged();
        if (this.f49311t.size() == 0) {
            r0();
        } else {
            m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0(CloudListDataBean cloudListDataBean) {
        Iterator<CloudListDataBean> it2 = this.f49311t.iterator();
        while (it2.hasNext()) {
            if (it2.next().getArchiveDesc().equals(cloudListDataBean.getArchiveDesc())) {
                it2.remove();
                x0();
                if (this.f49311t.size() == 0) {
                    r0();
                } else {
                    m0();
                }
                org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.g(cloudListDataBean.getArchiveDesc()));
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0() {
        XListView2 xListView2 = this.f49294c;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f49294c.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x0() {
        if (this.f49292a) {
            return;
        }
        this.f49312u.notifyDataSetChanged();
    }

    @Override // com.join.mgps.listener.c
    public void y(CloudListDataBean cloudListDataBean) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y0() {
        try {
            if (this.f49292a) {
                return;
            }
            this.f49312u.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
