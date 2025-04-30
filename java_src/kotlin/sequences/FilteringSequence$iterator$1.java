package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000!\n\u0000\n\u0002\u0010(\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000b*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0002R$\u0010\b\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u0005\"\u0004\b\u000b\u0010\fR\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"kotlin/sequences/FilteringSequence$iterator$1", "", "", "calcNext", "next", "()Ljava/lang/Object;", "", "hasNext", "nextItem", "Ljava/lang/Object;", "getNextItem", "setNextItem", "(Ljava/lang/Object;)V", "", "nextState", "I", "getNextState", "()I", "setNextState", "(I)V", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FilteringSequence$iterator$1<T> implements Iterator<T>, KMappedMarker {
    @NotNull
    private final Iterator<T> iterator;
    @Nullable
    private T nextItem;
    private int nextState;
    final /* synthetic */ FilteringSequence this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FilteringSequence$iterator$1(FilteringSequence filteringSequence) {
        Sequence sequence;
        this.this$0 = filteringSequence;
        sequence = filteringSequence.sequence;
        this.iterator = sequence.iterator();
        this.nextState = -1;
    }

    private final void calcNext() {
        Function1 function1;
        boolean z3;
        while (this.iterator.hasNext()) {
            T next = this.iterator.next();
            function1 = this.this$0.predicate;
            boolean booleanValue = ((Boolean) function1.invoke(next)).booleanValue();
            z3 = this.this$0.sendWhen;
            if (booleanValue == z3) {
                this.nextItem = next;
                this.nextState = 1;
                return;
            }
        }
        this.nextState = 0;
    }

    @NotNull
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    @Nullable
    public final T getNextItem() {
        return this.nextItem;
    }

    public final int getNextState() {
        return this.nextState;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.nextState == -1) {
            calcNext();
        }
        return this.nextState == 1;
    }

    @Override // java.util.Iterator
    public T next() {
        if (this.nextState == -1) {
            calcNext();
        }
        if (this.nextState != 0) {
            T t3 = this.nextItem;
            this.nextItem = null;
            this.nextState = -1;
            return t3;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setNextItem(@Nullable T t3) {
        this.nextItem = t3;
    }

    public final void setNextState(int i2) {
        this.nextState = i2;
    }
}
