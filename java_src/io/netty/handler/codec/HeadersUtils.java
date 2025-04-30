package io.netty.handler.codec;

import io.netty.util.internal.ObjectUtil;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5.dex */
public final class HeadersUtils {

    /* loaded from: classes5.dex */
    private static final class CharSequenceDelegatingStringSet extends DelegatingStringSet<CharSequence> {
        CharSequenceDelegatingStringSet(Set<CharSequence> set) {
            super(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean addAll(Collection<? extends String> collection) {
            return this.allNames.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(String str) {
            return this.allNames.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class DelegatingStringSet<T> extends AbstractCollection<String> implements Set<String> {
        protected final Set<T> allNames;

        DelegatingStringSet(Set<T> set) {
            this.allNames = (Set) ObjectUtil.checkNotNull(set, "allNames");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.allNames.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.allNames.contains(obj.toString());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.allNames.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<String> iterator() {
            return new StringIterator(this.allNames.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.allNames.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.allNames.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class StringEntry implements Map.Entry<String, String> {
        private final Map.Entry<CharSequence, CharSequence> entry;
        private String name;
        private String value;

        StringEntry(Map.Entry<CharSequence, CharSequence> entry) {
            this.entry = entry;
        }

        public String toString() {
            return this.entry.toString();
        }

        @Override // java.util.Map.Entry
        public String getKey() {
            if (this.name == null) {
                this.name = this.entry.getKey().toString();
            }
            return this.name;
        }

        @Override // java.util.Map.Entry
        public String getValue() {
            if (this.value == null && this.entry.getValue() != null) {
                this.value = this.entry.getValue().toString();
            }
            return this.value;
        }

        @Override // java.util.Map.Entry
        public String setValue(String str) {
            String value = getValue();
            this.entry.setValue(str);
            return value;
        }
    }

    /* loaded from: classes5.dex */
    private static final class StringEntryIterator implements Iterator<Map.Entry<String, String>> {
        private final Iterator<Map.Entry<CharSequence, CharSequence>> iter;

        StringEntryIterator(Iterator<Map.Entry<CharSequence, CharSequence>> it2) {
            this.iter = it2;
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
        public Map.Entry<String, String> next() {
            return new StringEntry(this.iter.next());
        }
    }

    /* loaded from: classes5.dex */
    private static final class StringIterator<T> implements Iterator<String> {
        private final Iterator<T> iter;

        StringIterator(Iterator<T> it2) {
            this.iter = it2;
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
        public String next() {
            T next = this.iter.next();
            if (next != null) {
                return next.toString();
            }
            return null;
        }
    }

    private HeadersUtils() {
    }

    public static <K, V> List<String> getAllAsString(Headers<K, V, ?> headers, K k4) {
        final List<V> all = headers.getAll(k4);
        return new AbstractList<String>() { // from class: io.netty.handler.codec.HeadersUtils.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return all.size();
            }

            @Override // java.util.AbstractList, java.util.List
            public String get(int i2) {
                Object obj = all.get(i2);
                if (obj != null) {
                    return obj.toString();
                }
                return null;
            }
        };
    }

    public static <K, V> String getAsString(Headers<K, V, ?> headers, K k4) {
        V v3 = headers.get(k4);
        if (v3 != null) {
            return v3.toString();
        }
        return null;
    }

    public static Iterator<Map.Entry<String, String>> iteratorAsString(Iterable<Map.Entry<CharSequence, CharSequence>> iterable) {
        return new StringEntryIterator(iterable.iterator());
    }

    public static Set<String> namesAsString(Headers<CharSequence, CharSequence, ?> headers) {
        return new CharSequenceDelegatingStringSet(headers.names());
    }

    public static <K, V> String toString(Class<?> cls, Iterator<Map.Entry<K, V>> it2, int i2) {
        String simpleName = cls.getSimpleName();
        if (i2 == 0) {
            return simpleName + "[]";
        }
        StringBuilder sb = new StringBuilder(simpleName.length() + 2 + (i2 * 20));
        sb.append(simpleName);
        sb.append('[');
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            sb.append(next.getKey());
            sb.append(": ");
            sb.append(next.getValue());
            sb.append(", ");
        }
        sb.setLength(sb.length() - 2);
        sb.append(']');
        return sb.toString();
    }
}
