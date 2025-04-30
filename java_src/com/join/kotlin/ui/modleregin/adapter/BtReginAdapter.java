package com.join.kotlin.ui.modleregin.adapter;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.b4;
import com.join.android.app.mgsim.wufun.databinding.g40;
import com.join.android.app.mgsim.wufun.databinding.o4;
import com.join.android.app.mgsim.wufun.databinding.x8;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.ui.modleregin.GameListFragment;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.TitleModle;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.x;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BtReginAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0016R\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/psk/kotlin/util/CommonListMainData;", "Landroidx/databinding/ViewDataBinding;", "", "viewType", "getLayoutResId", "binding", "item", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "onBindItem", "onBindItemPayloads", "position", "getItemViewType", "Lcom/join/android/app/component/video/c;", "videoHelper", "Lcom/join/android/app/component/video/c;", "getVideoHelper", "()Lcom/join/android/app/component/video/c;", "Landroidx/appcompat/app/AppCompatActivity;", "context", "Landroidx/appcompat/app/AppCompatActivity;", "getContext", "()Landroidx/appcompat/app/AppCompatActivity;", "setContext", "(Landroidx/appcompat/app/AppCompatActivity;)V", "<init>", "(Landroidx/appcompat/app/AppCompatActivity;Lcom/join/android/app/component/video/c;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BtReginAdapter extends BaseDataBindingAdapter<CommonListMainData, ViewDataBinding> {
    @NotNull
    private AppCompatActivity context;
    @NotNull
    private final c videoHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BtReginAdapter(@NotNull AppCompatActivity context, @NotNull c videoHelper) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(videoHelper, "videoHelper");
        this.context = context;
        this.videoHelper = videoHelper;
    }

    @NotNull
    public final AppCompatActivity getContext() {
        return this.context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        List<CommonListMainData> listDatas = getListDatas();
        if (listDatas == null || listDatas.isEmpty()) {
            return 999;
        }
        List<CommonListMainData> listDatas2 = getListDatas();
        Intrinsics.checkNotNull(listDatas2);
        return listDatas2.get(i2).getType();
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int i2) {
        switch (i2) {
            case 1:
                return R.layout.databinding_title_layout;
            case 2:
                return R.layout.bt_listitem;
            case 3:
            default:
                return R.layout.databinding_line_layout;
            case 4:
                return R.layout.bt_video_item_layout;
            case 5:
                return R.layout.bt_tag_recycview_layout;
            case 6:
                return R.layout.bt_viewpager_layout;
            case 7:
                return R.layout.bt_hrecyclerview_gamelist_layout;
            case 8:
                return R.layout.datab_bt_hviewlist;
        }
    }

    @NotNull
    public final c getVideoHelper() {
        return this.videoHelper;
    }

    public final void setContext(@NotNull AppCompatActivity appCompatActivity) {
        Intrinsics.checkNotNullParameter(appCompatActivity, "<set-?>");
        this.context = appCompatActivity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r13v2, types: [T, com.join.kotlin.ui.modleregin.modle.TitleModle] */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull final ViewDataBinding binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder viewHolder) {
        String timeShow;
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        switch (item.getType()) {
            case 1:
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Object any = item.getAny();
                Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.TitleModle");
                ?? r13 = (TitleModle) any;
                objectRef.element = r13;
                binding.setVariable(9, (TitleModle) r13);
                binding.setVariable(7, new View.OnClickListener() { // from class: com.join.kotlin.ui.modleregin.adapter.BtReginAdapter$onBindItem$1
                    @Override // android.view.View.OnClickListener
                    public void onClick(@Nullable View view) {
                        IntentUtil intentUtil = IntentUtil.getInstance();
                        View root = ViewDataBinding.this.getRoot();
                        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
                        intentUtil.intentActivity(root.getContext(), ((TitleModle) objectRef.element).getIntentDateBean());
                    }
                });
                binding.setVariable(16, ((TitleModle) objectRef.element).getShowWhiteBack());
                return;
            case 2:
                Object any2 = item.getAny();
                Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
                BtGameListItem btGameListItem = (BtGameListItem) any2;
                binding.setVariable(3, btGameListItem);
                btGameListItem.getGameInfo().setReMarks(item.getReMarks());
                if (btGameListItem.getAppitemShow() == null) {
                    btGameListItem.setAppitemShow(new AppListItemShowBean(btGameListItem.getGameInfo(), false));
                    Unit unit = Unit.INSTANCE;
                }
                AppListItemShowBean appitemShow = btGameListItem.getAppitemShow();
                if (appitemShow != null) {
                    appitemShow.updateItemNormal(btGameListItem.getGameInfo());
                }
                binding.setVariable(18, btGameListItem.getAppitemShow());
                return;
            case 3:
            default:
                return;
            case 4:
                Object any3 = item.getAny();
                Objects.requireNonNull(any3, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean");
                MustplayItemBean mustplayItemBean = (MustplayItemBean) any3;
                mustplayItemBean.getGameinfo().setReMarks(item.getReMarks());
                binding.setVariable(26, this.videoHelper);
                IntentDateBean intentDataBean = mustplayItemBean.getGameinfo().getIntentDataBean();
                Intrinsics.checkNotNullExpressionValue(intentDataBean, "intentDataBean");
                ExtBean extBean = intentDataBean.getExtBean();
                Intrinsics.checkNotNullExpressionValue(extBean, "extBean");
                extBean.setReMarks(item.getReMarks());
                intentDataBean.setExtBean(extBean);
                binding.setVariable(9, mustplayItemBean);
                binding.setVariable(25, new VideoModle(mustplayItemBean.getPosition(), mustplayItemBean.getGame_info_top_video_url(), intentDataBean, mustplayItemBean.getVideoCover()));
                binding.setVariable(16, mustplayItemBean.getShowWhiteBack());
                return;
            case 5:
                Object any4 = item.getAny();
                Objects.requireNonNull(any4, "null cannot be cast to non-null type kotlin.collections.List<com.join.mgps.dto.BannerBean>");
                binding.setVariable(22, (List) any4);
                HTagAdapter hTagAdapter = new HTagAdapter(this.context);
                hTagAdapter.setOnItemClickListener(new Function3<Integer, BannerBean, Integer, Unit>() { // from class: com.join.kotlin.ui.modleregin.adapter.BtReginAdapter$onBindItem$4
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, BannerBean bannerBean, Integer num2) {
                        invoke(num.intValue(), bannerBean, num2.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i2, @NotNull BannerBean item2, int i4) {
                        Intrinsics.checkNotNullParameter(item2, "item");
                        IntentUtil.getInstance().intentActivity(BtReginAdapter.this.getContext(), item2.getIntentDataBean());
                    }
                });
                binding.setVariable(1, hTagAdapter);
                return;
            case 6:
                o4 o4Var = (o4) binding;
                Object any5 = item.getAny();
                Objects.requireNonNull(any5, "null cannot be cast to non-null type kotlin.collections.List<com.join.kotlin.ui.modleregin.modle.BtOnlineGame>");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (BtOnlineGame btOnlineGame : (List) any5) {
                    long onlineTime = btOnlineGame.getOnlineTime() * 1000;
                    List<CollectionBeanSub> gameEntityList = btOnlineGame.getGameEntityList();
                    if (!(gameEntityList == null || gameEntityList.isEmpty())) {
                        if (x.t(onlineTime)) {
                            timeShow = "今天";
                        } else {
                            long j4 = 86400000;
                            if (x.t(onlineTime - j4)) {
                                timeShow = "明天";
                            } else {
                                timeShow = x.t(j4 + onlineTime) ? "昨天" : x.x(onlineTime, "MM-dd");
                            }
                        }
                        Intrinsics.checkNotNullExpressionValue(timeShow, "timeShow");
                        arrayList.add(timeShow);
                        GameListFragment gameListFragment = new GameListFragment();
                        Bundle bundle = new Bundle();
                        bundle.putLong("time", btOnlineGame.getOnlineTime());
                        gameListFragment.setArguments(bundle);
                        arrayList2.add(gameListFragment);
                    }
                }
                binding.setVariable(11, this.context.getSupportFragmentManager());
                binding.setVariable(24, arrayList);
                binding.setVariable(12, arrayList2);
                o4 o4Var2 = (o4) binding;
                binding.setVariable(28, o4Var2.F);
                o4Var2.F.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.modleregin.adapter.BtReginAdapter$onBindItem$6
                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageScrollStateChanged(int i2) {
                    }

                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageScrolled(int i2, float f4, int i4) {
                    }

                    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                    public void onPageSelected(int i2) {
                    }
                });
                return;
            case 7:
                Object any6 = item.getAny();
                Objects.requireNonNull(any6, "null cannot be cast to non-null type kotlin.collections.List<com.join.mgps.business.CollectionBeanSubBusiness>");
                binding.setVariable(22, (List) any6);
                b4 b4Var = (b4) binding;
                RecyclerView recyclerView = b4Var.E;
                Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.recyclerView");
                if (recyclerView.getAdapter() == null) {
                    HGamelistAdapter hGamelistAdapter = new HGamelistAdapter(this.context);
                    hGamelistAdapter.setOnItemClickListener(new Function3<Integer, CollectionBeanSubBusiness, Integer, Unit>() { // from class: com.join.kotlin.ui.modleregin.adapter.BtReginAdapter$onBindItem$3
                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num, CollectionBeanSubBusiness collectionBeanSubBusiness, Integer num2) {
                            invoke(num.intValue(), collectionBeanSubBusiness, num2.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i2, @NotNull CollectionBeanSubBusiness item2, int i4) {
                            Intrinsics.checkNotNullParameter(item2, "item");
                            IntentUtil.getInstance().intentActivity(BtReginAdapter.this.getContext(), item2.getIntentDataBean());
                        }
                    });
                    binding.setVariable(1, hGamelistAdapter);
                    return;
                }
                RecyclerView recyclerView2 = b4Var.E;
                Intrinsics.checkNotNullExpressionValue(recyclerView2, "binding.recyclerView");
                RecyclerView.Adapter adapter = recyclerView2.getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                    return;
                }
                return;
            case 8:
                x8 x8Var = (x8) binding;
                Object any7 = item.getAny();
                Objects.requireNonNull(any7, "null cannot be cast to non-null type kotlin.collections.List<com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean>");
                BtTaglistAdapter btTaglistAdapter = new BtTaglistAdapter(this.context);
                binding.setVariable(1, btTaglistAdapter);
                binding.setVariable(22, (List) any7);
                btTaglistAdapter.setOnItemClickListener(new Function3<Integer, BtTagSelecterBean, Integer, Unit>() { // from class: com.join.kotlin.ui.modleregin.adapter.BtReginAdapter$onBindItem$7
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, BtTagSelecterBean btTagSelecterBean, Integer num2) {
                        invoke(num.intValue(), btTagSelecterBean, num2.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i2, @NotNull BtTagSelecterBean item2, int i4) {
                        Intrinsics.checkNotNullParameter(item2, "item");
                        c0.a().c(item2);
                    }
                });
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull ViewDataBinding binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        int type = item.getType();
        if (type == 2) {
            Object any = item.getAny();
            Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
            BtGameListItem btGameListItem = (BtGameListItem) any;
            btGameListItem.getGameInfo().setReMarks(item.getReMarks());
            binding.setVariable(3, btGameListItem);
            if (btGameListItem.getAppitemShow() == null) {
                btGameListItem.setAppitemShow(new AppListItemShowBean(btGameListItem.getGameInfo(), true));
                Unit unit = Unit.INSTANCE;
            }
            AppListItemShowBean appitemShow = btGameListItem.getAppitemShow();
            if (appitemShow != null) {
                DownloadTask downloadTask = btGameListItem.getGameInfo().getDownloadTask();
                Intrinsics.checkNotNullExpressionValue(downloadTask, "data.gameInfo.downloadTask");
                appitemShow.updateItemProgress(downloadTask);
            }
            binding.setVariable(18, btGameListItem.getAppitemShow());
        } else if (type != 4) {
        } else {
            g40 g40Var = (g40) binding;
            Object any2 = item.getAny();
            Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean");
            MustplayItemBean mustplayItemBean = (MustplayItemBean) any2;
            mustplayItemBean.getGameinfo().setReMarks(item.getReMarks());
            g40Var.i1(mustplayItemBean);
            IntentDateBean intentDataBean = mustplayItemBean.getGameinfo().getIntentDataBean();
            Intrinsics.checkNotNullExpressionValue(intentDataBean, "intentDataBean");
            ExtBean extBean = intentDataBean.getExtBean();
            Intrinsics.checkNotNullExpressionValue(extBean, "extBean");
            extBean.setReMarks(item.getReMarks());
            intentDataBean.setExtBean(extBean);
            g40Var.j1(new VideoModle(mustplayItemBean.getPosition(), mustplayItemBean.getVideoUrl(), intentDataBean, mustplayItemBean.getVideoCover()));
            g40Var.k1(this.videoHelper);
        }
    }
}
