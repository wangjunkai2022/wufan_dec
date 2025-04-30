package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;
/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f1706d = false;

    /* renamed from: e  reason: collision with root package name */
    private static final String f1707e = "ArrayMap";

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f1708f = true;

    /* renamed from: g  reason: collision with root package name */
    private static final int f1709g = 4;

    /* renamed from: h  reason: collision with root package name */
    private static final int f1710h = 10;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    static Object[] f1711i;

    /* renamed from: j  reason: collision with root package name */
    static int f1712j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    static Object[] f1713k;

    /* renamed from: l  reason: collision with root package name */
    static int f1714l;

    /* renamed from: a  reason: collision with root package name */
    int[] f1715a;

    /* renamed from: b  reason: collision with root package name */
    Object[] f1716b;

    /* renamed from: c  reason: collision with root package name */
    int f1717c;

    public SimpleArrayMap() {
        this.f1715a = ContainerHelpers.f1675a;
        this.f1716b = ContainerHelpers.f1677c;
        this.f1717c = 0;
    }

    private void a(int i2) {
        if (i2 == 8) {
            synchronized (SimpleArrayMap.class) {
                Object[] objArr = f1713k;
                if (objArr != null) {
                    this.f1716b = objArr;
                    f1713k = (Object[]) objArr[0];
                    this.f1715a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f1714l--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (SimpleArrayMap.class) {
                Object[] objArr2 = f1711i;
                if (objArr2 != null) {
                    this.f1716b = objArr2;
                    f1711i = (Object[]) objArr2[0];
                    this.f1715a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f1712j--;
                    return;
                }
            }
        }
        this.f1715a = new int[i2];
        this.f1716b = new Object[i2 << 1];
    }

    private static int b(int[] iArr, int i2, int i4) {
        try {
            return ContainerHelpers.a(iArr, i2, i4);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private static void c(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (SimpleArrayMap.class) {
                if (f1714l < 10) {
                    objArr[0] = f1713k;
                    objArr[1] = iArr;
                    for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f1713k = objArr;
                    f1714l++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (SimpleArrayMap.class) {
                if (f1712j < 10) {
                    objArr[0] = f1711i;
                    objArr[1] = iArr;
                    for (int i5 = (i2 << 1) - 1; i5 >= 2; i5--) {
                        objArr[i5] = null;
                    }
                    f1711i = objArr;
                    f1712j++;
                }
            }
        }
    }

    public void clear() {
        int i2 = this.f1717c;
        if (i2 > 0) {
            int[] iArr = this.f1715a;
            Object[] objArr = this.f1716b;
            this.f1715a = ContainerHelpers.f1675a;
            this.f1716b = ContainerHelpers.f1677c;
            this.f1717c = 0;
            c(iArr, objArr, i2);
        }
        if (this.f1717c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        return indexOfKey(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return f(obj) >= 0;
    }

    int d(Object obj, int i2) {
        int i4 = this.f1717c;
        if (i4 == 0) {
            return -1;
        }
        int b4 = b(this.f1715a, i4, i2);
        if (b4 >= 0 && !obj.equals(this.f1716b[b4 << 1])) {
            int i5 = b4 + 1;
            while (i5 < i4 && this.f1715a[i5] == i2) {
                if (obj.equals(this.f1716b[i5 << 1])) {
                    return i5;
                }
                i5++;
            }
            for (int i6 = b4 - 1; i6 >= 0 && this.f1715a[i6] == i2; i6--) {
                if (obj.equals(this.f1716b[i6 << 1])) {
                    return i6;
                }
            }
            return i5 ^ (-1);
        }
        return b4;
    }

    int e() {
        int i2 = this.f1717c;
        if (i2 == 0) {
            return -1;
        }
        int b4 = b(this.f1715a, i2, 0);
        if (b4 >= 0 && this.f1716b[b4 << 1] != null) {
            int i4 = b4 + 1;
            while (i4 < i2 && this.f1715a[i4] == 0) {
                if (this.f1716b[i4 << 1] == null) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = b4 - 1; i5 >= 0 && this.f1715a[i5] == 0; i5--) {
                if (this.f1716b[i5 << 1] == null) {
                    return i5;
                }
            }
            return i4 ^ (-1);
        }
        return b4;
    }

    public void ensureCapacity(int i2) {
        int i4 = this.f1717c;
        int[] iArr = this.f1715a;
        if (iArr.length < i2) {
            Object[] objArr = this.f1716b;
            a(i2);
            if (this.f1717c > 0) {
                System.arraycopy(iArr, 0, this.f1715a, 0, i4);
                System.arraycopy(objArr, 0, this.f1716b, 0, i4 << 1);
            }
            c(iArr, objArr, i4);
        }
        if (this.f1717c != i4) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SimpleArrayMap) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
            if (size() != simpleArrayMap.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f1717c; i2++) {
                try {
                    K keyAt = keyAt(i2);
                    V valueAt = valueAt(i2);
                    Object obj2 = simpleArrayMap.get(keyAt);
                    if (valueAt == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(keyAt)) {
                            return false;
                        }
                    } else if (!valueAt.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i4 = 0; i4 < this.f1717c; i4++) {
                try {
                    K keyAt2 = keyAt(i4);
                    V valueAt2 = valueAt(i4);
                    Object obj3 = map.get(keyAt2);
                    if (valueAt2 == null) {
                        if (obj3 != null || !map.containsKey(keyAt2)) {
                            return false;
                        }
                    } else if (!valueAt2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f(Object obj) {
        int i2 = this.f1717c * 2;
        Object[] objArr = this.f1716b;
        if (obj == null) {
            for (int i4 = 1; i4 < i2; i4 += 2) {
                if (objArr[i4] == null) {
                    return i4 >> 1;
                }
            }
            return -1;
        }
        for (int i5 = 1; i5 < i2; i5 += 2) {
            if (obj.equals(objArr[i5])) {
                return i5 >> 1;
            }
        }
        return -1;
    }

    @Nullable
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v3) {
        int indexOfKey = indexOfKey(obj);
        return indexOfKey >= 0 ? (V) this.f1716b[(indexOfKey << 1) + 1] : v3;
    }

    public int hashCode() {
        int[] iArr = this.f1715a;
        Object[] objArr = this.f1716b;
        int i2 = this.f1717c;
        int i4 = 1;
        int i5 = 0;
        int i6 = 0;
        while (i5 < i2) {
            Object obj = objArr[i4];
            i6 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i5];
            i5++;
            i4 += 2;
        }
        return i6;
    }

    public int indexOfKey(@Nullable Object obj) {
        return obj == null ? e() : d(obj, obj.hashCode());
    }

    public boolean isEmpty() {
        return this.f1717c <= 0;
    }

    public K keyAt(int i2) {
        return (K) this.f1716b[i2 << 1];
    }

    @Nullable
    public V put(K k4, V v3) {
        int i2;
        int d4;
        int i4 = this.f1717c;
        if (k4 == null) {
            d4 = e();
            i2 = 0;
        } else {
            int hashCode = k4.hashCode();
            i2 = hashCode;
            d4 = d(k4, hashCode);
        }
        if (d4 >= 0) {
            int i5 = (d4 << 1) + 1;
            Object[] objArr = this.f1716b;
            V v4 = (V) objArr[i5];
            objArr[i5] = v3;
            return v4;
        }
        int i6 = d4 ^ (-1);
        int[] iArr = this.f1715a;
        if (i4 >= iArr.length) {
            int i7 = 4;
            if (i4 >= 8) {
                i7 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i7 = 8;
            }
            Object[] objArr2 = this.f1716b;
            a(i7);
            if (i4 == this.f1717c) {
                int[] iArr2 = this.f1715a;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f1716b, 0, objArr2.length);
                }
                c(iArr, objArr2, i4);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i6 < i4) {
            int[] iArr3 = this.f1715a;
            int i8 = i6 + 1;
            System.arraycopy(iArr3, i6, iArr3, i8, i4 - i6);
            Object[] objArr3 = this.f1716b;
            System.arraycopy(objArr3, i6 << 1, objArr3, i8 << 1, (this.f1717c - i6) << 1);
        }
        int i9 = this.f1717c;
        if (i4 == i9) {
            int[] iArr4 = this.f1715a;
            if (i6 < iArr4.length) {
                iArr4[i6] = i2;
                Object[] objArr4 = this.f1716b;
                int i10 = i6 << 1;
                objArr4[i10] = k4;
                objArr4[i10 + 1] = v3;
                this.f1717c = i9 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(@NonNull SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int i2 = simpleArrayMap.f1717c;
        ensureCapacity(this.f1717c + i2);
        if (this.f1717c != 0) {
            for (int i4 = 0; i4 < i2; i4++) {
                put(simpleArrayMap.keyAt(i4), simpleArrayMap.valueAt(i4));
            }
        } else if (i2 > 0) {
            System.arraycopy(simpleArrayMap.f1715a, 0, this.f1715a, 0, i2);
            System.arraycopy(simpleArrayMap.f1716b, 0, this.f1716b, 0, i2 << 1);
            this.f1717c = i2;
        }
    }

    @Nullable
    public V putIfAbsent(K k4, V v3) {
        V v4 = get(k4);
        return v4 == null ? put(k4, v3) : v4;
    }

    @Nullable
    public V remove(Object obj) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            return removeAt(indexOfKey);
        }
        return null;
    }

    public V removeAt(int i2) {
        Object[] objArr = this.f1716b;
        int i4 = i2 << 1;
        V v3 = (V) objArr[i4 + 1];
        int i5 = this.f1717c;
        int i6 = 0;
        if (i5 <= 1) {
            c(this.f1715a, objArr, i5);
            this.f1715a = ContainerHelpers.f1675a;
            this.f1716b = ContainerHelpers.f1677c;
        } else {
            int i7 = i5 - 1;
            int[] iArr = this.f1715a;
            if (iArr.length > 8 && i5 < iArr.length / 3) {
                a(i5 > 8 ? i5 + (i5 >> 1) : 8);
                if (i5 != this.f1717c) {
                    throw new ConcurrentModificationException();
                }
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.f1715a, 0, i2);
                    System.arraycopy(objArr, 0, this.f1716b, 0, i4);
                }
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    int i9 = i7 - i2;
                    System.arraycopy(iArr, i8, this.f1715a, i2, i9);
                    System.arraycopy(objArr, i8 << 1, this.f1716b, i4, i9 << 1);
                }
            } else {
                if (i2 < i7) {
                    int i10 = i2 + 1;
                    int i11 = i7 - i2;
                    System.arraycopy(iArr, i10, iArr, i2, i11);
                    Object[] objArr2 = this.f1716b;
                    System.arraycopy(objArr2, i10 << 1, objArr2, i4, i11 << 1);
                }
                Object[] objArr3 = this.f1716b;
                int i12 = i7 << 1;
                objArr3[i12] = null;
                objArr3[i12 + 1] = null;
            }
            i6 = i7;
        }
        if (i5 == this.f1717c) {
            this.f1717c = i6;
            return v3;
        }
        throw new ConcurrentModificationException();
    }

    @Nullable
    public V replace(K k4, V v3) {
        int indexOfKey = indexOfKey(k4);
        if (indexOfKey >= 0) {
            return setValueAt(indexOfKey, v3);
        }
        return null;
    }

    public V setValueAt(int i2, V v3) {
        int i4 = (i2 << 1) + 1;
        Object[] objArr = this.f1716b;
        V v4 = (V) objArr[i4];
        objArr[i4] = v3;
        return v4;
    }

    public int size() {
        return this.f1717c;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1717c * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f1717c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K keyAt = keyAt(i2);
            if (keyAt != this) {
                sb.append(keyAt);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V valueAt = valueAt(i2);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public V valueAt(int i2) {
        return (V) this.f1716b[(i2 << 1) + 1];
    }

    public boolean remove(Object obj, Object obj2) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            V valueAt = valueAt(indexOfKey);
            if (obj2 == valueAt || (obj2 != null && obj2.equals(valueAt))) {
                removeAt(indexOfKey);
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean replace(K k4, V v3, V v4) {
        int indexOfKey = indexOfKey(k4);
        if (indexOfKey >= 0) {
            V valueAt = valueAt(indexOfKey);
            if (valueAt == v3 || (v3 != null && v3.equals(valueAt))) {
                setValueAt(indexOfKey, v4);
                return true;
            }
            return false;
        }
        return false;
    }

    public SimpleArrayMap(int i2) {
        if (i2 == 0) {
            this.f1715a = ContainerHelpers.f1675a;
            this.f1716b = ContainerHelpers.f1677c;
        } else {
            a(i2);
        }
        this.f1717c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this();
        if (simpleArrayMap != 0) {
            putAll(simpleArrayMap);
        }
    }
}
