package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewBindingFresscoImage.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u0006"}, d2 = {"Lcom/facebook/drawee/view/SimpleDraweeView;", "simpleDraweeView", "", "imageUrl", "", "simpleDraweeViewBinding", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ViewBindingFresscoImageKt {
    @BindingAdapter(requireAll = false, value = {"loadImage"})
    public static final void simpleDraweeViewBinding(@NotNull SimpleDraweeView simpleDraweeView, @NotNull String imageUrl) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "simpleDraweeView");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        MyImageLoader.d(simpleDraweeView, R.drawable.main_normal_icon, imageUrl);
    }
}
