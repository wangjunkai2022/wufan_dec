package com.join.mgps.activity;

import android.text.Html;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.p3;
import com.join.mgps.baseactivity.BaseLoadingActivity;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherAd;
import com.join.mgps.dto.AccountVoucherGame;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import com.join.mgps.listener.a;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.activity_my_voucher_game)
/* loaded from: classes3.dex */
public class MyVoucherGameActivity extends BaseLoadingActivity implements a.InterfaceC0216a {
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f34338d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f34339e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f34340f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    XListView2 f34341g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.n f34342h;

    /* renamed from: i  reason: collision with root package name */
    private int f34343i = 1;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f34344j;

    /* renamed from: k  reason: collision with root package name */
    private AccountVoucherAd f34345k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    AccountVoucher f34346l;

    /* renamed from: m  reason: collision with root package name */
    private p3 f34347m;

    /* renamed from: n  reason: collision with root package name */
    private List<AccountVoucherGame> f34348n;

    /* loaded from: classes3.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            MyVoucherGameActivity.K0(MyVoucherGameActivity.this);
            MyVoucherGameActivity.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            MyVoucherGameActivity.this.f34343i = 1;
            MyVoucherGameActivity.this.F0();
        }
    }

    static /* synthetic */ int K0(MyVoucherGameActivity myVoucherGameActivity) {
        int i2 = myVoucherGameActivity.f34343i;
        myVoucherGameActivity.f34343i = i2 + 1;
        return i2;
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    @Background
    public void F0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
                linkedMultiValueMap.add("token", AccountUtil_.getInstance_(getApplicationContext()).getToken());
                linkedMultiValueMap.add("game_id", this.f34346l.getGame_id() + "");
                linkedMultiValueMap.add("page", this.f34343i + "");
                linkedMultiValueMap.add("limit", com.join.mgps.Util.u.f27861t);
                PapayVoucherResultMain<ResultMyVoucherGameBean> f4 = this.f34342h.f(linkedMultiValueMap);
                if (f4 != null) {
                    if (f4.getError() == 0) {
                        List<AccountVoucherGame> coupons = f4.getData().getCoupons();
                        this.f34345k = f4.getData().getHelp();
                        if (coupons != null) {
                            if (coupons.size() > 0) {
                                if (this.f34343i == 1) {
                                    this.f34348n.clear();
                                    this.f34348n.addAll(coupons);
                                } else {
                                    this.f34348n.addAll(coupons);
                                }
                                P0(f4.getData());
                            } else if (this.f34343i != 1) {
                                L0();
                            }
                        }
                    } else if (this.f34343i == 1) {
                        showLodingFailed();
                    } else {
                        L0();
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
            M0();
        }
        O0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        this.f34341g.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        if (this.f34345k != null) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(this.f34345k.getLink().getLink_type_val());
            intentDateBean.setObject(this.f34345k.getTitle());
            IntentUtil.getInstance().intentActivity(this, intentDateBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        this.f34341g.t();
        this.f34341g.u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(ResultMyVoucherGameBean resultMyVoucherGameBean) {
        if (resultMyVoucherGameBean.getMoney() != null) {
            this.f34340f.setVisibility(0);
            TextView textView = this.f34339e;
            String string = getResources().getString(R.string.voucher_game_header);
            textView.setText(Html.fromHtml(String.format(string, "<font color = '#D33D3E'>" + resultMyVoucherGameBean.getMoney().getCount() + "</font>", "<font color = '#D33D3E'>" + resultMyVoucherGameBean.getMoney().getMoney() + "</font>")));
        } else {
            this.f34340f.setVisibility(8);
        }
        E0();
        this.f34347m.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        IntentUtil intentUtil = IntentUtil.getInstance();
        intentUtil.goGameDetialActivity(this, this.f34346l.getGame_id() + "", this.f34346l.getGame_tpl(), this.f34346l.getSp_tpl_two_position(), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f34342h = com.join.mgps.rpc.impl.m.h();
        this.f34348n = new ArrayList();
        this.f34341g.setPreLoadCount(10);
        this.f34344j.setText(R.string.voucher_use);
        p3 p3Var = new p3(this.f34348n, this);
        this.f34347m = p3Var;
        this.f34341g.setAdapter((ListAdapter) p3Var);
        this.f34341g.setPullLoadEnable(new a());
        this.f34341g.setPullRefreshEnable(new b());
        this.f34338d.setText(this.f34346l.getGame_name());
        com.join.mgps.listener.a.b().a(this);
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingLayoutResID() {
        return R.id.layout_my_voucher_game;
    }

    @Override // com.join.mgps.listener.a.InterfaceC0216a
    public void j() {
        this.f34343i = 1;
        F0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.listener.a.b().d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<AccountVoucherGame> list = this.f34348n;
        if (list == null || list.size() == 0) {
            G0();
        }
    }
}
