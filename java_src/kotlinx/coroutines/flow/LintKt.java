package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Lint.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000~\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u001a\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u001a&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u001a\u001e\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0007\u001a\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0007\u001a\"\u0010\u000f\u001a\u00020\u000e*\u0006\u0012\u0002\b\u00030\n2\u0010\b\u0002\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fH\u0007\u001ao\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012D\b\b\u0010\u0017\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0010¢\u0006\u0002\b\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001ah\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001b\u001a\u00020\u001a23\b\n\u0010\u001e\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001cH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u0084\u0001\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012Y\b\b\u0010\u001e\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150!¢\u0006\u0002\b\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a)\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000%\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087Hø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a)\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000(\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087Hø\u0001\u0000¢\u0006\u0004\b)\u0010'\u001a#\u0010+\u001a\u00020*\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087Hø\u0001\u0000¢\u0006\u0004\b+\u0010'\"$\u00100\u001a\u00020\u001d*\u0006\u0012\u0002\b\u00030\n8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010/\u001a\u0004\b,\u0010-\"$\u00104\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\n8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010/\u001a\u0004\b1\u00102\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"T", "Lkotlinx/coroutines/flow/o;", "Lkotlinx/coroutines/flow/f;", ai.aD, "Lkotlin/coroutines/CoroutineContext;", "context", "h", "Lkotlinx/coroutines/flow/v;", "e", com.sdk.a.g.f56552a, "Lkotlinx/coroutines/flow/g;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", "a", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "action", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/flow/o;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;", "", "retries", "Lkotlin/Function2;", "", "predicate", "m", "(Lkotlinx/coroutines/flow/o;JLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;", "Lkotlin/Function4;", "attempt", "o", "(Lkotlinx/coroutines/flow/o;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/f;", "", ai.av, "(Lkotlinx/coroutines/flow/o;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "q", "", "f", "k", "(Lkotlinx/coroutines/flow/g;)Z", "isActive$annotations", "(Lkotlinx/coroutines/flow/g;)V", "isActive", ai.aA, "(Lkotlinx/coroutines/flow/g;)Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext$annotations", "coroutineContext", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class LintKt {
    @Deprecated(level = DeprecationLevel.ERROR, message = "cancel() is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().cancel() instead or specify the receiver of cancel() explicitly", replaceWith = @ReplaceWith(expression = "currentCoroutineContext().cancel(cause)", imports = {}))
    public static final void a(@NotNull g<?> gVar, @Nullable CancellationException cancellationException) {
        h.h1();
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void b(g gVar, CancellationException cancellationException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            cancellationException = null;
        }
        a(gVar, cancellationException);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'cancellable' to a SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @NotNull
    public static final <T> f<T> c(@NotNull o<? extends T> oVar) {
        h.h1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> f<T> d(o<? extends T> oVar, Function3<? super g<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return h.w(oVar, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'conflate' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @NotNull
    public static final <T> f<T> e(@NotNull v<? extends T> vVar) {
        h.h1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object f(o<? extends T> oVar, Continuation<? super Integer> continuation) {
        InlineMarker.mark(0);
        Object a02 = h.a0(oVar, continuation);
        InlineMarker.mark(1);
        return a02;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'distinctUntilChanged' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @NotNull
    public static final <T> f<T> g(@NotNull v<? extends T> vVar) {
        h.h1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'flowOn' to SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @NotNull
    public static final <T> f<T> h(@NotNull o<? extends T> oVar, @NotNull CoroutineContext coroutineContext) {
        h.h1();
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final CoroutineContext i(@NotNull g<?> gVar) {
        h.h1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "coroutineContext is resolved into the property of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext() instead or specify the receiver of coroutineContext explicitly", replaceWith = @ReplaceWith(expression = "currentCoroutineContext()", imports = {}))
    public static /* synthetic */ void j(g gVar) {
    }

    public static final boolean k(@NotNull g<?> gVar) {
        h.h1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "isActive is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().isActive or cancellable() operator instead or specify the receiver of isActive explicitly. Additionally, flow {} builder emissions are cancellable by default.", replaceWith = @ReplaceWith(expression = "currentCoroutineContext().isActive", imports = {}))
    public static /* synthetic */ void l(g gVar) {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> f<T> m(o<? extends T> oVar, long j4, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return h.E1(oVar, j4, function2);
    }

    static /* synthetic */ f n(o oVar, long j4, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j4 = Long.MAX_VALUE;
        }
        if ((i2 & 2) != 0) {
            function2 = new LintKt$retry$1(null);
        }
        return h.E1(oVar, j4, function2);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> f<T> o(o<? extends T> oVar, Function4<? super g<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return h.H1(oVar, function4);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object p(o<? extends T> oVar, Continuation<? super List<? extends T>> continuation) {
        Object c4;
        InlineMarker.mark(0);
        c4 = FlowKt__CollectionKt.c(oVar, null, continuation, 1, null);
        InlineMarker.mark(1);
        return c4;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object q(o<? extends T> oVar, Continuation<? super Set<? extends T>> continuation) {
        Object e4;
        InlineMarker.mark(0);
        e4 = FlowKt__CollectionKt.e(oVar, null, continuation, 1, null);
        InlineMarker.mark(1);
        return e4;
    }
}
