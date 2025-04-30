package com.join.kotlin.presenter;

import android.content.Context;
import com.join.kotlin.presenter.view.CategoryView;
import com.join.kotlin.ui.findgame.data.CategoryListMain;
import com.join.kotlin.ui.findgame.data.CategoryRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import q1.h;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: CategoryPrensenter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/presenter/CategoryPrensenter;", "Lcom/join/kotlin/presenter/BasePresenter;", "Lcom/join/kotlin/presenter/view/CategoryView;", "Landroid/content/Context;", "context", "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "arg", "", "loadCategoryData", "Lq1/h;", "rpcGameClient", "Lq1/h;", "getRpcGameClient", "()Lq1/h;", "setRpcGameClient", "(Lq1/h;)V", "view", "<init>", "(Lcom/join/kotlin/presenter/view/CategoryView;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CategoryPrensenter extends BasePresenter<CategoryView> {
    public h rpcGameClient;

    public CategoryPrensenter(@NotNull CategoryView view) {
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

    public final void loadCategoryData(@NotNull Context context, @NotNull final CategoryRequest arg) {
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
        hVar.T(requestModel.makeSign()).enqueue(new Callback<ResponseModel<CategoryListMain>>() { // from class: com.join.kotlin.presenter.CategoryPrensenter$loadCategoryData$1
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<ResponseModel<CategoryListMain>> call, @NotNull Throwable t3) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t3, "t");
                CategoryPrensenter.this.getMView().onError("获取数据失败");
                t3.printStackTrace();
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<ResponseModel<CategoryListMain>> call, @NotNull Response<ResponseModel<CategoryListMain>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.body() != null) {
                    ResponseModel<CategoryListMain> body = response.body();
                    Intrinsics.checkNotNull(body);
                    Intrinsics.checkNotNullExpressionValue(body, "response.body()!!");
                    if (body.getCode() == 200) {
                        CategoryPrensenter.this.getMView().hidLoading();
                        int page = arg.getPage();
                        ResponseModel<CategoryListMain> body2 = response.body();
                        Intrinsics.checkNotNull(body2);
                        Intrinsics.checkNotNullExpressionValue(body2, "response.body()!!");
                        CategoryListMain data = body2.getData();
                        Intrinsics.checkNotNullExpressionValue(data, "response.body()!!.data");
                        CategoryPrensenter.this.getMView().onLoadDataSuccess(page, data);
                        return;
                    }
                    ResponseModel<CategoryListMain> body3 = response.body();
                    Intrinsics.checkNotNull(body3);
                    Intrinsics.checkNotNullExpressionValue(body3, "response.body()!!");
                    String message = body3.getMessage();
                    Intrinsics.checkNotNullExpressionValue(message, "response.body()!!.message");
                    CategoryPrensenter.this.getMView().onError(message);
                    return;
                }
                CategoryPrensenter.this.getMView().onError("获取数据失败");
            }
        });
    }

    public final void setRpcGameClient(@NotNull h hVar) {
        Intrinsics.checkNotNullParameter(hVar, "<set-?>");
        this.rpcGameClient = hVar;
    }
}
