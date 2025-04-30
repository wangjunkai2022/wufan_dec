package com.join.kotlin.ui.modleregin.adapter;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.g40;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MustpalyAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014R\u0019\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;", "Lcom/join/android/app/mgsim/wufun/databinding/g40;", "", "viewType", "getLayoutResId", "binding", "item", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "onBindItem", "onBindItemPayloads", "Lcom/join/android/app/component/video/c;", "videoHelper", "Lcom/join/android/app/component/video/c;", "getVideoHelper", "()Lcom/join/android/app/component/video/c;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class MustpalyAdapter extends BaseDataBindingAdapter<MustplayItemBean, g40> {
    @NotNull
    private final c videoHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MustpalyAdapter(@NotNull Context context, @NotNull c videoHelper) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(videoHelper, "videoHelper");
        this.videoHelper = videoHelper;
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int i2) {
        return R.layout.mustplay_item_layout;
    }

    @NotNull
    public final c getVideoHelper() {
        return this.videoHelper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull g40 binding, @NotNull MustplayItemBean item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        binding.i1(item);
        binding.j1(new VideoModle(item.getPosition(), item.getVideoUrl(), item.getGameinfo().getIntentDataBean(), item.getVideoCover()));
        binding.k1(this.videoHelper);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull g40 binding, @NotNull MustplayItemBean item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        binding.i1(item);
        binding.k1(this.videoHelper);
        binding.j1(new VideoModle(item.getPosition(), item.getVideoUrl(), item.getGameinfo().getIntentDataBean(), item.getVideoCover()));
    }
}
