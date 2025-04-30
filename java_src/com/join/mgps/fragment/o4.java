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
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DocumentManageActivity;
import com.join.mgps.customview.ClouldItemView2;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dialog.w;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArchiveBuyArgs;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.dto.ArchiveevaluateArgs;
import com.join.mgps.dto.ArchiveshopArgs;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.ForumBean;
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
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: RecommedFragment.java */
@EFragment(R.layout.item_recommed_fragment)
/* loaded from: classes.dex */
public class o4 extends Fragment implements com.join.mgps.listener.c {
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f49654b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f49655c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f49656d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f49657e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f49658f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f49659g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f49660h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f49661i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f49662j;

    /* renamed from: k  reason: collision with root package name */
    IntentFilter f49663k;
    @Pref

    /* renamed from: l  reason: collision with root package name */
    PrefDef_ f49664l;

    /* renamed from: m  reason: collision with root package name */
    private AccountBean f49665m;

    /* renamed from: n  reason: collision with root package name */
    int f49666n;

    /* renamed from: o  reason: collision with root package name */
    int f49667o;

    /* renamed from: p  reason: collision with root package name */
    String f49668p;

    /* renamed from: r  reason: collision with root package name */
    int f49670r;

    /* renamed from: s  reason: collision with root package name */
    com.join.mgps.rpc.c f49671s;

    /* renamed from: t  reason: collision with root package name */
    List<CloudListDataBean> f49672t;

    /* renamed from: u  reason: collision with root package name */
    i f49673u;

    /* renamed from: v  reason: collision with root package name */
    private com.join.mgps.dialog.x f49674v;

    /* renamed from: w  reason: collision with root package name */
    DocumentManageActivity f49675w;

    /* renamed from: x  reason: collision with root package name */
    LocalBroadcastManager f49676x;

    /* renamed from: a  reason: collision with root package name */
    boolean f49653a = false;

    /* renamed from: q  reason: collision with root package name */
    int f49669q = 1;

    /* renamed from: y  reason: collision with root package name */
    boolean f49677y = false;

