package com.psk.eventmodule.net;

import com.google.gson.Gson;
import com.psk.eventmodule.net.api.EventApi;
import com.psk.eventmodule.net.api.RpcEventFactory;
import com.psk.eventmodule.net.modle.ResponseModel;
import com.psk.eventmodule.net.util.AESUtilV2;
import com.psk.eventmodule.net.util.ApiException;
import com.psk.eventmodule.net.util.LogPrintUtil;
import io.netty.handler.codec.http.HttpHeaders;
import java.nio.charset.Charset;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlinx.coroutines.t0;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiCallEvent.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "Lcom/psk/eventmodule/net/modle/ResponseModel;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "com/psk/eventmodule/net/util/ApiCallEventKt$apiCallEvent$2", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.psk.eventmodule.net.StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1", f = "StatCore.kt", i = {}, l = {47}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1 extends SuspendLambda implements Function2<t0, Continuation<? super ResponseModel<Object>>, Object> {
    final /* synthetic */ Ref.ObjectRef $requestList$inlined;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1(Continuation continuation, Ref.ObjectRef objectRef) {
        super(2, continuation);
        this.$requestList$inlined = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1 statCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1 = new StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1(completion, this.$requestList$inlined);
        statCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1.L$0 = obj;
        return statCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super ResponseModel<Object>> continuation) {
        return ((StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
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
                String json = new Gson().toJson((List) this.$requestList$inlined.element);
                LogPrintUtil.Companion companion = LogPrintUtil.Companion;
                if (companion.getPrintLog()) {
                    Intrinsics.checkNotNullExpressionValue(json, "json");
                    companion.printOut("statData", json, "eventjson");
                }
                String jsonSign = AESUtilV2.encrypt(json, "");
                MediaType parse = MediaType.parse(HttpHeaders.Values.APPLICATION_JSON);
                Intrinsics.checkNotNullExpressionValue(jsonSign, "jsonSign");
                Charset charset = Charsets.UTF_8;
                if (jsonSign != null) {
                    byte[] bytes = jsonSign.getBytes(charset);
                    Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                    RequestBody create = RequestBody.create(parse, bytes);
                    Intrinsics.checkNotNullExpressionValue(create, "RequestBody.create(\n    …y()\n                    )");
                    this.label = 1;
                    obj = ((EventApi) RpcEventFactory.Companion.getInstance().create(EventApi.class)).sendPoint(create, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
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
