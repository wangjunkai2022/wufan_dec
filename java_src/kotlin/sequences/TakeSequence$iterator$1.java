package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002R\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"kotlin/sequences/TakeSequence$iterator$1", "", "next", "()Ljava/lang/Object;", "", "hasNext", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "", "left", "I", "getLeft", "()I", "setLeft", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class TakeSequence$iterator$1<T> implements Iterator<T>, KMappedMarker {
    @NotNull
    private final Iterator<T> iterator;
    private int left;
    final /* synthetic */ TakeSequence this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TakeSequence$iterator$1(TakeSequence takeSequence) {
        int i2;
        Sequence sequence;
        this.this$0 = takeSequence;
        i2 = takeSequence.count;
        this.left = i2;
        sequence = takeSequence.sequence;
        this.iterator = sequence.iterator();
    }

    @NotNull
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    public final int getLeft() {
        return this.left;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.left > 0 && this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public T next() {
        int i2 = this.left;
        if (i2 != 0) {
            this.left = i2 - 1;
            return this.iterator.next();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setLeft(int i2) {
        this.left = i2;
    }
}
