package com.join.kotlin.ui.coupon;

import com.join.mgps.dto.BTGameCouponBean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClickProxy.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0006\u001a\u00020\u0004H&J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¨\u0006\b"}, d2 = {"Lcom/join/kotlin/ui/coupon/ClickProxy;", "", "Lcom/join/mgps/dto/BTGameCouponBean;", "data", "", "onClickGet", "onClickBack", "onClickMore", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public interface ClickProxy {
    void onClickBack();

    void onClickGet(@NotNull BTGameCouponBean bTGameCouponBean);

    void onClickMore(@NotNull BTGameCouponBean bTGameCouponBean);
}
