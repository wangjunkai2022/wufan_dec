package com.j256.ormlite.dao;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.SelectArg;
import com.j256.ormlite.stmt.mapped.MappedPreparedStmt;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.Collection;
/* loaded from: classes2.dex */
public abstract class BaseForeignCollection<T, ID> implements ForeignCollection<T>, Serializable {
    private static final long serialVersionUID = -5158840898186237589L;
    protected final transient Dao<T, ID> dao;
    private final transient FieldType foreignFieldType;
    private final transient boolean orderAscending;
    private final transient String orderColumn;
    private final transient Object parent;
    private final transient Object parentId;
    private transient PreparedQuery<T> preparedQuery;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseForeignCollection(Dao<T, ID> dao, Object obj, Object obj2, FieldType fieldType, String str, boolean z3) {
        this.dao = dao;
        this.foreignFieldType = fieldType;
        this.parentId = obj2;
        this.orderColumn = str;
        this.orderAscending = z3;
        this.parent = obj;
    }

    private boolean addElement(T t3) throws SQLException {
        if (this.dao == null) {
            return false;
        }
        if (this.parent != null && this.foreignFieldType.getFieldValueIfNotDefault(t3) == null) {
            this.foreignFieldType.assignField(t3, this.parent, true, null);
        }
        this.dao.create(t3);
        return true;
    }

    @Override // com.j256.ormlite.dao.ForeignCollection, java.util.Collection
    public boolean add(T t3) {
        try {
            return addElement(t3);
        } catch (SQLException e4) {
            throw new IllegalStateException("Could not create data element in dao", e4);
        }
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        boolean z3 = false;
        for (T t3 : collection) {
            try {
                if (addElement(t3)) {
                    z3 = true;
                }
            } catch (SQLException e4) {
                throw new IllegalStateException("Could not create data elements in dao", e4);
            }
        }
        return z3;
    }

    @Override // java.util.Collection
    public void clear() {
        if (this.dao == null) {
            return;
        }
        CloseableIterator<T> closeableIterator = closeableIterator();
        while (closeableIterator.hasNext()) {
            try {
                closeableIterator.next();
                closeableIterator.remove();
            } catch (Throwable th) {
                try {
                    closeableIterator.close();
                } catch (SQLException unused) {
                }
                throw th;
            }
        }
        try {
            closeableIterator.close();
        } catch (SQLException unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PreparedQuery<T> getPreparedQuery() throws SQLException {
        if (this.dao == null) {
            return null;
        }
        if (this.preparedQuery == null) {
            SelectArg selectArg = new SelectArg();
            selectArg.setValue(this.parentId);
            QueryBuilder<T, ID> queryBuilder = this.dao.queryBuilder();
            String str = this.orderColumn;
            if (str != null) {
                queryBuilder.orderBy(str, this.orderAscending);
            }
            PreparedQuery<T> prepare = queryBuilder.where().eq(this.foreignFieldType.getColumnName(), selectArg).prepare();
            this.preparedQuery = prepare;
            if (prepare instanceof MappedPreparedStmt) {
                ((MappedPreparedStmt) prepare).setParentInformation(this.parent, this.parentId);
            }
        }
        return this.preparedQuery;
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int refresh(T t3) throws SQLException {
        Dao<T, ID> dao = this.dao;
        if (dao == null) {
            return 0;
        }
        return dao.refresh(t3);
    }

    @Override // java.util.Collection
    public abstract boolean remove(Object obj);

    @Override // java.util.Collection
    public abstract boolean removeAll(Collection<?> collection);

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean z3 = false;
        if (this.dao == null) {
            return false;
        }
        CloseableIterator<T> closeableIterator = closeableIterator();
        while (closeableIterator.hasNext()) {
            try {
                if (!collection.contains(closeableIterator.next())) {
                    closeableIterator.remove();
                    z3 = true;
                }
            } catch (Throwable th) {
                try {
                    closeableIterator.close();
                } catch (SQLException unused) {
                }
                throw th;
            }
        }
        try {
            closeableIterator.close();
        } catch (SQLException unused2) {
        }
        return z3;
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int update(T t3) throws SQLException {
        Dao<T, ID> dao = this.dao;
        if (dao == null) {
            return 0;
        }
        return dao.update((Dao<T, ID>) t3);
    }
}
