package com.join.kotlin.ui.findgame;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.databinding.ef;
import com.join.kotlin.presenter.FindModlePrensenter;
import com.join.kotlin.presenter.view.FindHomeView;
import com.join.kotlin.ui.findgame.adapter.FindHomeChoiceAdapter;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.event.l;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.BasDownLoadActivityPresenter;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FindGameChoiceFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bK\u0010LJ&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0007J\b\u0010\u0015\u001a\u00020\u000fH\u0016J\b\u0010\u0016\u001a\u00020\u000fH\u0016J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\"\u001a\u00020!8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R(\u00101\u001a\b\u0012\u0004\u0012\u0002000/8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010E\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010J¨\u0006M"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/presenter/view/FindHomeView;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "pn", "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;", "result", "", "onLoadDataSuccess", "onDestroyView", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "onEventMainThread", "showLoding", "hidLoading", "", "message", "onError", "Lcom/join/android/app/mgsim/wufun/databinding/ef;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/ef;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ef;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ef;)V", "Lcom/join/kotlin/presenter/FindModlePrensenter;", "prensenter", "Lcom/join/kotlin/presenter/FindModlePrensenter;", "getPrensenter", "()Lcom/join/kotlin/presenter/FindModlePrensenter;", "setPrensenter", "(Lcom/join/kotlin/presenter/FindModlePrensenter;)V", "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;", "adapter", "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;", "getAdapter", "()Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;", "setAdapter", "(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;)V", "", "Lcom/psk/kotlin/util/CommonListMainData;", "showDatalist", "Ljava/util/List;", "getShowDatalist", "()Ljava/util/List;", "setShowDatalist", "(Ljava/util/List;)V", "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "downloadprensenter", "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "getDownloadprensenter", "()Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "setDownloadprensenter", "(Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;)V", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "requestArgs", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "getRequestArgs", "()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "setRequestArgs", "(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V", "page", "I", "getPage", "()I", "setPage", "(I)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class FindGameChoiceFragment extends Fragment implements FindHomeView {
    public FindHomeChoiceAdapter adapter;
    public ef binding;
    public BasDownLoadActivityPresenter downloadprensenter;
    private int page = 1;
    public FindModlePrensenter prensenter;
    public LuckHistoryrequest requestArgs;
    public List<CommonListMainData> showDatalist;

    @NotNull
    public final FindHomeChoiceAdapter getAdapter() {
        FindHomeChoiceAdapter findHomeChoiceAdapter = this.adapter;
        if (findHomeChoiceAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return findHomeChoiceAdapter;
    }

    @NotNull
    public final ef getBinding() {
        ef efVar = this.binding;
        if (efVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return efVar;
    }

    @NotNull
    public final BasDownLoadActivityPresenter getDownloadprensenter() {
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.downloadprensenter;
        if (basDownLoadActivityPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadprensenter");
        }
        return basDownLoadActivityPresenter;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final FindModlePrensenter getPrensenter() {
        FindModlePrensenter findModlePrensenter = this.prensenter;
        if (findModlePrensenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prensenter");
        }
        return findModlePrensenter;
    }

    @NotNull
    public final LuckHistoryrequest getRequestArgs() {
        LuckHistoryrequest luckHistoryrequest = this.requestArgs;
        if (luckHistoryrequest == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestArgs");
        }
        return luckHistoryrequest;
    }

    @NotNull
    public final List<CommonListMainData> getShowDatalist() {
        List<CommonListMainData> list = this.showDatalist;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
        }
        return list;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void hidLoading() {
        ef efVar = this.binding;
        if (efVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        efVar.f19759e.q1();
        ef efVar2 = this.binding;
        if (efVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = efVar2.f19758d.f27058c;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
        linearLayout.setVisibility(8);
        ef efVar3 = this.binding;
        if (efVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout2 = efVar3.f19756b.f24367d;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
        linearLayout2.setVisibility(8);
        ef efVar4 = this.binding;
        if (efVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView = efVar4.f19759e;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.recycleView");
        xRecyclerView.setVisibility(0);
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [T, com.join.mgps.activity.vipzone.bean.LuckHistoryrequest] */
    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ef d4 = ef.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "FindgameAllfragemntLayou…flater, container, false)");
        this.binding = d4;
        this.prensenter = new FindModlePrensenter(this);
        c0.a().d(this);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? luckHistoryrequest = new LuckHistoryrequest();
        objectRef.element = luckHistoryrequest;
        ((LuckHistoryrequest) luckHistoryrequest).setPage(1);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(getActivity());
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(activity)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(activity).accountData");
        ((LuckHistoryrequest) objectRef.element).setUid(accountData.getUid());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        ef efVar = this.binding;
        if (efVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView = efVar.f19759e;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.recycleView");
        xRecyclerView.setLayoutManager(linearLayoutManager);
        this.showDatalist = new ArrayList();
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        Intrinsics.checkNotNullExpressionValue(activity, "activity!!");
        List<CommonListMainData> list = this.showDatalist;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
        }
        this.adapter = new FindHomeChoiceAdapter(activity, list);
        ef efVar2 = this.binding;
        if (efVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView2 = efVar2.f19759e;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView2, "binding.recycleView");
        FindHomeChoiceAdapter findHomeChoiceAdapter = this.adapter;
        if (findHomeChoiceAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        xRecyclerView2.setAdapter(findHomeChoiceAdapter);
        ef efVar3 = this.binding;
        if (efVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView3 = efVar3.f19759e;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView3, "binding.recycleView");
        List<CommonListMainData> list2 = this.showDatalist;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
        }
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = new BasDownLoadActivityPresenter(linearLayoutManager, xRecyclerView3, list2);
        this.downloadprensenter = basDownLoadActivityPresenter;
        FindHomeChoiceAdapter findHomeChoiceAdapter2 = this.adapter;
        if (findHomeChoiceAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        basDownLoadActivityPresenter.initData(findHomeChoiceAdapter2);
        FindModlePrensenter findModlePrensenter = this.prensenter;
        if (findModlePrensenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prensenter");
        }
        FragmentActivity activity2 = getActivity();
        Intrinsics.checkNotNull(activity2);
        Intrinsics.checkNotNullExpressionValue(activity2, "activity!!");
        findModlePrensenter.loadFindChoiceData(activity2, (LuckHistoryrequest) objectRef.element);
        ef efVar4 = this.binding;
        if (efVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        efVar4.f19759e.setPullRefreshEnabled(true);
        ef efVar5 = this.binding;
        if (efVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        efVar5.f19759e.setLoadingMoreEnabled(true);
        ef efVar6 = this.binding;
        if (efVar6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        efVar6.f19759e.setPreLoadCount(10);
        ef efVar7 = this.binding;
        if (efVar7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Button button = efVar7.f19756b.f24369f;
        Intrinsics.checkNotNullExpressionValue(button, "binding.failedLayoutMain.setNetwork");
        CommonExtKt.onClick(button, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.FindGameChoiceFragment$onCreateView$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                UtilsMy.I2(FindGameChoiceFragment.this.getContext());
            }
        });
        ef efVar8 = this.binding;
        if (efVar8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = efVar8.f19756b.f24368e;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.failedLayoutMain.relodingimag");
        CommonExtKt.onClick(imageView, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.FindGameChoiceFragment$onCreateView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                FindModlePrensenter prensenter = FindGameChoiceFragment.this.getPrensenter();
                FragmentActivity activity3 = FindGameChoiceFragment.this.getActivity();
                Intrinsics.checkNotNull(activity3);
                Intrinsics.checkNotNullExpressionValue(activity3, "activity!!");
                prensenter.loadFindChoiceData(activity3, (LuckHistoryrequest) objectRef.element);
            }
        });
        ef efVar9 = this.binding;
        if (efVar9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        efVar9.f19759e.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.findgame.FindGameChoiceFragment$onCreateView$3
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                ((LuckHistoryrequest) objectRef.element).setPage(FindGameChoiceFragment.this.getPage());
                FindModlePrensenter prensenter = FindGameChoiceFragment.this.getPrensenter();
                FragmentActivity activity3 = FindGameChoiceFragment.this.getActivity();
                Intrinsics.checkNotNull(activity3);
                Intrinsics.checkNotNullExpressionValue(activity3, "activity!!");
                prensenter.loadFindChoiceData(activity3, (LuckHistoryrequest) objectRef.element);
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                FindGameChoiceFragment.this.setPage(1);
                FindGameChoiceFragment.this.getBinding().f19759e.t1();
                ((LuckHistoryrequest) objectRef.element).setPage(FindGameChoiceFragment.this.getPage());
                FindModlePrensenter prensenter = FindGameChoiceFragment.this.getPrensenter();
                FragmentActivity activity3 = FindGameChoiceFragment.this.getActivity();
                Intrinsics.checkNotNull(activity3);
                Intrinsics.checkNotNullExpressionValue(activity3, "activity!!");
                prensenter.loadFindChoiceData(activity3, (LuckHistoryrequest) objectRef.element);
            }
        });
        ef efVar10 = this.binding;
        if (efVar10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return efVar10.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        c0.a().e(this);
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void onError(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        ef efVar = this.binding;
        if (efVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        efVar.f19759e.q1();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            CommonExtKt.toast(activity, message);
        }
        List<CommonListMainData> list = this.showDatalist;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
        }
        if (!(list == null || list.isEmpty())) {
            List<CommonListMainData> list2 = this.showDatalist;
            if (list2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
            }
            if (list2.size() > 0) {
                return;
            }
        }
        ef efVar2 = this.binding;
        if (efVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = efVar2.f19758d.f27058c;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
        linearLayout.setVisibility(8);
        ef efVar3 = this.binding;
        if (efVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout2 = efVar3.f19756b.f24367d;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
        linearLayout2.setVisibility(0);
        ef efVar4 = this.binding;
        if (efVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView = efVar4.f19759e;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.recycleView");
        xRecyclerView.setVisibility(8);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull l downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.downloadprensenter;
        if (basDownLoadActivityPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadprensenter");
        }
        basDownLoadActivityPresenter.onEventMainThread(downloadTaskEvent);
    }

    @Override // com.join.kotlin.presenter.view.FindHomeView
    public void onLoadDataSuccess(int i2, @NotNull FindChoiceResultData result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (i2 != this.page) {
            return;
        }
        if (i2 == 1) {
            List<CommonListMainData> list = this.showDatalist;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
            }
            list.clear();
            ef efVar = this.binding;
            if (efVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            efVar.f19759e.s1();
            List<FindChoiceBannerData> banner = result.getBanner();
            boolean z3 = false;
            if (!(banner == null || banner.isEmpty())) {
                FindChoiceBannerData choiceBannerData = result.getBanner().get(0);
                Intrinsics.checkNotNullExpressionValue(choiceBannerData, "choiceBannerData");
                CollectionBeanSubBusiness game_info = choiceBannerData.getGame_info();
                Intrinsics.checkNotNullExpressionValue(game_info, "choiceBannerData.game_info");
                game_info.set_from(142);
                CollectionBeanSubBusiness game_info2 = choiceBannerData.getGame_info();
                Intrinsics.checkNotNullExpressionValue(game_info2, "choiceBannerData.game_info");
                game_info2.set_from_type(142);
                BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.downloadprensenter;
                if (basDownLoadActivityPresenter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("downloadprensenter");
                }
                CollectionBeanSubBusiness game_info3 = choiceBannerData.getGame_info();
                Intrinsics.checkNotNullExpressionValue(game_info3, "choiceBannerData.game_info");
                basDownLoadActivityPresenter.updateDowState(game_info3);
                List<CommonListMainData> list2 = this.showDatalist;
                if (list2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
                }
                list2.add(new CommonListMainData(3, choiceBannerData, null, null, 12, null));
            }
            List<TagData> guess_you_like = result.getGuess_you_like();
            if (!((guess_you_like == null || guess_you_like.isEmpty()) ? true : true)) {
                List<CommonListMainData> list3 = this.showDatalist;
                if (list3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
                }
                list3.add(new CommonListMainData(1, "猜你喜欢", null, null, 12, null));
                List<CommonListMainData> list4 = this.showDatalist;
                if (list4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
                }
                List<TagData> guess_you_like2 = result.getGuess_you_like();
                Intrinsics.checkNotNullExpressionValue(guess_you_like2, "result.guess_you_like");
                list4.add(new CommonListMainData(4, guess_you_like2, null, null, 12, null));
            }
        }
        for (FindChoiceColloctionListData item : result.getCollection_list()) {
            List<CommonListMainData> list5 = this.showDatalist;
            if (list5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
            }
            Intrinsics.checkNotNullExpressionValue(item, "item");
            list5.add(new CommonListMainData(1, item, null, null, 12, null));
            List<CollectionBeanSub> game_list = item.getGame_list();
            Intrinsics.checkNotNullExpressionValue(game_list, "item.game_list");
            for (CollectionBeanSub it2 : game_list) {
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                it2.set_from(140);
                it2.set_from_type(140);
            }
            List<CommonListMainData> list6 = this.showDatalist;
            if (list6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
            }
            List<CollectionBeanSub> game_list2 = item.getGame_list();
            Intrinsics.checkNotNullExpressionValue(game_list2, "item.game_list");
            list6.add(new CommonListMainData(5, game_list2, null, null, 12, null));
        }
        if (result.getCollection_list().size() > 0) {
            this.page++;
            ef efVar2 = this.binding;
            if (efVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            efVar2.f19759e.q1();
        } else {
            ef efVar3 = this.binding;
            if (efVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            efVar3.f19759e.setNoMore();
        }
        FindHomeChoiceAdapter findHomeChoiceAdapter = this.adapter;
        if (findHomeChoiceAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        findHomeChoiceAdapter.notifyDataSetChanged();
    }

    public final void setAdapter(@NotNull FindHomeChoiceAdapter findHomeChoiceAdapter) {
        Intrinsics.checkNotNullParameter(findHomeChoiceAdapter, "<set-?>");
        this.adapter = findHomeChoiceAdapter;
    }

    public final void setBinding(@NotNull ef efVar) {
        Intrinsics.checkNotNullParameter(efVar, "<set-?>");
        this.binding = efVar;
    }

    public final void setDownloadprensenter(@NotNull BasDownLoadActivityPresenter basDownLoadActivityPresenter) {
        Intrinsics.checkNotNullParameter(basDownLoadActivityPresenter, "<set-?>");
        this.downloadprensenter = basDownLoadActivityPresenter;
    }

    public final void setPage(int i2) {
        this.page = i2;
    }

    public final void setPrensenter(@NotNull FindModlePrensenter findModlePrensenter) {
        Intrinsics.checkNotNullParameter(findModlePrensenter, "<set-?>");
        this.prensenter = findModlePrensenter;
    }

    public final void setRequestArgs(@NotNull LuckHistoryrequest luckHistoryrequest) {
        Intrinsics.checkNotNullParameter(luckHistoryrequest, "<set-?>");
        this.requestArgs = luckHistoryrequest;
    }

    public final void setShowDatalist(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showDatalist = list;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void showLoding() {
        ef efVar = this.binding;
        if (efVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = efVar.f19758d.f27058c;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
        linearLayout.setVisibility(0);
        ef efVar2 = this.binding;
        if (efVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout2 = efVar2.f19756b.f24367d;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
        linearLayout2.setVisibility(8);
        ef efVar3 = this.binding;
        if (efVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView = efVar3.f19759e;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.recycleView");
        xRecyclerView.setVisibility(8);
    }
}
