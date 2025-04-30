package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlinx.coroutines.c2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NonCancellable.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b3\u0010\"J\b\u0010\u0004\u001a\u00020\u0003H\u0017J\u0013\u0010\u0006\u001a\u00020\u0005H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\f\u0010\n\u001a\u00060\bj\u0002`\tH\u0017J1\u0010\u0013\u001a\u00020\u00122'\u0010\u0011\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u0010H\u0017JA\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032'\u0010\u0011\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u0010H\u0017J\u0018\u0010\u0017\u001a\u00020\u00052\u000e\u0010\u000f\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tH\u0017J\u0012\u0010\u0018\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0017J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0017J\b\u0010\u001e\u001a\u00020\u001dH\u0016R\u001c\u0010\u001f\u001a\u00020\u00038V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b!\u0010\"\u001a\u0004\b\u001f\u0010 R\u001c\u0010'\u001a\u00020#8V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b&\u0010\"\u001a\u0004\b$\u0010%R\u001c\u0010(\u001a\u00020\u00038V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b)\u0010\"\u001a\u0004\b(\u0010 R\u0016\u0010+\u001a\u00020\u001d8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010*R\"\u00100\u001a\b\u0012\u0004\u0012\u00020\u00020,8V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b/\u0010\"\u001a\u0004\b-\u0010.R\u001c\u00101\u001a\u00020\u00038V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b2\u0010\"\u001a\u0004\b1\u0010 \u0082\u0002\u0004\n\u0002\b\u0019¨\u00064"}, d2 = {"Lkotlinx/coroutines/o2;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/c2;", "", "start", "", "E", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "m", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/j1;", ai.aE, "onCancelling", "invokeImmediately", "k", "b", "a", "Lkotlinx/coroutines/x;", "child", "Lkotlinx/coroutines/v;", "U", "", "toString", "isCompleted", "()Z", "isCompleted$annotations", "()V", "Lkotlinx/coroutines/selects/c;", "Q", "()Lkotlinx/coroutines/selects/c;", "getOnJoin$annotations", "onJoin", "isActive", "isActive$annotations", "Ljava/lang/String;", "message", "Lkotlin/sequences/Sequence;", "h", "()Lkotlin/sequences/Sequence;", "getChildren$annotations", "children", "isCancelled", "isCancelled$annotations", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class o2 extends AbstractCoroutineContextElement implements c2 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final o2 f72300a = new o2();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f72301b = "NonCancellable can be used only as an argument for 'withContext', direct usages of its API are prohibited";

    private o2() {
        super(c2.Q);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    public static /* synthetic */ void B() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    public static /* synthetic */ void C() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    public static /* synthetic */ void F() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    public static /* synthetic */ void y() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    public static /* synthetic */ void z() {
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    @Nullable
    public Object E(@NotNull Continuation<? super Unit> continuation) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.c2
    @NotNull
    public kotlinx.coroutines.selects.c Q() {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    @NotNull
    public v U(@NotNull x xVar) {
        return p2.f72305a;
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean a(Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    public void b(@Nullable CancellationException cancellationException) {
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        b(null);
    }

    @Override // kotlinx.coroutines.c2
    @NotNull
    public Sequence<c2> h() {
        Sequence<c2> emptySequence;
        emptySequence = SequencesKt__SequencesKt.emptySequence();
        return emptySequence;
    }

    @Override // kotlinx.coroutines.c2
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.c2
    public boolean isCancelled() {
        return false;
    }

    @Override // kotlinx.coroutines.c2
    public boolean isCompleted() {
        return false;
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    @NotNull
    public j1 k(boolean z3, boolean z4, @NotNull Function1<? super Throwable, Unit> function1) {
        return p2.f72305a;
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    @NotNull
    public CancellationException m() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    public boolean start() {
        return false;
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public c2 t(@NotNull c2 c2Var) {
        return c2.a.i(this, c2Var);
    }

    @NotNull
    public String toString() {
        return "NonCancellable";
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.WARNING, message = f72301b)
    @NotNull
    public j1 u(@NotNull Function1<? super Throwable, Unit> function1) {
        return p2.f72305a;
    }
}
