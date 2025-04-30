package com.join.kotlin.ui.userrecom;

import androidx.lifecycle.MutableLiveData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: UserRecomRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002R6\u0010\u000b\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R4\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b0\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/ui/userrecom/UserRecomRequest;", "", "Lcom/join/mgps/dto/RequestModel;", "Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;", "request", "", "getUserRecomDatas", "Lretrofit2/Call;", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "Landroidx/lifecycle/MutableLiveData;", "resultData", "Landroidx/lifecycle/MutableLiveData;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class UserRecomRequest {
    @Nullable
    private Call<ResponseModel<List<CollectionBeanSub>>> result;
    @NotNull
    private MutableLiveData<ResponseModel<List<CollectionBeanSub>>> resultData = new MutableLiveData<>();

    @Nullable
    public final Call<ResponseModel<List<CollectionBeanSub>>> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<List<CollectionBeanSub>>> getResultData() {
        return this.resultData;
    }

    public final void getUserRecomDatas(@NotNull RequestModel<UserRecomRequestArgs> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<List<CollectionBeanSub>>> V = L.J().V(request.makeSign());
        this.result = V;
        if (V != null) {
            V.enqueue(new Callback<ResponseModel<List<? extends CollectionBeanSub>>>() { // from class: com.join.kotlin.ui.userrecom.UserRecomRequest$getUserRecomDatas$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<List<? extends CollectionBeanSub>>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<List<CollectionBeanSub>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UserRecomRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<List<? extends CollectionBeanSub>>> call, @NotNull Response<ResponseModel<List<? extends CollectionBeanSub>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        UserRecomRequest.this.getResultData().setValue(response.body());
                        return;
                    }
                    ResponseModel<List<CollectionBeanSub>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UserRecomRequest.this.getResultData().setValue(responseModel);
                }
            });
        }
    }

    public final void setResult(@Nullable Call<ResponseModel<List<CollectionBeanSub>>> call) {
        this.result = call;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<List<CollectionBeanSub>>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }
}
