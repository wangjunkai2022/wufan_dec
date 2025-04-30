package io.netty.util.collection;

import io.netty.util.collection.LongObjectMap;
import io.netty.util.internal.MathUtil;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes5.dex */
public class LongObjectHashMap<V> implements LongObjectMap<V> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DEFAULT_CAPACITY = 8;
    public static final float DEFAULT_LOAD_FACTOR = 0.5f;
    private static final Object NULL_VALUE = new Object();
    private final Iterable<LongObjectMap.PrimitiveEntry<V>> entries;
    private final Set<Map.Entry<Long, V>> entrySet;
    private final Set<Long> keySet;
    private long[] keys;
    private final float loadFactor;
    private int mask;
    private int maxSize;
    private int size;
    private V[] values;

    /* loaded from: classes5.dex */
    private final class EntrySet extends AbstractSet<Map.Entry<Long, V>> {
        private EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Long, V>> iterator() {
            return new MapIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LongObjectHashMap.this.size();
        }
    }

    /* loaded from: classes5.dex */
    private final class KeySet extends AbstractSet<Long> {
        private KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LongObjectHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LongObjectHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Long> iterator() {
            return new Iterator<Long>() { // from class: io.netty.util.collection.LongObjectHashMap.KeySet.1
                private final Iterator<Map.Entry<Long, V>> iter;

                {
                    this.iter = LongObjectHashMap.this.entrySet.iterator();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.iter.hasNext();
                }

                @Override // java.util.Iterator
                public void remove() {
                    this.iter.remove();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.Iterator
                public Long next() {
                    return this.iter.next().getKey();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LongObjectHashMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Iterator<LongObjectMap.PrimitiveEntry<V>> it2 = LongObjectHashMap.this.entries().iterator();
            boolean z3 = false;
            while (it2.hasNext()) {
                if (!collection.contains(Long.valueOf(it2.next().key()))) {
                    z3 = true;
                    it2.remove();
                }
            }
            return z3;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LongObjectHashMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class MapEntry implements Map.Entry<Long, V> {
        private final int entryIndex;

        MapEntry(int i2) {
            this.entryIndex = i2;
        }

        private void verifyExists() {
            if (LongObjectHashMap.this.values[this.entryIndex] == null) {
                throw new IllegalStateException("The map entry has been removed");
            }
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            verifyExists();
            return (V) LongObjectHashMap.toExternal(LongObjectHashMap.this.values[this.entryIndex]);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v3) {
            verifyExists();
            V v4 = (V) LongObjectHashMap.toExternal(LongObjectHashMap.this.values[this.entryIndex]);
            LongObjectHashMap.this.values[this.entryIndex] = LongObjectHashMap.toInternal(v3);
            return v4;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Map.Entry
        public Long getKey() {
            verifyExists();
            return Long.valueOf(LongObjectHashMap.this.keys[this.entryIndex]);
        }
    }

    /* loaded from: classes5.dex */
    private final class MapIterator implements Iterator<Map.Entry<Long, V>> {
        private final LongObjectHashMap<V>.PrimitiveIterator iter;

        private MapIterator() {
            this.iter = new PrimitiveIterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.iter.remove();
        }

        @Override // java.util.Iterator
        public Map.Entry<Long, V> next() {
            if (hasNext()) {
                this.iter.next();
                return new MapEntry(((PrimitiveIterator) this.iter).entryIndex);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class PrimitiveIterator implements Iterator<LongObjectMap.PrimitiveEntry<V>>, LongObjectMap.PrimitiveEntry<V> {
        private int entryIndex;
        private int nextIndex;
        private int prevIndex;

        private PrimitiveIterator() {
            this.prevIndex = -1;
            this.nextIndex = -1;
            this.entryIndex = -1;
        }

        private void scanNext() {
            do {
                int i2 = this.nextIndex + 1;
                this.nextIndex = i2;
                if (i2 == LongObjectHashMap.this.values.length) {
                    return;
                }
            } while (LongObjectHashMap.this.values[this.nextIndex] == null);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextIndex == -1) {
                scanNext();
            }
            return this.nextIndex != LongObjectHashMap.this.values.length;
        }

        @Override // io.netty.util.collection.LongObjectMap.PrimitiveEntry
        public long key() {
            return LongObjectHashMap.this.keys[this.entryIndex];
        }

        @Override // java.util.Iterator
        public void remove() {
            int i2 = this.prevIndex;
            if (i2 != -1) {
                if (LongObjectHashMap.this.removeAt(i2)) {
                    this.nextIndex = this.prevIndex;
                }
                this.prevIndex = -1;
                return;
            }
            throw new IllegalStateException("next must be called before each remove.");
        }

        @Override // io.netty.util.collection.LongObjectMap.PrimitiveEntry
        public void setValue(V v3) {
            LongObjectHashMap.this.values[this.entryIndex] = LongObjectHashMap.toInternal(v3);
        }

        @Override // io.netty.util.collection.LongObjectMap.PrimitiveEntry
        public V value() {
            return (V) LongObjectHashMap.toExternal(LongObjectHashMap.this.values[this.entryIndex]);
        }

        @Override // java.util.Iterator
        public LongObjectMap.PrimitiveEntry<V> next() {
            if (hasNext()) {
                this.prevIndex = this.nextIndex;
                scanNext();
                this.entryIndex = this.prevIndex;
                return this;
            }
            throw new NoSuchElementException();
        }
    }

    public LongObjectHashMap() {
        this(8, 0.5f);
    }

    private int calcMaxSize(int i2) {
        return Math.min(i2 - 1, (int) (i2 * this.loadFactor));
    }

    private void growSize() {
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 > this.maxSize) {
            long[] jArr = this.keys;
            if (jArr.length != Integer.MAX_VALUE) {
                rehash(jArr.length << 1);
                return;
            }
            throw new IllegalStateException("Max capacity reached at size=" + this.size);
        }
    }

    private static int hashCode(long j4) {
        return (int) (j4 ^ (j4 >>> 32));
    }

    private int hashIndex(long j4) {
        return hashCode(j4) & this.mask;
    }

    private int indexOf(long j4) {
        int hashIndex = hashIndex(j4);
        int i2 = hashIndex;
        while (this.values[i2] != null) {
            if (j4 == this.keys[i2]) {
                return i2;
            }
            i2 = probeNext(i2);
            if (i2 == hashIndex) {
                return -1;
            }
        }
        return -1;
    }

    private long objectToKey(Object obj) {
        return ((Long) obj).longValue();
    }

    private int probeNext(int i2) {
        return (i2 + 1) & this.mask;
    }

    private void rehash(int i2) {
        V[] vArr;
        long[] jArr = this.keys;
        V[] vArr2 = this.values;
        this.keys = new long[i2];
        this.values = (V[]) new Object[i2];
        this.maxSize = calcMaxSize(i2);
        this.mask = i2 - 1;
        for (int i4 = 0; i4 < vArr2.length; i4++) {
            V v3 = vArr2[i4];
            if (v3 != null) {
                long j4 = jArr[i4];
                int hashIndex = hashIndex(j4);
                while (true) {
                    vArr = this.values;
                    if (vArr[hashIndex] == null) {
                        break;
                    }
                    hashIndex = probeNext(hashIndex);
                }
                this.keys[hashIndex] = j4;
                vArr[hashIndex] = v3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeAt(int i2) {
        this.size--;
        this.keys[i2] = 0;
        this.values[i2] = null;
        int probeNext = probeNext(i2);
        V v3 = this.values[probeNext];
        int i4 = i2;
        while (v3 != null) {
            long j4 = this.keys[probeNext];
            int hashIndex = hashIndex(j4);
            if ((probeNext < hashIndex && (hashIndex <= i4 || i4 <= probeNext)) || (hashIndex <= i4 && i4 <= probeNext)) {
                long[] jArr = this.keys;
                jArr[i4] = j4;
                V[] vArr = this.values;
                vArr[i4] = v3;
                jArr[probeNext] = 0;
                vArr[probeNext] = null;
                i4 = probeNext;
            }
            V[] vArr2 = this.values;
            probeNext = probeNext(probeNext);
            v3 = vArr2[probeNext];
        }
        return i4 != i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T toExternal(T t3) {
        if (t3 == NULL_VALUE) {
            return null;
        }
        return t3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T toInternal(T t3) {
        return t3 == null ? (T) NULL_VALUE : t3;
    }

    @Override // java.util.Map
    public void clear() {
        Arrays.fill(this.keys, 0L);
        Arrays.fill(this.values, (Object) null);
        this.size = 0;
    }

    @Override // io.netty.util.collection.LongObjectMap
    public boolean containsKey(long j4) {
        return indexOf(j4) >= 0;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        V[] vArr;
        Object internal = toInternal(obj);
        for (V v3 : this.values) {
            if (v3 != null && v3.equals(internal)) {
                return true;
            }
        }
        return false;
    }

    @Override // io.netty.util.collection.LongObjectMap
    public Iterable<LongObjectMap.PrimitiveEntry<V>> entries() {
        return this.entries;
    }

    @Override // java.util.Map
    public Set<Map.Entry<Long, V>> entrySet() {
        return this.entrySet;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LongObjectMap)) {
            return false;
        }
        LongObjectMap longObjectMap = (LongObjectMap) obj;
        if (this.size != longObjectMap.size()) {
            return false;
        }
        int i2 = 0;
        while (true) {
            V[] vArr = this.values;
            if (i2 >= vArr.length) {
                return true;
            }
            V v3 = vArr[i2];
            if (v3 != null) {
                Object obj2 = longObjectMap.get(this.keys[i2]);
                if (v3 == NULL_VALUE) {
                    if (obj2 != null) {
                        return false;
                    }
                } else if (!v3.equals(obj2)) {
                    return false;
                }
            }
            i2++;
        }
    }

    @Override // io.netty.util.collection.LongObjectMap
    public V get(long j4) {
        int indexOf = indexOf(j4);
        if (indexOf == -1) {
            return null;
        }
        return (V) toExternal(this.values[indexOf]);
    }

    @Override // java.util.Map
    public int hashCode() {
        int i2 = this.size;
        for (long j4 : this.keys) {
            i2 ^= hashCode(j4);
        }
        return i2;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.Map
    public Set<Long> keySet() {
        return this.keySet;
    }

    protected String keyToString(long j4) {
        return Long.toString(j4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object put(Long l4, Object obj) {
        return put2(l4, (Long) obj);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends Long, ? extends V> map) {
        if (map instanceof LongObjectHashMap) {
            LongObjectHashMap longObjectHashMap = (LongObjectHashMap) map;
            int i2 = 0;
            while (true) {
                V[] vArr = longObjectHashMap.values;
                if (i2 >= vArr.length) {
                    return;
                }
                V v3 = vArr[i2];
                if (v3 != null) {
                    put(longObjectHashMap.keys[i2], (long) v3);
                }
                i2++;
            }
        } else {
            for (Map.Entry<? extends Long, ? extends V> entry : map.entrySet()) {
                put2(entry.getKey(), (Long) entry.getValue());
            }
        }
    }

    @Override // io.netty.util.collection.LongObjectMap
    public V remove(long j4) {
        int indexOf = indexOf(j4);
        if (indexOf == -1) {
            return null;
        }
        V v3 = this.values[indexOf];
        removeAt(indexOf);
        return (V) toExternal(v3);
    }

    @Override // java.util.Map
    public int size() {
        return this.size;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.size * 4);
        sb.append('{');
        boolean z3 = true;
        int i2 = 0;
        while (true) {
            V[] vArr = this.values;
            if (i2 < vArr.length) {
                V v3 = vArr[i2];
                if (v3 != null) {
                    if (!z3) {
                        sb.append(", ");
                    }
                    sb.append(keyToString(this.keys[i2]));
                    sb.append('=');
                    sb.append(v3 == this ? "(this Map)" : toExternal(v3));
                    z3 = false;
                }
                i2++;
            } else {
                sb.append('}');
                return sb.toString();
            }
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return new AbstractCollection<V>() { // from class: io.netty.util.collection.LongObjectHashMap.2
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public Iterator<V> iterator() {
                return new Iterator<V>() { // from class: io.netty.util.collection.LongObjectHashMap.2.1
                    final LongObjectHashMap<V>.PrimitiveIterator iter;

                    {
                        this.iter = new PrimitiveIterator();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.iter.hasNext();
                    }

                    @Override // java.util.Iterator
                    public V next() {
                        return this.iter.next().value();
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        this.iter.remove();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public int size() {
                return LongObjectHashMap.this.size;
            }
        };
    }

    public LongObjectHashMap(int i2) {
        this(i2, 0.5f);
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return containsKey(objectToKey(obj));
    }

    @Override // io.netty.util.collection.LongObjectMap
    public V put(long j4, V v3) {
        int hashIndex = hashIndex(j4);
        int i2 = hashIndex;
        do {
            Object[] objArr = this.values;
            if (objArr[i2] == null) {
                this.keys[i2] = j4;
                objArr[i2] = toInternal(v3);
                growSize();
                return null;
            } else if (this.keys[i2] == j4) {
                Object obj = objArr[i2];
                objArr[i2] = toInternal(v3);
                return (V) toExternal(obj);
            } else {
                i2 = probeNext(i2);
            }
        } while (i2 != hashIndex);
        throw new IllegalStateException("Unable to insert");
    }

    public LongObjectHashMap(int i2, float f4) {
        this.keySet = new KeySet();
        this.entrySet = new EntrySet();
        this.entries = new Iterable<LongObjectMap.PrimitiveEntry<V>>() { // from class: io.netty.util.collection.LongObjectHashMap.1
            @Override // java.lang.Iterable
            public Iterator<LongObjectMap.PrimitiveEntry<V>> iterator() {
                return new PrimitiveIterator();
            }
        };
        if (f4 > 0.0f && f4 <= 1.0f) {
            this.loadFactor = f4;
            int safeFindNextPositivePowerOfTwo = MathUtil.safeFindNextPositivePowerOfTwo(i2);
            this.mask = safeFindNextPositivePowerOfTwo - 1;
            this.keys = new long[safeFindNextPositivePowerOfTwo];
            this.values = (V[]) new Object[safeFindNextPositivePowerOfTwo];
            this.maxSize = calcMaxSize(safeFindNextPositivePowerOfTwo);
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and <= 1");
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return get(objectToKey(obj));
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        return remove(objectToKey(obj));
    }

    /* renamed from: put  reason: avoid collision after fix types in other method */
    public V put2(Long l4, V v3) {
        return put(objectToKey(l4), (long) v3);
    }
}