    /* renamed from: z  reason: collision with root package name */
    boolean f49678z = true;
    private boolean A = true;
    int B = 0;
    List<String> C = new ArrayList(0);
    List<CloudListDataBean> D = new ArrayList(0);

    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o4.this.j0();
        }
    }

    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            o4 o4Var = o4.this;
            o4Var.c0(o4Var.f49669q);
            o4.this.N();
        }
    }

    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            o4 o4Var = o4.this;
            o4Var.f49669q = 1;
            o4Var.N();
            o4 o4Var2 = o4.this;
            o4Var2.c0(o4Var2.f49669q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(MApplication.G);
            com.join.mgps.Util.i0.w0(o4.this.getActivity(), forumPostsBean, null);
        }
    }

    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    class e implements w.e {
        e() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
        }
    }

    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    class f implements CompoundButton.OnCheckedChangeListener {
        f() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                o4.this.A = false;
            } else {
                o4.this.A = true;
            }
        }
    }

    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    class g implements w.e {
        g() {
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = o4.this.getContext();
            intentUtil.goShareWebActivity(context, "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId=" + o4.this.f49668p);
            if (!o4.this.A) {
                o4.this.f49664l.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            wVar.dismiss();
        }
    }

    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    class h implements w.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49686a;

        h(CloudListDataBean cloudListDataBean) {
            this.f49686a = cloudListDataBean;
        }

        @Override // com.join.mgps.dialog.w.e
        public void a(com.join.mgps.dialog.w wVar) {
            o4.this.a0(this.f49686a);
            if (!o4.this.A) {
                o4.this.f49664l.DownloadRecoderNoticeMarcket().g(Boolean.FALSE);
            }
            wVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RecommedFragment.java */
    /* loaded from: classes4.dex */
    public class i extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        Context f49688a;

        /* compiled from: RecommedFragment.java */
        /* loaded from: classes4.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            ClouldItemView2 f49690a;

            /* renamed from: b  reason: collision with root package name */
            LinearLayout f49691b;

            /* renamed from: c  reason: collision with root package name */
            TextView f49692c;

            /* renamed from: d  reason: collision with root package name */
            TextView f49693d;

            a() {
            }
        }

        public i(Context context) {
            this.f49688a = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return o4.this.f49672t.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return o4.this.f49672t.get(i2);
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
                    view = LayoutInflater.from(this.f49688a).inflate(R.layout.archiveshopfragmet_item, (ViewGroup) null);
                    aVar.f49690a = (ClouldItemView2) view.findViewById(R.id.coulditem);
                    aVar.f49691b = (LinearLayout) view.findViewById(R.id.ll_show);
                    aVar.f49692c = (TextView) view.findViewById(R.id.tv_today_id);
                    aVar.f49693d = (TextView) view.findViewById(R.id.tv_zong_id);
                    view.setTag(aVar);
                } else {
                    aVar = (a) view.getTag();
                }
                aVar.f49690a.setCloudItemListener(o4.this);
                if (o4.this.f49672t.size() - 1 == i2) {
                    ClouldItemView2 clouldItemView2 = aVar.f49690a;
                    o4 o4Var = o4.this;
                    o4 o4Var2 = o4.this;
                    clouldItemView2.setData(o4Var.f49668p, o4Var.f49672t.get(i2), o4Var2.f49667o, o4Var2.f49666n, false, true, o4Var2);
                } else {
                    ClouldItemView2 clouldItemView22 = aVar.f49690a;
                    o4 o4Var3 = o4.this;
                    o4 o4Var4 = o4.this;
                    clouldItemView22.setData(o4Var3.f49668p, o4Var3.f49672t.get(i2), o4Var4.f49667o, o4Var4.f49666n, false, false, o4Var4);
                }
                aVar.f49690a.setGBAType(o4.this.f49675w.f29526p0);
                ClouldItemView2 clouldItemView23 = aVar.f49690a;
                DocumentManageActivity documentManageActivity = o4.this.f49675w;
                clouldItemView23.setPGN(documentManageActivity.f29530r0, documentManageActivity.f29532s0);
                if (o4.this.f49666n == 4) {
                    aVar.f49691b.setVisibility(0);
                    TextView textView = aVar.f49692c;
                    textView.setText(o4.this.f49672t.get(i2).getTodayCoin() + "");
                    TextView textView2 = aVar.f49693d;
                    textView2.setText(o4.this.f49672t.get(i2).getTotalCoin() + "");
                } else {
                    aVar.f49691b.setVisibility(8);
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
            com.papa.sim.statistic.p.l(getContext()).K1(Event.VipArchive_download_emulator, new Ext().setGameId(this.f49668p));
        }
        Intent intent = new Intent(f1.a.f65477g0);
        intent.putExtra("downCloud", cloudListDataBean);
        getActivity().sendBroadcast(intent);
    }

    private ArchiveBuyArgs W() {
        if (this.f49665m == null) {
            return null;
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
        String str = this.f49665m.getUid() + "";
        String token = this.f49665m.getToken();
        String str2 = this.f49668p;
        int i2 = this.f49669q;
        this.f49669q = i2 + 1;
        return requestBeanUtil.getArchiveBuy(str, token, str2, i2);
    }

    private ArchiveevaluateArgs X(CloudListDataBean cloudListDataBean, int i2) {
        String archiveId;
        if (this.f49665m == null) {
            return null;
        }
        if (this.f49667o == 3) {
            archiveId = cloudListDataBean.getId();
        } else {
            archiveId = cloudListDataBean.getArchiveId();
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
        return requestBeanUtil.getArchiveEvaluate(this.f49665m.getUid() + "", this.f49665m.getToken(), archiveId, i2);
    }

    private ArchiveshopArgs Z() {
        if (this.f49665m == null) {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(getActivity());
            String str = this.f49668p;
            int i2 = this.f49670r;
            int i4 = this.f49669q;
            this.f49669q = i4 + 1;
            return requestBeanUtil.getArchiveshop("", "", str, i2, i4);
        }
        RequestBeanUtil requestBeanUtil2 = RequestBeanUtil.getInstance(getActivity());
        String str2 = this.f49665m.getUid() + "";
        String token = this.f49665m.getToken();
        String str3 = this.f49668p;
        int i5 = this.f49670r;
        int i6 = this.f49669q;
        this.f49669q = i6 + 1;
        return requestBeanUtil2.getArchiveshop(str2, token, str3, i5, i6);
    }

    private void b0() {
        this.C.clear();
        showLoding();
        c0(this.f49669q);
    }

    private boolean d0() {
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
        if (d0()) {
            O(cloudListDataBean, i2);
        }
    }

    void M(ArchiveShopDataBean archiveShopDataBean) {
        try {
            e0();
            if (archiveShopDataBean != null && archiveShopDataBean.getCode() == 600) {
                List<CloudListDataBean> marketList = archiveShopDataBean.getData_info().getMarketList();
                if (archiveShopDataBean.getData_info().getMarketList().size() == 0) {
                    n0();
                    return;
                } else {
                    U(marketList);
                    return;
                }
            }
            this.f49678z = true;
            o0();
        } catch (Exception e4) {
            showLodingFailed();
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N() {
        try {
            XListView2 xListView2 = this.f49655c;
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
                ArchiveEvaluteDataBean a4 = this.f49671s.a(X(cloudListDataBean, i2).getArgs());
                if (a4.getCode() == 600) {
                    showMessage(a4.getData_info().getMsg());
                    j0();
                    return;
                } else if (a4.getCode() == -1) {
                    if ("701".equals(a4.getMsg())) {
                        l0();
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
            hashMap.put("uid", this.f49665m.getUid() + "");
            hashMap.put("token", this.f49665m.getToken());
            ArchiveResponseMain<ArchiveResponseMessage> e4 = this.f49671s.e(hashMap);
            if (e4 == null || e4.getCode() != 600) {
                if (e4 != null) {
                    if ("701".equals(e4.getMsg())) {
                        l0();
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
            for (CloudDownRecoderTable cloudDownRecoderTable : n1.i.o().n(this.f49668p)) {
                if (cloudDownRecoderTable.getMd5().equals(cloudListDataBean.getFileMd5())) {
                    n1.i.o().delete((n1.i) cloudDownRecoderTable);
                }
            }
            q0(cloudListDataBean);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
        if (MApplication.E) {
            RelativeLayout relativeLayout = this.f49660h;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
                this.f49661i.setText(MApplication.F);
            }
            LinearLayout linearLayout = this.f49662j;
            if (linearLayout != null) {
                linearLayout.setOnClickListener(new d());
                return;
            }
            return;
        }
        RelativeLayout relativeLayout2 = this.f49660h;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(8);
        }
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
        ArchiveResponseMain<ArchiveResponseMessage> b4 = this.f49671s.b(hashMap);
        if (b4.getCode() == 600) {
            r0(cloudListDataBean);
        } else if ("701".equals(b4.getMsg())) {
            l0();
            showMessage("你的登陆已失效，请重新登陆。");
        } else {
            showMessage(b4.getMsg());
        }
    }

    boolean T() {
        if (this.C.size() > 0) {
            this.C.clear();
            this.D.clear();
            this.B = this.f49669q - 1;
            showLoding();
            p0(1);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U(List<CloudListDataBean> list) {
        try {
            if (this.f49669q == 2) {
                this.f49672t.clear();
            }
            v0();
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f49672t.add(list.get(i2));
            }
            this.f49678z = true;
            if (list.size() < 10) {
                m0();
            }
            for (CloudListDataBean cloudListDataBean : this.f49672t) {
                cloudListDataBean.setStatus(6);
            }
            g0();
            v0();
        } catch (Exception e4) {
            showLodingFailed();
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void a0(CloudListDataBean cloudListDataBean) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            HashMap hashMap = new HashMap();
            if (this.f49667o == 4) {
                hashMap.put("id", cloudListDataBean.getArchiveId());
            } else {
                hashMap.put("id", cloudListDataBean.getId());
            }
            hashMap.put("uid", accountData.getUid() + "");
            hashMap.put("token", accountData.getToken());
            ArchiveDownDataBean d4 = this.f49671s.d(hashMap);
            if (d4 != null && d4.getCode() == 600) {
                cloudListDataBean.setArchiveFile(d4.getData_info().getDownloadUrl());
                cloudListDataBean.setArchiveFileName(System.currentTimeMillis() + d4.getData_info().getArchiveFileName());
                V(cloudListDataBean, true);
            } else if (d4 != null) {
                if ("701".equals(d4.getMsg())) {
                    l0();
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
    @AfterViews
    @RequiresApi(api = 16)
    public void afterView() {
        this.f49666n = getArguments().getInt("type", 9);
        this.f49667o = getArguments().getInt("typeIndex");
        this.f49668p = getArguments().getString("gameid");
        this.f49675w = (DocumentManageActivity) getActivity();
        this.f49665m = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f49676x = LocalBroadcastManager.getInstance(getActivity());
        this.f49671s = com.join.mgps.rpc.impl.b.k();
        this.f49672t = new ArrayList();
        org.greenrobot.eventbus.c.f().t(this);
        i iVar = new i(getActivity());
        this.f49673u = iVar;
        this.f49655c.setAdapter((ListAdapter) iVar);
        int i2 = this.f49666n;
        if (i2 == 1) {
            this.f49670r = 0;
            b0();
        } else if (i2 == 2) {
            this.f49670r = 2;
            b0();
        } else if (i2 == 3) {
            this.f49670r = 1;
            b0();
        } else {
            this.f49670r = 3;
            b0();
        }
        this.f49654b.setOnClickListener(new a());
        this.f49655c.setPullLoadEnable(new b());
        P();
        this.f49655c.setPullRefreshEnable(new c());
        this.f49655c.setPreLoadCount(3);
        this.f49655c.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c0(int i2) {
        try {
            if (this.f49678z) {
                this.f49678z = false;
                if (this.f49667o == 3) {
                    ArchiveShopDataBean g4 = this.f49671s.g(Z().getArgs());
                    t0();
                    if ((g4 == null || g4.getData_info() == null || g4.getData_info().getMarketList() == null || g4.getData_info().getMarketList().size() == 0) && this.f49669q == 2) {
                        o0();
                        return;
                    } else {
                        M(g4);
                        return;
                    }
                }
                ArchiveBuyArgs W = W();
                if (!AccountUtil_.getInstance_(getActivity()).getToken().equals("") && this.f49665m.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                    ArchiveShopDataBean i4 = this.f49671s.i(W.getArgs());
                    t0();
                    if (i4.getCode() == -1 && i4.getMsg().equals("701") && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                        this.f49678z = true;
                        AccountUtil_.getInstance_(getActivity()).accountLoginOut(getActivity());
                        l0();
                        return;
                    } else if (i4.getData_info().getMarketList().size() == 0 && this.f49669q == 2) {
                        o0();
                        return;
                    } else {
                        M(i4);
                        return;
                    }
                }
                o0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        LinearLayout linearLayout = this.f49658f;
        if (linearLayout == null || this.f49659g == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f49659g.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49656d;
        if (ptrClassicFrameLayout == null || this.f49654b == null) {
            return;
        }
        try {
            ptrClassicFrameLayout.setVisibility(8);
            this.f49654b.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49656d;
        if (ptrClassicFrameLayout == null || this.f49654b == null) {
            return;
        }
        try {
            ptrClassicFrameLayout.setVisibility(0);
            this.f49654b.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        LinearLayout linearLayout = this.f49654b;
        if (linearLayout == null || this.f49656d == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f49656d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void i0() {
        LinearLayout linearLayout = this.f49654b;
        if (linearLayout == null || linearLayout.getVisibility() != 0) {
            return;
        }
        j0();
    }

    public void j0() {
        showLoding();
        List<CloudListDataBean> list = this.f49672t;
        if (list != null && list.size() > 0) {
            this.f49672t.clear();
            v0();
            this.f49669q = 1;
            N();
            h0();
            c0(this.f49669q);
            return;
        }
        this.f49669q = 1;
        N();
        h0();
        c0(this.f49669q);
    }

    public void k0() {
        P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l0() {
        AccountUtil_.getInstance_(getContext()).accountLoginOut(getContext());
        IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
    }

    @Override // com.join.mgps.listener.c
    public void m(CloudListDataBean cloudListDataBean) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m0() {
        XListView2 xListView2 = this.f49655c;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f49655c.u();
                this.f49655c.setNoMore();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n0() {
        LinearLayout linearLayout = this.f49654b;
        if (linearLayout == null || this.f49656d == null || this.f49655c == null) {
            return;
        }
        try {
            this.f49678z = true;
            if (this.f49669q == 2) {
                linearLayout.setVisibility(0);
                if (this.f49667o == 3) {
                    this.f49657e.setText("从本地挑一个分享吧");
                } else {
                    this.f49657e.setText("去推荐下载一个吧");
                }
                this.f49656d.setVisibility(8);
                return;
            }
            linearLayout.setVisibility(8);
            this.f49656d.setVisibility(0);
            this.f49655c.t();
            this.f49655c.u();
            this.f49655c.setNoMore();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o0() {
        if (this.f49654b == null || this.f49656d == null) {
            return;
        }
        try {
            e0();
            this.f49678z = true;
            this.f49654b.setVisibility(0);
            if (this.f49667o == 3) {
                this.f49657e.setText("从本地挑一个分享吧");
            } else {
                this.f49657e.setText("去推荐下载一个吧");
            }
            this.f49656d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f49653a = true;
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMain(com.join.mgps.event.g gVar) {
        if (this.f49666n != 4) {
            this.f49677y = true;
            String a4 = gVar.a();
            if (this.f49667o == 3 && com.join.mgps.Util.d2.i(a4)) {
                for (CloudListDataBean cloudListDataBean : this.f49672t) {
                    String archiveDesc = cloudListDataBean.getArchiveDesc();
                    if (com.join.mgps.Util.d2.i(archiveDesc) && archiveDesc.equals(a4)) {
                        this.C.add(gVar.a());
                    }
                }
                List<CloudListDataBean> list = this.f49672t;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i2 = 0; i2 < this.f49672t.size(); i2++) {
                    if (this.f49672t.get(i2).getArchiveDesc().equals(a4)) {
                        this.f49672t.remove(i2);
                        v0();
                    }
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.e eVar) {
        i.a aVar;
        ClouldItemView2 clouldItemView2;
        List<CloudListDataBean> list = this.f49672t;
        if (list != null && list.size() != 0) {
            int i2 = 0;
            while (i2 < this.f49672t.size()) {
                CloudListDataBean cloudListDataBean = this.f49672t.get(i2);
                if (eVar.a().getFileMd5().equals(cloudListDataBean.getFileMd5())) {
                    cloudListDataBean.setStatus(eVar.e());
                    int firstVisiblePosition = this.f49655c.getFirstVisiblePosition();
                    int lastVisiblePosition = this.f49655c.getLastVisiblePosition();
                    if (i2 >= firstVisiblePosition && i2 <= lastVisiblePosition && (aVar = (i.a) this.f49655c.getChildAt(i2 - firstVisiblePosition).getTag()) != null && (clouldItemView2 = aVar.f49690a) != null) {
                        clouldItemView2.setData(this.f49668p, cloudListDataBean, this.f49667o, this.f49666n, false, this.f49672t.size() - 1 == i2, this);
                    }
                }
                i2++;
            }
        } else if (this.f49666n == 4) {
            o0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        T();
        if (this.f49667o == 3) {
            i0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f49665m = AccountUtil_.getInstance_(getActivity()).getAccountData();
    }

    @Override // com.join.mgps.listener.c
    public void p(CloudListDataBean cloudListDataBean) {
        if (cloudListDataBean.getIsVip() == 1) {
            com.papa.sim.statistic.p.l(getContext()).K1(Event.VipArchive_startover_emulator, new Ext().setGameId(this.f49668p));
        }
        if (getActivity() instanceof DocumentManageActivity) {
            DocumentManageActivity documentManageActivity = (DocumentManageActivity) getActivity();
            if (documentManageActivity.Q0()) {
                documentManageActivity.finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0(int i2) {
        try {
            ArchiveshopArgs Z = Z();
            Z.setPn(i2);
            ArchiveShopDataBean.DataInfoBean data_info = this.f49671s.g(Z.getArgs()).getData_info();
            if (i2 == 1 && (data_info == null || data_info.getMarketList().size() == 0)) {
                o0();
                return;
            }
            int i4 = i2 + 1;
            if (data_info != null) {
                List<CloudListDataBean> marketList = data_info.getMarketList();
                if (marketList != null && marketList.size() > 0) {
                    this.D.addAll(marketList);
                    if (i4 <= this.B) {
                        p0(i4);
                        return;
                    }
                    this.f49672t.clear();
                    this.f49672t.addAll(this.D);
                    v0();
                    e0();
                    return;
                }
                e0();
                return;
            }
            e0();
            o0();
        } catch (Exception unused) {
            e0();
            showLodingFailed();
            this.D.clear();
            this.C.clear();
        }
    }

    @Override // com.join.mgps.listener.c
    public String q() {
        return this.f49664l.cloudVipLink().d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q0(CloudListDataBean cloudListDataBean) {
        cloudListDataBean.setStatus(6);
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.e(cloudListDataBean, cloudListDataBean.getStatus()));
        Iterator<CloudListDataBean> it2 = this.f49672t.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (it2.next().getArchiveDesc().equals(cloudListDataBean.getArchiveDesc())) {
                it2.remove();
                break;
            }
        }
        this.f49673u.notifyDataSetChanged();
        if (this.f49672t.size() == 0) {
            o0();
        } else {
            j0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r0(CloudListDataBean cloudListDataBean) {
        Iterator<CloudListDataBean> it2 = this.f49672t.iterator();
        while (it2.hasNext()) {
            if (it2.next().getArchiveDesc().equals(cloudListDataBean.getArchiveDesc())) {
                it2.remove();
                u0();
                if (this.f49672t.size() == 0) {
                    o0();
                } else {
                    j0();
                }
                org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.g(cloudListDataBean.getArchiveDesc()));
                return;
            }
        }
    }

    @Override // com.join.mgps.listener.c
    public void s(CloudListDataBean cloudListDataBean, boolean z3) {
        if (d0()) {
            AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (AccountUtil_.getInstance_(getContext()).isTourist()) {
                IntentUtil.getInstance().goMyAccountLoginActivity(getContext());
            }
            if (accountData.getVip_level() <= 0 && cloudListDataBean.getIsVip() != 1) {
                if (cloudListDataBean.getArchiveCoin() != null && accountData.getPapaMoney() < Integer.parseInt(cloudListDataBean.getArchiveCoin())) {
                    com.join.mgps.Util.i2.a(getContext()).b("剩余铜板不足，去签到领取更多铜板吧");
                    return;
                } else if (this.f49664l.DownloadRecoderNoticeMarcket().d().booleanValue() && cloudListDataBean.getArchiveCoin() != null && Integer.parseInt(cloudListDataBean.getArchiveCoin()) != 0) {
                    com.join.mgps.dialog.w g4 = new com.join.mgps.dialog.w(getActivity(), R.style.MyDialog).g("获取须知");
                    com.join.mgps.dialog.w d4 = g4.d("悟饭平台会员可免费下载该存档。如果你不想成为会员，可以选择扣除" + cloudListDataBean.getArchiveCoin() + "铜板的方式进行下载，铜板将返还至存档作者。");
                    d4.f("下载(扣除" + cloudListDataBean.getArchiveCoin() + ")").b("会员免费下载").e(new h(cloudListDataBean)).a(new g()).c(new f()).h(true).i(new e()).show();
                    return;
                } else {
                    a0(cloudListDataBean);
                    return;
                }
            }
            a0(cloudListDataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f49658f;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f49659g;
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
        LinearLayout linearLayout = this.f49659g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49658f;
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
        Intent intent = new Intent(f1.a.f65481i0);
        intent.putExtra("cloud", cloudListDataBean);
        getActivity().sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t0() {
        XListView2 xListView2 = this.f49655c;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f49655c.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0() {
        if (this.f49653a) {
            return;
        }
        this.f49673u.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0() {
        try {
            if (this.f49653a) {
                return;
            }
            this.f49673u.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.listener.c
    public void y(CloudListDataBean cloudListDataBean) {
    }
}
