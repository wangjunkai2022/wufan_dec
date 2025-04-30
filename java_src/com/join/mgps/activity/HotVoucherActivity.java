package com.join.mgps.activity;

import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.baseactivity.BaseLoadingActivity;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountVoucherAd;
import com.join.mgps.dto.AccountVoucherGameBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.ResultMyVoucherBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.activity_listview)
/* loaded from: classes3.dex */
public class HotVoucherActivity extends BaseLoadingActivity {
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f32759d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f32760e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView2 f32761f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.rpc.n f32762g;

    /* renamed from: h  reason: collision with root package name */
    private int f32763h = 1;

    /* renamed from: i  reason: collision with root package name */
    private com.join.mgps.adapter.n2 f32764i;

    /* renamed from: j  reason: collision with root package name */
    private List<AccountVoucherGameBean> f32765j;

    /* renamed from: k  reason: collision with root package name */
    private AccountVoucherAd f32766k;

    /* loaded from: classes3.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            HotVoucherActivity.K0(HotVoucherActivity.this);
            HotVoucherActivity.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            HotVoucherActivity.this.f32763h = 1;
            HotVoucherActivity.this.F0();
        }
    }

    static /* synthetic */ int K0(HotVoucherActivity hotVoucherActivity) {
        int i2 = hotVoucherActivity.f32763h;
        hotVoucherActivity.f32763h = i2 + 1;
        return i2;
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    @Background
    public void F0() {
        if (com.join.android.app.common.utils.f.j(getApplicationContext())) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
                linkedMultiValueMap.add("token", AccountUtil_.getInstance_(getApplicationContext()).getToken());
                linkedMultiValueMap.add("page", this.f32763h + "");
                linkedMultiValueMap.add("limit", com.join.mgps.Util.u.f27861t);
                PapayVoucherResultMain<ResultMyVoucherBean> b4 = this.f32762g.b(linkedMultiValueMap);
                if (b4 != null) {
                    if (b4.getError() == 0 && b4.getData() != null) {
                        List<AccountVoucherGameBean> recommend = b4.getData().getRecommend();
                        this.f32765j.addAll(recommend);
                        O0();
                        if (recommend.size() < 10) {
                            L0();
                        }
                    } else {
                        showLodingFailed();
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
        N0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        this.f32761f.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        this.f32761f.t();
        this.f32761f.u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        if (this.f32765j.size() == 0) {
            this.f32761f.setNoMore();
            showNoDataLayoutTwo();
            setTextViewNoData(getString(R.string.voucher_recommend_no));
        } else {
            this.f32761f.p();
            E0();
        }
        this.f32764i.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f32762g = com.join.mgps.rpc.impl.m.h();
        this.f32759d.setText("热门代金券");
        this.f32760e.setVisibility(8);
        this.f32765j = new ArrayList();
        com.join.mgps.adapter.n2 n2Var = new com.join.mgps.adapter.n2(this, this.f32765j);
        this.f32764i = n2Var;
        this.f32761f.setAdapter((ListAdapter) n2Var);
        this.f32761f.setPreLoadCount(10);
        this.f32761f.setPullLoadEnable(new a());
        this.f32761f.setPullRefreshEnable(new b());
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingLayoutResID() {
        return R.id.activity_listview;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<AccountVoucherGameBean> list = this.f32765j;
        if (list == null || list.size() == 0) {
            G0();
        }
    }
}
