package com.join.kotlin.ui.cloudarchive.data;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.RequestGameIdArgs;
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
/* compiled from: UploadArchiveRequest.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\bJ\u001e\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006R4\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R6\u0010\u0017\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/UploadArchiveRequest;", "", "Landroid/content/Context;", "context", "", "page", "", "gameId", "", "getModeDatas", "loadLocalArchive", "loadMyInShop", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "resultData", "Landroidx/lifecycle/MutableLiveData;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "Lretrofit2/Call;", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class UploadArchiveRequest {
    @Nullable
    private Call<ResponseModel<List<ArchiveData>>> result;
    @NotNull
    private MutableLiveData<ResponseModel<List<ArchiveData>>> resultData = new MutableLiveData<>();

    public final void getModeDatas(@NotNull Context context, int i2, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(i2);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        requestGameIdArgs.setUid(accountData.getUid());
        requestModel.setArgs(requestGameIdArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<List<ArchiveData>>> g02 = L.J().g0(requestModel);
        this.result = g02;
        if (g02 != null) {
            g02.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.UploadArchiveRequest$getModeDatas$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UploadArchiveRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        UploadArchiveRequest.this.getResultData().setValue(response.body());
                        return;
                    }
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UploadArchiveRequest.this.getResultData().setValue(responseModel);
                }
            });
        }
    }

    @Nullable
    public final Call<ResponseModel<List<ArchiveData>>> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<List<ArchiveData>>> getResultData() {
        return this.resultData;
    }

    public final void loadLocalArchive() {
    }

    public final void loadMyInShop(@NotNull Context context, int i2, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(i2);
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        requestGameIdArgs.setUid(accountData.getUid());
        requestModel.setArgs(requestGameIdArgs);
        h L = h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        Call<ResponseModel<List<ArchiveData>>> L2 = L.J().L(requestModel);
        this.result = L2;
        if (L2 != null) {
            L2.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.UploadArchiveRequest$loadMyInShop$1
                @Override // retrofit2.Callback
                public void onFailure(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Throwable t3) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t3, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UploadArchiveRequest.this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(@NotNull Call<ResponseModel<List<? extends ArchiveData>>> call, @NotNull Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        UploadArchiveRequest.this.getResultData().setValue(response.body());
                        return;
                    }
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    UploadArchiveRequest.this.getResultData().setValue(responseModel);
                }
            });
        }
    }

    public final void setResult(@Nullable Call<ResponseModel<List<ArchiveData>>> call) {
        this.result = call;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<List<ArchiveData>>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }
}
