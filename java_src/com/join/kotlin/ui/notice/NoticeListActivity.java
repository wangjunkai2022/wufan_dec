package com.join.kotlin.ui.notice;

import android.os.Bundle;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.f;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.h1;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.coupon.NoticeListData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NoticeListActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b$\u0010%J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u0006H\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u0006H\u0016R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/join/kotlin/ui/notice/NoticeListActivity;", "Lcom/BaseAppCompatActivity;", "Lcom/join/kotlin/ui/notice/ClickProxy;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "", "page", "loadData", "Lcom/join/mgps/dto/BTActivityBean;", "data", "onClickItem", "onClickBack", "onClickReload", "onClickSetNetWork", "I", "getPage", "()I", "setPage", "(I)V", "Lcom/join/kotlin/ui/notice/NoticeViewModle;", "viewModle", "Lcom/join/kotlin/ui/notice/NoticeViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/notice/NoticeViewModle;", "setViewModle", "(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V", "Lcom/join/android/app/mgsim/wufun/databinding/h1;", "viewdataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/h1;", "getViewdataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/h1;", "setViewdataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/h1;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class NoticeListActivity extends BaseAppCompatActivity implements ClickProxy, LoadBindClickProxy {
    private int page = 1;
    public NoticeViewModle viewModle;
    @Nullable
    private h1 viewdataBinding;

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final NoticeViewModle getViewModle() {
        NoticeViewModle noticeViewModle = this.viewModle;
        if (noticeViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        return noticeViewModle;
    }

    @Nullable
    public final h1 getViewdataBinding() {
        return this.viewdataBinding;
    }

    public final void loadData(int i2) {
        RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(getIntent().getStringExtra("gameId"));
        requestGameIdArgs.setPage(i2);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(this);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(this)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(this).accountData");
        requestGameIdArgs.setUid(accountData.getUid());
        requestModel.setArgs(requestGameIdArgs);
        if (f.j(this)) {
            NoticeViewModle noticeViewModle = this.viewModle;
            if (noticeViewModle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModle");
            }
            noticeViewModle.getRequest().getNoticeData(requestModel);
            return;
        }
        NoticeViewModle noticeViewModle2 = this.viewModle;
        if (noticeViewModle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        noticeViewModle2.updateShowLoadUI(false);
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickBack() {
        finish();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickItem(@NotNull BTActivityBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        IntentUtil.getInstance().goShareWebActivity(this, data.getJump_url());
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        NoticeViewModle noticeViewModle = this.viewModle;
        if (noticeViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        noticeViewModle.getLoadDataBinding().setValue(new LoadBindindData(2));
        loadData(this.page);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        XRecyclerView xRecyclerView;
        XRecyclerView xRecyclerView2;
        super.onCreate(bundle);
        this.viewdataBinding = (h1) DataBindingUtil.setContentView(this, R.layout.activity_noticelist_activity);
        ViewModel viewModel = new ViewModelProvider(this, new ViewModelProvider.NewInstanceFactory()).get(NoticeViewModle.class);
        Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(this, …iceViewModle::class.java)");
        NoticeViewModle noticeViewModle = (NoticeViewModle) viewModel;
        this.viewModle = noticeViewModle;
        h1 h1Var = this.viewdataBinding;
        if (h1Var != null) {
            if (noticeViewModle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModle");
            }
            h1Var.setVariable(29, noticeViewModle);
        }
        h1 h1Var2 = this.viewdataBinding;
        if (h1Var2 != null) {
            h1Var2.setVariable(7, this);
        }
        h1 h1Var3 = this.viewdataBinding;
        if (h1Var3 != null) {
            h1Var3.setVariable(19, this);
        }
        h1 h1Var4 = this.viewdataBinding;
        if (h1Var4 != null) {
            h1Var4.setLifecycleOwner(this);
        }
        NoticeListAdapter noticeListAdapter = new NoticeListAdapter(this, this);
        NoticeViewModle noticeViewModle2 = this.viewModle;
        if (noticeViewModle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        noticeViewModle2.getNoticeDats().observe(this, new Observer<ArrayList<BTActivityBean>>() { // from class: com.join.kotlin.ui.notice.NoticeListActivity$onCreate$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(ArrayList<BTActivityBean> arrayList) {
                XRecyclerView xRecyclerView3;
                RecyclerView.Adapter adapter;
                h1 viewdataBinding = NoticeListActivity.this.getViewdataBinding();
                if (viewdataBinding == null || (xRecyclerView3 = viewdataBinding.F) == null || (adapter = xRecyclerView3.getAdapter()) == null) {
                    return;
                }
                adapter.notifyDataSetChanged();
            }
        });
        ArrayList<BTActivityBean> arrayList = new ArrayList<>();
        h1 h1Var5 = this.viewdataBinding;
        if (h1Var5 != null && (xRecyclerView2 = h1Var5.F) != null) {
            xRecyclerView2.setAdapter(noticeListAdapter);
        }
        h1 h1Var6 = this.viewdataBinding;
        if (h1Var6 != null && (xRecyclerView = h1Var6.F) != null) {
            xRecyclerView.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.notice.NoticeListActivity$onCreate$2
                @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
                public void onLoadMore() {
                    NoticeListActivity noticeListActivity = NoticeListActivity.this;
                    noticeListActivity.loadData(noticeListActivity.getPage());
                }

                @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
                public void onRefresh() {
                }
            });
        }
        NoticeViewModle noticeViewModle3 = this.viewModle;
        if (noticeViewModle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        noticeViewModle3.getNoticeDats().setValue(arrayList);
        NoticeViewModle noticeViewModle4 = this.viewModle;
        if (noticeViewModle4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        noticeViewModle4.getLoadDataBinding().setValue(new LoadBindindData(2));
        loadData(this.page);
        noticeListAdapter.setOnItemClickListener(new BaseDataBindingAdapter.OnItemClickListener<BTActivityBean>() { // from class: com.join.kotlin.ui.notice.NoticeListActivity$onCreate$3
            @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter.OnItemClickListener
            public void onItemClick(int i2, @NotNull BTActivityBean item, int i4) {
                Intrinsics.checkNotNullParameter(item, "item");
                IntentUtil.getInstance().goShareWebActivity(NoticeListActivity.this, item.getJump_url());
            }
        });
        NoticeViewModle noticeViewModle5 = this.viewModle;
        if (noticeViewModle5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        noticeViewModle5.getRequest().getResultData().observe(this, new Observer<ResponseModel<NoticeListData>>() { // from class: com.join.kotlin.ui.notice.NoticeListActivity$onCreate$4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(ResponseModel<NoticeListData> responseModel) {
                XRecyclerView xRecyclerView3;
                XRecyclerView xRecyclerView4;
                RecyclerView.Adapter adapter;
                XRecyclerView xRecyclerView5;
                if (responseModel != null && responseModel.getCode() == 200) {
                    NoticeListData da = responseModel.getData();
                    if (NoticeListActivity.this.getPage() == responseModel.getPage()) {
                        NoticeListActivity noticeListActivity = NoticeListActivity.this;
                        noticeListActivity.setPage(noticeListActivity.getPage() + 1);
                    }
                    ArrayList<BTActivityBean> value = NoticeListActivity.this.getViewModle().getNoticeDats().getValue();
                    if (value != null) {
                        Intrinsics.checkNotNullExpressionValue(da, "da");
                        value.addAll(da.getGame_announcement_dto_list());
                    }
                    h1 viewdataBinding = NoticeListActivity.this.getViewdataBinding();
                    if (viewdataBinding != null && (xRecyclerView5 = viewdataBinding.F) != null) {
                        xRecyclerView5.q1();
                    }
                } else {
                    h1 viewdataBinding2 = NoticeListActivity.this.getViewdataBinding();
                    if (viewdataBinding2 != null && (xRecyclerView3 = viewdataBinding2.F) != null) {
                        xRecyclerView3.setNoMore();
                    }
                }
                h1 viewdataBinding3 = NoticeListActivity.this.getViewdataBinding();
                if (viewdataBinding3 != null && (xRecyclerView4 = viewdataBinding3.F) != null && (adapter = xRecyclerView4.getAdapter()) != null) {
                    adapter.notifyDataSetChanged();
                }
                NoticeListActivity.this.getViewModle().updateShowLoadUI(true);
            }
        });
    }

    public final void setPage(int i2) {
        this.page = i2;
    }

    public final void setViewModle(@NotNull NoticeViewModle noticeViewModle) {
        Intrinsics.checkNotNullParameter(noticeViewModle, "<set-?>");
        this.viewModle = noticeViewModle;
    }

    public final void setViewdataBinding(@Nullable h1 h1Var) {
        this.viewdataBinding = h1Var;
    }
}
