package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E> {

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f1652e = false;

    /* renamed from: f  reason: collision with root package name */
    private static final String f1653f = "ArraySet";

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f1654g = new int[0];

    /* renamed from: h  reason: collision with root package name */
    private static final Object[] f1655h = new Object[0];

    /* renamed from: i  reason: collision with root package name */
    private static final int f1656i = 4;

    /* renamed from: j  reason: collision with root package name */
    private static final int f1657j = 10;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static Object[] f1658k;

    /* renamed from: l  reason: collision with root package name */
    private static int f1659l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static Object[] f1660m;

    /* renamed from: n  reason: collision with root package name */
    private static int f1661n;

    /* renamed from: a  reason: collision with root package name */
    private int[] f1662a;

    /* renamed from: b  reason: collision with root package name */
    Object[] f1663b;

    /* renamed from: c  reason: collision with root package name */
    int f1664c;

    /* renamed from: d  reason: collision with root package name */
    private MapCollections<E, E> f1665d;

    public ArraySet() {
        this(0);
    }

    private void a(int i2) {
        if (i2 == 8) {
            synchronized (ArraySet.class) {
                Object[] objArr = f1660m;
                if (objArr != null) {
                    this.f1663b = objArr;
                    f1660m = (Object[]) objArr[0];
                    this.f1662a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f1661n--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (ArraySet.class) {
                Object[] objArr2 = f1658k;
                if (objArr2 != null) {
                    this.f1663b = objArr2;
                    f1658k = (Object[]) objArr2[0];
                    this.f1662a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f1659l--;
                    return;
                }
            }
        }
        this.f1662a = new int[i2];
        this.f1663b = new Object[i2];
    }

    private static void b(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                if (f1661n < 10) {
                    objArr[0] = f1660m;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f1660m = objArr;
                    f1661n++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                if (f1659l < 10) {
                    objArr[0] = f1658k;
                    objArr[1] = iArr;
                    for (int i5 = i2 - 1; i5 >= 2; i5--) {
                        objArr[i5] = null;
                    }
                    f1658k = objArr;
                    f1659l++;
                }
            }
        }
    }

    private MapCollections<E, E> c() {
        if (this.f1665d == null) {
            this.f1665d = new MapCollections<E, E>() { // from class: androidx.collection.ArraySet.1
                @Override // androidx.collection.MapCollections
                protected void a() {
                    ArraySet.this.clear();
                }

                @Override // androidx.collection.MapCollections
                protected Object b(int i2, int i4) {
                    return ArraySet.this.f1663b[i2];
                }

                @Override // androidx.collection.MapCollections
                protected Map<E, E> c() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.collection.MapCollections
                protected int d() {
                    return ArraySet.this.f1664c;
                }

                @Override // androidx.collection.MapCollections
                protected int e(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override // androidx.collection.MapCollections
                protected int f(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override // androidx.collection.MapCollections
                protected void g(E e4, E e5) {
                    ArraySet.this.add(e4);
                }

                @Override // androidx.collection.MapCollections
                protected void h(int i2) {
                    ArraySet.this.removeAt(i2);
                }

                @Override // androidx.collection.MapCollections
                protected E i(int i2, E e4) {
                    throw new UnsupportedOperationException("not a map");
                }
            };
        }
        return this.f1665d;
    }

    private int d(Object obj, int i2) {
        int i4 = this.f1664c;
        if (i4 == 0) {
            return -1;
        }
        int a4 = ContainerHelpers.a(this.f1662a, i4, i2);
        if (a4 >= 0 && !obj.equals(this.f1663b[a4])) {
            int i5 = a4 + 1;
            while (i5 < i4 && this.f1662a[i5] == i2) {
                if (obj.equals(this.f1663b[i5])) {
                    return i5;
                }
                i5++;
            }
            for (int i6 = a4 - 1; i6 >= 0 && this.f1662a[i6] == i2; i6--) {
                if (obj.equals(this.f1663b[i6])) {
                    return i6;
                }
            }
            return i5 ^ (-1);
        }
        return a4;
    }

    private int f() {
        int i2 = this.f1664c;
        if (i2 == 0) {
            return -1;
        }
        int a4 = ContainerHelpers.a(this.f1662a, i2, 0);
        if (a4 >= 0 && this.f1663b[a4] != null) {
            int i4 = a4 + 1;
            while (i4 < i2 && this.f1662a[i4] == 0) {
                if (this.f1663b[i4] == null) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = a4 - 1; i5 >= 0 && this.f1662a[i5] == 0; i5--) {
                if (this.f1663b[i5] == null) {
                    return i5;
                }
            }
            return i4 ^ (-1);
        }
        return a4;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e4) {
        int i2;
        int d4;
        if (e4 == null) {
            d4 = f();
            i2 = 0;
        } else {
            int hashCode = e4.hashCode();
            i2 = hashCode;
            d4 = d(e4, hashCode);
        }
        if (d4 >= 0) {
            return false;
        }
        int i4 = d4 ^ (-1);
        int i5 = this.f1664c;
        int[] iArr = this.f1662a;
        if (i5 >= iArr.length) {
            int i6 = 4;
            if (i5 >= 8) {
                i6 = (i5 >> 1) + i5;
            } else if (i5 >= 4) {
                i6 = 8;
            }
            Object[] objArr = this.f1663b;
            a(i6);
            int[] iArr2 = this.f1662a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f1663b, 0, objArr.length);
            }
            b(iArr, objArr, this.f1664c);
        }
        int i7 = this.f1664c;
        if (i4 < i7) {
            int[] iArr3 = this.f1662a;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr2 = this.f1663b;
            System.arraycopy(objArr2, i4, objArr2, i8, this.f1664c - i4);
        }
        this.f1662a[i4] = i2;
        this.f1663b[i4] = e4;
        this.f1664c++;
        return true;
    }

    public void addAll(@NonNull ArraySet<? extends E> arraySet) {
        int i2 = arraySet.f1664c;
        ensureCapacity(this.f1664c + i2);
        if (this.f1664c != 0) {
            for (int i4 = 0; i4 < i2; i4++) {
                add(arraySet.valueAt(i4));
            }
        } else if (i2 > 0) {
            System.arraycopy(arraySet.f1662a, 0, this.f1662a, 0, i2);
            System.arraycopy(arraySet.f1663b, 0, this.f1663b, 0, i2);
            this.f1664c = i2;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.f1664c;
        if (i2 != 0) {
            b(this.f1662a, this.f1663b, i2);
            this.f1662a = f1654g;
            this.f1663b = f1655h;
            this.f1664c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public void ensureCapacity(int i2) {
        int[] iArr = this.f1662a;
        if (iArr.length < i2) {
            Object[] objArr = this.f1663b;
            a(i2);
            int i4 = this.f1664c;
            if (i4 > 0) {
                System.arraycopy(iArr, 0, this.f1662a, 0, i4);
                System.arraycopy(objArr, 0, this.f1663b, 0, this.f1664c);
            }
            b(iArr, objArr, this.f1664c);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f1664c; i2++) {
                try {
                    if (!set.contains(valueAt(i2))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f1662a;
        int i2 = this.f1664c;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 += iArr[i5];
        }
        return i4;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? f() : d(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f1664c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return c().getKeySet().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            removeAt(indexOf);
            return true;
        }
        return false;
    }

    public boolean removeAll(@NonNull ArraySet<? extends E> arraySet) {
        int i2 = arraySet.f1664c;
        int i4 = this.f1664c;
        for (int i5 = 0; i5 < i2; i5++) {
            remove(arraySet.valueAt(i5));
        }
        return i4 != this.f1664c;
    }

    public E removeAt(int i2) {
        Object[] objArr = this.f1663b;
        E e4 = (E) objArr[i2];
        int i4 = this.f1664c;
        if (i4 <= 1) {
            b(this.f1662a, objArr, i4);
            this.f1662a = f1654g;
            this.f1663b = f1655h;
            this.f1664c = 0;
        } else {
            int[] iArr = this.f1662a;
            if (iArr.length > 8 && i4 < iArr.length / 3) {
                a(i4 > 8 ? i4 + (i4 >> 1) : 8);
                this.f1664c--;
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.f1662a, 0, i2);
                    System.arraycopy(objArr, 0, this.f1663b, 0, i2);
                }
                int i5 = this.f1664c;
                if (i2 < i5) {
                    int i6 = i2 + 1;
                    System.arraycopy(iArr, i6, this.f1662a, i2, i5 - i2);
                    System.arraycopy(objArr, i6, this.f1663b, i2, this.f1664c - i2);
                }
            } else {
                int i7 = i4 - 1;
                this.f1664c = i7;
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    System.arraycopy(iArr, i8, iArr, i2, i7 - i2);
                    Object[] objArr2 = this.f1663b;
                    System.arraycopy(objArr2, i8, objArr2, i2, this.f1664c - i2);
                }
                this.f1663b[this.f1664c] = null;
            }
        }
        return e4;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z3 = false;
        for (int i2 = this.f1664c - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f1663b[i2])) {
                removeAt(i2);
                z3 = true;
            }
        }
        return z3;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f1664c;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        int i2 = this.f1664c;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f1663b, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1664c * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f1664c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E valueAt = valueAt(i2);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Nullable
    public E valueAt(int i2) {
        return (E) this.f1663b[i2];
    }

    public ArraySet(int i2) {
        if (i2 == 0) {
            this.f1662a = f1654g;
            this.f1663b = f1655h;
        } else {
            a(i2);
        }
        this.f1664c = 0;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        if (tArr.length < this.f1664c) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f1664c));
        }
        System.arraycopy(this.f1663b, 0, tArr, 0, this.f1664c);
        int length = tArr.length;
        int i2 = this.f1664c;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z3 = false;
        while (it2.hasNext()) {
            z3 |= remove(it2.next());
        }
        return z3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        ensureCapacity(this.f1664c + collection.size());
        boolean z3 = false;
        for (E e4 : collection) {
            z3 |= add(e4);
        }
        return z3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }
}
