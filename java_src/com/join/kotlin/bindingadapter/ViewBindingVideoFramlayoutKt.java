package com.join.kotlin.bindingadapter;

import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.BindingAdapter;
import com.facebook.drawee.generic.a;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.c;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.t0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewBindingVideoFramlayout.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a*\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007\u001a6\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007¨\u0006\u0011"}, d2 = {"Landroid/widget/FrameLayout;", "frameLayout", "Lcom/join/kotlin/ui/modleregin/modle/VideoModle;", "videoData", "Lcom/join/android/app/component/video/c;", "videoHelper", "Lcom/join/mgps/Util/IntentDateBean;", "intentData", "", "loadVideoUrl", "Lcom/facebook/drawee/view/SimpleDraweeView;", "simpleDraweeView", "", "setVideoTag", "", "loadUrl", "setvideoTag", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ViewBindingVideoFramlayoutKt {
    @BindingAdapter(requireAll = false, value = {"videoData", "videoHelper", "intentData"})
    public static final void loadVideoUrl(@NotNull FrameLayout frameLayout, @NotNull final VideoModle videoData, @NotNull final c videoHelper, @Nullable IntentDateBean intentDateBean) {
        Intrinsics.checkNotNullParameter(frameLayout, "frameLayout");
        Intrinsics.checkNotNullParameter(videoData, "videoData");
        Intrinsics.checkNotNullParameter(videoHelper, "videoHelper");
        String videoUrl = videoData.getVideoUrl();
        if (videoUrl == null || videoUrl.length() == 0) {
            return;
        }
        videoHelper.d(videoData.getPosition(), new c.k(videoData.getPosition(), videoData.getVideoUrl(), videoData.getVideoCover(), intentDateBean), new boolean[0]);
        videoHelper.K(videoData.getPosition(), frameLayout);
        if (intentDateBean == null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.bindingadapter.ViewBindingVideoFramlayoutKt$loadVideoUrl$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.this.y(videoData.getPosition());
                }
            });
        }
        t0.d("MyListViewVideoHelper", "loadVideoUrl position= " + videoData.getPosition());
    }

    @BindingAdapter(requireAll = false, value = {"setVideoTag", "videoHelper", "intentData", "loadCover"})
    public static final void setvideoTag(@NotNull final SimpleDraweeView simpleDraweeView, int i2, @Nullable c cVar, @Nullable final IntentDateBean intentDateBean, @Nullable String str) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "simpleDraweeView");
        a hierarchy = simpleDraweeView.getHierarchy();
        Intrinsics.checkNotNullExpressionValue(hierarchy, "simpleDraweeView.hierarchy");
        MyImageLoader.i(simpleDraweeView, str, hierarchy.l());
        t0.d("MyListViewVideoHelper", "setvideoTag setVideoTag= " + i2);
        simpleDraweeView.setTag(Integer.valueOf(i2));
        if (cVar != null) {
            cVar.L(i2, simpleDraweeView);
        }
        if (intentDateBean != null) {
            simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.bindingadapter.ViewBindingVideoFramlayoutKt$setvideoTag$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IntentUtil.getInstance().intentActivity(SimpleDraweeView.this.getContext(), intentDateBean);
                }
            });
        }
    }
}
