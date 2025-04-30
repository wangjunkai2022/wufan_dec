package com.j256.ormlite.dao;

import com.j256.ormlite.field.FieldType;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
/* loaded from: classes2.dex */
public class LazyForeignCollection<T, ID> extends BaseForeignCollection<T, ID> implements ForeignCollection<T>, Serializable {
    private static final long serialVersionUID = -5460708106909626233L;
    private transient CloseableIterator<T> lastIterator;

    public LazyForeignCollection(Dao<T, ID> dao, Object obj, Object obj2, FieldType fieldType, String str, boolean z3) {
        super(dao, obj, obj2, fieldType, str, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CloseableIterator<T> seperateIteratorThrow(int i2) throws SQLException {
        Dao<T, ID> dao = this.dao;
        if (dao != null) {
            return dao.iterator(getPreparedQuery(), i2);
        }
        throw new IllegalStateException("Internal DAO object is null.  Lazy collections cannot be used if they have been deserialized.");
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public void closeLastIterator() throws SQLException {
        CloseableIterator<T> closeableIterator = this.lastIterator;
        if (closeableIterator != null) {
            closeableIterator.close();
            this.lastIterator = null;
        }
    }

    @Override // com.j256.ormlite.dao.CloseableIterable
    public CloseableIterator<T> closeableIterator() {
        return closeableIterator(-1);
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        CloseableIterator<T> it2 = iterator();
        do {
            try {
                if (!it2.hasNext()) {
                    try {
                        it2.close();
                    } catch (SQLException unused) {
                    }
                    return false;
                }
            } catch (Throwable th) {
                try {
                    it2.close();
                } catch (SQLException unused2) {
                }
                throw th;
            }
        } while (!it2.next().equals(obj));
        try {
            it2.close();
        } catch (SQLException unused3) {
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        HashSet hashSet = new HashSet(collection);
        CloseableIterator<T> it2 = iterator();
        while (it2.hasNext()) {
            try {
                hashSet.remove(it2.next());
            } catch (Throwable th) {
                try {
                    it2.close();
                } catch (SQLException unused) {
                }
                throw th;
            }
        }
        boolean isEmpty = hashSet.isEmpty();
        try {
            it2.close();
        } catch (SQLException unused2) {
        }
        return isEmpty;
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableWrappedIterable<T> getWrappedIterable() {
        return getWrappedIterable(-1);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return super.hashCode();
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public boolean isEager() {
        return false;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        CloseableIterator<T> it2 = iterator();
        try {
            return !it2.hasNext();
        } finally {
            try {
                it2.close();
            } catch (SQLException unused) {
            }
        }
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iteratorThrow() throws SQLException {
        return iteratorThrow(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int refreshAll() {
        throw new UnsupportedOperationException("Cannot call updateAll() on a lazy collection.");
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int refreshCollection() {
        return 0;
    }

    @Override // com.j256.ormlite.dao.BaseForeignCollection, java.util.Collection
    public boolean remove(Object obj) {
        CloseableIterator<T> it2 = iterator();
        do {
            try {
                if (!it2.hasNext()) {
                    try {
                        it2.close();
                    } catch (SQLException unused) {
                    }
                    return false;
                }
            } catch (Throwable th) {
                try {
                    it2.close();
                } catch (SQLException unused2) {
                }
                throw th;
            }
        } while (!it2.next().equals(obj));
        it2.remove();
        try {
            it2.close();
        } catch (SQLException unused3) {
        }
        return true;
    }

    @Override // com.j256.ormlite.dao.BaseForeignCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        CloseableIterator<T> it2 = iterator();
        boolean z3 = false;
        while (it2.hasNext()) {
            try {
                if (collection.contains(it2.next())) {
                    it2.remove();
                    z3 = true;
                }
            } catch (Throwable th) {
                try {
                    it2.close();
                } catch (SQLException unused) {
                }
                throw th;
            }
        }
        try {
            it2.close();
        } catch (SQLException unused2) {
        }
        return z3;
    }

    @Override // java.util.Collection
    public int size() {
        CloseableIterator<T> it2 = iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            try {
                it2.moveToNext();
                i2++;
            } catch (Throwable th) {
                try {
                    it2.close();
                } catch (SQLException unused) {
                }
                throw th;
            }
        }
        try {
            it2.close();
        } catch (SQLException unused2) {
        }
        return i2;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        ArrayList arrayList = new ArrayList();
        CloseableIterator<T> it2 = iterator();
        while (it2.hasNext()) {
            try {
                arrayList.add(it2.next());
            } catch (Throwable th) {
                try {
                    it2.close();
                } catch (SQLException unused) {
                }
                throw th;
            }
        }
        Object[] array = arrayList.toArray();
        try {
            it2.close();
        } catch (SQLException unused2) {
        }
        return array;
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int updateAll() {
        throw new UnsupportedOperationException("Cannot call updateAll() on a lazy collection.");
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> closeableIterator(int i2) {
        try {
            return iteratorThrow(i2);
        } catch (SQLException e4) {
            throw new IllegalStateException("Could not build lazy iterator for " + this.dao.getDataClass(), e4);
        }
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableWrappedIterable<T> getWrappedIterable(final int i2) {
        return new CloseableWrappedIterableImpl(new CloseableIterable<T>() { // from class: com.j256.ormlite.dao.LazyForeignCollection.1
            @Override // com.j256.ormlite.dao.CloseableIterable
            public CloseableIterator<T> closeableIterator() {
                try {
                    return LazyForeignCollection.this.seperateIteratorThrow(i2);
                } catch (Exception e4) {
                    throw new IllegalStateException("Could not build lazy iterator for " + LazyForeignCollection.this.dao.getDataClass(), e4);
                }
            }

            @Override // java.lang.Iterable
            public CloseableIterator<T> iterator() {
                return closeableIterator();
            }
        });
    }

    @Override // java.util.Collection, java.lang.Iterable
    public CloseableIterator<T> iterator() {
        return closeableIterator(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iteratorThrow(int i2) throws SQLException {
        CloseableIterator<T> seperateIteratorThrow = seperateIteratorThrow(i2);
        this.lastIterator = seperateIteratorThrow;
        return seperateIteratorThrow;
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iterator(int i2) {
        return closeableIterator(i2);
    }

    @Override // java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        CloseableIterator<T> it2 = iterator();
        ArrayList arrayList = null;
        int i2 = 0;
        while (it2.hasNext()) {
            try {
                T next = it2.next();
                if (i2 >= eArr.length) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        for (E e4 : eArr) {
                            arrayList.add(e4);
                        }
                    }
                    arrayList.add(next);
                } else {
                    eArr[i2] = next;
                }
                i2++;
            } catch (Throwable th) {
                try {
                    it2.close();
                } catch (SQLException unused) {
                }
                throw th;
            }
        }
        try {
            it2.close();
        } catch (SQLException unused2) {
        }
        if (arrayList == null) {
            if (i2 < eArr.length - 1) {
                eArr[i2] = 0;
            }
            return eArr;
        }
        return (E[]) arrayList.toArray(eArr);
    }
}
