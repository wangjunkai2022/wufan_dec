package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuation.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002J%\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H'¢\u0006\u0004\b\u0006\u0010\u0007JH\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042#\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\bH'¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\tH'J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0004H'J\b\u0010\u0015\u001a\u00020\rH'J\u0014\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\tH&J1\u0010\u001a\u001a\u00020\r2'\u0010\u0019\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\bj\u0002`\u0018H&J\u001b\u0010\u001c\u001a\u00020\r*\u00020\u001b2\u0006\u0010\u0003\u001a\u00028\u0000H'¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u001e\u001a\u00020\r*\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\tH'J<\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00028\u00002#\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\bH'¢\u0006\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\u00168&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\u00168&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\"R\u0016\u0010$\u001a\u00020\u00168&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\"¨\u0006%"}, d2 = {"Lkotlinx/coroutines/p;", "T", "Lkotlin/coroutines/Continuation;", "value", "", "idempotent", ai.aD, "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "onCancellation", "L", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "exception", ai.av, "token", "V", "N", "", "a", "Lkotlinx/coroutines/CompletionHandler;", "handler", "l", "Lkotlinx/coroutines/CoroutineDispatcher;", "M", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "q", "y", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "isCompleted", "()Z", "isCancelled", "isActive", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface p<T> extends Continuation<T> {

    /* compiled from: CancellableContinuation.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a {
        public static /* synthetic */ boolean a(p pVar, Throwable th, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    th = null;
                }
                return pVar.a(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static /* synthetic */ Object b(p pVar, Object obj, Object obj2, int i2, Object obj3) {
            if (obj3 == null) {
                if ((i2 & 2) != 0) {
                    obj2 = null;
                }
                return pVar.c(obj, obj2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryResume");
        }
    }

    @InternalCoroutinesApi
    @Nullable
    Object L(T t3, @Nullable Object obj, @Nullable Function1<? super Throwable, Unit> function1);

    @ExperimentalCoroutinesApi
    void M(@NotNull CoroutineDispatcher coroutineDispatcher, T t3);

    @InternalCoroutinesApi
    void N();

    @InternalCoroutinesApi
    void V(@NotNull Object obj);

    boolean a(@Nullable Throwable th);

    @InternalCoroutinesApi
    @Nullable
    Object c(T t3, @Nullable Object obj);

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    void l(@NotNull Function1<? super Throwable, Unit> function1);

    @InternalCoroutinesApi
    @Nullable
    Object p(@NotNull Throwable th);

    @ExperimentalCoroutinesApi
    void q(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th);

    @ExperimentalCoroutinesApi
    void y(T t3, @Nullable Function1<? super Throwable, Unit> function1);
}
