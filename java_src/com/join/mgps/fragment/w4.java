package com.join.mgps.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.HotVoucherActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherAd;
import com.join.mgps.dto.AccountVoucherGameBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.ResultMyVoucherBean;
import com.join.mgps.listener.a;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
/* compiled from: VoucherFragment.java */
@EFragment(R.layout.fragment_my_voucher)
/* loaded from: classes4.dex */
public class w4 extends com.join.mgps.basefragment.a implements a.InterfaceC0216a {
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f50658b;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.n f50659c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f50660d;

    /* renamed from: e  reason: collision with root package name */
    private int f50661e = 1;

    /* renamed from: f  reason: collision with root package name */
    private View f50662f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f50663g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f50664h;

    /* renamed from: i  reason: collision with root package name */
    private LinearLayout f50665i;

    /* renamed from: j  reason: collision with root package name */
    private LinearLayout f50666j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f50667k;

    /* renamed from: l  reason: collision with root package name */
    private com.join.mgps.adapter.o3 f50668l;

    /* renamed from: m  reason: collision with root package name */
    private List<Object> f50669m;

    /* renamed from: n  reason: collision with root package name */
    private AccountVoucherAd f50670n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f50671o;

    /* renamed from: p  reason: collision with root package name */
    private Context f50672p;

    /* compiled from: VoucherFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            w4.X(w4.this);
            w4.this.loadData();
        }
    }

    /* compiled from: VoucherFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            w4.this.f50661e = 1;
            w4.this.loadData();
        }
    }

    static /* synthetic */ int X(w4 w4Var) {
        int i2 = w4Var.f50661e;
        w4Var.f50661e = i2 + 1;
        return i2;
    }

    @Override // com.join.mgps.basefragment.a
    protected int N() {
        return R.layout.fragment_my_voucher;
    }

    @Override // com.join.mgps.basefragment.a
    public int O() {
        return R.id.layout_my_voucher;
    }

    public AccountVoucherAd Z() {
        return this.f50670n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a0() {
        HotVoucherActivity_.W0(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50659c = com.join.mgps.rpc.impl.m.h();
        this.f50672p = getContext();
        this.f50669m = new ArrayList();
        com.join.mgps.adapter.o3 o3Var = new com.join.mgps.adapter.o3(this.f50669m, getContext());
        this.f50668l = o3Var;
        this.f50658b.setAdapter((ListAdapter) o3Var);
        this.f50658b.setPreLoadCount(10);
        this.f50658b.setPullLoadEnable(new a());
        this.f50658b.setPullRefreshEnable(new b());
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.search_failed_header, (ViewGroup) null);
        this.f50662f = inflate;
        this.f50665i = (LinearLayout) inflate.findViewById(R.id.searchHeaderLayout);
        this.f50666j = (LinearLayout) this.f50662f.findViewById(R.id.messageLayout);
        this.f50663g = (TextView) this.f50662f.findViewById(R.id.messageHeader);
        TextView textView = (TextView) this.f50662f.findViewById(R.id.textView2);
        this.f50664h = textView;
        textView.setText(getString(R.string.voucher_my_number));
        this.f50663g.setText(getString(R.string.voucher_my_no));
        this.f50658b.addHeaderView(this.f50662f);
        com.join.mgps.listener.a.b().a(this);
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0() {
        this.f50658b.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0(PapayVoucherResultMain<ResultMyVoucherBean> papayVoucherResultMain) {
        List<AccountVoucherGameBean> recommend = papayVoucherResultMain.getData().getRecommend();
        this.f50667k = true;
        this.f50669m.clear();
        if (recommend != null && recommend.size() > 0) {
            this.f50669m.addAll(recommend);
            this.f50666j.setVisibility(0);
            this.f50665i.setBackgroundResource(R.drawable.white_drawable);
        } else {
            this.f50666j.setVisibility(8);
            this.f50665i.setBackgroundResource(R.color.activity_default_background);
        }
        f0();
        b0();
        this.f50658b.f();
        if (recommend == null || recommend.size() <= 0) {
            this.f50658b.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        Toast.makeText(getContext(), getString(R.string.net_connect_failed), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        this.f50658b.t();
        this.f50658b.u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        if (this.f50667k && this.f50661e == 1) {
            this.f50665i.setVisibility(0);
        } else {
            this.f50665i.setVisibility(8);
        }
        if (this.f50669m.size() == 0) {
            this.f50658b.f();
        } else {
            this.f50658b.p();
        }
        if (this.f50671o) {
            this.f50660d.setVisibility(0);
        } else {
            this.f50660d.setVisibility(8);
        }
        Q();
        this.f50668l.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        f0();
    }

    @Override // com.join.mgps.listener.a.InterfaceC0216a
    public void j() {
        this.f50661e = 1;
        this.f50658b.p();
        loadData();
    }

    @Override // com.join.mgps.basefragment.a
    @Background
    public void loadData() {
        Context context = this.f50672p;
        if (context == null) {
            return;
        }
        if (com.join.android.app.common.utils.f.j(context)) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.f50672p).getUid());
                linkedMultiValueMap.add("token", AccountUtil_.getInstance_(this.f50672p).getToken());
                linkedMultiValueMap.add("page", this.f50661e + "");
                linkedMultiValueMap.add("limit", com.join.mgps.Util.u.f27861t);
                PapayVoucherResultMain<ResultMyVoucherBean> l4 = this.f50659c.l(linkedMultiValueMap);
                if (l4 != null) {
                    if (l4.getError() == 0) {
                        List<AccountVoucher> coupons = l4.getData().getCoupons();
                        this.f50670n = l4.getData().getAd();
                        this.f50671o = l4.getData().is_show_recommend_bar();
                        if (coupons != null) {
                            if (coupons.size() > 0) {
                                if (this.f50661e == 1) {
                                    this.f50669m.clear();
                                    this.f50669m.addAll(coupons);
                                    this.f50667k = false;
                                } else {
                                    this.f50669m.addAll(coupons);
                                }
                                f0();
                                if (coupons.size() <= 10) {
                                    b0();
                                }
                            } else if (this.f50661e == 1) {
                                c0(l4);
                            }
                        } else if (this.f50661e == 1) {
                            c0(l4);
                        }
                    } else if (this.f50661e == 1) {
                        showLodingFailed();
                    } else {
                        b0();
                    }
                } else {
                    showLodingFailed();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
            }
        } else {
            showLodingFailed();
            d0();
        }
        e0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.listener.a.b().d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<Object> list = this.f50669m;
        if (list == null || list.size() == 0) {
            S();
        }
    }
}
