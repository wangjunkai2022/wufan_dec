package com.join.kotlin.presenter;

import android.content.Context;
import com.join.kotlin.presenter.view.FindHomeView;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import q1.h;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: FindModlePrensenter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u000b\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/presenter/FindModlePrensenter;", "Lcom/join/kotlin/presenter/BasePresenter;", "Lcom/join/kotlin/presenter/view/FindHomeView;", "Landroid/content/Context;", "context", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "arg", "", "loadFindChoiceData", "loadClassfyDatas", "", "isLoading", "Z", "()Z", "setLoading", "(Z)V", "Lq1/h;", "rpcGameClient", "Lq1/h;", "getRpcGameClient", "()Lq1/h;", "setRpcGameClient", "(Lq1/h;)V", "view", "<init>", "(Lcom/join/kotlin/presenter/view/FindHomeView;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class FindModlePrensenter extends BasePresenter<FindHomeView> {
    private boolean isLoading;
    public h rpcGameClient;

    public FindModlePrensenter(@NotNull FindHomeView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        setMView(view);
    }

    @NotNull
    public final h getRpcGameClient() {
        h hVar = this.rpcGameClient;
        if (hVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rpcGameClient");
        }
        return hVar;
    }

    public final boolean isLoading() {
        return this.isLoading;
    }

    public final void loadClassfyDatas(@NotNull Context context, @NotNull final LuckHistoryrequest arg) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(arg, "arg");
        com.join.mgps.rpc.impl.h L = com.join.mgps.rpc.impl.h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        h J = L.J();
        Intrinsics.checkNotNullExpressionValue(J, "RpcGameClientImpl.newInstance().service");
        this.rpcGameClient = J;
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        requestModel.setArgs(arg);
        h hVar = this.rpcGameClient;
        if (hVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rpcGameClient");
        }
        hVar.D0(requestModel.makeSign()).enqueue(new Callback<ResponseModel<FindChoiceResultData>>() { // from class: com.join.kotlin.presenter.FindModlePrensenter$loadClassfyDatas$1
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<ResponseModel<FindChoiceResultData>> call, @NotNull Throwable t3) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t3, "t");
                FindModlePrensenter.this.getMView().onError("获取数据失败");
                t3.printStackTrace();
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<ResponseModel<FindChoiceResultData>> call, @NotNull Response<ResponseModel<FindChoiceResultData>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.body() != null) {
                    ResponseModel<FindChoiceResultData> body = response.body();
                    Intrinsics.checkNotNull(body);
                    Intrinsics.checkNotNullExpressionValue(body, "response.body()!!");
                    if (body.getCode() == 200) {
                        FindModlePrensenter.this.getMView().hidLoading();
                        ResponseModel<FindChoiceResultData> body2 = response.body();
                        Intrinsics.checkNotNull(body2);
                        Intrinsics.checkNotNullExpressionValue(body2, "response.body()!!");
                        if (body2.getData() != null) {
                            int page = arg.getPage();
                            ResponseModel<FindChoiceResultData> body3 = response.body();
                            Intrinsics.checkNotNull(body3);
                            Intrinsics.checkNotNullExpressionValue(body3, "response.body()!!");
                            FindChoiceResultData data = body3.getData();
                            Intrinsics.checkNotNullExpressionValue(data, "response.body()!!.data");
                            FindModlePrensenter.this.getMView().onLoadDataSuccess(page, data);
                            return;
                        }
                    } else {
                        ResponseModel<FindChoiceResultData> body4 = response.body();
                        Intrinsics.checkNotNull(body4);
                        Intrinsics.checkNotNullExpressionValue(body4, "response.body()!!");
                        String message = body4.getMessage();
                        Intrinsics.checkNotNullExpressionValue(message, "response.body()!!.message");
                        FindModlePrensenter.this.getMView().onError(message);
                        return;
                    }
                }
                FindModlePrensenter.this.getMView().onError("获取数据失败");
            }
        });
    }

    public final void loadFindChoiceData(@NotNull Context context, @NotNull final LuckHistoryrequest arg) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(arg, "arg");
        if (this.isLoading) {
            return;
        }
        this.isLoading = true;
        com.join.mgps.rpc.impl.h L = com.join.mgps.rpc.impl.h.L();
        Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
        h J = L.J();
        Intrinsics.checkNotNullExpressionValue(J, "RpcGameClientImpl.newInstance().service");
        this.rpcGameClient = J;
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        requestModel.setArgs(arg);
        h hVar = this.rpcGameClient;
        if (hVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rpcGameClient");
        }
        hVar.v0(requestModel.makeSign()).enqueue(new Callback<ResponseModel<FindChoiceResultData>>() { // from class: com.join.kotlin.presenter.FindModlePrensenter$loadFindChoiceData$1
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<ResponseModel<FindChoiceResultData>> call, @NotNull Throwable t3) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t3, "t");
                FindModlePrensenter.this.setLoading(false);
                FindModlePrensenter.this.getMView().onError("获取数据失败");
                t3.printStackTrace();
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<ResponseModel<FindChoiceResultData>> call, @NotNull Response<ResponseModel<FindChoiceResultData>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                FindModlePrensenter.this.setLoading(false);
                if (response.body() != null) {
                    ResponseModel<FindChoiceResultData> body = response.body();
                    Intrinsics.checkNotNull(body);
                    Intrinsics.checkNotNullExpressionValue(body, "response.body()!!");
                    if (body.getCode() == 200) {
                        FindModlePrensenter.this.getMView().hidLoading();
                        ResponseModel<FindChoiceResultData> body2 = response.body();
                        Intrinsics.checkNotNull(body2);
                        Intrinsics.checkNotNullExpressionValue(body2, "response.body()!!");
                        if (body2.getData() != null) {
                            int page = arg.getPage();
                            ResponseModel<FindChoiceResultData> body3 = response.body();
                            Intrinsics.checkNotNull(body3);
                            Intrinsics.checkNotNullExpressionValue(body3, "response.body()!!");
                            FindChoiceResultData data = body3.getData();
                            Intrinsics.checkNotNullExpressionValue(data, "response.body()!!.data");
                            FindModlePrensenter.this.getMView().onLoadDataSuccess(page, data);
                            return;
                        }
                    } else {
                        ResponseModel<FindChoiceResultData> body4 = response.body();
                        Intrinsics.checkNotNull(body4);
                        Intrinsics.checkNotNullExpressionValue(body4, "response.body()!!");
                        String message = body4.getMessage();
                        Intrinsics.checkNotNullExpressionValue(message, "response.body()!!.message");
                        FindModlePrensenter.this.getMView().onError(message);
                        return;
                    }
                }
                FindModlePrensenter.this.getMView().onError("获取数据失败");
            }
        });
    }

    public final void setLoading(boolean z3) {
        this.isLoading = z3;
    }

    public final void setRpcGameClient(@NotNull h hVar) {
        Intrinsics.checkNotNullParameter(hVar, "<set-?>");
        this.rpcGameClient = hVar;
    }
}
