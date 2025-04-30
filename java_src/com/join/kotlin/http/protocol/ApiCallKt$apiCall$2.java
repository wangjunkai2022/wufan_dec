package com.join.kotlin.http.protocol;

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
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ApiCall.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "Lcom/join/mgps/dto/ResponseModel;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.http.protocol.ApiCallKt$apiCall$2", f = "ApiCall.kt", i = {}, l = {15}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ApiCallKt$apiCall$2<T> extends SuspendLambda implements Function2<t0, Continuation<? super ResponseModel<T>>, Object> {
    final /* synthetic */ Function2 $call;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiCallKt$apiCall$2(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$call = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        ApiCallKt$apiCall$2 apiCallKt$apiCall$2 = new ApiCallKt$apiCall$2(this.$call, completion);
        apiCallKt$apiCall$2.L$0 = obj;
        return apiCallKt$apiCall$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Object obj) {
        return ((ApiCallKt$apiCall$2) create(t0Var, (Continuation) obj)).invokeSuspend(Unit.INSTANCE);
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
                Function2 function2 = this.$call;
                this.label = 1;
                obj = function2.invoke(t0Var, this);
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

    @Nullable
    public final Object invokeSuspend$$forInline(@NotNull Object obj) {
        try {
            return (ResponseModel) this.$call.invoke((t0) this.L$0, this);
        } catch (Throwable th) {
            return ApiException.Companion.build(th).toResponse();
        }
    }
}
