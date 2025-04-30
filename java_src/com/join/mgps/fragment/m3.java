package com.join.mgps.fragment;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.AccountVoucherGame;
import com.join.mgps.dto.ResultMainBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
/* compiled from: MyVoucherGameFragment.java */
@EFragment(R.layout.layout_listview)
/* loaded from: classes4.dex */
public class m3 extends d implements com.join.mgps.customview.i, com.join.mgps.customview.j {

    /* renamed from: a  reason: collision with root package name */
    private Context f49360a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView f49361b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f49362c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f49363d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.b f49364e;

    /* renamed from: f  reason: collision with root package name */
    private int f49365f = 1;

    /* renamed from: g  reason: collision with root package name */
    private com.join.mgps.adapter.p3 f49366g;

    /* renamed from: h  reason: collision with root package name */
    private List<AccountVoucherGame> f49367h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M() {
        this.f49361b.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N() {
        this.f49361b.q();
        this.f49361b.r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O() {
        this.f49363d.setVisibility(8);
        this.f49362c.setVisibility(8);
        this.f49361b.setVisibility(0);
        this.f49366g.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f49364e = com.join.mgps.rpc.impl.a.b0();
        this.f49360a = getActivity();
        ArrayList arrayList = new ArrayList();
        this.f49367h = arrayList;
        arrayList.add(new AccountVoucherGame());
        this.f49367h.add(new AccountVoucherGame());
        this.f49367h.add(new AccountVoucherGame());
        this.f49367h.add(new AccountVoucherGame());
        com.join.mgps.adapter.p3 p3Var = new com.join.mgps.adapter.p3(this.f49367h, this.f49360a);
        this.f49366g = p3Var;
        this.f49361b.setAdapter((ListAdapter) p3Var);
        O();
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadData() {
        if (com.join.android.app.common.utils.f.j(this.f49360a)) {
            try {
                ResultMainBean<List<AccountVoucherGame>> f4 = this.f49364e.f(new LinkedMultiValueMap());
                if (f4 != null) {
                    if (f4.getFlag() == 1) {
                        List<AccountVoucherGame> data = f4.getMessages().getData();
                        if (data != null) {
                            if (data.size() > 0) {
                                if (this.f49365f == 1) {
                                    this.f49367h.clear();
                                    this.f49367h.addAll(data);
                                } else {
                                    this.f49367h.addAll(data);
                                }
                                O();
                                return;
                            }
                            M();
                            return;
                        }
                        N();
                        return;
                    }
                    M();
                    return;
                }
                showLodingFailed();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        N();
        showLodingFailed();
    }

    @Override // com.join.mgps.customview.i
    public void onLoadMore() {
        this.f49365f++;
        loadData();
    }

    @Override // com.join.mgps.customview.j
    public void onRefresh() {
        this.f49365f = 1;
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f49365f = 1;
        showLoding();
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f49360a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f49362c.setVisibility(0);
        this.f49363d.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<AccountVoucherGame> list = this.f49367h;
        if (list == null || list.size() == 0) {
            this.f49363d.setVisibility(0);
            this.f49362c.setVisibility(8);
            this.f49361b.setVisibility(8);
        }
    }
}
