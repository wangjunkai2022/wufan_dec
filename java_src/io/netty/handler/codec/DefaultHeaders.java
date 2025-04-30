package io.netty.handler.codec;

import io.netty.handler.codec.Headers;
import io.netty.util.HashingStrategy;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectUtil;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes5.dex */
public class DefaultHeaders<K, V, T extends Headers<K, V, T>> implements Headers<K, V, T> {
    static final int HASH_CODE_SEED = -1028477387;
    private final HeaderEntry<K, V>[] entries;
    private final byte hashMask;
    private final HashingStrategy<K> hashingStrategy;
    protected final HeaderEntry<K, V> head;
    private final NameValidator<K> nameValidator;
    int size;
    private final ValueConverter<V> valueConverter;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class HeaderIterator implements Iterator<Map.Entry<K, V>> {
        private HeaderEntry<K, V> current;

        private HeaderIterator() {
            this.current = DefaultHeaders.this.head;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.current.after != DefaultHeaders.this.head;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("read only");
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            HeaderEntry<K, V> headerEntry = this.current.after;
            this.current = headerEntry;
            if (headerEntry != DefaultHeaders.this.head) {
                return headerEntry;
            }
            throw new NoSuchElementException();
        }
    }

    /* loaded from: classes5.dex */
    public interface NameValidator<K> {
        public static final NameValidator NOT_NULL = new NameValidator() { // from class: io.netty.handler.codec.DefaultHeaders.NameValidator.1
            @Override // io.netty.handler.codec.DefaultHeaders.NameValidator
            public void validateName(Object obj) {
                ObjectUtil.checkNotNull(obj, "name");
            }
        };

        void validateName(K k4);
    }

    /* loaded from: classes5.dex */
    private final class ValueIterator implements Iterator<V> {
        private final int hash;
        private final K name;
        private HeaderEntry<K, V> next;
        private HeaderEntry<K, V> previous;
        private HeaderEntry<K, V> removalPrevious;

        ValueIterator(K k4) {
            this.name = (K) ObjectUtil.checkNotNull(k4, "name");
            int hashCode = DefaultHeaders.this.hashingStrategy.hashCode(k4);
            this.hash = hashCode;
            calculateNext(DefaultHeaders.this.entries[DefaultHeaders.this.index(hashCode)]);
        }

        private void calculateNext(HeaderEntry<K, V> headerEntry) {
            while (headerEntry != null) {
                if (headerEntry.hash == this.hash && DefaultHeaders.this.hashingStrategy.equals(this.name, headerEntry.key)) {
                    this.next = headerEntry;
                    return;
                }
                headerEntry = headerEntry.next;
            }
            this.next = null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.Iterator
        public V next() {
            if (hasNext()) {
                HeaderEntry<K, V> headerEntry = this.previous;
                if (headerEntry != null) {
                    this.removalPrevious = headerEntry;
                }
                HeaderEntry<K, V> headerEntry2 = this.next;
                this.previous = headerEntry2;
                calculateNext(headerEntry2.next);
                return this.previous.value;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            HeaderEntry<K, V> headerEntry = this.previous;
            if (headerEntry != null) {
                this.removalPrevious = DefaultHeaders.this.remove0(headerEntry, this.removalPrevious);
                this.previous = null;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public DefaultHeaders(ValueConverter<V> valueConverter) {
        this(HashingStrategy.JAVA_HASHER, valueConverter);
    }

    private void add0(int i2, int i4, K k4, V v3) {
        HeaderEntry<K, V>[] headerEntryArr = this.entries;
        headerEntryArr[i4] = newHeaderEntry(i2, k4, v3, headerEntryArr[i4]);
        this.size++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int index(int i2) {
        return i2 & this.hashMask;
    }

    private V remove0(int i2, int i4, K k4) {
        HeaderEntry<K, V> headerEntry = this.entries[i4];
        V v3 = null;
        if (headerEntry == null) {
            return null;
        }
        for (HeaderEntry<K, V> headerEntry2 = headerEntry.next; headerEntry2 != null; headerEntry2 = headerEntry.next) {
            if (headerEntry2.hash == i2 && this.hashingStrategy.equals(k4, headerEntry2.key)) {
                v3 = headerEntry2.value;
                headerEntry.next = headerEntry2.next;
                headerEntry2.remove();
                this.size--;
            } else {
                headerEntry = headerEntry2;
            }
        }
        HeaderEntry<K, V> headerEntry3 = this.entries[i4];
        if (headerEntry3.hash == i2 && this.hashingStrategy.equals(k4, headerEntry3.key)) {
            if (v3 == null) {
                v3 = headerEntry3.value;
            }
            this.entries[i4] = headerEntry3.next;
            headerEntry3.remove();
            this.size--;
        }
        return v3;
    }

    private T thisT() {
        return this;
    }

    @Override // io.netty.handler.codec.Headers
    public T add(K k4, V v3) {
        this.nameValidator.validateName(k4);
        ObjectUtil.checkNotNull(v3, "value");
        int hashCode = this.hashingStrategy.hashCode(k4);
        add0(hashCode, index(hashCode), k4, v3);
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public T addBoolean(K k4, boolean z3) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertBoolean(z3));
    }

    @Override // io.netty.handler.codec.Headers
    public T addByte(K k4, byte b4) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertByte(b4));
    }

    @Override // io.netty.handler.codec.Headers
    public T addChar(K k4, char c4) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertChar(c4));
    }

