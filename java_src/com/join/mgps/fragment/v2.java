package com.join.mgps.fragment;

import android.content.Context;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameSignleCompanyListbean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: GameSingleCompanyFragment.java */
@EFragment(R.layout.game_single_conpany_layout)
/* loaded from: classes4.dex */
public class v2 extends Fragment implements AbsListView.OnScrollListener {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    PtrClassicFrameLayout f50554a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f50555b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f50556c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f50557d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ImageView f50558e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.d f50559f;

    /* renamed from: g  reason: collision with root package name */
    private com.join.mgps.adapter.f2 f50560g;

    /* renamed from: h  reason: collision with root package name */
    private Context f50561h;

    /* renamed from: j  reason: collision with root package name */
    List<k1.b> f50563j;

    /* renamed from: i  reason: collision with root package name */
    private boolean f50562i = false;

    /* renamed from: k  reason: collision with root package name */
    private int f50564k = 1;

    /* compiled from: GameSingleCompanyFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (v2.this.f50562i) {
                return;
            }
            v2.this.f50564k = 1;
            v2.this.P();
        }
    }

    /* compiled from: GameSingleCompanyFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (v2.this.f50562i) {
                return;
            }
            v2.this.P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void O() {
        this.f50559f = com.join.mgps.rpc.impl.c.P1();
        this.f50561h = getActivity();
        com.join.mgps.adapter.f2 f2Var = new com.join.mgps.adapter.f2(this.f50561h);
        this.f50560g = f2Var;
        this.f50563j = f2Var.b();
        showLoding();
        P();
        this.f50555b.setPreLoadCount(10);
        this.f50555b.setPullRefreshEnable(new a());
        this.f50555b.setPullLoadEnable(new b());
        this.f50555b.setOnScrollListener(this);
        this.f50555b.setAdapter((ListAdapter) this.f50560g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P() {
        if (com.join.android.app.common.utils.f.j(this.f50561h)) {
            this.f50562i = true;
            try {
                try {
                    ResultMainBean<GameSignleCompanyListbean> F0 = this.f50559f.F0(Q(this.f50564k));
                    if (F0 != null && F0.getFlag() == 1) {
                        GameSignleCompanyListbean data = F0.getMessages().getData();
                        if (data != null) {
                            ArrayList arrayList = new ArrayList();
                            List<GameOLHeadAdBean> list = data.getList();
                            if (list != null && list.size() > 0) {
                                k1.b bVar = null;
                                for (int i2 = 0; i2 < list.size(); i2++) {
                                    if (i2 != 0 && i2 % 2 != 0) {
                                        bVar.d(list.get(i2));
                                        arrayList.add(bVar);
                                    }
                                    bVar = new k1.b();
                                    bVar.c(list.get(i2));
                                }
                                if (list.size() != 0 && list.size() % 2 == 1) {
                                    k1.b bVar2 = new k1.b();
                                    bVar2.c(list.get(list.size() - 1));
                                    arrayList.add(bVar2);
                                }
                                this.f50564k++;
                                showMain(arrayList);
                                T();
                            } else if (this.f50564k == 1) {
                                showLodingFailed();
                            } else {
                                S();
                            }
                        }
                    } else {
                        T();
                        showLodingFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    T();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f50562i = false;
            }
        }
        T();
        showLodingFailed();
    }

    public CommonRequestBean Q(int i2) {
        return RequestBeanUtil.getInstance(this.f50561h).getGameOLRequest(i2, 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R() {
        this.f50564k = 1;
        P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        this.f50555b.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T() {
        this.f50555b.t();
        this.f50555b.u();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f50564k = 1;
        showLoding();
        P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f50556c.setVisibility(0);
        this.f50557d.setVisibility(8);
        this.f50554a.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<k1.b> list = this.f50563j;
        if (list == null || list.size() == 0) {
            this.f50557d.setVisibility(0);
            this.f50556c.setVisibility(8);
            this.f50554a.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<k1.b> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f50557d.setVisibility(8);
        this.f50556c.setVisibility(8);
        this.f50554a.setVisibility(0);
        if (this.f50564k == 2) {
            this.f50563j.clear();
        }
        this.f50563j.addAll(list);
        if (this.f50564k == 2) {
            this.f50563j.size();
        }
        com.join.mgps.Util.t0.d("infoo", this.f50563j.size() + "   showMain");
        this.f50560g.notifyDataSetChanged();
    }
}
