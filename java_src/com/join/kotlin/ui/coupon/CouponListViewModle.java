package com.join.kotlin.ui.coupon;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.mgps.dto.BTGameCouponBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CouponListViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponListViewModle;", "Landroidx/lifecycle/ViewModel;", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/BTGameCouponBean;", "item", "Landroidx/lifecycle/MutableLiveData;", "getItem", "()Landroidx/lifecycle/MutableLiveData;", "setItem", "(Landroidx/lifecycle/MutableLiveData;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CouponListViewModle extends ViewModel {
    @NotNull
    private MutableLiveData<BTGameCouponBean> item = new MutableLiveData<>();

    @NotNull
    public final MutableLiveData<BTGameCouponBean> getItem() {
        return this.item;
    }

    public final void setItem(@NotNull MutableLiveData<BTGameCouponBean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.item = mutableLiveData;
    }
}
