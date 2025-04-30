package com.join.kotlin.presenter.view;

import com.join.kotlin.ui.findgame.data.CategoryListMain;
import com.psk.kotlin.base.presenter.view.BaseView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CategoryView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"Lcom/join/kotlin/presenter/view/CategoryView;", "Lcom/psk/kotlin/base/presenter/view/BaseView;", "", "page", "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;", "result", "", "onLoadDataSuccess", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public interface CategoryView extends BaseView {

    /* compiled from: CategoryView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void onLoadDataSuccess(@NotNull CategoryView categoryView, int i2, @NotNull CategoryListMain result) {
            Intrinsics.checkNotNullParameter(result, "result");
        }
    }

    void onLoadDataSuccess(int i2, @NotNull CategoryListMain categoryListMain);
}
