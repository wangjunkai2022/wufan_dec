package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Job.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u0000 '2\u00020\u0001:\u0001\tJ\f\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H'J\b\u0010\u0006\u001a\u00020\u0005H&J\u001a\u0010\t\u001a\u00020\b2\u0010\b\u0002\u0010\u0007\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u0003H&J\b\u0010\n\u001a\u00020\bH\u0017J\u0014\u0010\f\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u000bH'J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH'J\u0013\u0010\u0011\u001a\u00020\bH¦@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J1\u0010\u0019\u001a\u00020\u00182'\u0010\u0017\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0013j\u0002`\u0016H&JE\u0010\u001c\u001a\u00020\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u00052\b\b\u0002\u0010\u001b\u001a\u00020\u00052'\u0010\u0017\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0013j\u0002`\u0016H'J\u0011\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0000H\u0097\u0002R\u0016\u0010\u001f\u001a\u00020\u00058&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00000!8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0016\u0010%\u001a\u00020\u00058&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b%\u0010 R\u0016\u0010)\u001a\u00020&8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0016\u0010*\u001a\u00020\u00058&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b*\u0010 \u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Lkotlinx/coroutines/c2;", "Lkotlin/coroutines/CoroutineContext$Element;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "m", "", "start", "cause", "", "b", "cancel", "", "a", "Lkotlinx/coroutines/x;", "child", "Lkotlinx/coroutines/v;", "U", "E", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/j1;", ai.aE, "onCancelling", "invokeImmediately", "k", "other", ai.aF, "isCompleted", "()Z", "Lkotlin/sequences/Sequence;", "h", "()Lkotlin/sequences/Sequence;", "children", "isActive", "Lkotlinx/coroutines/selects/c;", "Q", "()Lkotlinx/coroutines/selects/c;", "onJoin", "isCancelled", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface c2 extends CoroutineContext.Element {
    @NotNull
    public static final b Q = b.f70768a;

    /* compiled from: Job.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
        public static /* synthetic */ void a(c2 c2Var) {
            c2Var.b(null);
        }

        public static /* synthetic */ void b(c2 c2Var, CancellationException cancellationException, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i2 & 1) != 0) {
                cancellationException = null;
            }
            c2Var.b(cancellationException);
        }

        public static /* synthetic */ boolean c(c2 c2Var, Throwable th, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    th = null;
                }
                return c2Var.a(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static <R> R d(@NotNull c2 c2Var, R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(c2Var, r3, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E e(@NotNull c2 c2Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(c2Var, key);
        }

        public static /* synthetic */ j1 f(c2 c2Var, boolean z3, boolean z4, Function1 function1, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    z3 = false;
                }
                if ((i2 & 2) != 0) {
                    z4 = true;
                }
                return c2Var.k(z3, z4, function1);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
        }

        @NotNull
        public static CoroutineContext g(@NotNull c2 c2Var, @NotNull CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(c2Var, key);
        }

        @NotNull
        public static CoroutineContext h(@NotNull c2 c2Var, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(c2Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static c2 i(@NotNull c2 c2Var, @NotNull c2 c2Var2) {
            return c2Var2;
        }
    }

    /* compiled from: Job.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlinx/coroutines/c2$b", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/c2;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b implements CoroutineContext.Key<c2> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f70768a = new b();

        private b() {
        }
    }

    @Nullable
    Object E(@NotNull Continuation<? super Unit> continuation);

    @NotNull
    kotlinx.coroutines.selects.c Q();

    @InternalCoroutinesApi
    @NotNull
    v U(@NotNull x xVar);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ boolean a(Throwable th);

    void b(@Nullable CancellationException cancellationException);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ void cancel();

    @NotNull
    Sequence<c2> h();

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    @InternalCoroutinesApi
    @NotNull
    j1 k(boolean z3, boolean z4, @NotNull Function1<? super Throwable, Unit> function1);

    @InternalCoroutinesApi
    @NotNull
    CancellationException m();

    boolean start();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    c2 t(@NotNull c2 c2Var);

    @NotNull
    j1 u(@NotNull Function1<? super Throwable, Unit> function1);
}
