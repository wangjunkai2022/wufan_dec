package io.netty.util.collection;

import io.netty.util.collection.CharObjectMap;
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
public class CharObjectHashMap<V> implements CharObjectMap<V> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DEFAULT_CAPACITY = 8;
    public static final float DEFAULT_LOAD_FACTOR = 0.5f;
    private static final Object NULL_VALUE = new Object();
    private final Iterable<CharObjectMap.PrimitiveEntry<V>> entries;
    private final Set<Map.Entry<Character, V>> entrySet;
    private final Set<Character> keySet;
    private char[] keys;
    private final float loadFactor;
    private int mask;
    private int maxSize;
    private int size;
    private V[] values;

    /* loaded from: classes5.dex */
    private final class EntrySet extends AbstractSet<Map.Entry<Character, V>> {
        private EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Character, V>> iterator() {
            return new MapIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CharObjectHashMap.this.size();
        }
    }

    /* loaded from: classes5.dex */
    private final class KeySet extends AbstractSet<Character> {
        private KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CharObjectHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return CharObjectHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Character> iterator() {
            return new Iterator<Character>() { // from class: io.netty.util.collection.CharObjectHashMap.KeySet.1
                private final Iterator<Map.Entry<Character, V>> iter;

                {
                    this.iter = CharObjectHashMap.this.entrySet.iterator();
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
                public Character next() {
                    return this.iter.next().getKey();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return CharObjectHashMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Iterator<CharObjectMap.PrimitiveEntry<V>> it2 = CharObjectHashMap.this.entries().iterator();
            boolean z3 = false;
            while (it2.hasNext()) {
                if (!collection.contains(Character.valueOf(it2.next().key()))) {
                    z3 = true;
                    it2.remove();
                }
            }
            return z3;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CharObjectHashMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class MapEntry implements Map.Entry<Character, V> {
        private final int entryIndex;

        MapEntry(int i2) {
            this.entryIndex = i2;
        }

        private void verifyExists() {
            if (CharObjectHashMap.this.values[this.entryIndex] == null) {
                throw new IllegalStateException("The map entry has been removed");
            }
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            verifyExists();
            return (V) CharObjectHashMap.toExternal(CharObjectHashMap.this.values[this.entryIndex]);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v3) {
            verifyExists();
            V v4 = (V) CharObjectHashMap.toExternal(CharObjectHashMap.this.values[this.entryIndex]);
            CharObjectHashMap.this.values[this.entryIndex] = CharObjectHashMap.toInternal(v3);
            return v4;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Map.Entry
        public Character getKey() {
            verifyExists();
            return Character.valueOf(CharObjectHashMap.this.keys[this.entryIndex]);
        }
    }

    /* loaded from: classes5.dex */
    private final class MapIterator implements Iterator<Map.Entry<Character, V>> {
        private final CharObjectHashMap<V>.PrimitiveIterator iter;

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
        public Map.Entry<Character, V> next() {
            if (hasNext()) {
                this.iter.next();
                return new MapEntry(((PrimitiveIterator) this.iter).entryIndex);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class PrimitiveIterator implements Iterator<CharObjectMap.PrimitiveEntry<V>>, CharObjectMap.PrimitiveEntry<V> {
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
                if (i2 == CharObjectHashMap.this.values.length) {
                    return;
                }
            } while (CharObjectHashMap.this.values[this.nextIndex] == null);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextIndex == -1) {
                scanNext();
            }
            return this.nextIndex != CharObjectHashMap.this.values.length;
        }

        @Override // io.netty.util.collection.CharObjectMap.PrimitiveEntry
        public char key() {
            return CharObjectHashMap.this.keys[this.entryIndex];
        }

        @Override // java.util.Iterator
        public void remove() {
            int i2 = this.prevIndex;
            if (i2 != -1) {
                if (CharObjectHashMap.this.removeAt(i2)) {
                    this.nextIndex = this.prevIndex;
                }
                this.prevIndex = -1;
                return;
            }
            throw new IllegalStateException("next must be called before each remove.");
        }

        @Override // io.netty.util.collection.CharObjectMap.PrimitiveEntry
        public void setValue(V v3) {
            CharObjectHashMap.this.values[this.entryIndex] = CharObjectHashMap.toInternal(v3);
        }

        @Override // io.netty.util.collection.CharObjectMap.PrimitiveEntry
        public V value() {
            return (V) CharObjectHashMap.toExternal(CharObjectHashMap.this.values[this.entryIndex]);
        }

        @Override // java.util.Iterator
        public CharObjectMap.PrimitiveEntry<V> next() {
            if (hasNext()) {
                this.prevIndex = this.nextIndex;
                scanNext();
                this.entryIndex = this.prevIndex;
                return this;
            }
            throw new NoSuchElementException();
        }
    }

    public CharObjectHashMap() {
        this(8, 0.5f);
    }

    private int calcMaxSize(int i2) {
        return Math.min(i2 - 1, (int) (i2 * this.loadFactor));
    }

    private void growSize() {
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 > this.maxSize) {
            char[] cArr = this.keys;
            if (cArr.length != Integer.MAX_VALUE) {
                rehash(cArr.length << 1);
                return;
            }
            throw new IllegalStateException("Max capacity reached at size=" + this.size);
        }
    }

    private static int hashCode(char c4) {
        return c4;
    }

    private int hashIndex(char c4) {
        return hashCode(c4) & this.mask;
    }

    private int indexOf(char c4) {
        int hashIndex = hashIndex(c4);
        int i2 = hashIndex;
        while (this.values[i2] != null) {
            if (c4 == this.keys[i2]) {
                return i2;
            }
            i2 = probeNext(i2);
            if (i2 == hashIndex) {
                return -1;
            }
        }
        return -1;
    }

    private char objectToKey(Object obj) {
        return ((Character) obj).charValue();
    }

    private int probeNext(int i2) {
        return (i2 + 1) & this.mask;
    }

    private void rehash(int i2) {
        V[] vArr;
        char[] cArr = this.keys;
        V[] vArr2 = this.values;
        this.keys = new char[i2];
        this.values = (V[]) new Object[i2];
        this.maxSize = calcMaxSize(i2);
        this.mask = i2 - 1;
        for (int i4 = 0; i4 < vArr2.length; i4++) {
            V v3 = vArr2[i4];
            if (v3 != null) {
                char c4 = cArr[i4];
                int hashIndex = hashIndex(c4);
                while (true) {
                    vArr = this.values;
                    if (vArr[hashIndex] == null) {
                        break;
                    }
                    hashIndex = probeNext(hashIndex);
                }
                this.keys[hashIndex] = c4;
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
            char c4 = this.keys[probeNext];
            int hashIndex = hashIndex(c4);
            if ((probeNext < hashIndex && (hashIndex <= i4 || i4 <= probeNext)) || (hashIndex <= i4 && i4 <= probeNext)) {
                char[] cArr = this.keys;
                cArr[i4] = c4;
                V[] vArr = this.values;
                vArr[i4] = v3;
                cArr[probeNext] = 0;
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
        Arrays.fill(this.keys, (char) 0);
        Arrays.fill(this.values, (Object) null);
        this.size = 0;
    }

    @Override // io.netty.util.collection.CharObjectMap
    public boolean containsKey(char c4) {
        return indexOf(c4) >= 0;
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

    @Override // io.netty.util.collection.CharObjectMap
    public Iterable<CharObjectMap.PrimitiveEntry<V>> entries() {
        return this.entries;
    }

    @Override // java.util.Map
    public Set<Map.Entry<Character, V>> entrySet() {
        return this.entrySet;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CharObjectMap)) {
            return false;
        }
        CharObjectMap charObjectMap = (CharObjectMap) obj;
        if (this.size != charObjectMap.size()) {
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
                Object obj2 = charObjectMap.get(this.keys[i2]);
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

    @Override // io.netty.util.collection.CharObjectMap
    public V get(char c4) {
        int indexOf = indexOf(c4);
        if (indexOf == -1) {
            return null;
        }
        return (V) toExternal(this.values[indexOf]);
    }

    @Override // java.util.Map
    public int hashCode() {
        int i2 = this.size;
        for (char c4 : this.keys) {
            i2 ^= hashCode(c4);
        }
        return i2;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.Map
    public Set<Character> keySet() {
        return this.keySet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String keyToString(char c4) {
        return Character.toString(c4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object put(Character ch, Object obj) {
        return put2(ch, (Character) obj);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends Character, ? extends V> map) {
        if (map instanceof CharObjectHashMap) {
            CharObjectHashMap charObjectHashMap = (CharObjectHashMap) map;
            int i2 = 0;
            while (true) {
                V[] vArr = charObjectHashMap.values;
                if (i2 >= vArr.length) {
                    return;
                }
                V v3 = vArr[i2];
                if (v3 != null) {
                    put(charObjectHashMap.keys[i2], (char) v3);
                }
                i2++;
            }
        } else {
            for (Map.Entry<? extends Character, ? extends V> entry : map.entrySet()) {
                put2(entry.getKey(), (Character) entry.getValue());
            }
        }
    }

    @Override // io.netty.util.collection.CharObjectMap
    public V remove(char c4) {
        int indexOf = indexOf(c4);
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
        return new AbstractCollection<V>() { // from class: io.netty.util.collection.CharObjectHashMap.2
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public Iterator<V> iterator() {
                return new Iterator<V>() { // from class: io.netty.util.collection.CharObjectHashMap.2.1
                    final CharObjectHashMap<V>.PrimitiveIterator iter;

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
                return CharObjectHashMap.this.size;
            }
        };
    }

    public CharObjectHashMap(int i2) {
        this(i2, 0.5f);
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return containsKey(objectToKey(obj));
    }

    @Override // io.netty.util.collection.CharObjectMap
    public V put(char c4, V v3) {
        int hashIndex = hashIndex(c4);
        int i2 = hashIndex;
        do {
            Object[] objArr = this.values;
            if (objArr[i2] == null) {
                this.keys[i2] = c4;
                objArr[i2] = toInternal(v3);
                growSize();
                return null;
            } else if (this.keys[i2] == c4) {
                Object obj = objArr[i2];
                objArr[i2] = toInternal(v3);
                return (V) toExternal(obj);
            } else {
                i2 = probeNext(i2);
            }
        } while (i2 != hashIndex);
        throw new IllegalStateException("Unable to insert");
    }

    public CharObjectHashMap(int i2, float f4) {
        this.keySet = new KeySet();
        this.entrySet = new EntrySet();
        this.entries = new Iterable<CharObjectMap.PrimitiveEntry<V>>() { // from class: io.netty.util.collection.CharObjectHashMap.1
            @Override // java.lang.Iterable
            public Iterator<CharObjectMap.PrimitiveEntry<V>> iterator() {
                return new PrimitiveIterator();
            }
        };
        if (f4 > 0.0f && f4 <= 1.0f) {
            this.loadFactor = f4;
            int safeFindNextPositivePowerOfTwo = MathUtil.safeFindNextPositivePowerOfTwo(i2);
            this.mask = safeFindNextPositivePowerOfTwo - 1;
            this.keys = new char[safeFindNextPositivePowerOfTwo];
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
    public V put2(Character ch, V v3) {
        return put(objectToKey(ch), (char) v3);
    }
}
