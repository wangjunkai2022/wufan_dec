package com.join.kotlin.presenter;

import com.psk.kotlin.base.presenter.view.BaseView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BasePresenter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\t\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\u0004\u001a\u00028\u00008\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/join/kotlin/presenter/BasePresenter;", "Lcom/psk/kotlin/base/presenter/view/BaseView;", "T", "", "mView", "Lcom/psk/kotlin/base/presenter/view/BaseView;", "getMView", "()Lcom/psk/kotlin/base/presenter/view/BaseView;", "setMView", "(Lcom/psk/kotlin/base/presenter/view/BaseView;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public class BasePresenter<T extends BaseView> {
    public T mView;

    @NotNull
    public final T getMView() {
        T t3 = this.mView;
        if (t3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mView");
        }
        return t3;
    }

    public final void setMView(@NotNull T t3) {
        Intrinsics.checkNotNullParameter(t3, "<set-?>");
        this.mView = t3;
    }
}
