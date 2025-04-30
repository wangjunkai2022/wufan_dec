package io.netty.channel.nio;

import java.nio.channels.SelectionKey;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class SelectedSelectionKeySet extends AbstractSet<SelectionKey> {
    SelectionKey[] keys = new SelectionKey[1024];
    int size;

    private void increaseCapacity() {
        SelectionKey[] selectionKeyArr = this.keys;
        SelectionKey[] selectionKeyArr2 = new SelectionKey[selectionKeyArr.length << 1];
        System.arraycopy(selectionKeyArr, 0, selectionKeyArr2, 0, this.size);
        this.keys = selectionKeyArr2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<SelectionKey> iterator() {
        return new Iterator<SelectionKey>() { // from class: io.netty.channel.nio.SelectedSelectionKeySet.1
            private int idx;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.idx < SelectedSelectionKeySet.this.size;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Iterator
            public SelectionKey next() {
                if (hasNext()) {
                    SelectionKey[] selectionKeyArr = SelectedSelectionKeySet.this.keys;
                    int i2 = this.idx;
                    this.idx = i2 + 1;
                    return selectionKeyArr[i2];
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        reset(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(SelectionKey selectionKey) {
        if (selectionKey == null) {
            return false;
        }
        SelectionKey[] selectionKeyArr = this.keys;
        int i2 = this.size;
        int i4 = i2 + 1;
        this.size = i4;
        selectionKeyArr[i2] = selectionKey;
        if (i4 == selectionKeyArr.length) {
            increaseCapacity();
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset(int i2) {
        Arrays.fill(this.keys, i2, this.size, (Object) null);
        this.size = 0;
    }
}
