package com.join.kotlin.ui.notice;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.ui.coupon.NoticeListData;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: NoticeRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002R0\u0010\n\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR.\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/ui/notice/NoticeRequest;", "", "Lcom/join/mgps/dto/RequestModel;", "Lcom/join/mgps/dto/RequestGameIdArgs;", "request", "", "getNoticeData", "Lretrofit2/Call;", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/coupon/NoticeListData;", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "Landroidx/lifecycle/MutableLiveData;", "resultData", "Landroidx/lifecycle/MutableLiveData;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class NoticeRequest {
    @Nullable
    private Call<ResponseModel<NoticeListData>> result;
    @NotNull
    private MutableLiveData<ResponseModel<NoticeListData>> resultData = new MutableLiveData<>();

    public final void getNoticeData(@NotNull final RequestModel<RequestGameIdArgs> request) {
        Intrinsics.checkNotNullParameter(request, "request");
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<NoticeListData>> j02 = L.J().j0(request.makeSign());
        this.result = j02;
        if (j02 != null) {
            j02.enqueue(new Callback<ResponseModel<NoticeListData>>() { // from class: com.join.kotlin.ui.notice.NoticeRequest$getNoticeData$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<NoticeListData>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<NoticeListData> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    NoticeRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<NoticeListData>> call, @NotNull Response<ResponseModel<NoticeListData>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        ResponseModel<NoticeListData> body = response.body();
                        if (body != null) {
                            Object args = request.getArgs();
                            Intrinsics.checkNotNullExpressionValue(args, "request.args");
                            body.setPage(((RequestGameIdArgs) args).getPage());
                        }
                        NoticeRequest.this.getResultData().setValue(body);
                        return;
                    }
                    ResponseModel<NoticeListData> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    NoticeRequest.this.getResultData().setValue(responseModel);
                }
            });
        }
    }

    @Nullable
    public final Call<ResponseModel<NoticeListData>> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<NoticeListData>> getResultData() {
        return this.resultData;
    }

    public final void setResult(@Nullable Call<ResponseModel<NoticeListData>> call) {
        this.result = call;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<NoticeListData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }
}
