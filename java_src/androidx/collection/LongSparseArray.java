package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {

    /* renamed from: e  reason: collision with root package name */
    private static final Object f1678e = new Object();

    /* renamed from: a  reason: collision with root package name */
    private boolean f1679a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f1680b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f1681c;

    /* renamed from: d  reason: collision with root package name */
    private int f1682d;

    public LongSparseArray() {
        this(10);
    }

    private void a() {
        int i2 = this.f1682d;
        long[] jArr = this.f1680b;
        Object[] objArr = this.f1681c;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            Object obj = objArr[i5];
            if (obj != f1678e) {
                if (i5 != i4) {
                    jArr[i4] = jArr[i5];
                    objArr[i4] = obj;
                    objArr[i5] = null;
                }
                i4++;
            }
        }
        this.f1679a = false;
        this.f1682d = i4;
    }

    public void append(long j4, E e4) {
        int i2 = this.f1682d;
        if (i2 != 0 && j4 <= this.f1680b[i2 - 1]) {
            put(j4, e4);
            return;
        }
        if (this.f1679a && i2 >= this.f1680b.length) {
            a();
        }
        int i4 = this.f1682d;
        if (i4 >= this.f1680b.length) {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(i4 + 1);
            long[] jArr = new long[idealLongArraySize];
            Object[] objArr = new Object[idealLongArraySize];
            long[] jArr2 = this.f1680b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f1681c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1680b = jArr;
            this.f1681c = objArr;
        }
        this.f1680b[i4] = j4;
        this.f1681c[i4] = e4;
        this.f1682d = i4 + 1;
    }

    public void clear() {
        int i2 = this.f1682d;
        Object[] objArr = this.f1681c;
        for (int i4 = 0; i4 < i2; i4++) {
            objArr[i4] = null;
        }
        this.f1682d = 0;
        this.f1679a = false;
    }

    public boolean containsKey(long j4) {
        return indexOfKey(j4) >= 0;
    }

    public boolean containsValue(E e4) {
        return indexOfValue(e4) >= 0;
    }

    @Deprecated
    public void delete(long j4) {
        remove(j4);
    }

    @Nullable
    public E get(long j4) {
        return get(j4, null);
    }

    public int indexOfKey(long j4) {
        if (this.f1679a) {
            a();
        }
        return ContainerHelpers.b(this.f1680b, this.f1682d, j4);
    }

    public int indexOfValue(E e4) {
        if (this.f1679a) {
            a();
        }
        for (int i2 = 0; i2 < this.f1682d; i2++) {
            if (this.f1681c[i2] == e4) {
                return i2;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public long keyAt(int i2) {
        if (this.f1679a) {
            a();
        }
        return this.f1680b[i2];
    }

    public void put(long j4, E e4) {
        int b4 = ContainerHelpers.b(this.f1680b, this.f1682d, j4);
        if (b4 >= 0) {
            this.f1681c[b4] = e4;
            return;
        }
        int i2 = b4 ^ (-1);
        int i4 = this.f1682d;
        if (i2 < i4) {
            Object[] objArr = this.f1681c;
            if (objArr[i2] == f1678e) {
                this.f1680b[i2] = j4;
                objArr[i2] = e4;
                return;
            }
        }
        if (this.f1679a && i4 >= this.f1680b.length) {
            a();
            i2 = ContainerHelpers.b(this.f1680b, this.f1682d, j4) ^ (-1);
        }
        int i5 = this.f1682d;
        if (i5 >= this.f1680b.length) {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(i5 + 1);
            long[] jArr = new long[idealLongArraySize];
            Object[] objArr2 = new Object[idealLongArraySize];
            long[] jArr2 = this.f1680b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f1681c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1680b = jArr;
            this.f1681c = objArr2;
        }
        int i6 = this.f1682d;
        if (i6 - i2 != 0) {
            long[] jArr3 = this.f1680b;
            int i7 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i7, i6 - i2);
            Object[] objArr4 = this.f1681c;
            System.arraycopy(objArr4, i2, objArr4, i7, this.f1682d - i2);
        }
        this.f1680b[i2] = j4;
        this.f1681c[i2] = e4;
        this.f1682d++;
    }

    public void putAll(@NonNull LongSparseArray<? extends E> longSparseArray) {
        int size = longSparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            put(longSparseArray.keyAt(i2), longSparseArray.valueAt(i2));
        }
    }

    @Nullable
    public E putIfAbsent(long j4, E e4) {
        E e5 = get(j4);
        if (e5 == null) {
            put(j4, e4);
        }
        return e5;
    }

    public void remove(long j4) {
        int b4 = ContainerHelpers.b(this.f1680b, this.f1682d, j4);
        if (b4 >= 0) {
            Object[] objArr = this.f1681c;
            Object obj = objArr[b4];
            Object obj2 = f1678e;
            if (obj != obj2) {
                objArr[b4] = obj2;
                this.f1679a = true;
            }
        }
    }

    public void removeAt(int i2) {
        Object[] objArr = this.f1681c;
        Object obj = objArr[i2];
        Object obj2 = f1678e;
        if (obj != obj2) {
            objArr[i2] = obj2;
            this.f1679a = true;
        }
    }

    @Nullable
    public E replace(long j4, E e4) {
        int indexOfKey = indexOfKey(j4);
        if (indexOfKey >= 0) {
            Object[] objArr = this.f1681c;
            E e5 = (E) objArr[indexOfKey];
            objArr[indexOfKey] = e4;
            return e5;
        }
        return null;
    }

    public void setValueAt(int i2, E e4) {
        if (this.f1679a) {
            a();
        }
        this.f1681c[i2] = e4;
    }

    public int size() {
        if (this.f1679a) {
            a();
        }
        return this.f1682d;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1682d * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f1682d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i2));
            sb.append('=');
            E valueAt = valueAt(i2);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E valueAt(int i2) {
        if (this.f1679a) {
            a();
        }
        return (E) this.f1681c[i2];
    }

    public LongSparseArray(int i2) {
        this.f1679a = false;
        if (i2 == 0) {
            this.f1680b = ContainerHelpers.f1676b;
            this.f1681c = ContainerHelpers.f1677c;
            return;
        }
        int idealLongArraySize = ContainerHelpers.idealLongArraySize(i2);
        this.f1680b = new long[idealLongArraySize];
        this.f1681c = new Object[idealLongArraySize];
    }

    /* renamed from: clone */
    public LongSparseArray<E> m0clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.f1680b = (long[]) this.f1680b.clone();
            longSparseArray.f1681c = (Object[]) this.f1681c.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e4) {
            throw new AssertionError(e4);
        }
    }

    public E get(long j4, E e4) {
        int b4 = ContainerHelpers.b(this.f1680b, this.f1682d, j4);
        if (b4 >= 0) {
            Object[] objArr = this.f1681c;
            if (objArr[b4] != f1678e) {
                return (E) objArr[b4];
            }
        }
        return e4;
    }

    public boolean replace(long j4, E e4, E e5) {
        int indexOfKey = indexOfKey(j4);
        if (indexOfKey >= 0) {
            Object obj = this.f1681c[indexOfKey];
            if (obj == e4 || (e4 != null && e4.equals(obj))) {
                this.f1681c[indexOfKey] = e5;
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean remove(long j4, Object obj) {
        int indexOfKey = indexOfKey(j4);
        if (indexOfKey >= 0) {
            E valueAt = valueAt(indexOfKey);
            if (obj == valueAt || (obj != null && obj.equals(valueAt))) {
                removeAt(indexOfKey);
                return true;
            }
            return false;
        }
        return false;
    }
}
