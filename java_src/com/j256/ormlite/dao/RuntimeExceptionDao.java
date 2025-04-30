package com.j256.ormlite.dao;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Log;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.stmt.PreparedDelete;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.PreparedUpdate;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.ObjectFactory;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public class RuntimeExceptionDao<T, ID> implements CloseableIterable<T> {
    private static final Log.Level LOG_LEVEL = Log.Level.DEBUG;
    private static final Logger logger = LoggerFactory.getLogger(RuntimeExceptionDao.class);
    private Dao<T, ID> dao;

    public RuntimeExceptionDao(Dao<T, ID> dao) {
        this.dao = dao;
    }

    public static <T, ID> RuntimeExceptionDao<T, ID> createDao(ConnectionSource connectionSource, Class<T> cls) throws SQLException {
        return new RuntimeExceptionDao<>(DaoManager.createDao(connectionSource, cls));
    }

    private void logMessage(Exception exc, String str) {
        logger.log(LOG_LEVEL, exc, str);
    }

    public void assignEmptyForeignCollection(T t3, String str) {
        try {
            this.dao.assignEmptyForeignCollection(t3, str);
        } catch (SQLException e4) {
            logMessage(e4, "assignEmptyForeignCollection threw exception on " + str);
            throw new RuntimeException(e4);
        }
    }

    public <CT> CT callBatchTasks(Callable<CT> callable) {
        try {
            return (CT) this.dao.callBatchTasks(callable);
        } catch (Exception e4) {
            logMessage(e4, "callBatchTasks threw exception on: " + callable);
            throw new RuntimeException(e4);
        }
    }

    public void clearObjectCache() {
        this.dao.clearObjectCache();
    }

    public void closeLastIterator() {
        try {
            this.dao.closeLastIterator();
        } catch (SQLException e4) {
            logMessage(e4, "closeLastIterator threw exception");
            throw new RuntimeException(e4);
        }
    }

    @Override // com.j256.ormlite.dao.CloseableIterable
    public CloseableIterator<T> closeableIterator() {
        return this.dao.closeableIterator();
    }

    public void commit(DatabaseConnection databaseConnection) {
        try {
            this.dao.commit(databaseConnection);
        } catch (SQLException e4) {
            logMessage(e4, "commit(" + databaseConnection + ") threw exception");
            throw new RuntimeException(e4);
        }
    }

    public long countOf() {
        try {
            return this.dao.countOf();
        } catch (SQLException e4) {
            logMessage(e4, "countOf threw exception");
            throw new RuntimeException(e4);
        }
    }

    public int create(T t3) {
        try {
            return this.dao.create(t3);
        } catch (SQLException e4) {
            logMessage(e4, "create threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public T createIfNotExists(T t3) {
        try {
            return this.dao.createIfNotExists(t3);
        } catch (SQLException e4) {
            logMessage(e4, "createIfNotExists threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public Dao.CreateOrUpdateStatus createOrUpdate(T t3) {
        try {
            return this.dao.createOrUpdate(t3);
        } catch (SQLException e4) {
            logMessage(e4, "createOrUpdate threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public int delete(T t3) {
        try {
            return this.dao.delete((Dao<T, ID>) t3);
        } catch (SQLException e4) {
            logMessage(e4, "delete threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public DeleteBuilder<T, ID> deleteBuilder() {
        return this.dao.deleteBuilder();
    }

    public int deleteById(ID id) {
        try {
            return this.dao.deleteById(id);
        } catch (SQLException e4) {
            logMessage(e4, "deleteById threw exception on: " + id);
            throw new RuntimeException(e4);
        }
    }

    public int deleteIds(Collection<ID> collection) {
        try {
            return this.dao.deleteIds(collection);
        } catch (SQLException e4) {
            logMessage(e4, "deleteIds threw exception on: " + collection);
            throw new RuntimeException(e4);
        }
    }

    public void endThreadConnection(DatabaseConnection databaseConnection) {
        try {
            this.dao.endThreadConnection(databaseConnection);
        } catch (SQLException e4) {
            logMessage(e4, "endThreadConnection(" + databaseConnection + ") threw exception");
            throw new RuntimeException(e4);
        }
    }

    public int executeRaw(String str, String... strArr) {
        try {
            return this.dao.executeRaw(str, strArr);
        } catch (SQLException e4) {
            logMessage(e4, "executeRaw threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }

    public int executeRawNoArgs(String str) {
        try {
            return this.dao.executeRawNoArgs(str);
        } catch (SQLException e4) {
            logMessage(e4, "executeRawNoArgs threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }

    public ID extractId(T t3) {
        try {
            return this.dao.extractId(t3);
        } catch (SQLException e4) {
            logMessage(e4, "extractId threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public FieldType findForeignFieldType(Class<?> cls) {
        return this.dao.findForeignFieldType(cls);
    }

    public ConnectionSource getConnectionSource() {
        return this.dao.getConnectionSource();
    }

    public Class<T> getDataClass() {
        return this.dao.getDataClass();
    }

    public <FT> ForeignCollection<FT> getEmptyForeignCollection(String str) {
        try {
            return this.dao.getEmptyForeignCollection(str);
        } catch (SQLException e4) {
            logMessage(e4, "getEmptyForeignCollection threw exception on " + str);
            throw new RuntimeException(e4);
        }
    }

    public ObjectCache getObjectCache() {
        return this.dao.getObjectCache();
    }

    public RawRowMapper<T> getRawRowMapper() {
        return this.dao.getRawRowMapper();
    }

    public GenericRowMapper<T> getSelectStarRowMapper() {
        try {
            return this.dao.getSelectStarRowMapper();
        } catch (SQLException e4) {
            logMessage(e4, "getSelectStarRowMapper threw exception");
            throw new RuntimeException(e4);
        }
    }

    public CloseableWrappedIterable<T> getWrappedIterable() {
        return this.dao.getWrappedIterable();
    }

    public boolean idExists(ID id) {
        try {
            return this.dao.idExists(id);
        } catch (SQLException e4) {
            logMessage(e4, "idExists threw exception on " + id);
            throw new RuntimeException(e4);
        }
    }

    @Deprecated
    public boolean isAutoCommit() {
        try {
            return this.dao.isAutoCommit();
        } catch (SQLException e4) {
            logMessage(e4, "isAutoCommit() threw exception");
            throw new RuntimeException(e4);
        }
    }

    public boolean isTableExists() {
        try {
            return this.dao.isTableExists();
        } catch (SQLException e4) {
            logMessage(e4, "isTableExists threw exception");
            throw new RuntimeException(e4);
        }
    }

    public boolean isUpdatable() {
        return this.dao.isUpdatable();
    }

    public T mapSelectStarRow(DatabaseResults databaseResults) {
        try {
            return this.dao.mapSelectStarRow(databaseResults);
        } catch (SQLException e4) {
            logMessage(e4, "mapSelectStarRow threw exception on results");
            throw new RuntimeException(e4);
        }
    }

    public String objectToString(T t3) {
        return this.dao.objectToString(t3);
    }

    public boolean objectsEqual(T t3, T t4) {
        try {
            return this.dao.objectsEqual(t3, t4);
        } catch (SQLException e4) {
            logMessage(e4, "objectsEqual threw exception on: " + t3 + " and " + t4);
            throw new RuntimeException(e4);
        }
    }

    public List<T> query(PreparedQuery<T> preparedQuery) {
        try {
            return this.dao.query(preparedQuery);
        } catch (SQLException e4) {
            logMessage(e4, "query threw exception on: " + preparedQuery);
            throw new RuntimeException(e4);
        }
    }

    public QueryBuilder<T, ID> queryBuilder() {
        return this.dao.queryBuilder();
    }

    public List<T> queryForAll() {
        try {
            return this.dao.queryForAll();
        } catch (SQLException e4) {
            logMessage(e4, "queryForAll threw exception");
            throw new RuntimeException(e4);
        }
    }

    public List<T> queryForEq(String str, Object obj) {
        try {
            return this.dao.queryForEq(str, obj);
        } catch (SQLException e4) {
            logMessage(e4, "queryForEq threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }

    public List<T> queryForFieldValues(Map<String, Object> map) {
        try {
            return this.dao.queryForFieldValues(map);
        } catch (SQLException e4) {
            logMessage(e4, "queryForFieldValues threw exception");
            throw new RuntimeException(e4);
        }
    }

    public List<T> queryForFieldValuesArgs(Map<String, Object> map) {
        try {
            return this.dao.queryForFieldValuesArgs(map);
        } catch (SQLException e4) {
            logMessage(e4, "queryForFieldValuesArgs threw exception");
            throw new RuntimeException(e4);
        }
    }

    public T queryForFirst(PreparedQuery<T> preparedQuery) {
        try {
            return this.dao.queryForFirst(preparedQuery);
        } catch (SQLException e4) {
            logMessage(e4, "queryForFirst threw exception on: " + preparedQuery);
            throw new RuntimeException(e4);
        }
    }

    public T queryForId(ID id) {
        try {
            return this.dao.queryForId(id);
        } catch (SQLException e4) {
            logMessage(e4, "queryForId threw exception on: " + id);
            throw new RuntimeException(e4);
        }
    }

    public List<T> queryForMatching(T t3) {
        try {
            return this.dao.queryForMatching(t3);
        } catch (SQLException e4) {
            logMessage(e4, "queryForMatching threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public List<T> queryForMatchingArgs(T t3) {
        try {
            return this.dao.queryForMatchingArgs(t3);
        } catch (SQLException e4) {
            logMessage(e4, "queryForMatchingArgs threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public T queryForSameId(T t3) {
        try {
            return this.dao.queryForSameId(t3);
        } catch (SQLException e4) {
            logMessage(e4, "queryForSameId threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public GenericRawResults<String[]> queryRaw(String str, String... strArr) {
        try {
            return this.dao.queryRaw(str, strArr);
        } catch (SQLException e4) {
            logMessage(e4, "queryRaw threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }

    public long queryRawValue(String str, String... strArr) {
        try {
            return this.dao.queryRawValue(str, strArr);
        } catch (SQLException e4) {
            logMessage(e4, "queryRawValue threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }

    public int refresh(T t3) {
        try {
            return this.dao.refresh(t3);
        } catch (SQLException e4) {
            logMessage(e4, "refresh threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public void rollBack(DatabaseConnection databaseConnection) {
        try {
            this.dao.rollBack(databaseConnection);
        } catch (SQLException e4) {
            logMessage(e4, "rollBack(" + databaseConnection + ") threw exception");
            throw new RuntimeException(e4);
        }
    }

    @Deprecated
    public void setAutoCommit(boolean z3) {
        try {
            this.dao.setAutoCommit(z3);
        } catch (SQLException e4) {
            logMessage(e4, "setAutoCommit(" + z3 + ") threw exception");
            throw new RuntimeException(e4);
        }
    }

    public void setObjectCache(boolean z3) {
        try {
            this.dao.setObjectCache(z3);
        } catch (SQLException e4) {
            logMessage(e4, "setObjectCache(" + z3 + ") threw exception");
            throw new RuntimeException(e4);
        }
    }

    public void setObjectFactory(ObjectFactory<T> objectFactory) {
        this.dao.setObjectFactory(objectFactory);
    }

    public DatabaseConnection startThreadConnection() {
        try {
            return this.dao.startThreadConnection();
        } catch (SQLException e4) {
            logMessage(e4, "startThreadConnection() threw exception");
            throw new RuntimeException(e4);
        }
    }

    public int update(T t3) {
        try {
            return this.dao.update((Dao<T, ID>) t3);
        } catch (SQLException e4) {
            logMessage(e4, "update threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public UpdateBuilder<T, ID> updateBuilder() {
        return this.dao.updateBuilder();
    }

    public int updateId(T t3, ID id) {
        try {
            return this.dao.updateId(t3, id);
        } catch (SQLException e4) {
            logMessage(e4, "updateId threw exception on: " + t3);
            throw new RuntimeException(e4);
        }
    }

    public int updateRaw(String str, String... strArr) {
        try {
            return this.dao.updateRaw(str, strArr);
        } catch (SQLException e4) {
            logMessage(e4, "updateRaw threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }

    public CloseableWrappedIterable<T> getWrappedIterable(PreparedQuery<T> preparedQuery) {
        return this.dao.getWrappedIterable(preparedQuery);
    }

    @Override // java.lang.Iterable
    public CloseableIterator<T> iterator() {
        return this.dao.iterator();
    }

    public static <T, ID> RuntimeExceptionDao<T, ID> createDao(ConnectionSource connectionSource, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        return new RuntimeExceptionDao<>(DaoManager.createDao(connectionSource, databaseTableConfig));
    }

    public CloseableIterator<T> iterator(int i2) {
        return this.dao.iterator(i2);
    }

    public long countOf(PreparedQuery<T> preparedQuery) {
        try {
            return this.dao.countOf(preparedQuery);
        } catch (SQLException e4) {
            logMessage(e4, "countOf threw exception on " + preparedQuery);
            throw new RuntimeException(e4);
        }
    }

    public int delete(Collection<T> collection) {
        try {
            return this.dao.delete((Collection) collection);
        } catch (SQLException e4) {
            logMessage(e4, "delete threw exception on: " + collection);
            throw new RuntimeException(e4);
        }
    }

    public boolean isAutoCommit(DatabaseConnection databaseConnection) {
        try {
            return this.dao.isAutoCommit(databaseConnection);
        } catch (SQLException e4) {
            logMessage(e4, "isAutoCommit(" + databaseConnection + ") threw exception");
            throw new RuntimeException(e4);
        }
    }

    public CloseableIterator<T> iterator(PreparedQuery<T> preparedQuery) {
        try {
            return this.dao.iterator(preparedQuery);
        } catch (SQLException e4) {
            logMessage(e4, "iterator threw exception on: " + preparedQuery);
            throw new RuntimeException(e4);
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(String str, RawRowMapper<UO> rawRowMapper, String... strArr) {
        try {
            return this.dao.queryRaw(str, rawRowMapper, strArr);
        } catch (SQLException e4) {
            logMessage(e4, "queryRaw threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }

    public void setAutoCommit(DatabaseConnection databaseConnection, boolean z3) {
        try {
            this.dao.setAutoCommit(databaseConnection, z3);
        } catch (SQLException e4) {
            logMessage(e4, "setAutoCommit(" + databaseConnection + "," + z3 + ") threw exception");
            throw new RuntimeException(e4);
        }
    }

    public void setObjectCache(ObjectCache objectCache) {
        try {
            this.dao.setObjectCache(objectCache);
        } catch (SQLException e4) {
            logMessage(e4, "setObjectCache threw exception on " + objectCache);
            throw new RuntimeException(e4);
        }
    }

    public int update(PreparedUpdate<T> preparedUpdate) {
        try {
            return this.dao.update((PreparedUpdate) preparedUpdate);
        } catch (SQLException e4) {
            logMessage(e4, "update threw exception on: " + preparedUpdate);
            throw new RuntimeException(e4);
        }
    }

    public int delete(PreparedDelete<T> preparedDelete) {
        try {
            return this.dao.delete((PreparedDelete) preparedDelete);
        } catch (SQLException e4) {
            logMessage(e4, "delete threw exception on: " + preparedDelete);
            throw new RuntimeException(e4);
        }
    }

    public CloseableIterator<T> iterator(PreparedQuery<T> preparedQuery, int i2) {
        try {
            return this.dao.iterator(preparedQuery, i2);
        } catch (SQLException e4) {
            logMessage(e4, "iterator threw exception on: " + preparedQuery);
            throw new RuntimeException(e4);
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(String str, DataType[] dataTypeArr, RawRowObjectMapper<UO> rawRowObjectMapper, String... strArr) {
        try {
            return this.dao.queryRaw(str, dataTypeArr, rawRowObjectMapper, strArr);
        } catch (SQLException e4) {
            logMessage(e4, "queryRaw threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }

    public GenericRawResults<Object[]> queryRaw(String str, DataType[] dataTypeArr, String... strArr) {
        try {
            return this.dao.queryRaw(str, dataTypeArr, strArr);
        } catch (SQLException e4) {
            logMessage(e4, "queryRaw threw exception on: " + str);
            throw new RuntimeException(e4);
        }
    }
}
