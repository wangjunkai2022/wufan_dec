package com.join.kotlin.ui.coupon;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.dto.BTGameCouponBean;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CouponViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R8\u0010\n\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\t0\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u000b\u001a\u0004\b\u0019\u0010\r\"\u0004\b\u001a\u0010\u000fR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponViewModle;", "Landroidx/lifecycle/ViewModel;", "", "hasNet", "", "updateShowLoadUI", "Landroidx/lifecycle/MutableLiveData;", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/BTGameCouponBean;", "Lkotlin/collections/ArrayList;", "datas", "Landroidx/lifecycle/MutableLiveData;", "getDatas", "()Landroidx/lifecycle/MutableLiveData;", "setDatas", "(Landroidx/lifecycle/MutableLiveData;)V", "", "title", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "Lcom/join/kotlin/domain/common/LoadBindindData;", "loadDataBinding", "getLoadDataBinding", "setLoadDataBinding", "Lcom/join/kotlin/domain/request/CouponRequest;", "request", "Lcom/join/kotlin/domain/request/CouponRequest;", "getRequest", "()Lcom/join/kotlin/domain/request/CouponRequest;", "setRequest", "(Lcom/join/kotlin/domain/request/CouponRequest;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CouponViewModle extends ViewModel {
    @NotNull
    private MutableLiveData<LoadBindindData> loadDataBinding;
    @NotNull
    private MutableLiveData<ArrayList<BTGameCouponBean>> datas = new MutableLiveData<>();
    @NotNull
    private String title = "代金券";
    @NotNull
    private com.join.kotlin.domain.request.CouponRequest request = new com.join.kotlin.domain.request.CouponRequest();

    public CouponViewModle() {
        MutableLiveData<LoadBindindData> mutableLiveData = new MutableLiveData<>();
        this.loadDataBinding = mutableLiveData;
        mutableLiveData.setValue(new LoadBindindData(2));
    }

    @NotNull
    public final MutableLiveData<ArrayList<BTGameCouponBean>> getDatas() {
        return this.datas;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadDataBinding() {
        return this.loadDataBinding;
    }

    @NotNull
    public final com.join.kotlin.domain.request.CouponRequest getRequest() {
        return this.request;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setDatas(@NotNull MutableLiveData<ArrayList<BTGameCouponBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.datas = mutableLiveData;
    }

    public final void setLoadDataBinding(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadDataBinding = mutableLiveData;
    }

    public final void setRequest(@NotNull com.join.kotlin.domain.request.CouponRequest couponRequest) {
        Intrinsics.checkNotNullParameter(couponRequest, "<set-?>");
        this.request = couponRequest;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void updateShowLoadUI(boolean z3) {
        if (this.datas.getValue() == null) {
            this.loadDataBinding.setValue(new LoadBindindData(2));
            return;
        }
        ArrayList<BTGameCouponBean> value = this.datas.getValue();
        Intrinsics.checkNotNull(value);
        if (value.size() != 0) {
            this.loadDataBinding.setValue(new LoadBindindData(1));
        } else if (z3) {
            this.loadDataBinding.setValue(new LoadBindindData(4));
        } else {
            this.loadDataBinding.setValue(new LoadBindindData(3));
        }
    }
}
