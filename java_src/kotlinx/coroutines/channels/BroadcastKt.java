package kotlinx.coroutines.channels;

import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Broadcast.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a2\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007\u001a \u0001\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042-\b\u0002\u0010\u0012\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u00112/\b\u0001\u0010\u0018\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0013¢\u0006\u0002\b\u0017H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "", "capacity", "Lkotlinx/coroutines/CoroutineStart;", "start", "Lkotlinx/coroutines/channels/h;", "b", "Lkotlinx/coroutines/t0;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "onCompletion", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/w;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "a", "(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/h;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class BroadcastKt {

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\t¸\u0006\n"}, d2 = {"kotlinx/coroutines/channels/BroadcastKt$a", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "exception", "", "handleException", "kotlinx-coroutines-core", "kotlinx/coroutines/q0$a"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
        public a(CoroutineExceptionHandler.b bVar) {
            super(bVar);
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        }
    }

    @ObsoleteCoroutinesApi
    @NotNull
    public static final <E> h<E> a(@NotNull t0 t0Var, @NotNull CoroutineContext coroutineContext, int i2, @NotNull CoroutineStart coroutineStart, @Nullable Function1<? super Throwable, Unit> function1, @BuilderInference @NotNull Function2<? super w<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        j jVar;
        CoroutineContext d4 = o0.d(t0Var, coroutineContext);
        h a4 = i.a(i2);
        if (coroutineStart.isLazy()) {
            jVar = new t(d4, a4, function2);
        } else {
            jVar = new j(d4, a4, true);
        }
        if (function1 != null) {
            ((JobSupport) jVar).u(function1);
        }
        ((kotlinx.coroutines.a) jVar).t1(coroutineStart, jVar, function2);
        return jVar;
    }

    @ObsoleteCoroutinesApi
    @NotNull
    public static final <E> h<E> b(@NotNull final ReceiveChannel<? extends E> receiveChannel, int i2, @NotNull CoroutineStart coroutineStart) {
        return c(u0.m(u0.m(v1.f72528a, g1.g()), new a(CoroutineExceptionHandler.P)), null, i2, coroutineStart, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.channels.BroadcastKt$broadcast$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                o.b(receiveChannel, th);
            }
        }, new BroadcastKt$broadcast$2(receiveChannel, null), 1, null);
    }

    public static /* synthetic */ h c(t0 t0Var, CoroutineContext coroutineContext, int i2, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i5 = (i4 & 2) != 0 ? 1 : i2;
        if ((i4 & 4) != 0) {
            coroutineStart = CoroutineStart.LAZY;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i4 & 8) != 0) {
            function1 = null;
        }
        return a(t0Var, coroutineContext2, i5, coroutineStart2, function1, function2);
    }

    public static /* synthetic */ h d(ReceiveChannel receiveChannel, int i2, CoroutineStart coroutineStart, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 1;
        }
        if ((i4 & 2) != 0) {
            coroutineStart = CoroutineStart.LAZY;
        }
        return b(receiveChannel, i2, coroutineStart);
    }
}
