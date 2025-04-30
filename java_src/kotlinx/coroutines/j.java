package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: Builders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aV\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"T", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function2;", "Lkotlinx/coroutines/t0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "a", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/BuildersKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class j {
    public static final <T> T a(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2) throws InterruptedException {
        n1 a4;
        CoroutineContext d4;
        Thread currentThread = Thread.currentThread();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
        if (continuationInterceptor == null) {
            a4 = g3.f72123a.b();
            d4 = o0.d(v1.f72528a, coroutineContext.plus(a4));
        } else {
            n1 n1Var = null;
            n1 n1Var2 = continuationInterceptor instanceof n1 ? (n1) continuationInterceptor : null;
            if (n1Var2 != null && n1Var2.N()) {
                n1Var = n1Var2;
            }
            a4 = n1Var == null ? g3.f72123a.a() : n1Var;
            d4 = o0.d(v1.f72528a, coroutineContext);
        }
        g gVar = new g(d4, currentThread, a4);
        gVar.t1(CoroutineStart.DEFAULT, gVar, function2);
        return (T) gVar.u1();
    }

    public static /* synthetic */ Object b(CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) throws InterruptedException {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return i.f(coroutineContext, function2);
    }
}
