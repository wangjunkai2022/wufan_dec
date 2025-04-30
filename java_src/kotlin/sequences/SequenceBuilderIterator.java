package kotlin.sequences;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SequenceBuilder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00020\u00050\u0004B\u0007¢\u0006\u0004\b)\u0010*J\u000f\u0010\u0006\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\t\u001a\u00020\bH\u0002J\t\u0010\u000b\u001a\u00020\nH\u0096\u0002J\u0010\u0010\f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\f\u0010\u0007J\u001b\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0015\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0019\u001a\u00060\u0017j\u0002`\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R*\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001e\u0010'\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Lkotlin/sequences/SequenceBuilderIterator;", "T", "Lkotlin/sequences/SequenceScope;", "", "Lkotlin/coroutines/Continuation;", "", "nextNotReady", "()Ljava/lang/Object;", "", "exceptionalState", "", "hasNext", "next", "value", "yield", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "iterator", "yieldAll", "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "", "Lkotlin/sequences/State;", NoticeTopAnimActivityDialog_.f34402n, "I", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "nextValue", "Ljava/lang/Object;", "nextStep", "Lkotlin/coroutines/Continuation;", "getNextStep", "()Lkotlin/coroutines/Continuation;", "setNextStep", "(Lkotlin/coroutines/Continuation;)V", "nextIterator", "Ljava/util/Iterator;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class SequenceBuilderIterator<T> extends SequenceScope<T> implements Iterator<T>, Continuation<Unit>, KMappedMarker {
    private Iterator<? extends T> nextIterator;
    @Nullable
    private Continuation<? super Unit> nextStep;
    private T nextValue;
    private int state;

    private final Throwable exceptionalState() {
        int i2 = this.state;
        if (i2 != 4) {
            if (i2 != 5) {
                return new IllegalStateException("Unexpected state of the iterator: " + this.state);
            }
            return new IllegalStateException("Iterator has failed.");
        }
        return new NoSuchElementException();
    }

    private final T nextNotReady() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Nullable
    public final Continuation<Unit> getNextStep() {
        return this.nextStep;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            int i2 = this.state;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 3) {
                        return true;
                    }
                    if (i2 == 4) {
                        return false;
                    }
                    throw exceptionalState();
                }
                Iterator<? extends T> it2 = this.nextIterator;
                Intrinsics.checkNotNull(it2);
                if (it2.hasNext()) {
                    this.state = 2;
                    return true;
                }
                this.nextIterator = null;
            }
            this.state = 5;
            Continuation<? super Unit> continuation = this.nextStep;
            Intrinsics.checkNotNull(continuation);
            this.nextStep = null;
            Unit unit = Unit.INSTANCE;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m24constructorimpl(unit));
        }
    }

    @Override // java.util.Iterator
    public T next() {
        int i2 = this.state;
        if (i2 == 0 || i2 == 1) {
            return nextNotReady();
        }
        if (i2 == 2) {
            this.state = 1;
            Iterator<? extends T> it2 = this.nextIterator;
            Intrinsics.checkNotNull(it2);
            return it2.next();
        } else if (i2 == 3) {
            this.state = 0;
            T t3 = this.nextValue;
            this.nextValue = null;
            return t3;
        } else {
            throw exceptionalState();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        ResultKt.throwOnFailure(obj);
        this.state = 4;
    }

    public final void setNextStep(@Nullable Continuation<? super Unit> continuation) {
        this.nextStep = continuation;
    }

    @Override // kotlin.sequences.SequenceScope
    @Nullable
    public Object yield(T t3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        this.nextValue = t3;
        this.state = 3;
        this.nextStep = continuation;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == coroutine_suspended2) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return coroutine_suspended == coroutine_suspended3 ? coroutine_suspended : Unit.INSTANCE;
    }

    @Override // kotlin.sequences.SequenceScope
    @Nullable
    public Object yieldAll(@NotNull Iterator<? extends T> it2, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        if (it2.hasNext()) {
            this.nextIterator = it2;
            this.state = 2;
            this.nextStep = continuation;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (coroutine_suspended == coroutine_suspended2) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended == coroutine_suspended3 ? coroutine_suspended : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
