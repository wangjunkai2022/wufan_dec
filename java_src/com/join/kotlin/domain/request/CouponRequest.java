package com.join.kotlin.domain.request;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.ui.coupon.CouponListMainData;
import com.join.mgps.dto.BTGameCouponBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: CouponRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\u0007\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\b\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004R.\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n0\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R0\u0010\u0013\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\n\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R.\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\n0\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\f\u001a\u0004\b\u001a\u0010\u000e\"\u0004\b\u001b\u0010\u0010R0\u0010\u001c\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018¨\u0006!"}, d2 = {"Lcom/join/kotlin/domain/request/CouponRequest;", "", "", "cancelGetCoupon", "Lcom/join/mgps/dto/RequestModel;", "Lcom/join/kotlin/ui/coupon/CouponRequest;", "request", "requestCouponGet", "requestCouponListData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ResponseModel;", "resultData", "Landroidx/lifecycle/MutableLiveData;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "Lretrofit2/Call;", "Lcom/join/kotlin/ui/coupon/CouponListMainData;", "callCouponList", "Lretrofit2/Call;", "getCallCouponList", "()Lretrofit2/Call;", "setCallCouponList", "(Lretrofit2/Call;)V", "resultCouponListData", "getResultCouponListData", "setResultCouponListData", "callCoupon", "getCallCoupon", "setCallCoupon", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CouponRequest {
    @Nullable
    private Call<ResponseModel<Object>> callCoupon;
    @Nullable
    private Call<ResponseModel<CouponListMainData>> callCouponList;
    @NotNull
    private MutableLiveData<ResponseModel<Object>> resultData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<ResponseModel<CouponListMainData>> resultCouponListData = new MutableLiveData<>();

    private final void cancelGetCoupon() {
        Call<ResponseModel<Object>> call = this.callCoupon;
        if (call != null) {
            Intrinsics.checkNotNull(call);
            if (call.isCanceled()) {
                Call<ResponseModel<Object>> call2 = this.callCoupon;
                Intrinsics.checkNotNull(call2);
                call2.cancel();
            }
        }
    }

    @Nullable
    public final Call<ResponseModel<Object>> getCallCoupon() {
        return this.callCoupon;
    }

    @Nullable
    public final Call<ResponseModel<CouponListMainData>> getCallCouponList() {
        return this.callCouponList;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<CouponListMainData>> getResultCouponListData() {
        return this.resultCouponListData;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<Object>> getResultData() {
        return this.resultData;
    }

    public final void requestCouponGet(@NotNull final RequestModel<com.join.kotlin.ui.coupon.CouponRequest> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<Object>> E0 = L.J().E0(request.makeSign());
        this.callCoupon = E0;
        if (E0 != null) {
            E0.enqueue(new Callback<ResponseModel<Object>>() { // from class: com.join.kotlin.domain.request.CouponRequest$requestCouponGet$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<Object>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<Object> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    CouponRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<Object>> call, @NotNull Response<ResponseModel<Object>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        ResponseModel<Object> body = response.body();
                        if (body != null) {
                            body.setData(request.getArgs());
                        }
                        CouponRequest.this.getResultData().setValue(body);
                        return;
                    }
                    ResponseModel<Object> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    CouponRequest.this.getResultData().setValue(responseModel);
                }
            });
        }
    }

    public final void requestCouponListData(@NotNull RequestModel<com.join.kotlin.ui.coupon.CouponRequest> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<CouponListMainData>> p02 = L.J().p0(request.makeSign());
        this.callCouponList = p02;
        if (p02 != null) {
            p02.enqueue(new Callback<ResponseModel<CouponListMainData>>() { // from class: com.join.kotlin.domain.request.CouponRequest$requestCouponListData$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<CouponListMainData>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<CouponListMainData> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    CouponRequest.this.getResultCouponListData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<CouponListMainData>> call, @NotNull Response<ResponseModel<CouponListMainData>> response) {
                    boolean contains$default;
                    CouponListMainData data;
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        ResponseModel<CouponListMainData> body = response.body();
                        ArrayList<BTGameCouponBean> game_coupon_for_bt_game = (body == null || (data = body.getData()) == null) ? null : data.getGame_coupon_for_bt_game();
                        if (game_coupon_for_bt_game != null) {
                            for (BTGameCouponBean it2 : game_coupon_for_bt_game) {
                                Intrinsics.checkNotNullExpressionValue(it2, "it");
                                String usable_games = it2.getUsable_games();
                                Intrinsics.checkNotNullExpressionValue(usable_games, "it.usable_games");
                                contains$default = StringsKt__StringsKt.contains$default((CharSequence) usable_games, (CharSequence) ",", false, 2, (Object) null);
                                if (contains$default) {
                                    it2.setUsable_gamesShow("仅限部分游戏使用");
                                    it2.setUsable_games("仅限" + it2.getUsable_games() + "使用");
                                } else {
                                    it2.setUsable_gamesShow("仅限《" + it2.getUsable_games() + "》使用");
                                    it2.setUsable_games("仅限《" + it2.getUsable_games() + "》使用");
                                }
                            }
                        }
                        CouponRequest.this.getResultCouponListData().setValue(body);
                        return;
                    }
                    ResponseModel<CouponListMainData> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    CouponRequest.this.getResultCouponListData().setValue(responseModel);
                }
            });
        }
    }

    public final void setCallCoupon(@Nullable Call<ResponseModel<Object>> call) {
        this.callCoupon = call;
    }

    public final void setCallCouponList(@Nullable Call<ResponseModel<CouponListMainData>> call) {
        this.callCouponList = call;
    }

    public final void setResultCouponListData(@NotNull MutableLiveData<ResponseModel<CouponListMainData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultCouponListData = mutableLiveData;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<Object>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }
}
