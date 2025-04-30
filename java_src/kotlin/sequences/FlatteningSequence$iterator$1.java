package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\r*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0002H\u0096\u0002R\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR*\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\n\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"kotlin/sequences/FlatteningSequence$iterator$1", "", "", "ensureItemIterator", "next", "()Ljava/lang/Object;", "hasNext", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "itemIterator", "getItemIterator", "setItemIterator", "(Ljava/util/Iterator;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlatteningSequence$iterator$1<E> implements Iterator<E>, KMappedMarker {
    @Nullable
    private Iterator<? extends E> itemIterator;
    @NotNull
    private final Iterator<T> iterator;
    final /* synthetic */ FlatteningSequence this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlatteningSequence$iterator$1(FlatteningSequence flatteningSequence) {
        Sequence sequence;
        this.this$0 = flatteningSequence;
        sequence = flatteningSequence.sequence;
        this.iterator = sequence.iterator();
    }

    private final boolean ensureItemIterator() {
        Function1 function1;
        Function1 function12;
        Iterator<? extends E> it2 = this.itemIterator;
        if (it2 != null && !it2.hasNext()) {
            this.itemIterator = null;
        }
        while (true) {
            if (this.itemIterator == null) {
                if (!this.iterator.hasNext()) {
                    return false;
                }
                Object next = this.iterator.next();
                function1 = this.this$0.iterator;
                function12 = this.this$0.transformer;
                Iterator<? extends E> it3 = (Iterator) function1.invoke(function12.invoke(next));
                if (it3.hasNext()) {
                    this.itemIterator = it3;
                    break;
                }
            } else {
                break;
            }
        }
        return true;
    }

    @Nullable
    public final Iterator<E> getItemIterator() {
        return (Iterator<? extends E>) this.itemIterator;
    }

    @NotNull
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return ensureItemIterator();
    }

    @Override // java.util.Iterator
    public E next() {
        if (ensureItemIterator()) {
            Iterator<? extends E> it2 = this.itemIterator;
            Intrinsics.checkNotNull(it2);
            return it2.next();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setItemIterator(@Nullable Iterator<? extends E> it2) {
        this.itemIterator = it2;
    }
}
