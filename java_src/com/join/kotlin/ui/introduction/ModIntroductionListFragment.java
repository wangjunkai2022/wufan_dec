package com.join.kotlin.ui.introduction;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.f;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.x;
import com.join.mgps.activity.IntroductionActivity_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BbsListBean;
import com.join.mgps.dto.RequestBbsListArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import com.join.mgps.rpc.j;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import i1.a;
import java.util.Collection;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EFragment(R.layout.fragment_mod_introduction_list)
/* loaded from: classes3.dex */
public class ModIntroductionListFragment extends Fragment {
    Context context;
    private List<BbsListBean> datas;
    String gameId;
    @ViewById
    View loding_faile;
    @ViewById
    View loding_layout;
    private ItemAdapter mItemAdapter;
    private int page = 1;
    j rpcGameClient;
    @ViewById
    RecyclerView rv_list_data;
    @ViewById
    View setNetwork;
    int tagId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class ItemAdapter extends BaseQuickAdapter<BbsListBean, com.join.mgps.base.b> {
        public ItemAdapter() {
            super((int) R.layout.item_mod_introduction_item);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        public void convert(com.join.mgps.base.b bVar, BbsListBean bbsListBean) {
            bVar.K(R.id.tv_title, bbsListBean.getTitle());
            MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.sdv_image), bbsListBean.getPic());
            if (bbsListBean.getType().intValue() == 1) {
                bVar.u(R.id.tv_time, true);
                bVar.K(R.id.tv_time, x.g(bbsListBean.getDuration().intValue()));
            } else {
                bVar.u(R.id.tv_time, false);
            }
            if (bbsListBean.getIsCollection().intValue() == 1) {
                bVar.K(R.id.tv_pic_num, "合集·" + bbsListBean.getVideos());
                bVar.u(R.id.tv_pic_num, true);
                return;
            }
            bVar.u(R.id.tv_pic_num, false);
        }
    }

    static /* synthetic */ int access$008(ModIntroductionListFragment modIntroductionListFragment) {
        int i2 = modIntroductionListFragment.page;
        modIntroductionListFragment.page = i2 + 1;
        return i2;
    }

    private int getUid() {
        AccountBean accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (accountData != null) {
            return accountData.getUid();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$aftervidew$0(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        BbsListBean item = this.mItemAdapter.getItem(i2);
        p l4 = p.l(getContext());
        Event event = Event.singleStartGamePageList;
        Event event2 = Event.ClickContentCard;
        Ext from = new Ext().setFrom("1");
        l4.m1(event, event2, "", from.setArticleId(item.getId() + ""), new Data().setGameId(Long.parseLong(this.gameId)));
        IntroductionActivity_.F1(this.context).d(item.getId().intValue()).e(this.tagId).a(this.gameId).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void aftervidew() {
        this.context = getActivity();
        if (getArguments() != null) {
            this.gameId = getArguments().getString("gameId");
            this.tagId = getArguments().getInt("tagId", 0);
        }
        this.rpcGameClient = h.L();
        this.rv_list_data.setLayoutManager(new GridLayoutManager(this.context, 3));
        if (this.mItemAdapter == null) {
            this.mItemAdapter = new ItemAdapter();
        }
        final a.C0442a c0442a = new a.C0442a();
        c0442a.f65702f = 0;
        c0442a.f65706d = (int) getResources().getDimension(R.dimen.wdp24);
        c0442a.f65703a = (int) getResources().getDimension(R.dimen.wdp24);
        this.rv_list_data.addItemDecoration(new i1.a() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragment.1
            @Override // i1.a
            public a.b getItemOffsets(int i2) {
                return c0442a;
            }
        });
        this.mItemAdapter.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.kotlin.ui.introduction.c
            @Override // com.join.mgps.base.BaseQuickAdapter.i
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                ModIntroductionListFragment.this.lambda$aftervidew$0(baseQuickAdapter, view, i2);
            }
        });
        this.rv_list_data.setAdapter(this.mItemAdapter);
        this.mItemAdapter.setOnLoadMoreListener(new BaseQuickAdapter.k() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragment.2
            @Override // com.join.mgps.base.BaseQuickAdapter.k
            public void onLoadMoreRequested() {
                ModIntroductionListFragment.access$008(ModIntroductionListFragment.this);
                ModIntroductionListFragment modIntroductionListFragment = ModIntroductionListFragment.this;
                modIntroductionListFragment.loadData(modIntroductionListFragment.page);
            }
        }, this.rv_list_data);
        this.page = 1;
        loadData(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        View view = this.loding_layout;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        RecyclerView recyclerView = this.rv_list_data;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0063 -> B:23:0x0075). Please submit an issue!!! */
    @Background
    public void loadData(int i2) {
        showLoadingView();
        if (f.j(this.context)) {
            try {
                RequestBbsListArgs requestBbsListArgs = new RequestBbsListArgs();
                requestBbsListArgs.setGameId(this.gameId);
                requestBbsListArgs.setPage(Integer.valueOf(i2));
                requestBbsListArgs.setTagId(Integer.valueOf(this.tagId));
                requestBbsListArgs.setUid(Integer.valueOf(getUid()));
                RequestModel requestModel = new RequestModel(this.context);
                requestModel.setArgs(requestBbsListArgs);
                ResponseModel<List<BbsListBean>> h4 = this.rpcGameClient.h(requestModel.makeSign());
                try {
                    hideLoading();
                    if (h4 != null && h4.getData() != null) {
                        List<BbsListBean> data = h4.getData();
                        boolean z3 = true;
                        if (i2 <= 1) {
                            z3 = false;
                        }
                        showMain(data, z3);
                    } else {
                        showLoadFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showLoadFailed();
                }
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                showLoadFailed();
                return;
            }
        }
        showLoadFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        loadData(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.context);
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadingView() {
        List<BbsListBean> list = this.datas;
        if (list != null && list.size() > 0) {
            RecyclerView recyclerView = this.rv_list_data;
            if (recyclerView != null && recyclerView.getVisibility() == 8) {
                this.rv_list_data.setVisibility(0);
            }
            View view = this.loding_layout;
            if (view != null && view.getVisibility() == 0) {
                this.loding_layout.setVisibility(8);
            }
        } else {
            RecyclerView recyclerView2 = this.rv_list_data;
            if (recyclerView2 != null) {
                recyclerView2.setVisibility(8);
            }
            View view2 = this.loding_layout;
            if (view2 != null) {
                view2.setVisibility(0);
            }
        }
        View view3 = this.loding_faile;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<BbsListBean> list, boolean z3) {
        this.datas = list;
        if (list == null || list.size() <= 0) {
            this.mItemAdapter.loadMoreEnd();
        } else if (z3) {
            this.mItemAdapter.loadMoreComplete();
            this.mItemAdapter.addData((Collection) this.datas);
        } else {
            this.mItemAdapter.setNewData(this.datas);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadFailed(String str) {
        RecyclerView recyclerView = this.rv_list_data;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        View view = this.loding_layout;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }
}