    @Override // io.netty.handler.codec.Headers
    public T addDouble(K k4, double d4) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertDouble(d4));
    }

    @Override // io.netty.handler.codec.Headers
    public T addFloat(K k4, float f4) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertFloat(f4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addImpl(Headers<? extends K, ? extends V, ?> headers) {
        if (headers instanceof DefaultHeaders) {
            DefaultHeaders defaultHeaders = (DefaultHeaders) headers;
            HeaderEntry<K, V> headerEntry = defaultHeaders.head.after;
            if (defaultHeaders.hashingStrategy == this.hashingStrategy && defaultHeaders.nameValidator == this.nameValidator) {
                while (headerEntry != defaultHeaders.head) {
                    int i2 = headerEntry.hash;
                    add0(i2, index(i2), headerEntry.key, headerEntry.value);
                    headerEntry = headerEntry.after;
                }
                return;
            }
            while (headerEntry != defaultHeaders.head) {
                add((DefaultHeaders<K, V, T>) headerEntry.key, (K) headerEntry.value);
                headerEntry = headerEntry.after;
            }
            return;
        }
        for (Map.Entry<? extends K, ? extends V> entry : headers) {
            add((DefaultHeaders<K, V, T>) entry.getKey(), (K) entry.getValue());
        }
    }

    @Override // io.netty.handler.codec.Headers
    public T addInt(K k4, int i2) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertInt(i2));
    }

    @Override // io.netty.handler.codec.Headers
    public T addLong(K k4, long j4) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertLong(j4));
    }

    @Override // io.netty.handler.codec.Headers
    public T addObject(K k4, Object obj) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertObject(ObjectUtil.checkNotNull(obj, "value")));
    }

    @Override // io.netty.handler.codec.Headers
    public T addShort(K k4, short s3) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertShort(s3));
    }

    @Override // io.netty.handler.codec.Headers
    public T addTimeMillis(K k4, long j4) {
        return add((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertTimeMillis(j4));
    }

    @Override // io.netty.handler.codec.Headers
    public T clear() {
        Arrays.fill(this.entries, (Object) null);
        HeaderEntry<K, V> headerEntry = this.head;
        headerEntry.after = headerEntry;
        headerEntry.before = headerEntry;
        this.size = 0;
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public boolean contains(K k4) {
        return get(k4) != null;
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsBoolean(K k4, boolean z3) {
        return contains(k4, this.valueConverter.convertBoolean(z3));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsByte(K k4, byte b4) {
        return contains(k4, this.valueConverter.convertByte(b4));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsChar(K k4, char c4) {
        return contains(k4, this.valueConverter.convertChar(c4));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsDouble(K k4, double d4) {
        return contains(k4, this.valueConverter.convertDouble(d4));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsFloat(K k4, float f4) {
        return contains(k4, this.valueConverter.convertFloat(f4));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsInt(K k4, int i2) {
        return contains(k4, this.valueConverter.convertInt(i2));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsLong(K k4, long j4) {
        return contains(k4, this.valueConverter.convertLong(j4));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsObject(K k4, Object obj) {
        return contains(k4, this.valueConverter.convertObject(ObjectUtil.checkNotNull(obj, "value")));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsShort(K k4, short s3) {
        return contains(k4, this.valueConverter.convertShort(s3));
    }

    @Override // io.netty.handler.codec.Headers
    public boolean containsTimeMillis(K k4, long j4) {
        return contains(k4, this.valueConverter.convertTimeMillis(j4));
    }

    public DefaultHeaders<K, V, T> copy() {
        DefaultHeaders<K, V, T> defaultHeaders = new DefaultHeaders<>(this.hashingStrategy, this.valueConverter, this.nameValidator, this.entries.length);
        defaultHeaders.addImpl(this);
        return defaultHeaders;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Headers) {
            return equals((Headers) obj, HashingStrategy.JAVA_HASHER);
        }
        return false;
    }

    @Override // io.netty.handler.codec.Headers
    public V get(K k4) {
        ObjectUtil.checkNotNull(k4, "name");
        int hashCode = this.hashingStrategy.hashCode(k4);
        V v3 = null;
        for (HeaderEntry<K, V> headerEntry = this.entries[index(hashCode)]; headerEntry != null; headerEntry = headerEntry.next) {
            if (headerEntry.hash == hashCode && this.hashingStrategy.equals(k4, headerEntry.key)) {
                v3 = headerEntry.value;
            }
        }
        return v3;
    }

    @Override // io.netty.handler.codec.Headers
    public List<V> getAll(K k4) {
        ObjectUtil.checkNotNull(k4, "name");
        LinkedList linkedList = new LinkedList();
        int hashCode = this.hashingStrategy.hashCode(k4);
        for (HeaderEntry<K, V> headerEntry = this.entries[index(hashCode)]; headerEntry != null; headerEntry = headerEntry.next) {
            if (headerEntry.hash == hashCode && this.hashingStrategy.equals(k4, headerEntry.key)) {
                linkedList.addFirst(headerEntry.getValue());
            }
        }
        return linkedList;
    }

    @Override // io.netty.handler.codec.Headers
    public List<V> getAllAndRemove(K k4) {
        List<V> all = getAll(k4);
        remove(k4);
        return all;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.handler.codec.Headers
    public V getAndRemove(K k4) {
        int hashCode = this.hashingStrategy.hashCode(k4);
        return (V) remove0(hashCode, index(hashCode), ObjectUtil.checkNotNull(k4, "name"));
    }

    @Override // io.netty.handler.codec.Headers
    public Boolean getBoolean(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Boolean.valueOf(this.valueConverter.convertToBoolean(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Boolean getBooleanAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Boolean.valueOf(this.valueConverter.convertToBoolean(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Byte getByte(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Byte.valueOf(this.valueConverter.convertToByte(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Byte getByteAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Byte.valueOf(this.valueConverter.convertToByte(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Character getChar(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Character.valueOf(this.valueConverter.convertToChar(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Character getCharAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Character.valueOf(this.valueConverter.convertToChar(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Double getDouble(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Double.valueOf(this.valueConverter.convertToDouble(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Double getDoubleAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Double.valueOf(this.valueConverter.convertToDouble(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Float getFloat(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Float.valueOf(this.valueConverter.convertToFloat(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Float getFloatAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Float.valueOf(this.valueConverter.convertToFloat(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Integer getInt(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Integer.valueOf(this.valueConverter.convertToInt(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Integer getIntAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Integer.valueOf(this.valueConverter.convertToInt(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Long getLong(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Long.valueOf(this.valueConverter.convertToLong(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Long getLongAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Long.valueOf(this.valueConverter.convertToLong(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Short getShort(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Short.valueOf(this.valueConverter.convertToShort(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Short getShortAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Short.valueOf(this.valueConverter.convertToShort(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Long getTimeMillis(K k4) {
        V v3 = get(k4);
        if (v3 != null) {
            try {
                return Long.valueOf(this.valueConverter.convertToTimeMillis(v3));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.netty.handler.codec.Headers
    public Long getTimeMillisAndRemove(K k4) {
        V andRemove = getAndRemove(k4);
        if (andRemove != null) {
            try {
                return Long.valueOf(this.valueConverter.convertToTimeMillis(andRemove));
            } catch (RuntimeException unused) {
                return null;
            }
        }
        return null;
    }

    public int hashCode() {
        return hashCode(HashingStrategy.JAVA_HASHER);
    }

    @Override // io.netty.handler.codec.Headers
    public boolean isEmpty() {
        HeaderEntry<K, V> headerEntry = this.head;
        return headerEntry == headerEntry.after;
    }

    @Override // io.netty.handler.codec.Headers, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new HeaderIterator();
    }

    @Override // io.netty.handler.codec.Headers
    public Set<K> names() {
        if (isEmpty()) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(size());
        for (HeaderEntry<K, V> headerEntry = this.head.after; headerEntry != this.head; headerEntry = headerEntry.after) {
            linkedHashSet.add(headerEntry.getKey());
        }
        return linkedHashSet;
    }

    protected HeaderEntry<K, V> newHeaderEntry(int i2, K k4, V v3, HeaderEntry<K, V> headerEntry) {
        return new HeaderEntry<>(i2, k4, v3, headerEntry, this.head);
    }

    @Override // io.netty.handler.codec.Headers
    public boolean remove(K k4) {
        return getAndRemove(k4) != null;
    }

    @Override // io.netty.handler.codec.Headers
    public T set(K k4, V v3) {
        this.nameValidator.validateName(k4);
        ObjectUtil.checkNotNull(v3, "value");
        int hashCode = this.hashingStrategy.hashCode(k4);
        int index = index(hashCode);
        remove0(hashCode, index, k4);
        add0(hashCode, index, k4, v3);
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public T setAll(Headers<? extends K, ? extends V, ?> headers) {
        if (headers != this) {
            for (K k4 : headers.names()) {
                remove(k4);
            }
            addImpl(headers);
        }
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public T setBoolean(K k4, boolean z3) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertBoolean(z3));
    }

    @Override // io.netty.handler.codec.Headers
    public T setByte(K k4, byte b4) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertByte(b4));
    }

    @Override // io.netty.handler.codec.Headers
    public T setChar(K k4, char c4) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertChar(c4));
    }

    @Override // io.netty.handler.codec.Headers
    public T setDouble(K k4, double d4) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertDouble(d4));
    }

    @Override // io.netty.handler.codec.Headers
    public T setFloat(K k4, float f4) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertFloat(f4));
    }

    @Override // io.netty.handler.codec.Headers
    public T setInt(K k4, int i2) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertInt(i2));
    }

    @Override // io.netty.handler.codec.Headers
    public T setLong(K k4, long j4) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertLong(j4));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.handler.codec.Headers
    public T setObject(K k4, Object obj) {
        ObjectUtil.checkNotNull(obj, "value");
        return (T) set((DefaultHeaders<K, V, T>) k4, (K) ObjectUtil.checkNotNull(this.valueConverter.convertObject(obj), "convertedValue"));
    }

    @Override // io.netty.handler.codec.Headers
    public T setShort(K k4, short s3) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertShort(s3));
    }

    @Override // io.netty.handler.codec.Headers
    public T setTimeMillis(K k4, long j4) {
        return set((DefaultHeaders<K, V, T>) k4, (K) this.valueConverter.convertTimeMillis(j4));
    }

    @Override // io.netty.handler.codec.Headers
    public int size() {
        return this.size;
    }

    public String toString() {
        return HeadersUtils.toString(getClass(), iterator(), size());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ValueConverter<V> valueConverter() {
        return this.valueConverter;
    }

    public Iterator<V> valueIterator(K k4) {
        return new ValueIterator(k4);
    }

    public DefaultHeaders(ValueConverter<V> valueConverter, NameValidator<K> nameValidator) {
        this(HashingStrategy.JAVA_HASHER, valueConverter, nameValidator);
    }

    @Override // io.netty.handler.codec.Headers
    public T addObject(K k4, Iterable<?> iterable) {
        Iterator<?> it2 = iterable.iterator();
        while (it2.hasNext()) {
            addObject((DefaultHeaders<K, V, T>) k4, it2.next());
        }
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public boolean contains(K k4, V v3) {
        return contains(k4, v3, HashingStrategy.JAVA_HASHER);
    }

    public final int hashCode(HashingStrategy<V> hashingStrategy) {
        int i2 = HASH_CODE_SEED;
        for (K k4 : names()) {
            i2 = (i2 * 31) + this.hashingStrategy.hashCode(k4);
            List<V> all = getAll(k4);
            for (int i4 = 0; i4 < all.size(); i4++) {
                i2 = (i2 * 31) + hashingStrategy.hashCode(all.get(i4));
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static class HeaderEntry<K, V> implements Map.Entry<K, V> {
        protected HeaderEntry<K, V> after;
        protected HeaderEntry<K, V> before;
        protected final int hash;
        protected final K key;
        protected HeaderEntry<K, V> next;
        protected V value;

        /* JADX INFO: Access modifiers changed from: protected */
        public HeaderEntry(int i2, K k4) {
            this.hash = i2;
            this.key = k4;
        }

        public final HeaderEntry<K, V> after() {
            return this.after;
        }

        public final HeaderEntry<K, V> before() {
            return this.before;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (getKey() == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!getKey().equals(entry.getKey())) {
                    return false;
                }
                if (getValue() == null) {
                    if (entry.getValue() != null) {
                        return false;
                    }
                } else if (!getValue().equals(entry.getValue())) {
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k4 = this.key;
            int hashCode = k4 == null ? 0 : k4.hashCode();
            V v3 = this.value;
            return hashCode ^ (v3 != null ? v3.hashCode() : 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void pointNeighborsToThis() {
            this.before.after = this;
            this.after.before = this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void remove() {
            HeaderEntry<K, V> headerEntry = this.before;
            headerEntry.after = this.after;
            this.after.before = headerEntry;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v3) {
            ObjectUtil.checkNotNull(v3, "value");
            V v4 = this.value;
            this.value = v3;
            return v4;
        }

        public final String toString() {
            return this.key.toString() + '=' + this.value.toString();
        }

        HeaderEntry(int i2, K k4, V v3, HeaderEntry<K, V> headerEntry, HeaderEntry<K, V> headerEntry2) {
            this.hash = i2;
            this.key = k4;
            this.value = v3;
            this.next = headerEntry;
            this.after = headerEntry2;
            this.before = headerEntry2.before;
            pointNeighborsToThis();
        }

        HeaderEntry() {
            this.hash = -1;
            this.key = null;
            this.after = this;
            this.before = this;
        }
    }

    public DefaultHeaders(HashingStrategy<K> hashingStrategy, ValueConverter<V> valueConverter) {
        this(hashingStrategy, valueConverter, NameValidator.NOT_NULL);
    }

    public final boolean contains(K k4, V v3, HashingStrategy<? super V> hashingStrategy) {
        ObjectUtil.checkNotNull(k4, "name");
        int hashCode = this.hashingStrategy.hashCode(k4);
        for (HeaderEntry<K, V> headerEntry = this.entries[index(hashCode)]; headerEntry != null; headerEntry = headerEntry.next) {
            if (headerEntry.hash == hashCode && this.hashingStrategy.equals(k4, headerEntry.key) && hashingStrategy.equals(v3, (V) headerEntry.value)) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Headers<K, V, ?> headers, HashingStrategy<V> hashingStrategy) {
        if (headers.size() != size()) {
            return false;
        }
        if (this == headers) {
            return true;
        }
        for (K k4 : names()) {
            List<V> all = headers.getAll(k4);
            List<V> all2 = getAll(k4);
            if (all.size() != all2.size()) {
                return false;
            }
            for (int i2 = 0; i2 < all.size(); i2++) {
                if (!hashingStrategy.equals(all.get(i2), all2.get(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // io.netty.handler.codec.Headers
    public V getAndRemove(K k4, V v3) {
        V andRemove = getAndRemove(k4);
        return andRemove == null ? v3 : andRemove;
    }

    @Override // io.netty.handler.codec.Headers
    public boolean getBoolean(K k4, boolean z3) {
        Boolean bool = getBoolean(k4);
        return bool != null ? bool.booleanValue() : z3;
    }

    @Override // io.netty.handler.codec.Headers
    public boolean getBooleanAndRemove(K k4, boolean z3) {
        Boolean booleanAndRemove = getBooleanAndRemove(k4);
        return booleanAndRemove != null ? booleanAndRemove.booleanValue() : z3;
    }

    @Override // io.netty.handler.codec.Headers
    public byte getByte(K k4, byte b4) {
        Byte b5 = getByte(k4);
        return b5 != null ? b5.byteValue() : b4;
    }

    @Override // io.netty.handler.codec.Headers
    public byte getByteAndRemove(K k4, byte b4) {
        Byte byteAndRemove = getByteAndRemove(k4);
        return byteAndRemove != null ? byteAndRemove.byteValue() : b4;
    }

    @Override // io.netty.handler.codec.Headers
    public char getChar(K k4, char c4) {
        Character ch = getChar(k4);
        return ch != null ? ch.charValue() : c4;
    }

    @Override // io.netty.handler.codec.Headers
    public char getCharAndRemove(K k4, char c4) {
        Character charAndRemove = getCharAndRemove(k4);
        return charAndRemove != null ? charAndRemove.charValue() : c4;
    }

    @Override // io.netty.handler.codec.Headers
    public double getDouble(K k4, double d4) {
        Double d5 = getDouble(k4);
        return d5 != null ? d5.doubleValue() : d4;
    }

    @Override // io.netty.handler.codec.Headers
    public double getDoubleAndRemove(K k4, double d4) {
        Double doubleAndRemove = getDoubleAndRemove(k4);
        return doubleAndRemove != null ? doubleAndRemove.doubleValue() : d4;
    }

    @Override // io.netty.handler.codec.Headers
    public float getFloat(K k4, float f4) {
        Float f5 = getFloat(k4);
        return f5 != null ? f5.floatValue() : f4;
    }

    @Override // io.netty.handler.codec.Headers
    public float getFloatAndRemove(K k4, float f4) {
        Float floatAndRemove = getFloatAndRemove(k4);
        return floatAndRemove != null ? floatAndRemove.floatValue() : f4;
    }

    @Override // io.netty.handler.codec.Headers
    public int getInt(K k4, int i2) {
        Integer num = getInt(k4);
        return num != null ? num.intValue() : i2;
    }

    @Override // io.netty.handler.codec.Headers
    public int getIntAndRemove(K k4, int i2) {
        Integer intAndRemove = getIntAndRemove(k4);
        return intAndRemove != null ? intAndRemove.intValue() : i2;
    }

    @Override // io.netty.handler.codec.Headers
    public long getLong(K k4, long j4) {
        Long l4 = getLong(k4);
        return l4 != null ? l4.longValue() : j4;
    }

    @Override // io.netty.handler.codec.Headers
    public long getLongAndRemove(K k4, long j4) {
        Long longAndRemove = getLongAndRemove(k4);
        return longAndRemove != null ? longAndRemove.longValue() : j4;
    }

    @Override // io.netty.handler.codec.Headers
    public short getShort(K k4, short s3) {
        Short sh = getShort(k4);
        return sh != null ? sh.shortValue() : s3;
    }

    @Override // io.netty.handler.codec.Headers
    public short getShortAndRemove(K k4, short s3) {
        Short shortAndRemove = getShortAndRemove(k4);
        return shortAndRemove != null ? shortAndRemove.shortValue() : s3;
    }

    @Override // io.netty.handler.codec.Headers
    public long getTimeMillis(K k4, long j4) {
        Long timeMillis = getTimeMillis(k4);
        return timeMillis != null ? timeMillis.longValue() : j4;
    }

    @Override // io.netty.handler.codec.Headers
    public long getTimeMillisAndRemove(K k4, long j4) {
        Long timeMillisAndRemove = getTimeMillisAndRemove(k4);
        return timeMillisAndRemove != null ? timeMillisAndRemove.longValue() : j4;
    }

    public DefaultHeaders(HashingStrategy<K> hashingStrategy, ValueConverter<V> valueConverter, NameValidator<K> nameValidator) {
        this(hashingStrategy, valueConverter, nameValidator, 16);
    }

    @Override // io.netty.handler.codec.Headers
    public T setObject(K k4, Iterable<?> iterable) {
        Object next;
        this.nameValidator.validateName(k4);
        int hashCode = this.hashingStrategy.hashCode(k4);
        int index = index(hashCode);
        remove0(hashCode, index, k4);
        Iterator<?> it2 = iterable.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            add0(hashCode, index, k4, this.valueConverter.convertObject(next));
        }
        return thisT();
    }

    public DefaultHeaders(HashingStrategy<K> hashingStrategy, ValueConverter<V> valueConverter, NameValidator<K> nameValidator, int i2) {
        this.valueConverter = (ValueConverter) ObjectUtil.checkNotNull(valueConverter, "valueConverter");
        this.nameValidator = (NameValidator) ObjectUtil.checkNotNull(nameValidator, "nameValidator");
        this.hashingStrategy = (HashingStrategy) ObjectUtil.checkNotNull(hashingStrategy, "nameHashingStrategy");
        HeaderEntry<K, V>[] headerEntryArr = new HeaderEntry[MathUtil.findNextPositivePowerOfTwo(Math.max(2, Math.min(i2, 128)))];
        this.entries = headerEntryArr;
        this.hashMask = (byte) (headerEntryArr.length - 1);
        this.head = new HeaderEntry<>();
    }

    @Override // io.netty.handler.codec.Headers
    public T addObject(K k4, Object... objArr) {
        for (Object obj : objArr) {
            addObject((DefaultHeaders<K, V, T>) k4, obj);
        }
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public T add(K k4, Iterable<? extends V> iterable) {
        this.nameValidator.validateName(k4);
        int hashCode = this.hashingStrategy.hashCode(k4);
        int index = index(hashCode);
        for (V v3 : iterable) {
            add0(hashCode, index, k4, v3);
        }
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public V get(K k4, V v3) {
        V v4 = get(k4);
        return v4 == null ? v3 : v4;
    }

    @Override // io.netty.handler.codec.Headers
    public T set(K k4, Iterable<? extends V> iterable) {
        V next;
        this.nameValidator.validateName(k4);
        ObjectUtil.checkNotNull(iterable, "values");
        int hashCode = this.hashingStrategy.hashCode(k4);
        int index = index(hashCode);
        remove0(hashCode, index, k4);
        Iterator<? extends V> it2 = iterable.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            add0(hashCode, index, k4, next);
        }
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public T setObject(K k4, Object... objArr) {
        this.nameValidator.validateName(k4);
        int hashCode = this.hashingStrategy.hashCode(k4);
        int index = index(hashCode);
        remove0(hashCode, index, k4);
        for (Object obj : objArr) {
            if (obj == null) {
                break;
            }
            add0(hashCode, index, k4, this.valueConverter.convertObject(obj));
        }
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public T add(K k4, V... vArr) {
        this.nameValidator.validateName(k4);
        int hashCode = this.hashingStrategy.hashCode(k4);
        int index = index(hashCode);
        for (V v3 : vArr) {
            add0(hashCode, index, k4, v3);
        }
        return thisT();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HeaderEntry<K, V> remove0(HeaderEntry<K, V> headerEntry, HeaderEntry<K, V> headerEntry2) {
        int index = index(headerEntry.hash);
        HeaderEntry<K, V>[] headerEntryArr = this.entries;
        if (headerEntryArr[index] == headerEntry) {
            headerEntryArr[index] = headerEntry.next;
            headerEntry2 = headerEntryArr[index];
        } else {
            headerEntry2.next = headerEntry.next;
        }
        headerEntry.remove();
        this.size--;
        return headerEntry2;
    }

    @Override // io.netty.handler.codec.Headers
    public T set(K k4, V... vArr) {
        this.nameValidator.validateName(k4);
        ObjectUtil.checkNotNull(vArr, "values");
        int hashCode = this.hashingStrategy.hashCode(k4);
        int index = index(hashCode);
        remove0(hashCode, index, k4);
        for (V v3 : vArr) {
            if (v3 == null) {
                break;
            }
            add0(hashCode, index, k4, v3);
        }
        return thisT();
    }

    @Override // io.netty.handler.codec.Headers
    public T add(Headers<? extends K, ? extends V, ?> headers) {
        if (headers != this) {
            addImpl(headers);
            return thisT();
        }
        throw new IllegalArgumentException("can't add to itself.");
    }

    @Override // io.netty.handler.codec.Headers
    public T set(Headers<? extends K, ? extends V, ?> headers) {
        if (headers != this) {
            clear();
            addImpl(headers);
        }
        return thisT();
    }
}
