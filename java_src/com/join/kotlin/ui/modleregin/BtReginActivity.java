package com.join.kotlin.ui.modleregin;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.c;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.f4;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.base.BaseHasDownloadActivity;
import com.join.kotlin.ui.modleregin.adapter.BtReginAdapter;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.viewModle.BtReginModle;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.l;
import com.psk.kotlin.util.CommonListMainData;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.v1;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BtReginActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b/\u00100J\u0012\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0007J\b\u0010\u000f\u001a\u00020\u0007H\u0014J\b\u0010\u0010\u001a\u00020\u0007H\u0014J\b\u0010\u0011\u001a\u00020\u0007H\u0014J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\b\u0010\u0013\u001a\u00020\u0007H\u0016J\b\u0010\u0014\u001a\u00020\u0007H\u0016J\b\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\b\u0010\u0019\u001a\u00020\u0007H\u0016R\u001d\u0010\u001f\u001a\u00020\u001a8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010$\u001a\u00020 8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010#R\u001d\u0010)\u001a\u00020%8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001c\u001a\u0004\b'\u0010(R\u001d\u0010.\u001a\u00020*8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b+\u0010\u001c\u001a\u0004\b,\u0010-¨\u00061"}, d2 = {"Lcom/join/kotlin/ui/modleregin/BtReginActivity;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;", "Lcom/join/kotlin/ui/notice/ClickProxy;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "onDownloadStatusEventReceved", "Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;", NotificationCompat.CATEGORY_EVENT, "onEventTagChangeThread", "onPause", "onResume", "onDestroy", "onRefresh", "onLoadMore", "onClickReload", "onClickSetNetWork", "Lcom/join/mgps/dto/BTActivityBean;", "data", "onClickItem", "onClickBack", "Lcom/join/android/app/mgsim/wufun/databinding/f4;", "dataBinding$delegate", "Lkotlin/Lazy;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/f4;", "dataBinding", "Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;", "adapter$delegate", "getAdapter", "()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;", "adapter", "Lcom/join/android/app/component/video/c;", "videoHelper$delegate", "getVideoHelper", "()Lcom/join/android/app/component/video/c;", "videoHelper", "Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "viewModel$delegate", "getViewModel", "()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "viewModel", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class BtReginActivity extends BaseHasDownloadActivity implements ClickProxy, LoadBindClickProxy, XRecyclerView.f {
    @NotNull
    private final Lazy adapter$delegate;
    @NotNull
    private final Lazy dataBinding$delegate;
    @NotNull
    private final Lazy videoHelper$delegate;
    @NotNull
    private final Lazy viewModel$delegate;

    public BtReginActivity() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<BtReginModle>() { // from class: com.join.kotlin.ui.modleregin.BtReginActivity$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BtReginModle invoke() {
                ViewModel viewModel = new ViewModelProvider(BtReginActivity.this, new ViewModelProvider.NewInstanceFactory()).get(BtReginModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …BtReginModle::class.java)");
                return (BtReginModle) viewModel;
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<f4>() { // from class: com.join.kotlin.ui.modleregin.BtReginActivity$dataBinding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final f4 invoke() {
                return (f4) DataBindingUtil.setContentView(BtReginActivity.this, R.layout.bt_regin_activity);
            }
        });
        this.dataBinding$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<c>() { // from class: com.join.kotlin.ui.modleregin.BtReginActivity$videoHelper$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final c invoke() {
                return new c(BtReginActivity.this, "BtReginActivity", true);
            }
        });
        this.videoHelper$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<BtReginAdapter>() { // from class: com.join.kotlin.ui.modleregin.BtReginActivity$adapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BtReginAdapter invoke() {
                BtReginActivity btReginActivity = BtReginActivity.this;
                return new BtReginAdapter(btReginActivity, btReginActivity.getVideoHelper());
            }
        });
        this.adapter$delegate = lazy4;
    }

    @NotNull
    public final BtReginAdapter getAdapter() {
        return (BtReginAdapter) this.adapter$delegate.getValue();
    }

    @NotNull
    public final f4 getDataBinding() {
        return (f4) this.dataBinding$delegate.getValue();
    }

    @NotNull
    public final c getVideoHelper() {
        return (c) this.videoHelper$delegate.getValue();
    }

    @NotNull
    public final BtReginModle getViewModel() {
        return (BtReginModle) this.viewModel$delegate.getValue();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickBack() {
        finish();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickItem(@NotNull BTActivityBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        getViewModel().loadDatas(this, 1);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getDataBinding().setVariable(1, getAdapter());
        getDataBinding().setVariable(27, getViewModel());
        getDataBinding().setVariable(19, this);
        getDataBinding().setVariable(7, this);
        getDataBinding().setVariable(23, this);
        getDataBinding().setLifecycleOwner(this);
        BtReginModle viewModel = getViewModel();
        String stringExtra = getIntent().getStringExtra("title");
        if (stringExtra == null) {
            stringExtra = "";
        }
        viewModel.setTitle(stringExtra);
        getViewModel().loadDatas(this);
        getVideoHelper().F(1);
        getVideoHelper().n(getDataBinding().F);
        getAdapter().setOnItemClickListener(new Function3<Integer, CommonListMainData, Integer, Unit>() { // from class: com.join.kotlin.ui.modleregin.BtReginActivity$onCreate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, CommonListMainData commonListMainData, Integer num2) {
                invoke(num.intValue(), commonListMainData, num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i2, @NotNull CommonListMainData item, int i4) {
                Intrinsics.checkNotNullParameter(item, "item");
                int type = item.getType();
                if (type == 2) {
                    Object any = item.getAny();
                    Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
                    BtGameListItem btGameListItem = (BtGameListItem) any;
                    IntentDateBean intentDataBean = btGameListItem.getGameInfo().getIntentDataBean();
                    Intrinsics.checkNotNullExpressionValue(intentDataBean, "intentDataBean");
                    ExtBean extBean = intentDataBean.getExtBean();
                    Intrinsics.checkNotNullExpressionValue(extBean, "extBean");
                    extBean.setReMarks(item.getReMarks());
                    intentDataBean.setExtBean(extBean);
                    IntentUtil.getInstance().intentActivity(BtReginActivity.this, btGameListItem.getGameInfo().getIntentDataBean());
                } else if (type != 4) {
                } else {
                    Object any2 = item.getAny();
                    Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean");
                    MustplayItemBean mustplayItemBean = (MustplayItemBean) any2;
                    IntentDateBean intentDataBean2 = mustplayItemBean.getGameinfo().getIntentDataBean();
                    Intrinsics.checkNotNullExpressionValue(intentDataBean2, "intentDataBean");
                    ExtBean extBean2 = intentDataBean2.getExtBean();
                    Intrinsics.checkNotNullExpressionValue(extBean2, "extBean");
                    extBean2.setReMarks(item.getReMarks());
                    intentDataBean2.setExtBean(extBean2);
                    IntentUtil.getInstance().intentActivity(BtReginActivity.this, mustplayItemBean.getGameinfo().getIntentDataBean());
                }
            }
        });
        getDataBinding().F.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.modleregin.BtReginActivity$onCreate$2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, i2);
                BtReginActivity.this.getVideoHelper().j(recyclerView, i2);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NotNull RecyclerView recyclerView, int i2, int i4) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, i2, i4);
                try {
                    XRecyclerView xRecyclerView = BtReginActivity.this.getDataBinding().F;
                    Intrinsics.checkNotNullExpressionValue(xRecyclerView, "dataBinding.recycleView");
                    RecyclerView.LayoutManager layoutManager = xRecyclerView.getLayoutManager();
                    if (layoutManager != null) {
                        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                        int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                        List<CommonListMainData> value = BtReginActivity.this.getViewModel().getShowDatas().getValue();
                        Intrinsics.checkNotNull(value);
                        BtReginActivity.this.getVideoHelper().f(recyclerView, findFirstVisibleItemPosition, findLastVisibleItemPosition - findFirstVisibleItemPosition, value.size());
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (getVideoHelper() != null) {
            getVideoHelper().z();
        }
        super.onDestroy();
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity
    public void onDownloadStatusEventReceved(@NotNull l downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        getViewModel().onEventMainThread(downloadTaskEvent);
        if (downloadTaskEvent.c() != 8) {
            getAdapter().notifyDataSetChanged();
            return;
        }
        BtReginModle viewModel = getViewModel();
        Intrinsics.checkNotNull(viewModel);
        HashMap<String, DownloadTask> value = viewModel.getDownloadTasksMap().getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "viewModel!!.downloadTasksMap.value!!");
        if (!value.isEmpty()) {
            if (getViewModel().getAdapter() == null) {
                getViewModel().setAdapter(getAdapter());
            }
            if (getViewModel().getManager() == null) {
                BtReginModle viewModel2 = getViewModel();
                XRecyclerView xRecyclerView = getDataBinding().F;
                Intrinsics.checkNotNullExpressionValue(xRecyclerView, "dataBinding.recycleView");
                RecyclerView.LayoutManager layoutManager = xRecyclerView.getLayoutManager();
                Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                viewModel2.setManager((LinearLayoutManager) layoutManager);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventTagChangeThread(@NotNull BtTagSelecterBean event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getViewModel().updateTitles(event);
        getAdapter().notifyDataSetChanged();
    }

    @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
    public void onLoadMore() {
        getViewModel().loadDatas(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        if (getVideoHelper() != null) {
            getVideoHelper().A();
        }
        super.onPause();
    }

    @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
    public void onRefresh() {
        getViewModel().loadDatas(this, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        if (getVideoHelper() != null) {
            getVideoHelper().B();
        }
        k.f(v1.f72528a, g1.c(), null, new BtReginActivity$onResume$1(this, null), 2, null);
        super.onResume();
    }
}
