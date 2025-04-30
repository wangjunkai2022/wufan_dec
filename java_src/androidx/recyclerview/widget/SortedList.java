package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class SortedList<T> {
    public static final int INVALID_POSITION = -1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f7225j = 10;

    /* renamed from: k  reason: collision with root package name */
    private static final int f7226k = 10;

    /* renamed from: l  reason: collision with root package name */
    private static final int f7227l = 1;

    /* renamed from: m  reason: collision with root package name */
    private static final int f7228m = 2;

    /* renamed from: n  reason: collision with root package name */
    private static final int f7229n = 4;

    /* renamed from: a  reason: collision with root package name */
    T[] f7230a;

    /* renamed from: b  reason: collision with root package name */
    private T[] f7231b;

    /* renamed from: c  reason: collision with root package name */
    private int f7232c;

    /* renamed from: d  reason: collision with root package name */
    private int f7233d;

    /* renamed from: e  reason: collision with root package name */
    private int f7234e;

    /* renamed from: f  reason: collision with root package name */
    private Callback f7235f;

    /* renamed from: g  reason: collision with root package name */
    private BatchedCallback f7236g;

    /* renamed from: h  reason: collision with root package name */
    private int f7237h;

    /* renamed from: i  reason: collision with root package name */
    private final Class<T> f7238i;

    /* loaded from: classes2.dex */
    public static class BatchedCallback<T2> extends Callback<T2> {

        /* renamed from: a  reason: collision with root package name */
        final Callback<T2> f7239a;

        /* renamed from: b  reason: collision with root package name */
        private final BatchingListUpdateCallback f7240b;

        public BatchedCallback(Callback<T2> callback) {
            this.f7239a = callback;
            this.f7240b = new BatchingListUpdateCallback(callback);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areContentsTheSame(T2 t22, T2 t23) {
            return this.f7239a.areContentsTheSame(t22, t23);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areItemsTheSame(T2 t22, T2 t23) {
            return this.f7239a.areItemsTheSame(t22, t23);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, java.util.Comparator
        public int compare(T2 t22, T2 t23) {
            return this.f7239a.compare(t22, t23);
        }

        public void dispatchLastEvent() {
            this.f7240b.dispatchLastEvent();
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        @Nullable
        public Object getChangePayload(T2 t22, T2 t23) {
            return this.f7239a.getChangePayload(t22, t23);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public void onChanged(int i2, int i4) {
            this.f7240b.onChanged(i2, i4, null);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onInserted(int i2, int i4) {
            this.f7240b.onInserted(i2, i4);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onMoved(int i2, int i4) {
            this.f7240b.onMoved(i2, i4);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onRemoved(int i2, int i4) {
            this.f7240b.onRemoved(i2, i4);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
        public void onChanged(int i2, int i4, Object obj) {
            this.f7240b.onChanged(i2, i4, obj);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class Callback<T2> implements Comparator<T2>, ListUpdateCallback {
        public abstract boolean areContentsTheSame(T2 t22, T2 t23);

        public abstract boolean areItemsTheSame(T2 t22, T2 t23);

        @Override // java.util.Comparator
        public abstract int compare(T2 t22, T2 t23);

        @Nullable
        public Object getChangePayload(T2 t22, T2 t23) {
            return null;
        }

        public abstract void onChanged(int i2, int i4);

        public void onChanged(int i2, int i4, Object obj) {
            onChanged(i2, i4);
        }
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback) {
        this(cls, callback, 10);
    }

    private int a(T t3, boolean z3) {
        int e4 = e(t3, this.f7230a, 0, this.f7237h, 1);
        if (e4 == -1) {
            e4 = 0;
        } else if (e4 < this.f7237h) {
            T t4 = this.f7230a[e4];
            if (this.f7235f.areItemsTheSame(t4, t3)) {
                if (this.f7235f.areContentsTheSame(t4, t3)) {
                    this.f7230a[e4] = t3;
                    return e4;
                }
                this.f7230a[e4] = t3;
                Callback callback = this.f7235f;
                callback.onChanged(e4, 1, callback.getChangePayload(t4, t3));
                return e4;
            }
        }
        c(e4, t3);
        if (z3) {
            this.f7235f.onInserted(e4, 1);
        }
        return e4;
    }

    private void b(T[] tArr) {
        if (tArr.length < 1) {
            return;
        }
        int n4 = n(tArr);
        if (this.f7237h == 0) {
            this.f7230a = tArr;
            this.f7237h = n4;
            this.f7235f.onInserted(0, n4);
            return;
        }
        h(tArr, n4);
    }

    private void c(int i2, T t3) {
        int i4 = this.f7237h;
        if (i2 <= i4) {
            T[] tArr = this.f7230a;
            if (i4 == tArr.length) {
                T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.f7238i, tArr.length + 10));
                System.arraycopy(this.f7230a, 0, tArr2, 0, i2);
                tArr2[i2] = t3;
                System.arraycopy(this.f7230a, i2, tArr2, i2 + 1, this.f7237h - i2);
                this.f7230a = tArr2;
            } else {
                System.arraycopy(tArr, i2, tArr, i2 + 1, i4 - i2);
                this.f7230a[i2] = t3;
            }
            this.f7237h++;
            return;
        }
        throw new IndexOutOfBoundsException("cannot add item to " + i2 + " because size is " + this.f7237h);
    }

    private T[] d(T[] tArr) {
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.f7238i, tArr.length));
        System.arraycopy(tArr, 0, tArr2, 0, tArr.length);
        return tArr2;
    }

    private int e(T t3, T[] tArr, int i2, int i4, int i5) {
        while (i2 < i4) {
            int i6 = (i2 + i4) / 2;
            T t4 = tArr[i6];
            int compare = this.f7235f.compare(t4, t3);
            if (compare < 0) {
                i2 = i6 + 1;
            } else if (compare == 0) {
                if (this.f7235f.areItemsTheSame(t4, t3)) {
                    return i6;
                }
                int g4 = g(t3, i6, i2, i4);
                return (i5 == 1 && g4 == -1) ? i6 : g4;
            } else {
                i4 = i6;
            }
        }
        if (i5 == 1) {
            return i2;
        }
        return -1;
    }

    private int f(T t3, T[] tArr, int i2, int i4) {
        while (i2 < i4) {
            if (this.f7235f.areItemsTheSame(tArr[i2], t3)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private int g(T t3, int i2, int i4, int i5) {
        T t4;
        for (int i6 = i2 - 1; i6 >= i4; i6--) {
            T t5 = this.f7230a[i6];
            if (this.f7235f.compare(t5, t3) != 0) {
                break;
            } else if (this.f7235f.areItemsTheSame(t5, t3)) {
                return i6;
            }
        }
        do {
            i2++;
            if (i2 >= i5) {
                return -1;
            }
            t4 = this.f7230a[i2];
            if (this.f7235f.compare(t4, t3) != 0) {
                return -1;
            }
        } while (!this.f7235f.areItemsTheSame(t4, t3));
        return i2;
    }

    private void h(T[] tArr, int i2) {
        boolean z3 = !(this.f7235f instanceof BatchedCallback);
        if (z3) {
            beginBatchedUpdates();
        }
        this.f7231b = this.f7230a;
        int i4 = 0;
        this.f7232c = 0;
        int i5 = this.f7237h;
        this.f7233d = i5;
        this.f7230a = (T[]) ((Object[]) Array.newInstance((Class<?>) this.f7238i, i5 + i2 + 10));
        this.f7234e = 0;
        while (true) {
            int i6 = this.f7232c;
            int i7 = this.f7233d;
            if (i6 >= i7 && i4 >= i2) {
                break;
            } else if (i6 == i7) {
                int i8 = i2 - i4;
                System.arraycopy(tArr, i4, this.f7230a, this.f7234e, i8);
                int i9 = this.f7234e + i8;
                this.f7234e = i9;
                this.f7237h += i8;
                this.f7235f.onInserted(i9 - i8, i8);
                break;
            } else if (i4 == i2) {
                int i10 = i7 - i6;
                System.arraycopy(this.f7231b, i6, this.f7230a, this.f7234e, i10);
                this.f7234e += i10;
                break;
            } else {
                T t3 = this.f7231b[i6];
                T t4 = tArr[i4];
                int compare = this.f7235f.compare(t3, t4);
                if (compare > 0) {
                    T[] tArr2 = this.f7230a;
                    int i11 = this.f7234e;
                    int i12 = i11 + 1;
                    this.f7234e = i12;
                    tArr2[i11] = t4;
                    this.f7237h++;
                    i4++;
                    this.f7235f.onInserted(i12 - 1, 1);
                } else if (compare == 0 && this.f7235f.areItemsTheSame(t3, t4)) {
                    T[] tArr3 = this.f7230a;
                    int i13 = this.f7234e;
                    this.f7234e = i13 + 1;
                    tArr3[i13] = t4;
                    i4++;
                    this.f7232c++;
                    if (!this.f7235f.areContentsTheSame(t3, t4)) {
                        Callback callback = this.f7235f;
                        callback.onChanged(this.f7234e - 1, 1, callback.getChangePayload(t3, t4));
                    }
                } else {
                    T[] tArr4 = this.f7230a;
                    int i14 = this.f7234e;
                    this.f7234e = i14 + 1;
                    tArr4[i14] = t3;
                    this.f7232c++;
                }
            }
        }
        this.f7231b = null;
        if (z3) {
            endBatchedUpdates();
        }
    }

    private boolean i(T t3, boolean z3) {
        int e4 = e(t3, this.f7230a, 0, this.f7237h, 2);
        if (e4 == -1) {
            return false;
        }
        j(e4, z3);
        return true;
    }

    private void j(int i2, boolean z3) {
        T[] tArr = this.f7230a;
        System.arraycopy(tArr, i2 + 1, tArr, i2, (this.f7237h - i2) - 1);
        int i4 = this.f7237h - 1;
        this.f7237h = i4;
        this.f7230a[i4] = null;
        if (z3) {
            this.f7235f.onRemoved(i2, 1);
        }
    }

    private void k(T t3) {
        T[] tArr = this.f7230a;
        int i2 = this.f7234e;
        tArr[i2] = t3;
        int i4 = i2 + 1;
        this.f7234e = i4;
        this.f7237h++;
        this.f7235f.onInserted(i4 - 1, 1);
    }

    private void l(@NonNull T[] tArr) {
        boolean z3 = !(this.f7235f instanceof BatchedCallback);
        if (z3) {
            beginBatchedUpdates();
        }
        this.f7232c = 0;
        this.f7233d = this.f7237h;
        this.f7231b = this.f7230a;
        this.f7234e = 0;
        int n4 = n(tArr);
        this.f7230a = (T[]) ((Object[]) Array.newInstance((Class<?>) this.f7238i, n4));
        while (true) {
            int i2 = this.f7234e;
            if (i2 >= n4 && this.f7232c >= this.f7233d) {
                break;
            }
            int i4 = this.f7232c;
            int i5 = this.f7233d;
            if (i4 >= i5) {
                int i6 = n4 - i2;
                System.arraycopy(tArr, i2, this.f7230a, i2, i6);
                this.f7234e += i6;
                this.f7237h += i6;
                this.f7235f.onInserted(i2, i6);
                break;
            } else if (i2 >= n4) {
                int i7 = i5 - i4;
                this.f7237h -= i7;
                this.f7235f.onRemoved(i2, i7);
                break;
            } else {
                T t3 = this.f7231b[i4];
                T t4 = tArr[i2];
                int compare = this.f7235f.compare(t3, t4);
                if (compare < 0) {
                    m();
                } else if (compare > 0) {
                    k(t4);
                } else if (!this.f7235f.areItemsTheSame(t3, t4)) {
                    m();
                    k(t4);
                } else {
                    T[] tArr2 = this.f7230a;
                    int i8 = this.f7234e;
                    tArr2[i8] = t4;
                    this.f7232c++;
                    this.f7234e = i8 + 1;
                    if (!this.f7235f.areContentsTheSame(t3, t4)) {
                        Callback callback = this.f7235f;
                        callback.onChanged(this.f7234e - 1, 1, callback.getChangePayload(t3, t4));
                    }
                }
            }
        }
        this.f7231b = null;
        if (z3) {
            endBatchedUpdates();
        }
    }

    private void m() {
        this.f7237h--;
        this.f7232c++;
        this.f7235f.onRemoved(this.f7234e, 1);
    }

    private int n(@NonNull T[] tArr) {
        if (tArr.length == 0) {
            return 0;
        }
        Arrays.sort(tArr, this.f7235f);
        int i2 = 1;
        int i4 = 0;
        for (int i5 = 1; i5 < tArr.length; i5++) {
            T t3 = tArr[i5];
            if (this.f7235f.compare(tArr[i4], t3) == 0) {
                int f4 = f(t3, tArr, i4, i2);
                if (f4 != -1) {
                    tArr[f4] = t3;
                } else {
                    if (i2 != i5) {
                        tArr[i2] = t3;
                    }
                    i2++;
                }
            } else {
                if (i2 != i5) {
                    tArr[i2] = t3;
                }
                i4 = i2;
                i2++;
            }
        }
        return i2;
    }

    private void o() {
        if (this.f7231b != null) {
            throw new IllegalStateException("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
        }
    }

    public int add(T t3) {
        o();
        return a(t3, true);
    }

    public void addAll(@NonNull T[] tArr, boolean z3) {
        o();
        if (tArr.length == 0) {
            return;
        }
        if (z3) {
            b(tArr);
        } else {
            b(d(tArr));
        }
    }

    public void beginBatchedUpdates() {
        o();
        Callback callback = this.f7235f;
        if (callback instanceof BatchedCallback) {
            return;
        }
        if (this.f7236g == null) {
            this.f7236g = new BatchedCallback(callback);
        }
        this.f7235f = this.f7236g;
    }

    public void clear() {
        o();
        int i2 = this.f7237h;
        if (i2 == 0) {
            return;
        }
        Arrays.fill(this.f7230a, 0, i2, (Object) null);
        this.f7237h = 0;
        this.f7235f.onRemoved(0, i2);
    }

    public void endBatchedUpdates() {
        o();
        Callback callback = this.f7235f;
        if (callback instanceof BatchedCallback) {
            ((BatchedCallback) callback).dispatchLastEvent();
        }
        Callback callback2 = this.f7235f;
        BatchedCallback batchedCallback = this.f7236g;
        if (callback2 == batchedCallback) {
            this.f7235f = batchedCallback.f7239a;
        }
    }

    public T get(int i2) throws IndexOutOfBoundsException {
        int i4;
        if (i2 < this.f7237h && i2 >= 0) {
            T[] tArr = this.f7231b;
            if (tArr != null && i2 >= (i4 = this.f7234e)) {
                return tArr[(i2 - i4) + this.f7232c];
            }
            return this.f7230a[i2];
        }
        throw new IndexOutOfBoundsException("Asked to get item at " + i2 + " but size is " + this.f7237h);
    }

    public int indexOf(T t3) {
        if (this.f7231b != null) {
            int e4 = e(t3, this.f7230a, 0, this.f7234e, 4);
            if (e4 != -1) {
                return e4;
            }
            int e5 = e(t3, this.f7231b, this.f7232c, this.f7233d, 4);
            if (e5 != -1) {
                return (e5 - this.f7232c) + this.f7234e;
            }
            return -1;
        }
        return e(t3, this.f7230a, 0, this.f7237h, 4);
    }

    public void recalculatePositionOfItemAt(int i2) {
        o();
        T t3 = get(i2);
        j(i2, false);
        int a4 = a(t3, false);
        if (i2 != a4) {
            this.f7235f.onMoved(i2, a4);
        }
    }

    public boolean remove(T t3) {
        o();
        return i(t3, true);
    }

    public T removeItemAt(int i2) {
        o();
        T t3 = get(i2);
        j(i2, true);
        return t3;
    }

    public void replaceAll(@NonNull T[] tArr, boolean z3) {
        o();
        if (z3) {
            l(tArr);
        } else {
            l(d(tArr));
        }
    }

    public int size() {
        return this.f7237h;
    }

    public void updateItemAt(int i2, T t3) {
        o();
        T t4 = get(i2);
        boolean z3 = t4 == t3 || !this.f7235f.areContentsTheSame(t4, t3);
        if (t4 != t3 && this.f7235f.compare(t4, t3) == 0) {
            this.f7230a[i2] = t3;
            if (z3) {
                Callback callback = this.f7235f;
                callback.onChanged(i2, 1, callback.getChangePayload(t4, t3));
                return;
            }
            return;
        }
        if (z3) {
            Callback callback2 = this.f7235f;
            callback2.onChanged(i2, 1, callback2.getChangePayload(t4, t3));
        }
        j(i2, false);
        int a4 = a(t3, false);
        if (i2 != a4) {
            this.f7235f.onMoved(i2, a4);
        }
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback, int i2) {
        this.f7238i = cls;
        this.f7230a = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i2));
        this.f7235f = callback;
        this.f7237h = 0;
    }

    public void replaceAll(@NonNull T... tArr) {
        replaceAll(tArr, false);
    }

    public void addAll(@NonNull T... tArr) {
        addAll(tArr, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void replaceAll(@NonNull Collection<T> collection) {
        replaceAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.f7238i, collection.size())), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(@NonNull Collection<T> collection) {
        addAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.f7238i, collection.size())), true);
    }
}
