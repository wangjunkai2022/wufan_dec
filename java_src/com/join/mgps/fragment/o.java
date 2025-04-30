package com.join.mgps.fragment;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
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
import com.join.mgps.dto.GiftPackageBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: CodesBoxFragment.java */
@EFragment(R.layout.fragment_codesbox)
/* loaded from: classes.dex */
public class o extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.rpc.d f49503a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f49504b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f49505c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f49506d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    XListView2 f49507e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ListView f49508f;

    /* renamed from: g  reason: collision with root package name */
    int f49509g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f49510h;

    /* renamed from: i  reason: collision with root package name */
    private Context f49511i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f49512j;

    /* renamed from: k  reason: collision with root package name */
    private int f49513k;

    /* renamed from: l  reason: collision with root package name */
    private int f49514l;

    /* renamed from: m  reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f49515m;

    /* renamed from: n  reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f49516n;

    /* renamed from: o  reason: collision with root package name */
    private com.join.mgps.adapter.g f49517o;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.adapter.h f49518p;

    /* renamed from: q  reason: collision with root package name */
    private RelativeLayout f49519q;

    /* renamed from: r  reason: collision with root package name */
    private com.join.mgps.customview.t f49520r;

    /* renamed from: s  reason: collision with root package name */
    private DownloadTask f49521s;

    /* renamed from: t  reason: collision with root package name */
    private TextView f49522t;

    /* renamed from: u  reason: collision with root package name */
    Handler f49523u = new a();

    /* renamed from: v  reason: collision with root package name */
    private Button f49524v;

    /* compiled from: CodesBoxFragment.java */
    /* loaded from: classes4.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AccountBean accountData = AccountUtil_.getInstance_(o.this.f49511i.getApplicationContext()).getAccountData();
            if (IntentUtil.getInstance().goLoginNetGame(o.this.f49511i)) {
                return;
            }
            o.this.T(accountData, (GiftPackageDataInfoBean) message.obj);
        }
    }

    /* compiled from: CodesBoxFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (o.this.f49512j) {
                return;
            }
            o.this.S();
        }
    }

    /* compiled from: CodesBoxFragment.java */
    /* loaded from: classes4.dex */
    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (o.this.f49512j) {
                return;
            }
            o.this.f49513k = 1;
            o.this.S();
        }
    }

    /* compiled from: CodesBoxFragment.java */
    /* loaded from: classes4.dex */
    class d implements AdapterView.OnItemClickListener {
        d() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 > o.this.f49515m.size() || i2 < 0) {
                return;
            }
            GiftsDetailActivity_.n1(o.this.f49511i).c((GiftPackageDataInfoBean) o.this.f49515m.get(i2)).a(o.this.f49509g).start();
        }
    }

    /* compiled from: CodesBoxFragment.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CodesBoxFragment.java */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f49530a;

        f(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f49530a = giftPackageDataOperationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) o.this.f49511i.getSystemService("clipboard")).setText(this.f49530a.getGift_info().getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(o.this.f49511i);
            a4.b(this.f49530a.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CodesBoxFragment.java */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.f49520r == null || !o.this.f49520r.isShowing()) {
                return;
            }
            o.this.f49520r.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CodesBoxFragment.java */
    /* loaded from: classes4.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f49533a;

        h(DetailResultBean detailResultBean) {
            this.f49533a = detailResultBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.f49520r != null && o.this.f49520r.isShowing()) {
                o.this.f49520r.dismiss();
            }
            int status = o.this.f49521s != null ? o.this.f49521s.getStatus() : 0;
            DetailResultBean detailResultBean = this.f49533a;
            if (detailResultBean != null && UtilsMy.m0(detailResultBean.getPay_tag_info(), this.f49533a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.c3(o.this.f49511i, o.this.f49521s);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            DetailResultBean detailResultBean2 = this.f49533a;
            if (detailResultBean2 != null) {
                if (UtilsMy.o0(detailResultBean2.getPay_tag_info(), this.f49533a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(o.this.getActivity(), o.this.f49521s.getCrc_link_type_val());
                } else {
                    UtilsMy.d1(o.this.f49521s, this.f49533a);
                    if (!UtilsMy.T0(o.this.f49511i, o.this.f49521s)) {
                        if (this.f49533a.getDown_status() == 5) {
                            UtilsMy.R0(o.this.f49511i, o.this.f49521s);
                        } else {
                            UtilsMy.F0(o.this.f49511i, o.this.f49521s, this.f49533a.getTp_down_url(), this.f49533a.getOther_down_switch(), this.f49533a.getCdn_down_switch());
                        }
                    }
                }
            }
            o.this.f49521s.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S() {
        if (com.join.android.app.common.utils.f.j(this.f49511i)) {
            this.f49512j = true;
            try {
                try {
                    GiftPackageBean L0 = this.f49503a.L0(U(this.f49513k));
                    if (L0 != null && L0.getFlag().equals("1")) {
                        List<GiftPackageDataInfoBean> user = L0.getMessages().getData().getUser();
                        List<GiftPackageDataInfoBean> recommend = L0.getMessages().getData().getRecommend();
                        if (user != null && user.size() > 0) {
                            this.f49513k++;
                            showMain(user);
                        } else if (recommend != null && this.f49513k == 1) {
                            this.f49516n.clear();
                            this.f49516n.addAll(recommend);
                            Z();
                        } else {
                            W();
                        }
                    } else {
                        W();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                this.f49512j = false;
                a0();
            }
        }
        W();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T(AccountBean accountBean, GiftPackageDataInfoBean giftPackageDataInfoBean) {
        try {
            if (com.join.android.app.common.utils.f.j(this.f49511i)) {
                try {
                    GiftPackageOperationBean f02 = this.f49503a.f0(RequestBeanUtil.getInstance(this.f49511i.getApplicationContext()).getGiftPackageOperationRequestBean(accountBean.getUid(), giftPackageDataInfoBean.getGift_package_id(), giftPackageDataInfoBean.getGift_package_game_id()));
                    if (f02 != null) {
                        if (f02.getFlag().equals("0")) {
                            String error_info = f02.getError_info();
                            if (error_info == null || !f02.getCode().equals("1001")) {
                                return;
                            }
                            showToast(error_info);
                            return;
                        }
                        List<GiftPackageDataOperationBean> data = f02.getMessages().getData();
                        if (data == null || data.size() <= 0) {
                            return;
                        }
                        GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                        giftPackageDataInfoBean.setGift_package_status(1);
                        for (int i2 = 0; i2 < this.f49515m.size(); i2++) {
                            GiftPackageDataInfoBean giftPackageDataInfoBean2 = this.f49515m.get(i2);
                            if (giftPackageDataInfoBean.getGift_package_id() == giftPackageDataInfoBean2.getGift_package_id()) {
                                giftPackageDataInfoBean2.setGift_package_status(1);
                                giftPackageDataInfoBean2.setGift_package_overdue(giftPackageDataInfoBean.getGift_package_overdue());
                            }
                        }
                        List<GiftPackageDataInfoBean> list = this.f49516n;
                        if (list != null && list.size() > 0) {
                            S();
                        }
                        V(giftPackageDataOperationBean);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } finally {
            showToast("领取失败");
        }
    }

    public CommonRequestBean U(int i2) {
        return RequestBeanUtil.getInstance(this.f49511i.getApplicationContext()).getGiftPackageRequestBean(this.f49509g, i2, this.f49514l, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0186  */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void V(com.join.mgps.dto.GiftPackageDataOperationBean r11) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.o.V(com.join.mgps.dto.GiftPackageDataOperationBean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W() {
        try {
            if (this.f49513k == 1) {
                this.f49519q.setVisibility(8);
                this.f49504b.setVisibility(8);
                this.f49505c.setVisibility(0);
                this.f49506d.setVisibility(8);
            } else {
                this.f49507e.setNoMore();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X() {
        try {
            this.f49519q.setVisibility(8);
            this.f49504b.setVisibility(0);
            this.f49505c.setVisibility(8);
            this.f49506d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        if (this.f49511i == null) {
            return;
        }
        try {
            this.f49519q.setVisibility(0);
            this.f49504b.setVisibility(8);
            this.f49505c.setVisibility(8);
            this.f49506d.setVisibility(8);
            this.f49508f.setVisibility(0);
            this.f49518p.notifyDataSetChanged();
            if (this.f49516n.size() == 0) {
                this.f49510h.setText(this.f49511i.getResources().getString(R.string.mygift_no));
            } else {
                this.f49510h.setText(this.f49511i.getResources().getString(R.string.mygift_recommend));
            }
        } catch (Resources.NotFoundException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0() {
        this.f49507e.u();
        this.f49507e.t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f49503a = com.join.mgps.rpc.impl.c.P1();
        this.f49513k = 1;
        com.join.mgps.Util.c0.a().d(this);
        this.f49507e.setPreLoadCount(10);
        this.f49507e.setPullLoadEnable(new b());
        this.f49507e.setPullRefreshEnable(new c());
        this.f49507e.setOnItemClickListener(new d());
        this.f49514l = 20;
        this.f49515m = new ArrayList();
        this.f49516n = new ArrayList();
        this.f49517o = new com.join.mgps.adapter.g(this.f49511i, this.f49515m);
        this.f49518p = new com.join.mgps.adapter.h(this.f49511i, this.f49516n, this.f49523u);
        View inflate = LayoutInflater.from(this.f49511i).inflate(R.layout.codes_box_header, (ViewGroup) null);
        this.f49519q = (RelativeLayout) inflate.findViewById(R.id.emptyGiftPackageLayout);
        this.f49510h = (TextView) inflate.findViewById(R.id.textview_gift_get);
        this.f49519q.setOnClickListener(new e());
        this.f49507e.setAdapter((ListAdapter) this.f49517o);
        this.f49508f.addHeaderView(inflate);
        this.f49508f.setAdapter((ListAdapter) this.f49518p);
        X();
        S();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f49511i = context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f49509g = arguments.getInt("uid");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        com.join.mgps.customview.t tVar = this.f49520r;
        if (tVar != null && tVar.isShowing()) {
            this.f49520r.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f49511i = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        if (a4 == null || this.f49521s == null || !a4.getCrc_link_type_val().equals(this.f49521s.getCrc_link_type_val())) {
            return;
        }
        this.f49521s = a4;
        int c4 = lVar.c();
        if (c4 != 5) {
            if (c4 == 8) {
                DownloadTask downloadTask = this.f49521s;
                if (downloadTask == null || downloadTask.getPath() == null) {
                    return;
                }
                UtilsMy.C3(this.f49521s);
                return;
            } else if (c4 != 11 && c4 != 48) {
                return;
            }
        }
        if (this.f49521s == null || !a4.getCrc_link_type_val().equals(this.f49521s.getCrc_link_type_val())) {
            return;
        }
        this.f49521s = a4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f49513k = 1;
        X();
        S();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        Context context = this.f49511i;
        if (context != null) {
            UtilsMy.I2(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<GiftPackageDataInfoBean> list) {
        if (this.f49511i == null) {
            return;
        }
        if (this.f49513k == 2) {
            this.f49515m.clear();
        }
        try {
            this.f49519q.setVisibility(8);
            this.f49504b.setVisibility(8);
            this.f49505c.setVisibility(8);
            this.f49506d.setVisibility(0);
            this.f49508f.setVisibility(8);
            if (list.size() > 0) {
                this.f49515m.addAll(list);
                if (list.size() < this.f49513k) {
                    this.f49507e.setNoMore();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f49517o.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        Context context = this.f49511i;
        if (context != null) {
            com.join.mgps.Util.i2.a(context).b(str);
        }
    }
}
