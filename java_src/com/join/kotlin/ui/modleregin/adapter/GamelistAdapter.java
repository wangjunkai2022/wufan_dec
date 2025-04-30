package com.join.kotlin.ui.modleregin.adapter;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.d4;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.psk.kotlin.util.CommonListMainData;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GamelistAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/psk/kotlin/util/CommonListMainData;", "Lcom/join/android/app/mgsim/wufun/databinding/d4;", "", "viewType", "getLayoutResId", "binding", "item", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "onBindItem", "onBindItemPayloads", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class GamelistAdapter extends BaseDataBindingAdapter<CommonListMainData, d4> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GamelistAdapter(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int i2) {
        return R.layout.bt_listitem;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull d4 binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        Object any = item.getAny();
        Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
        BtGameListItem btGameListItem = (BtGameListItem) any;
        binding.setVariable(3, btGameListItem);
        if (btGameListItem.getAppitemShow() == null) {
            btGameListItem.setAppitemShow(new AppListItemShowBean(btGameListItem.getGameInfo(), false));
            Unit unit = Unit.INSTANCE;
        }
        AppListItemShowBean appitemShow = btGameListItem.getAppitemShow();
        if (appitemShow != null) {
            appitemShow.updateItemNormal(btGameListItem.getGameInfo());
        }
        binding.setVariable(18, btGameListItem.getAppitemShow());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull d4 binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        Object any = item.getAny();
        Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
        BtGameListItem btGameListItem = (BtGameListItem) any;
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
    }
}
