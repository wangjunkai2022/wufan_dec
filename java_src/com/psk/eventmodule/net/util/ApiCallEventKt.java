package com.psk.eventmodule.net.util;

import com.psk.eventmodule.net.modle.ResponseModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.i;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiCallEvent.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aP\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002/\b\u0004\u0010\u0007\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0086Hø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"T", "Lkotlin/Function2;", "Lkotlinx/coroutines/t0;", "Lkotlin/coroutines/Continuation;", "Lcom/psk/eventmodule/net/modle/ResponseModel;", "", "Lkotlin/ExtensionFunctionType;", "call", "apiCallEvent", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "EventModule_release"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class ApiCallEventKt {
    @Nullable
    public static final <T> Object apiCallEvent(@NotNull Function2<? super t0, ? super Continuation<? super ResponseModel<T>>, ? extends Object> function2, @NotNull Continuation<? super ResponseModel<T>> continuation) {
        return i.h(g1.c(), new ApiCallEventKt$apiCallEvent$2(function2, null), continuation);
    }

    @Nullable
    private static final Object apiCallEvent$$forInline(@NotNull Function2 function2, @NotNull Continuation continuation) {
        CoroutineDispatcher c4 = g1.c();
        ApiCallEventKt$apiCallEvent$2 apiCallEventKt$apiCallEvent$2 = new ApiCallEventKt$apiCallEvent$2(function2, null);
        InlineMarker.mark(0);
        Object h4 = i.h(c4, apiCallEventKt$apiCallEvent$2, continuation);
        InlineMarker.mark(1);
        return h4;
    }
}
