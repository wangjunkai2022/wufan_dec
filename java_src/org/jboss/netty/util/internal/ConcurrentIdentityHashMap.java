package org.jboss.netty.util.internal;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes5.dex */
public final class ConcurrentIdentityHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {

    /* renamed from: g  reason: collision with root package name */
    static final int f73688g = 16;

    /* renamed from: h  reason: collision with root package name */
    static final float f73689h = 0.75f;

    /* renamed from: i  reason: collision with root package name */
    static final int f73690i = 16;

    /* renamed from: j  reason: collision with root package name */
    static final int f73691j = 1073741824;

    /* renamed from: k  reason: collision with root package name */
    static final int f73692k = 65536;

    /* renamed from: l  reason: collision with root package name */
    static final int f73693l = 2;

    /* renamed from: a  reason: collision with root package name */
    final int f73694a;

    /* renamed from: b  reason: collision with root package name */
    final int f73695b;

    /* renamed from: c  reason: collision with root package name */
    final Segment<K, V>[] f73696c;

    /* renamed from: d  reason: collision with root package name */
    Set<K> f73697d;

    /* renamed from: e  reason: collision with root package name */
    Set<Map.Entry<K, V>> f73698e;

    /* renamed from: f  reason: collision with root package name */
    Collection<V> f73699f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class Segment<K, V> extends ReentrantLock {
        private static final long serialVersionUID = 5207829234977119743L;

        /* renamed from: a  reason: collision with root package name */
        volatile transient int f73700a;

        /* renamed from: b  reason: collision with root package name */
        int f73701b;

        /* renamed from: c  reason: collision with root package name */
        int f73702c;

        /* renamed from: d  reason: collision with root package name */
        volatile transient c<K, V>[] f73703d;

        /* renamed from: e  reason: collision with root package name */
        final float f73704e;

        Segment(int i2, float f4) {
            this.f73704e = f4;
            n(c.b(i2));
        }

        private static boolean e(Object obj, Object obj2) {
            return obj == obj2;
        }

        static <K, V> Segment<K, V>[] f(int i2) {
            return new Segment[i2];
        }

        boolean a(Object obj, int i2) {
            if (this.f73700a != 0) {
                c<K, V>[] cVarArr = this.f73703d;
                if (cVarArr != this.f73703d) {
                    return a(obj, i2);
                }
                for (c<K, V> cVar = cVarArr[(cVarArr.length - 1) & i2]; cVar != null; cVar = cVar.f73710d) {
                    if (cVar.f73708b == i2 && e(obj, cVar.a())) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        boolean b(Object obj) {
            if (this.f73700a != 0) {
                c<K, V>[] cVarArr = this.f73703d;
                for (c<K, V> cVar : cVarArr) {
                    for (; cVar != null; cVar = cVar.f73710d) {
                        V d4 = cVar.d();
                        if (d4 == null) {
                            d4 = i(cVar);
                        }
                        if (obj.equals(d4)) {
                            return true;
                        }
                    }
                }
                if (this.f73703d != cVarArr) {
                    return b(obj);
                }
            }
            return false;
        }

        V c(Object obj, int i2) {
            if (this.f73700a != 0) {
                c<K, V>[] cVarArr = this.f73703d;
                if (cVarArr != this.f73703d) {
                    return c(obj, i2);
                }
                for (c<K, V> cVar = cVarArr[(cVarArr.length - 1) & i2]; cVar != null; cVar = cVar.f73710d) {
                    if (cVar.f73708b == i2 && e(obj, cVar.a())) {
                        V d4 = cVar.d();
                        return d4 != null ? d4 : i(cVar);
                    }
                }
                return null;
            }
            return null;
        }

        void clear() {
            if (this.f73700a != 0) {
                lock();
                try {
                    c<K, V>[] cVarArr = this.f73703d;
                    for (int i2 = 0; i2 < cVarArr.length; i2++) {
                        cVarArr[i2] = null;
                    }
                    this.f73701b++;
                    this.f73700a = 0;
                } finally {
                    unlock();
                }
            }
        }

        c<K, V> d(int i2) {
            c<K, V>[] cVarArr = this.f73703d;
            return cVarArr[i2 & (cVarArr.length - 1)];
        }

        c<K, V> g(K k4, int i2, c<K, V> cVar, V v3) {
            return new c<>(k4, i2, cVar, v3);
        }

        V h(K k4, int i2, V v3, boolean z3) {
            V v4;
            int j4;
            lock();
            try {
                int i4 = this.f73700a;
                int i5 = i4 + 1;
                if (i4 > this.f73702c && (j4 = j()) > 0) {
                    i5 -= j4;
                    this.f73700a = i5 - 1;
                }
                c<K, V>[] cVarArr = this.f73703d;
                int length = (cVarArr.length - 1) & i2;
                c<K, V> cVar = cVarArr[length];
                c<K, V> cVar2 = cVar;
                while (cVar2 != null && (cVar2.f73708b != i2 || !e(k4, cVar2.a()))) {
                    cVar2 = cVar2.f73710d;
                }
                if (cVar2 != null) {
                    v4 = cVar2.d();
                    if (!z3) {
                        cVar2.c(v3);
                    }
                } else {
                    this.f73701b++;
                    cVarArr[length] = g(k4, i2, cVar, v3);
                    this.f73700a = i5;
                    v4 = null;
                }
                return v4;
            } finally {
                unlock();
            }
        }

        V i(c<K, V> cVar) {
            lock();
            try {
                return cVar.d();
            } finally {
                unlock();
            }
        }

        int j() {
            c<K, V>[] cVarArr = this.f73703d;
            int length = cVarArr.length;
            if (length >= 1073741824) {
                return 0;
            }
            c<K, V>[] b4 = c.b(length << 1);
            this.f73702c = (int) (b4.length * this.f73704e);
            int length2 = b4.length - 1;
            int i2 = 0;
            for (c<K, V> cVar : cVarArr) {
                if (cVar != null) {
                    c<K, V> cVar2 = cVar.f73710d;
                    int i4 = cVar.f73708b & length2;
                    if (cVar2 == null) {
                        b4[i4] = cVar;
                    } else {
                        c<K, V> cVar3 = cVar;
                        while (cVar2 != null) {
                            int i5 = cVar2.f73708b & length2;
                            if (i5 != i4) {
                                cVar3 = cVar2;
                                i4 = i5;
                            }
                            cVar2 = cVar2.f73710d;
                        }
                        b4[i4] = cVar3;
                        while (cVar != cVar3) {
                            K a4 = cVar.a();
                            if (a4 == null) {
                                i2++;
                            } else {
                                int i6 = cVar.f73708b;
                                int i7 = i6 & length2;
                                b4[i7] = g(a4, i6, b4[i7], cVar.d());
                            }
                            cVar = cVar.f73710d;
                        }
                    }
                }
            }
            this.f73703d = b4;
            Arrays.fill(cVarArr, (Object) null);
            return i2;
        }

        V k(Object obj, int i2, Object obj2, boolean z3) {
            lock();
            try {
                int i4 = this.f73700a - 1;
                c<K, V>[] cVarArr = this.f73703d;
                int length = (cVarArr.length - 1) & i2;
                c<K, V> cVar = cVarArr[length];
                c<K, V> cVar2 = cVar;
                while (cVar2 != null && obj != cVar2.f73707a && (z3 || i2 != cVar2.f73708b || !e(obj, cVar2.a()))) {
                    cVar2 = cVar2.f73710d;
                }
                V v3 = null;
                if (cVar2 != null) {
                    V d4 = cVar2.d();
                    if (obj2 == null || obj2.equals(d4)) {
                        this.f73701b++;
                        c<K, V> cVar3 = cVar2.f73710d;
                        while (cVar != cVar2) {
                            K a4 = cVar.a();
                            if (a4 == null) {
                                i4--;
                            } else {
                                cVar3 = g(a4, cVar.f73708b, cVar3, cVar.d());
                            }
                            cVar = cVar.f73710d;
                        }
                        cVarArr[length] = cVar3;
                        this.f73700a = i4;
                        v3 = d4;
                    }
                }
                return v3;
            } finally {
                unlock();
            }
        }

        V l(K k4, int i2, V v3) {
            lock();
            try {
                c<K, V> d4 = d(i2);
                while (d4 != null && (d4.f73708b != i2 || !e(k4, d4.a()))) {
                    d4 = d4.f73710d;
                }
                V v4 = null;
                if (d4 != null) {
                    v4 = d4.d();
                    d4.c(v3);
                }
                return v4;
            } finally {
                unlock();
            }
        }

        boolean m(K k4, int i2, V v3, V v4) {
            lock();
            try {
                c<K, V> d4 = d(i2);
                while (d4 != null && (d4.f73708b != i2 || !e(k4, d4.a()))) {
                    d4 = d4.f73710d;
                }
                boolean z3 = false;
                if (d4 != null && v3.equals(d4.d())) {
                    z3 = true;
                    d4.c(v4);
                }
                return z3;
            } finally {
                unlock();
            }
        }

        void n(c<K, V>[] cVarArr) {
            this.f73702c = (int) (cVarArr.length * this.f73704e);
            this.f73703d = cVarArr;
        }
    }

    /* loaded from: classes5.dex */
    final class a extends ConcurrentIdentityHashMap<K, V>.d implements org.jboss.netty.util.internal.f<Map.Entry<K, V>> {
        a() {
            super();
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public Map.Entry<K, V> next() {
            c<K, V> b4 = b();
            return new j(b4.a(), b4.d());
        }
    }

    /* loaded from: classes5.dex */
    final class b extends AbstractSet<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            ConcurrentIdentityHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = ConcurrentIdentityHashMap.this.get(entry.getKey());
                return obj2 != null && obj2.equals(entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return ConcurrentIdentityHashMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return ConcurrentIdentityHashMap.this.remove(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ConcurrentIdentityHashMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final Object f73707a;

        /* renamed from: b  reason: collision with root package name */
        final int f73708b;

        /* renamed from: c  reason: collision with root package name */
        volatile Object f73709c;

        /* renamed from: d  reason: collision with root package name */
        final c<K, V> f73710d;

        c(K k4, int i2, c<K, V> cVar, V v3) {
            this.f73708b = i2;
            this.f73710d = cVar;
            this.f73707a = k4;
            this.f73709c = v3;
        }

        static <K, V> c<K, V>[] b(int i2) {
            return new c[i2];
        }

        K a() {
            return (K) this.f73707a;
        }

        void c(V v3) {
            this.f73709c = v3;
        }

        V d() {
            return (V) this.f73709c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public abstract class d {

        /* renamed from: a  reason: collision with root package name */
        int f73711a;

        /* renamed from: b  reason: collision with root package name */
        int f73712b = -1;

        /* renamed from: c  reason: collision with root package name */
        c<K, V>[] f73713c;

        /* renamed from: d  reason: collision with root package name */
        c<K, V> f73714d;

        /* renamed from: e  reason: collision with root package name */
        c<K, V> f73715e;

        /* renamed from: f  reason: collision with root package name */
        K f73716f;

        d() {
            this.f73711a = ConcurrentIdentityHashMap.this.f73696c.length - 1;
            a();
        }

        final void a() {
            c<K, V> cVar;
            c<K, V> cVar2 = this.f73714d;
            if (cVar2 != null) {
                c<K, V> cVar3 = cVar2.f73710d;
                this.f73714d = cVar3;
                if (cVar3 != null) {
                    return;
                }
            }
            do {
                int i2 = this.f73712b;
                if (i2 >= 0) {
                    c<K, V>[] cVarArr = this.f73713c;
                    this.f73712b = i2 - 1;
                    cVar = cVarArr[i2];
                    this.f73714d = cVar;
                } else {
                    while (true) {
                        int i4 = this.f73711a;
                        if (i4 < 0) {
                            return;
                        }
                        Segment<K, V>[] segmentArr = ConcurrentIdentityHashMap.this.f73696c;
                        this.f73711a = i4 - 1;
                        Segment<K, V> segment = segmentArr[i4];
                        if (segment.f73700a != 0) {
                            c<K, V>[] cVarArr2 = segment.f73703d;
                            this.f73713c = cVarArr2;
                            for (int length = cVarArr2.length - 1; length >= 0; length--) {
                                c<K, V> cVar4 = this.f73713c[length];
                                this.f73714d = cVar4;
                                if (cVar4 != null) {
                                    this.f73712b = length - 1;
                                    return;
                                }
                            }
                            continue;
                        }
                    }
                }
            } while (cVar == null);
        }

        c<K, V> b() {
            do {
                c<K, V> cVar = this.f73714d;
                if (cVar != null) {
                    this.f73715e = cVar;
                    this.f73716f = cVar.a();
                    a();
                } else {
                    throw new NoSuchElementException();
                }
            } while (this.f73716f == null);
            return this.f73715e;
        }

        public boolean hasMoreElements() {
            return hasNext();
        }

        public boolean hasNext() {
            while (true) {
                c<K, V> cVar = this.f73714d;
                if (cVar == null) {
                    return false;
                }
                if (cVar.a() != null) {
                    return true;
                }
                a();
            }
        }

        public void remove() {
            if (this.f73715e != null) {
                ConcurrentIdentityHashMap.this.remove(this.f73716f);
                this.f73715e = null;
                return;
            }
            throw new IllegalStateException();
        }

        public void rewind() {
            this.f73711a = ConcurrentIdentityHashMap.this.f73696c.length - 1;
            this.f73712b = -1;
            this.f73713c = null;
            this.f73714d = null;
            this.f73715e = null;
            this.f73716f = null;
            a();
        }
    }

    /* loaded from: classes5.dex */
    final class e extends ConcurrentIdentityHashMap<K, V>.d implements org.jboss.netty.util.internal.f<K>, Enumeration<K> {
        e() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return b().a();
        }

        @Override // java.util.Enumeration
        public K nextElement() {
            return b().a();
        }
    }

    /* loaded from: classes5.dex */
    final class f extends AbstractSet<K> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            ConcurrentIdentityHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return ConcurrentIdentityHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return ConcurrentIdentityHashMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return ConcurrentIdentityHashMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ConcurrentIdentityHashMap.this.size();
        }
    }

    /* loaded from: classes5.dex */
    final class h extends ConcurrentIdentityHashMap<K, V>.d implements org.jboss.netty.util.internal.f<V>, Enumeration<V> {
        h() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return b().d();
        }

        @Override // java.util.Enumeration
        public V nextElement() {
            return b().d();
        }
    }

    /* loaded from: classes5.dex */
    final class i extends AbstractCollection<V> {
        i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            ConcurrentIdentityHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ConcurrentIdentityHashMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return ConcurrentIdentityHashMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return ConcurrentIdentityHashMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class j extends g<K, V> {
        j(K k4, V v3) {
            super(k4, v3);
        }

        @Override // org.jboss.netty.util.internal.ConcurrentIdentityHashMap.g, java.util.Map.Entry
        public V setValue(V v3) {
            Objects.requireNonNull(v3);
            V v4 = (V) super.setValue(v3);
            ConcurrentIdentityHashMap.this.put(getKey(), v3);
            return v4;
        }
    }

    public ConcurrentIdentityHashMap(int i2, float f4, int i4) {
        if (f4 > 0.0f && i2 >= 0 && i4 > 0) {
            int i5 = 0;
            int i6 = 1;
            int i7 = 1;
            int i8 = 0;
            while (i7 < (i4 > 65536 ? 65536 : i4)) {
                i8++;
                i7 <<= 1;
            }
            this.f73695b = 32 - i8;
            this.f73694a = i7 - 1;
            this.f73696c = Segment.f(i7);
            i2 = i2 > 1073741824 ? 1073741824 : i2;
            int i9 = i2 / i7;
            while (i6 < (i7 * i9 < i2 ? i9 + 1 : i9)) {
                i6 <<= 1;
            }
            while (true) {
                Segment<K, V>[] segmentArr = this.f73696c;
                if (i5 >= segmentArr.length) {
                    return;
                }
                segmentArr[i5] = new Segment<>(i6, f4);
                i5++;
            }
        } else {
            throw new IllegalArgumentException();
        }
    }

    private static int c(int i2) {
        int i4 = i2 + ((i2 << 15) ^ (-12931));
        int i5 = i4 ^ (i4 >>> 10);
        int i6 = i5 + (i5 << 3);
        int i7 = i6 ^ (i6 >>> 6);
        int i8 = i7 + (i7 << 2) + (i7 << 14);
        return i8 ^ (i8 >>> 16);
    }

    private static int d(Object obj) {
        return c(System.identityHashCode(obj));
    }

    public boolean a(Object obj) {
        return containsValue(obj);
    }

    public Enumeration<V> b() {
        return new h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V> segment : this.f73696c) {
            segment.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        int d4 = d(obj);
        return f(d4).a(obj, d4);
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        Segment<K, V>[] segmentArr = this.f73696c;
        int[] iArr = new int[segmentArr.length];
        int i2 = 0;
        int i4 = 0;
        while (true) {
            boolean z3 = true;
            if (i4 < 2) {
                int i5 = 0;
                for (int i6 = 0; i6 < segmentArr.length; i6++) {
                    int i7 = segmentArr[i6].f73701b;
                    iArr[i6] = i7;
                    i5 += i7;
                    if (segmentArr[i6].b(obj)) {
                        return true;
                    }
                }
                if (i5 != 0) {
                    int i8 = 0;
                    while (true) {
                        if (i8 >= segmentArr.length) {
                            break;
                        } else if (iArr[i8] != segmentArr[i8].f73701b) {
                            z3 = false;
                            break;
                        } else {
                            i8++;
                        }
                    }
                }
                if (z3) {
                    return false;
                }
                i4++;
            } else {
                for (Segment<K, V> segment : segmentArr) {
                    segment.lock();
                }
                try {
                    int length = segmentArr.length;
                    int i9 = 0;
                    while (true) {
                        if (i9 >= length) {
                            z3 = false;
                            break;
                        } else if (segmentArr[i9].b(obj)) {
                            break;
                        } else {
                            i9++;
                        }
                    }
                    int length2 = segmentArr.length;
                    while (i2 < length2) {
                        segmentArr[i2].unlock();
                        i2++;
                    }
                    return z3;
                } catch (Throwable th) {
                    int length3 = segmentArr.length;
                    while (i2 < length3) {
                        segmentArr[i2].unlock();
                        i2++;
                    }
                    throw th;
                }
            }
        }
    }

    public Enumeration<K> e() {
        return new e();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f73698e;
        if (set != null) {
            return set;
        }
        b bVar = new b();
        this.f73698e = bVar;
        return bVar;
    }

    Segment<K, V> f(int i2) {
        return this.f73696c[(i2 >>> this.f73695b) & this.f73694a];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int d4 = d(obj);
        return f(d4).c(obj, d4);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V>[] segmentArr = this.f73696c;
        int[] iArr = new int[segmentArr.length];
        int i2 = 0;
        for (int i4 = 0; i4 < segmentArr.length; i4++) {
            if (segmentArr[i4].f73700a != 0) {
                return false;
            }
            int i5 = segmentArr[i4].f73701b;
            iArr[i4] = i5;
            i2 += i5;
        }
        if (i2 != 0) {
            for (int i6 = 0; i6 < segmentArr.length; i6++) {
                if (segmentArr[i6].f73700a != 0 || iArr[i6] != segmentArr[i6].f73701b) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f73697d;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.f73697d = fVar;
        return fVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k4, V v3) {
        Objects.requireNonNull(v3);
        int d4 = d(k4);
        return f(d4).h(k4, d4, v3, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k4, V v3) {
        Objects.requireNonNull(v3);
        int d4 = d(k4);
        return f(d4).h(k4, d4, v3, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        int d4 = d(obj);
        return f(d4).k(obj, d4, null, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k4, V v3, V v4) {
        if (v3 != null && v4 != null) {
            int d4 = d(k4);
            return f(d4).m(k4, d4, v3, v4);
        }
        throw null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Segment<K, V>[] segmentArr = this.f73696c;
        int[] iArr = new int[segmentArr.length];
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            j5 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < segmentArr.length; i5++) {
                j5 += segmentArr[i5].f73700a;
                int i6 = segmentArr[i5].f73701b;
                iArr[i5] = i6;
                i4 += i6;
            }
            if (i4 != 0) {
                long j7 = 0;
                int i7 = 0;
                while (true) {
                    if (i7 >= segmentArr.length) {
                        j6 = j7;
                        break;
                    }
                    j7 += segmentArr[i7].f73700a;
                    if (iArr[i7] != segmentArr[i7].f73701b) {
                        j6 = -1;
                        break;
                    }
                    i7++;
                }
            } else {
                j6 = 0;
            }
            if (j6 == j5) {
                break;
            }
        }
        if (j6 != j5) {
            for (Segment<K, V> segment : segmentArr) {
                segment.lock();
            }
            for (Segment<K, V> segment2 : segmentArr) {
                j4 += segment2.f73700a;
            }
            for (Segment<K, V> segment3 : segmentArr) {
                segment3.unlock();
            }
            j5 = j4;
        }
        if (j5 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j5;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f73699f;
        if (collection != null) {
            return collection;
        }
        i iVar = new i();
        this.f73699f = iVar;
        return iVar;
    }

    /* loaded from: classes5.dex */
    static class g<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final K f73720a;

        /* renamed from: b  reason: collision with root package name */
        private V f73721b;

        public g(K k4, V v3) {
            this.f73720a = k4;
            this.f73721b = v3;
        }

        private static boolean a(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return a(this.f73720a, entry.getKey()) && a(this.f73721b, entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f73720a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f73721b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k4 = this.f73720a;
            int hashCode = k4 == null ? 0 : k4.hashCode();
            V v3 = this.f73721b;
            return hashCode ^ (v3 != null ? v3.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v3) {
            V v4 = this.f73721b;
            this.f73721b = v3;
            return v4;
        }

        public String toString() {
            return this.f73720a + SimpleComparison.EQUAL_TO_OPERATION + this.f73721b;
        }

        public g(Map.Entry<? extends K, ? extends V> entry) {
            this.f73720a = entry.getKey();
            this.f73721b = entry.getValue();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        int d4 = d(obj);
        return (obj2 == null || f(d4).k(obj, d4, obj2, false) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k4, V v3) {
        Objects.requireNonNull(v3);
        int d4 = d(k4);
        return f(d4).l(k4, d4, v3);
    }

    public ConcurrentIdentityHashMap(int i2, float f4) {
        this(i2, f4, 16);
    }

    public ConcurrentIdentityHashMap(int i2) {
        this(i2, 0.75f, 16);
    }

    public ConcurrentIdentityHashMap() {
        this(16, 0.75f, 16);
    }

    public ConcurrentIdentityHashMap(Map<? extends K, ? extends V> map) {
        this(Math.max(((int) (map.size() / 0.75f)) + 1, 16), 0.75f, 16);
        putAll(map);
    }
}
