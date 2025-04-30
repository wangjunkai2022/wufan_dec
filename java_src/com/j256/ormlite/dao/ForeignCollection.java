package com.j256.ormlite.dao;

import java.sql.SQLException;
import java.util.Collection;
/* loaded from: classes2.dex */
public interface ForeignCollection<T> extends Collection<T>, CloseableIterable<T> {
    @Override // java.util.Collection
    boolean add(T t3);

    void closeLastIterator() throws SQLException;

    CloseableIterator<T> closeableIterator(int i2);

    CloseableWrappedIterable<T> getWrappedIterable();

    CloseableWrappedIterable<T> getWrappedIterable(int i2);

    boolean isEager();

    CloseableIterator<T> iterator(int i2);

    CloseableIterator<T> iteratorThrow() throws SQLException;

    CloseableIterator<T> iteratorThrow(int i2) throws SQLException;

    int refresh(T t3) throws SQLException;

    int refreshAll() throws SQLException;

    int refreshCollection() throws SQLException;

    int update(T t3) throws SQLException;

    int updateAll() throws SQLException;
}
