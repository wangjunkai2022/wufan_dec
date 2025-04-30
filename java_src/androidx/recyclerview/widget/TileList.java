package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.lang.reflect.Array;
/* loaded from: classes2.dex */
class TileList<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f7309a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<Tile<T>> f7310b = new SparseArray<>(10);

    /* renamed from: c  reason: collision with root package name */
    Tile<T> f7311c;

    /* loaded from: classes2.dex */
    public static class Tile<T> {

        /* renamed from: a  reason: collision with root package name */
        Tile<T> f7312a;
        public int mItemCount;
        public final T[] mItems;
        public int mStartPosition;

        public Tile(Class<T> cls, int i2) {
            this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i2));
        }

        boolean a(int i2) {
            int i4 = this.mStartPosition;
            return i4 <= i2 && i2 < i4 + this.mItemCount;
        }

        T b(int i2) {
            return this.mItems[i2 - this.mStartPosition];
        }
    }

    public TileList(int i2) {
        this.f7309a = i2;
    }

    public Tile<T> addOrReplace(Tile<T> tile) {
        int indexOfKey = this.f7310b.indexOfKey(tile.mStartPosition);
        if (indexOfKey < 0) {
            this.f7310b.put(tile.mStartPosition, tile);
            return null;
        }
        Tile<T> valueAt = this.f7310b.valueAt(indexOfKey);
        this.f7310b.setValueAt(indexOfKey, tile);
        if (this.f7311c == valueAt) {
            this.f7311c = tile;
        }
        return valueAt;
    }

    public void clear() {
        this.f7310b.clear();
    }

    public Tile<T> getAtIndex(int i2) {
        if (i2 < 0 || i2 >= this.f7310b.size()) {
            return null;
        }
        return this.f7310b.valueAt(i2);
    }

    public T getItemAt(int i2) {
        Tile<T> tile = this.f7311c;
        if (tile == null || !tile.a(i2)) {
            int indexOfKey = this.f7310b.indexOfKey(i2 - (i2 % this.f7309a));
            if (indexOfKey < 0) {
                return null;
            }
            this.f7311c = this.f7310b.valueAt(indexOfKey);
        }
        return this.f7311c.b(i2);
    }

    public Tile<T> removeAtPos(int i2) {
        Tile<T> tile = this.f7310b.get(i2);
        if (this.f7311c == tile) {
            this.f7311c = null;
        }
        this.f7310b.delete(i2);
        return tile;
    }

    public int size() {
        return this.f7310b.size();
    }
}
