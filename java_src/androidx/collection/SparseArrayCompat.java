package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {

    /* renamed from: e  reason: collision with root package name */
    private static final Object f1718e = new Object();

    /* renamed from: a  reason: collision with root package name */
    private boolean f1719a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f1720b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f1721c;

    /* renamed from: d  reason: collision with root package name */
    private int f1722d;

    public SparseArrayCompat() {
        this(10);
    }

    private void a() {
        int i2 = this.f1722d;
        int[] iArr = this.f1720b;
        Object[] objArr = this.f1721c;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            Object obj = objArr[i5];
            if (obj != f1718e) {
                if (i5 != i4) {
                    iArr[i4] = iArr[i5];
                    objArr[i4] = obj;
                    objArr[i5] = null;
                }
                i4++;
            }
        }
        this.f1719a = false;
        this.f1722d = i4;
    }

    public void append(int i2, E e4) {
        int i4 = this.f1722d;
        if (i4 != 0 && i2 <= this.f1720b[i4 - 1]) {
            put(i2, e4);
            return;
        }
        if (this.f1719a && i4 >= this.f1720b.length) {
            a();
        }
        int i5 = this.f1722d;
        if (i5 >= this.f1720b.length) {
            int idealIntArraySize = ContainerHelpers.idealIntArraySize(i5 + 1);
            int[] iArr = new int[idealIntArraySize];
            Object[] objArr = new Object[idealIntArraySize];
            int[] iArr2 = this.f1720b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f1721c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1720b = iArr;
            this.f1721c = objArr;
        }
        this.f1720b[i5] = i2;
        this.f1721c[i5] = e4;
        this.f1722d = i5 + 1;
    }

    public void clear() {
        int i2 = this.f1722d;
        Object[] objArr = this.f1721c;
        for (int i4 = 0; i4 < i2; i4++) {
            objArr[i4] = null;
        }
        this.f1722d = 0;
        this.f1719a = false;
    }

    public boolean containsKey(int i2) {
        return indexOfKey(i2) >= 0;
    }

    public boolean containsValue(E e4) {
        return indexOfValue(e4) >= 0;
    }

    @Deprecated
    public void delete(int i2) {
        remove(i2);
    }

    @Nullable
    public E get(int i2) {
        return get(i2, null);
    }

    public int indexOfKey(int i2) {
        if (this.f1719a) {
            a();
        }
        return ContainerHelpers.a(this.f1720b, this.f1722d, i2);
    }

    public int indexOfValue(E e4) {
        if (this.f1719a) {
            a();
        }
        for (int i2 = 0; i2 < this.f1722d; i2++) {
            if (this.f1721c[i2] == e4) {
                return i2;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int i2) {
        if (this.f1719a) {
            a();
        }
        return this.f1720b[i2];
    }

    public void put(int i2, E e4) {
        int a4 = ContainerHelpers.a(this.f1720b, this.f1722d, i2);
        if (a4 >= 0) {
            this.f1721c[a4] = e4;
            return;
        }
        int i4 = a4 ^ (-1);
        int i5 = this.f1722d;
        if (i4 < i5) {
            Object[] objArr = this.f1721c;
            if (objArr[i4] == f1718e) {
                this.f1720b[i4] = i2;
                objArr[i4] = e4;
                return;
            }
        }
        if (this.f1719a && i5 >= this.f1720b.length) {
            a();
            i4 = ContainerHelpers.a(this.f1720b, this.f1722d, i2) ^ (-1);
        }
        int i6 = this.f1722d;
        if (i6 >= this.f1720b.length) {
            int idealIntArraySize = ContainerHelpers.idealIntArraySize(i6 + 1);
            int[] iArr = new int[idealIntArraySize];
            Object[] objArr2 = new Object[idealIntArraySize];
            int[] iArr2 = this.f1720b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f1721c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1720b = iArr;
            this.f1721c = objArr2;
        }
        int i7 = this.f1722d;
        if (i7 - i4 != 0) {
            int[] iArr3 = this.f1720b;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr4 = this.f1721c;
            System.arraycopy(objArr4, i4, objArr4, i8, this.f1722d - i4);
        }
        this.f1720b[i4] = i2;
        this.f1721c[i4] = e4;
        this.f1722d++;
    }

    public void putAll(@NonNull SparseArrayCompat<? extends E> sparseArrayCompat) {
        int size = sparseArrayCompat.size();
        for (int i2 = 0; i2 < size; i2++) {
            put(sparseArrayCompat.keyAt(i2), sparseArrayCompat.valueAt(i2));
        }
    }

    @Nullable
    public E putIfAbsent(int i2, E e4) {
        E e5 = get(i2);
        if (e5 == null) {
            put(i2, e4);
        }
        return e5;
    }

    public void remove(int i2) {
        int a4 = ContainerHelpers.a(this.f1720b, this.f1722d, i2);
        if (a4 >= 0) {
            Object[] objArr = this.f1721c;
            Object obj = objArr[a4];
            Object obj2 = f1718e;
            if (obj != obj2) {
                objArr[a4] = obj2;
                this.f1719a = true;
            }
        }
    }

    public void removeAt(int i2) {
        Object[] objArr = this.f1721c;
        Object obj = objArr[i2];
        Object obj2 = f1718e;
        if (obj != obj2) {
            objArr[i2] = obj2;
            this.f1719a = true;
        }
    }

    public void removeAtRange(int i2, int i4) {
        int min = Math.min(this.f1722d, i4 + i2);
        while (i2 < min) {
            removeAt(i2);
            i2++;
        }
    }

    @Nullable
    public E replace(int i2, E e4) {
        int indexOfKey = indexOfKey(i2);
        if (indexOfKey >= 0) {
            Object[] objArr = this.f1721c;
            E e5 = (E) objArr[indexOfKey];
            objArr[indexOfKey] = e4;
            return e5;
        }
        return null;
    }

    public void setValueAt(int i2, E e4) {
        if (this.f1719a) {
            a();
        }
        this.f1721c[i2] = e4;
    }

    public int size() {
        if (this.f1719a) {
            a();
        }
        return this.f1722d;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1722d * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f1722d; i2++) {
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
        if (this.f1719a) {
            a();
        }
        return (E) this.f1721c[i2];
    }

    public SparseArrayCompat(int i2) {
        this.f1719a = false;
        if (i2 == 0) {
            this.f1720b = ContainerHelpers.f1675a;
            this.f1721c = ContainerHelpers.f1677c;
            return;
        }
        int idealIntArraySize = ContainerHelpers.idealIntArraySize(i2);
        this.f1720b = new int[idealIntArraySize];
        this.f1721c = new Object[idealIntArraySize];
    }

    /* renamed from: clone */
    public SparseArrayCompat<E> m1clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.f1720b = (int[]) this.f1720b.clone();
            sparseArrayCompat.f1721c = (Object[]) this.f1721c.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e4) {
            throw new AssertionError(e4);
        }
    }

    public E get(int i2, E e4) {
        int a4 = ContainerHelpers.a(this.f1720b, this.f1722d, i2);
        if (a4 >= 0) {
            Object[] objArr = this.f1721c;
            if (objArr[a4] != f1718e) {
                return (E) objArr[a4];
            }
        }
        return e4;
    }

    public boolean replace(int i2, E e4, E e5) {
        int indexOfKey = indexOfKey(i2);
        if (indexOfKey >= 0) {
            Object obj = this.f1721c[indexOfKey];
            if (obj == e4 || (e4 != null && e4.equals(obj))) {
                this.f1721c[indexOfKey] = e5;
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean remove(int i2, Object obj) {
        int indexOfKey = indexOfKey(i2);
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
