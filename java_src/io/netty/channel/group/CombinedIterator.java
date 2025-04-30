package io.netty.channel.group;

import io.netty.util.internal.ObjectUtil;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
final class CombinedIterator<E> implements Iterator<E> {
    private Iterator<E> currentIterator;

    /* renamed from: i1  reason: collision with root package name */
    private final Iterator<E> f65742i1;
    private final Iterator<E> i2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CombinedIterator(Iterator<E> it2, Iterator<E> it3) {
        this.f65742i1 = (Iterator) ObjectUtil.checkNotNull(it2, "i1");
        this.i2 = (Iterator) ObjectUtil.checkNotNull(it3, "i2");
        this.currentIterator = it2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (!this.currentIterator.hasNext()) {
            if (this.currentIterator != this.f65742i1) {
                return false;
            }
            this.currentIterator = this.i2;
        }
        return true;
    }

    @Override // java.util.Iterator
    public E next() {
        while (true) {
            try {
                return this.currentIterator.next();
            } catch (NoSuchElementException e4) {
                if (this.currentIterator != this.f65742i1) {
                    throw e4;
                }
                this.currentIterator = this.i2;
            }
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        this.currentIterator.remove();
    }
}
