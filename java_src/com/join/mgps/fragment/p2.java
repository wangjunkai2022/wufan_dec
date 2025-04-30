package com.join.mgps.fragment;

import android.app.Activity;
import android.content.ClipboardManager;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GiftsDetailActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: GameOlGiftPackageFragment.java */
@EFragment(R.layout.game_online_first_layout)
/* loaded from: classes4.dex */
public class p2 extends Fragment implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    PtrClassicFrameLayout f49733a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f49734b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f49735c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f49736d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f49737e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.d f49738f;

    /* renamed from: g  reason: collision with root package name */
    private Activity f49739g;

    /* renamed from: i  reason: collision with root package name */
    private List<DownloadTask> f49741i;

    /* renamed from: l  reason: collision with root package name */
    List<k1.a<GiftPackageDataInfoBean>> f49744l;

    /* renamed from: m  reason: collision with root package name */
    private int f49745m;

    /* renamed from: n  reason: collision with root package name */
    private int f49746n;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.adapter.y1 f49748p;

    /* renamed from: s  reason: collision with root package name */
    private TextView f49751s;

    /* renamed from: t  reason: collision with root package name */
    private AccountBean f49752t;

    /* renamed from: u  reason: collision with root package name */
    private com.join.mgps.customview.t f49753u;

    /* renamed from: v  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f49754v;

    /* renamed from: h  reason: collision with root package name */
    private boolean f49740h = false;

    /* renamed from: j  reason: collision with root package name */
    private Map<String, DownloadTask> f49742j = new ConcurrentHashMap();

    /* renamed from: k  reason: collision with root package name */
    private int f49743k = 1;

    /* renamed from: o  reason: collision with root package name */
    private boolean f49747o = false;

    /* renamed from: q  reason: collision with root package name */
    private Handler f49749q = new a();

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.customview.t f49750r = null;

    /* renamed from: w  reason: collision with root package name */
    private boolean f49755w = true;

    /* renamed from: x  reason: collision with root package name */
    com.join.mgps.customview.t f49756x = null;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.customview.t f49757y = null;

    /* compiled from: GameOlGiftPackageFragment.java */
    /* loaded from: classes4.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (IntentUtil.getInstance().goLoginNetGame(p2.this.f49739g)) {
                return;
            }
            GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) message.obj;
            if (p2.this.U(giftPackageDataInfoBean.getGift_package_type())) {
                if (p2.this.f49754v != null) {
                    p2.this.f49754v.b();
                }
                p2.this.Z(giftPackageDataInfoBean, message.what);
            }
        }
    }

    /* compiled from: GameOlGiftPackageFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (p2.this.f49740h) {
                return;
            }
            p2.this.f49743k = 1;
            p2.this.f49755w = true;
            p2.this.a0();
        }
    }

    /* compiled from: GameOlGiftPackageFragment.java */
    /* loaded from: classes4.dex */
    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (p2.this.f49740h) {
                return;
            }
            p2.this.a0();
        }
    }

    /* compiled from: GameOlGiftPackageFragment.java */
    /* loaded from: classes4.dex */
    class d implements AdapterView.OnItemClickListener {
        d() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            GiftPackageDataInfoBean c4;
            if (i2 > p2.this.f49744l.size() || i2 < 0 || (c4 = p2.this.f49744l.get(i2).c()) == null) {
                return;
            }
            if (AccountUtil_.getInstance_(p2.this.f49739g).getAccountData() == null) {
                IntentUtil.getInstance().goLoginNetGame(p2.this.f49739g);
            } else {
                GiftsDetailActivity_.n1(p2.this.f49739g).c(c4).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameOlGiftPackageFragment.java */
    /* loaded from: classes4.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f49762a;

        e(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f49762a = giftPackageDataOperationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) p2.this.f49739g.getSystemService("clipboard")).setText(this.f49762a.getGift_info().getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(p2.this.f49739g);
            a4.b(this.f49762a.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameOlGiftPackageFragment.java */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (p2.this.f49753u == null || !p2.this.f49753u.isShowing()) {
                return;
            }
            p2.this.f49753u.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameOlGiftPackageFragment.java */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f49765a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f49766b;

        g(DownloadTask downloadTask, DetailResultBean detailResultBean) {
            this.f49765a = downloadTask;
            this.f49766b = detailResultBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (p2.this.f49753u != null && p2.this.f49753u.isShowing()) {
                p2.this.f49753u.dismiss();
            }
            int status = this.f49765a.getStatus();
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.c3(p2.this.f49739g, this.f49765a);
                    return;
                } else if (status != 9) {
                    return;
                }
            }
            if (UtilsMy.T0(p2.this.f49739g, this.f49765a)) {
                return;
            }
            if (this.f49766b.getDown_status() == 5) {
                UtilsMy.R0(p2.this.f49739g, this.f49765a);
                return;
            }
            com.php25.PDownload.d.c(this.f49765a, p2.this.f49739g);
            this.f49765a.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean U(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            com.join.mgps.Util.i2.a(this.f49739g).b(this.f49739g.getString(R.string.unknow_gift_type));
            return false;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f49739g).getAccountData();
        if (str.equals("6")) {
            if (accountData.getVip_level() <= 0) {
                h0();
                return false;
            }
        } else if (str.equals("7") && accountData.getSvip_level() <= 0) {
            g0();
            return false;
        }
        return true;
    }

    private void V() {
        com.join.mgps.customview.t tVar = this.f49750r;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f49750r.dismiss();
    }

    private void W() {
        com.join.mgps.customview.t tVar = this.f49756x;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f49756x.dismiss();
    }

    private void X() {
        com.join.mgps.customview.t tVar = this.f49757y;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f49757y.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void T() {
        this.f49738f = com.join.mgps.rpc.impl.c.P1();
        this.f49739g = getActivity();
        List<DownloadTask> d4 = g1.f.G().d();
        this.f49741i = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f49741i) {
                this.f49742j.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.t0.d("infoo", this.f49741i.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.t0.d("infoo", downloadTask.toString());
            }
        }
        com.join.mgps.adapter.y1 y1Var = new com.join.mgps.adapter.y1(this.f49739g, this.f49749q);
        this.f49748p = y1Var;
        this.f49744l = y1Var.d();
        this.f49734b.setPreLoadCount(10);
        this.f49734b.setPullRefreshEnable(new b());
        this.f49734b.setPullLoadEnable(new c());
        this.f49734b.setOnItemClickListener(new d());
        this.f49734b.setOnScrollListener(this);
        this.f49734b.setAdapter((ListAdapter) this.f49748p);
        this.f49754v = com.join.mgps.Util.a0.c0(this.f49739g).x(this.f49739g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z(GiftPackageDataInfoBean giftPackageDataInfoBean, int i2) {
        try {
            if (com.join.android.app.common.utils.f.j(this.f49739g)) {
                try {
                    GiftPackageOperationBean f02 = this.f49738f.f0(RequestBeanUtil.getInstance(this.f49739g).getGiftPackageOperationRequestBean(this.f49752t.getUid(), giftPackageDataInfoBean.getGift_package_id(), giftPackageDataInfoBean.getGift_package_game_id()));
                    if (f02 != null) {
                        if (f02.getFlag().equals("0")) {
                            String error_info = f02.getError_info();
                            if (error_info != null && f02.getCode().equals("1001")) {
                                showToast(error_info);
                            }
                            return;
                        }
                        List<GiftPackageDataOperationBean> data = f02.getMessages().getData();
                        if (data != null && data.size() > 0) {
                            GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                            giftPackageDataInfoBean.setGift_package_status(1);
                            for (k1.a<GiftPackageDataInfoBean> aVar : this.f49744l) {
                                if (aVar.c() != null && aVar.c().getGift_package_id() == giftPackageDataInfoBean.getGift_package_id()) {
                                    aVar.c().setGift_package_status(1);
                                }
                            }
                            DetailResultBean game_info = giftPackageDataOperationBean.getGame_info();
                            DownloadTask downloadtaskDown = game_info != null ? game_info.getDownloadtaskDown() : null;
                            DownloadTask B = g1.f.G().B(downloadtaskDown.getCrc_link_type_val());
                            if (B != null) {
                                f0(giftPackageDataOperationBean, B, i2);
                            } else {
                                f0(giftPackageDataOperationBean, downloadtaskDown, i2);
                            }
                        } else {
                            showToast("领取失败");
                        }
                    } else {
                        showToast("领取失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            showToast("领取失败");
        } finally {
            c0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void a0() {
        if (com.join.android.app.common.utils.f.j(this.f49739g)) {
            this.f49740h = true;
            try {
                try {
                    ResultMainBean<List<GiftPackageDataInfoBean>> t3 = this.f49738f.t(b0(this.f49743k));
                    if (t3 != null && t3.getFlag() == 1) {
                        List<GiftPackageDataInfoBean> data = t3.getMessages().getData();
                        if (data != null) {
                            ArrayList arrayList = new ArrayList();
                            if (data.size() > 0) {
                                String str = "";
                                for (GiftPackageDataInfoBean giftPackageDataInfoBean : data) {
                                    long gift_package_times_begin = giftPackageDataInfoBean.getGift_package_times_begin() * 1000;
                                    if (!str.equals(com.join.mgps.Util.x.j(gift_package_times_begin))) {
                                        str = com.join.mgps.Util.x.j(gift_package_times_begin);
                                        k1.a<GiftPackageDataInfoBean> aVar = new k1.a<>();
                                        aVar.i(1);
                                        aVar.j(str);
                                        arrayList.add(aVar);
                                    }
                                    k1.a<GiftPackageDataInfoBean> aVar2 = new k1.a<>();
                                    aVar2.i(2);
                                    aVar2.h(giftPackageDataInfoBean);
                                    arrayList.add(aVar2);
                                }
                                if (data.size() < 10) {
                                    e0();
                                }
                            } else {
                                e0();
                            }
                            this.f49743k++;
                            showMain(arrayList);
                            i0();
                        } else if (this.f49743k == 1) {
                            showLodingFailed();
                        } else {
                            e0();
                        }
                    } else if (this.f49743k == 1) {
                        showLodingFailed();
                        i0();
                    } else {
                        i0();
                        e0();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    i0();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f49740h = false;
            }
        }
        i0();
        showLodingFailed();
    }

    public CommonRequestBean b0(int i2) {
        AccountBean accountData = AccountUtil_.getInstance_(this.f49739g).getAccountData();
        return RequestBeanUtil.getInstance(this.f49739g).getGameOLGiftRequest(i2, 20, accountData != null ? accountData.getUid() : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        com.join.mgps.dialog.x0 x0Var = this.f49754v;
        if (x0Var != null) {
            x0Var.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d0() {
        this.f49743k = 1;
        a0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        this.f49734b.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0(GiftPackageDataOperationBean giftPackageDataOperationBean, DownloadTask downloadTask, int i2) {
        this.f49748p.notifyDataSetChanged();
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f49739g, R.style.MyDialog);
        this.f49753u = tVar;
        tVar.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.f49753u.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.f49753u.findViewById(R.id.dialog_button_ok);
        LinearLayout linearLayout = (LinearLayout) this.f49753u.findViewById(R.id.layoutTop);
        LinearLayout linearLayout2 = (LinearLayout) this.f49753u.findViewById(R.id.layoutBottom);
        TextView textView = (TextView) this.f49753u.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.f49753u.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.f49753u.findViewById(R.id.saveCodeContent);
        TextView textView4 = (TextView) this.f49753u.findViewById(R.id.dialog_time);
        this.f49751s = (TextView) this.f49753u.findViewById(R.id.moneyText);
        if (i2 == 1) {
            linearLayout.setVisibility(0);
            linearLayout2.setVisibility(8);
            textView.setText("领号成功");
        } else if (i2 == 2) {
            textView.setText("已领取");
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(0);
            textView4.setText(com.join.mgps.Util.x.w(giftPackageDataOperationBean.getGift_info().getGift_package_times_end()));
        }
        DetailResultBean game_info = giftPackageDataOperationBean.getGame_info();
        textView3.setText(giftPackageDataOperationBean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        textView2.setOnClickListener(new e(giftPackageDataOperationBean));
        button2.setOnClickListener(new f());
        if (downloadTask != null) {
            int status = downloadTask.getStatus();
            if (status != 0) {
                if (status == 5) {
                    button.setText("启动游戏");
                } else if (status != 9) {
                    button.setText("下载中..");
                }
                button.setOnClickListener(new g(downloadTask, game_info));
            }
            button.setText("下载游戏");
            if (game_info != null) {
                UtilsMy.w2(game_info.getSp_tag_info(), this.f49751s);
            }
            button.setOnClickListener(new g(downloadTask, game_info));
        }
        com.join.mgps.customview.t tVar2 = this.f49753u;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.f49753u.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        com.join.mgps.customview.t tVar = this.f49756x;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.f49756x = com.join.mgps.Util.a0.c0(this.f49739g).Z(this.f49739g);
        }
        this.f49756x.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        com.join.mgps.customview.t tVar = this.f49757y;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.f49757y = com.join.mgps.Util.a0.c0(this.f49739g).b0(this.f49739g);
        }
        this.f49757y.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0() {
        this.f49734b.t();
        this.f49734b.u();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        W();
        X();
        com.join.mgps.dialog.x0 x0Var = this.f49754v;
        if (x0Var != null) {
            x0Var.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f49752t = AccountUtil_.getInstance_(this.f49739g).getAccountData();
        this.f49743k = 1;
        showLoding();
        a0();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f49745m = (i4 + i2) - 1;
        this.f49746n = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f49747o = i2 != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f49743k = 1;
        showLoding();
        a0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f49735c.setVisibility(0);
        this.f49736d.setVisibility(8);
        this.f49733a.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<k1.a<GiftPackageDataInfoBean>> list = this.f49744l;
        if (list == null || list.size() == 0) {
            this.f49736d.setVisibility(0);
            this.f49735c.setVisibility(8);
            this.f49733a.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<k1.a<GiftPackageDataInfoBean>> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f49736d.setVisibility(8);
        this.f49735c.setVisibility(8);
        this.f49733a.setVisibility(0);
        if (this.f49743k == 2) {
            this.f49744l.clear();
        }
        this.f49744l.addAll(list);
        if (this.f49743k == 2) {
            this.f49744l.size();
        }
        com.join.mgps.Util.t0.d("infoo", this.f49744l.size() + "   showMain");
        this.f49748p.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f49739g).b(str);
    }
}
