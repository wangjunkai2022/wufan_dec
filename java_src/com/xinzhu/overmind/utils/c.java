package com.xinzhu.overmind.utils;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: ArraySet.java */
/* loaded from: classes3.dex */
public final class c<E> implements Collection<E>, Set<E> {

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f64679e = false;

    /* renamed from: f  reason: collision with root package name */
    private static final String f64680f = "ArraySet";

    /* renamed from: g  reason: collision with root package name */
    private static final int f64681g = 4;

    /* renamed from: h  reason: collision with root package name */
    private static final int f64682h = 10;

    /* renamed from: i  reason: collision with root package name */
    static Object[] f64683i;

    /* renamed from: j  reason: collision with root package name */
    static int f64684j;

    /* renamed from: k  reason: collision with root package name */
    static Object[] f64685k;

    /* renamed from: l  reason: collision with root package name */
    static int f64686l;

    /* renamed from: a  reason: collision with root package name */
    int[] f64687a;

    /* renamed from: b  reason: collision with root package name */
    Object[] f64688b;

    /* renamed from: c  reason: collision with root package name */
    int f64689c;

    /* renamed from: d  reason: collision with root package name */
    n<E, E> f64690d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArraySet.java */
    /* loaded from: classes3.dex */
    public class a extends n<E, E> {
        a() {
        }

        @Override // com.xinzhu.overmind.utils.n
        protected void a() {
            c.this.clear();
        }

        @Override // com.xinzhu.overmind.utils.n
        protected Object b(int index, int offset) {
            return c.this.f64688b[index];
        }

        @Override // com.xinzhu.overmind.utils.n
        protected Map<E, E> c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // com.xinzhu.overmind.utils.n
        protected int d() {
            return c.this.f64689c;
        }

        @Override // com.xinzhu.overmind.utils.n
        protected int e(Object key) {
            return c.this.indexOf(key);
        }

        @Override // com.xinzhu.overmind.utils.n
        protected int f(Object value) {
            return c.this.indexOf(value);
        }

        @Override // com.xinzhu.overmind.utils.n
        protected void g(E key, E value) {
            c.this.add(key);
        }

        @Override // com.xinzhu.overmind.utils.n
        protected void h(int index) {
            c.this.n(index);
        }

        @Override // com.xinzhu.overmind.utils.n
        protected E i(int index, E value) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public c() {
        this.f64687a = new int[0];
        this.f64688b = new Object[0];
        this.f64689c = 0;
    }

    private void b(final int size) {
        if (size == 8) {
            synchronized (c.class) {
                Object[] objArr = f64685k;
                if (objArr != null) {
                    this.f64688b = objArr;
                    f64685k = (Object[]) objArr[0];
                    this.f64687a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f64686l--;
                    return;
                }
            }
        } else if (size == 4) {
            synchronized (c.class) {
                Object[] objArr2 = f64683i;
                if (objArr2 != null) {
                    this.f64688b = objArr2;
                    f64683i = (Object[]) objArr2[0];
                    this.f64687a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f64684j--;
                    return;
                }
            }
        }
        this.f64687a = new int[size];
        this.f64688b = new Object[size];
    }

    private static void d(final int[] hashes, final Object[] array, final int size) {
        if (hashes.length == 8) {
            synchronized (c.class) {
                if (f64686l < 10) {
                    array[0] = f64685k;
                    array[1] = hashes;
                    for (int i2 = size - 1; i2 >= 2; i2--) {
                        array[i2] = null;
                    }
                    f64685k = array;
                    f64686l++;
                }
            }
        } else if (hashes.length == 4) {
            synchronized (c.class) {
                if (f64684j < 10) {
                    array[0] = f64683i;
                    array[1] = hashes;
                    for (int i4 = size - 1; i4 >= 2; i4--) {
                        array[i4] = null;
                    }
                    f64683i = array;
                    f64684j++;
                }
            }
        }
    }

    private n<E, E> f() {
        if (this.f64690d == null) {
            this.f64690d = new a();
        }
        return this.f64690d;
    }

    private int j(Object key, int hash) {
        int i2 = this.f64689c;
        if (i2 == 0) {
            return -1;
        }
        int a4 = f.a(this.f64687a, i2, hash);
        if (a4 >= 0 && !key.equals(this.f64688b[a4])) {
            int i4 = a4 + 1;
            while (i4 < i2 && this.f64687a[i4] == hash) {
                if (key.equals(this.f64688b[i4])) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = a4 - 1; i5 >= 0 && this.f64687a[i5] == hash; i5--) {
                if (key.equals(this.f64688b[i5])) {
                    return i5;
                }
            }
            return i4 ^ (-1);
        }
        return a4;
    }

    private int l() {
        int i2 = this.f64689c;
        if (i2 == 0) {
            return -1;
        }
        int a4 = f.a(this.f64687a, i2, 0);
        if (a4 >= 0 && this.f64688b[a4] != null) {
            int i4 = a4 + 1;
            while (i4 < i2 && this.f64687a[i4] == 0) {
                if (this.f64688b[i4] == null) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = a4 - 1; i5 >= 0 && this.f64687a[i5] == 0; i5--) {
                if (this.f64688b[i5] == null) {
                    return i5;
                }
            }
            return i4 ^ (-1);
        }
        return a4;
    }

