package com.join.kotlin.ui.modleregin.viewModle;

import com.join.kotlin.http.RpcKotlinServiceFactory;
import com.join.kotlin.http.api.RpcJavaApiForKotlin;
import com.join.kotlin.http.protocol.ApiException;
import com.join.kotlin.ui.modleregin.modle.BtReginResultMain;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiCall.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "Lcom/join/mgps/dto/ResponseModel;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "com/join/kotlin/http/protocol/ApiCallKt$apiCall$2", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1", f = "BtReginModle.kt", i = {}, l = {25}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 extends SuspendLambda implements Function2<t0, Continuation<? super ResponseModel<BtReginResultMain>>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BtReginModle$loadDatas$job$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1(Continuation continuation, BtReginModle$loadDatas$job$1 btReginModle$loadDatas$job$1) {
        super(2, continuation);
        this.this$0 = btReginModle$loadDatas$job$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 btReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 = new BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1(completion, this.this$0);
        btReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1.L$0 = obj;
        return btReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super ResponseModel<BtReginResultMain>> continuation) {
        return ((BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                t0 t0Var = (t0) this.L$0;
                RpcJavaApiForKotlin javaRootAPI = RpcKotlinServiceFactory.Companion.getInstances().getJavaRootAPI();
                RequestModel<RequestGameIdArgs> makeSign = ((RequestModel) this.this$0.$requestModel.element).makeSign();
                Intrinsics.checkNotNullExpressionValue(makeSign, "requestModel.makeSign()");
                this.label = 1;
                obj = javaRootAPI.getBtReginDatas(makeSign, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return (ResponseModel) obj;
        } catch (Throwable th) {
            return ApiException.Companion.build(th).toResponse();
        }
    }
}
