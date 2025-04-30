package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewNormal;
import com.join.mgps.customview.DownloadViewStroke;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewBindingDownloadView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u001a \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\t"}, d2 = {"Lcom/join/mgps/customview/DownloadViewStroke;", "downloadView", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "collectionBeanSubBusiness", "", "listStatus", "", "downloadVIewBinding", "Lcom/join/mgps/customview/DownloadViewNormal;", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ViewBindingDownloadViewKt {
    @BindingAdapter(requireAll = false, value = {"initData", "listStatus"})
    public static final void downloadVIewBinding(@NotNull DownloadViewStroke downloadView, @NotNull CollectionBeanSubBusiness collectionBeanSubBusiness, int i2) {
        Intrinsics.checkNotNullParameter(downloadView, "downloadView");
        Intrinsics.checkNotNullParameter(collectionBeanSubBusiness, "collectionBeanSubBusiness");
        downloadView.a(collectionBeanSubBusiness.getDownloadTask(), collectionBeanSubBusiness);
    }

    @BindingAdapter(requireAll = false, value = {"initData", "listStatus"})
    public static final void downloadVIewBinding(@NotNull DownloadViewNormal downloadView, @NotNull CollectionBeanSubBusiness collectionBeanSubBusiness, int i2) {
        Intrinsics.checkNotNullParameter(downloadView, "downloadView");
        Intrinsics.checkNotNullParameter(collectionBeanSubBusiness, "collectionBeanSubBusiness");
        downloadView.a(collectionBeanSubBusiness.getDownloadTask(), collectionBeanSubBusiness);
    }
}