    public void a(c<? extends E> array) {
        int i2 = array.f64689c;
        c(this.f64689c + i2);
        if (this.f64689c != 0) {
            for (int i4 = 0; i4 < i2; i4++) {
                add(array.o(i4));
            }
        } else if (i2 > 0) {
            System.arraycopy(array.f64687a, 0, this.f64687a, 0, i2);
            System.arraycopy(array.f64688b, 0, this.f64688b, 0, i2);
            this.f64689c = i2;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E value) {
        int i2;
        int j4;
        if (value == null) {
            j4 = l();
            i2 = 0;
        } else {
            int hashCode = value.hashCode();
            i2 = hashCode;
            j4 = j(value, hashCode);
        }
        if (j4 >= 0) {
            return false;
        }
        int i4 = j4 ^ (-1);
        int i5 = this.f64689c;
        int[] iArr = this.f64687a;
        if (i5 >= iArr.length) {
            int i6 = 4;
            if (i5 >= 8) {
                i6 = (i5 >> 1) + i5;
            } else if (i5 >= 4) {
                i6 = 8;
            }
            Object[] objArr = this.f64688b;
            b(i6);
            int[] iArr2 = this.f64687a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f64688b, 0, objArr.length);
            }
            d(iArr, objArr, this.f64689c);
        }
        int i7 = this.f64689c;
        if (i4 < i7) {
            int[] iArr3 = this.f64687a;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr2 = this.f64688b;
            System.arraycopy(objArr2, i4, objArr2, i8, this.f64689c - i4);
        }
        this.f64687a[i4] = i2;
        this.f64688b[i4] = value;
        this.f64689c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        c(this.f64689c + collection.size());
        boolean z3 = false;
        for (E e4 : collection) {
            z3 |= add(e4);
        }
        return z3;
    }

    public void c(int minimumCapacity) {
        int[] iArr = this.f64687a;
        if (iArr.length < minimumCapacity) {
            Object[] objArr = this.f64688b;
            b(minimumCapacity);
            int i2 = this.f64689c;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f64687a, 0, i2);
                System.arraycopy(objArr, 0, this.f64688b, 0, this.f64689c);
            }
            d(iArr, objArr, this.f64689c);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.f64689c;
        if (i2 != 0) {
            d(this.f64687a, this.f64688b, i2);
            this.f64687a = new int[0];
            this.f64688b = new Object[0];
            this.f64689c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object key) {
        return indexOf(key) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object instanceof Set) {
            Set set = (Set) object;
            if (size() != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f64689c; i2++) {
                try {
                    if (!set.contains(o(i2))) {
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
        int[] iArr = this.f64687a;
        int i2 = this.f64689c;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 += iArr[i5];
        }
        return i4;
    }

    public int indexOf(Object key) {
        return key == null ? l() : j(key, key.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f64689c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return f().m().iterator();
    }

    public E n(int index) {
        Object[] objArr = this.f64688b;
        E e4 = (E) objArr[index];
        int i2 = this.f64689c;
        if (i2 <= 1) {
            d(this.f64687a, objArr, i2);
            this.f64687a = new int[0];
            this.f64688b = new Object[0];
            this.f64689c = 0;
        } else {
            int[] iArr = this.f64687a;
            if (iArr.length > 8 && i2 < iArr.length / 3) {
                b(i2 > 8 ? i2 + (i2 >> 1) : 8);
                this.f64689c--;
                if (index > 0) {
                    System.arraycopy(iArr, 0, this.f64687a, 0, index);
                    System.arraycopy(objArr, 0, this.f64688b, 0, index);
                }
                int i4 = this.f64689c;
                if (index < i4) {
                    int i5 = index + 1;
                    System.arraycopy(iArr, i5, this.f64687a, index, i4 - index);
                    System.arraycopy(objArr, i5, this.f64688b, index, this.f64689c - index);
                }
            } else {
                int i6 = i2 - 1;
                this.f64689c = i6;
                if (index < i6) {
                    int i7 = index + 1;
                    System.arraycopy(iArr, i7, iArr, index, i6 - index);
                    Object[] objArr2 = this.f64688b;
                    System.arraycopy(objArr2, i7, objArr2, index, this.f64689c - index);
                }
                this.f64688b[this.f64689c] = null;
            }
        }
        return e4;
    }

    public E o(int index) {
        return (E) this.f64688b[index];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object object) {
        int indexOf = indexOf(object);
        if (indexOf >= 0) {
            n(indexOf);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z3 = false;
        while (it2.hasNext()) {
            z3 |= remove(it2.next());
        }
        return z3;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z3 = false;
        for (int i2 = this.f64689c - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f64688b[i2])) {
                n(i2);
                z3 = true;
            }
        }
        return z3;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f64689c;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i2 = this.f64689c;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f64688b, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f64689c * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f64689c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E o3 = o(i2);
            if (o3 != this) {
                sb.append(o3);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] array) {
        if (array.length < this.f64689c) {
            array = (T[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), this.f64689c));
        }
        System.arraycopy(this.f64688b, 0, array, 0, this.f64689c);
        int length = array.length;
        int i2 = this.f64689c;
        if (length > i2) {
            array[i2] = null;
        }
        return array;
    }

    public c(int capacity) {
        if (capacity == 0) {
            this.f64687a = new int[0];
            this.f64688b = new Object[0];
        } else {
            b(capacity);
        }
        this.f64689c = 0;
    }

    public c(c set) {
        this();
        if (set != null) {
            a(set);
        }
    }
}
