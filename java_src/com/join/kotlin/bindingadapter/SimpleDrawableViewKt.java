package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import com.facebook.drawee.generic.a;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SimpleDrawableView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a,\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/drawee/view/SimpleDraweeView;", "simpleDraweeView", "", "loadUrl", "loadGif", "", "defaultId", "", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class SimpleDrawableViewKt {
    @BindingAdapter(requireAll = false, value = {"loadUrl", "loadGif", "defaultId"})
    public static final void loadUrl(@NotNull SimpleDraweeView simpleDraweeView, @Nullable String str, @Nullable String str2, int i2) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "simpleDraweeView");
        if (!(str2 == null || str2.length() == 0)) {
            MyImageLoader.n(simpleDraweeView, str2);
        } else if (i2 == 0) {
            a hierarchy = simpleDraweeView.getHierarchy();
            Intrinsics.checkNotNullExpressionValue(hierarchy, "simpleDraweeView.hierarchy");
            MyImageLoader.i(simpleDraweeView, str, hierarchy.l());
        } else {
            a hierarchy2 = simpleDraweeView.getHierarchy();
            Intrinsics.checkNotNullExpressionValue(hierarchy2, "simpleDraweeView.hierarchy");
            MyImageLoader.e(simpleDraweeView, i2, str, hierarchy2.l());
        }
    }
}
