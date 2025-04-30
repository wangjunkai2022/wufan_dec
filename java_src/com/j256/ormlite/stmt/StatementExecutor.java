package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.dao.RawRowObjectMapper;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.misc.TransactionManager;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.stmt.mapped.MappedCreate;
import com.j256.ormlite.stmt.mapped.MappedDelete;
import com.j256.ormlite.stmt.mapped.MappedDeleteCollection;
import com.j256.ormlite.stmt.mapped.MappedQueryForId;
import com.j256.ormlite.stmt.mapped.MappedRefresh;
import com.j256.ormlite.stmt.mapped.MappedUpdate;
import com.j256.ormlite.stmt.mapped.MappedUpdateId;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class StatementExecutor<T, ID> implements GenericRowMapper<String[]> {
    private static Logger logger = LoggerFactory.getLogger(StatementExecutor.class);
    private static final FieldType[] noFieldTypes = new FieldType[0];
    private String countStarQuery;
    private final Dao<T, ID> dao;
    private final DatabaseType databaseType;
    private FieldType[] ifExistsFieldTypes;
    private String ifExistsQuery;
    private MappedDelete<T, ID> mappedDelete;
    private MappedCreate<T, ID> mappedInsert;
    private MappedQueryForId<T, ID> mappedQueryForId;
    private MappedRefresh<T, ID> mappedRefresh;
    private MappedUpdate<T, ID> mappedUpdate;
    private MappedUpdateId<T, ID> mappedUpdateId;
    private PreparedQuery<T> preparedQueryForAll;
    private RawRowMapper<T> rawRowMapper;
    private final TableInfo<T, ID> tableInfo;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ObjectArrayRowMapper implements GenericRowMapper<Object[]> {
        private final DataType[] columnTypes;

        public ObjectArrayRowMapper(DataType[] dataTypeArr) {
            this.columnTypes = dataTypeArr;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public Object[] mapRow(DatabaseResults databaseResults) throws SQLException {
            DataType dataType;
            int columnCount = databaseResults.getColumnCount();
            Object[] objArr = new Object[columnCount];
            for (int i2 = 0; i2 < columnCount; i2++) {
                DataType[] dataTypeArr = this.columnTypes;
                if (i2 >= dataTypeArr.length) {
                    dataType = DataType.STRING;
                } else {
                    dataType = dataTypeArr[i2];
                }
                objArr[i2] = dataType.getDataPersister().resultToJava(null, databaseResults, i2);
            }
            return objArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class UserRawRowMapper<UO> implements GenericRowMapper<UO> {
        private String[] columnNames;
        private final RawRowMapper<UO> mapper;
        private final GenericRowMapper<String[]> stringRowMapper;

        public UserRawRowMapper(RawRowMapper<UO> rawRowMapper, GenericRowMapper<String[]> genericRowMapper) {
            this.mapper = rawRowMapper;
            this.stringRowMapper = genericRowMapper;
        }

        private String[] getColumnNames(DatabaseResults databaseResults) throws SQLException {
            String[] strArr = this.columnNames;
            if (strArr != null) {
                return strArr;
            }
            String[] columnNames = databaseResults.getColumnNames();
            this.columnNames = columnNames;
            return columnNames;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public UO mapRow(DatabaseResults databaseResults) throws SQLException {
            return this.mapper.mapRow(getColumnNames(databaseResults), this.stringRowMapper.mapRow(databaseResults));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class UserRawRowObjectMapper<UO> implements GenericRowMapper<UO> {
        private String[] columnNames;
        private final DataType[] columnTypes;
        private final RawRowObjectMapper<UO> mapper;

        public UserRawRowObjectMapper(RawRowObjectMapper<UO> rawRowObjectMapper, DataType[] dataTypeArr) {
            this.mapper = rawRowObjectMapper;
            this.columnTypes = dataTypeArr;
        }

        private String[] getColumnNames(DatabaseResults databaseResults) throws SQLException {
            String[] strArr = this.columnNames;
            if (strArr != null) {
                return strArr;
            }
            String[] columnNames = databaseResults.getColumnNames();
            this.columnNames = columnNames;
            return columnNames;
        }

        @Override // com.j256.ormlite.stmt.GenericRowMapper
        public UO mapRow(DatabaseResults databaseResults) throws SQLException {
            int columnCount = databaseResults.getColumnCount();
            Object[] objArr = new Object[columnCount];
            for (int i2 = 0; i2 < columnCount; i2++) {
                DataType[] dataTypeArr = this.columnTypes;
                if (i2 >= dataTypeArr.length) {
                    objArr[i2] = null;
                } else {
                    objArr[i2] = dataTypeArr[i2].getDataPersister().resultToJava(null, databaseResults, i2);
                }
            }
            return this.mapper.mapRow(getColumnNames(databaseResults), this.columnTypes, objArr);
        }
    }

    public StatementExecutor(DatabaseType databaseType, TableInfo<T, ID> tableInfo, Dao<T, ID> dao) {
        this.databaseType = databaseType;
        this.tableInfo = tableInfo;
        this.dao = dao;
    }

    private void assignStatementArguments(CompiledStatement compiledStatement, String[] strArr) throws SQLException {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            compiledStatement.setObject(i2, strArr[i2], SqlType.STRING);
        }
    }

    private void prepareQueryForAll() throws SQLException {
        if (this.preparedQueryForAll == null) {
            this.preparedQueryForAll = new QueryBuilder(this.databaseType, this.tableInfo, this.dao).prepare();
        }
    }

    public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> baseDaoImpl, ConnectionSource connectionSource, int i2, ObjectCache objectCache) throws SQLException {
        prepareQueryForAll();
        return buildIterator(baseDaoImpl, connectionSource, this.preparedQueryForAll, objectCache, i2);
    }

    public <CT> CT callBatchTasks(DatabaseConnection databaseConnection, boolean z3, Callable<CT> callable) throws SQLException {
        if (this.databaseType.isBatchUseTransaction()) {
            return (CT) TransactionManager.callInTransaction(databaseConnection, z3, this.databaseType, callable);
        }
        boolean z4 = false;
        try {
            if (databaseConnection.isAutoCommitSupported()) {
                boolean isAutoCommit = databaseConnection.isAutoCommit();
                if (isAutoCommit) {
                    try {
                        databaseConnection.setAutoCommit(false);
                        logger.debug("disabled auto-commit on table {} before batch tasks", this.tableInfo.getTableName());
                    } catch (Throwable th) {
                        th = th;
                        z4 = isAutoCommit;
                        if (z4) {
                            databaseConnection.setAutoCommit(true);
                            logger.debug("re-enabled auto-commit on table {} after batch tasks", this.tableInfo.getTableName());
                        }
                        throw th;
                    }
                }
                z4 = isAutoCommit;
            }
            try {
                try {
                    CT call = callable.call();
                    if (z4) {
                        databaseConnection.setAutoCommit(true);
                        logger.debug("re-enabled auto-commit on table {} after batch tasks", this.tableInfo.getTableName());
                    }
                    return call;
                } catch (SQLException e4) {
                    throw e4;
                }
            } catch (Exception e5) {
                throw SqlExceptionUtil.create("Batch tasks callable threw non-SQL exception", e5);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public int create(DatabaseConnection databaseConnection, T t3, ObjectCache objectCache) throws SQLException {
        if (this.mappedInsert == null) {
            this.mappedInsert = MappedCreate.build(this.databaseType, this.tableInfo);
        }
        return this.mappedInsert.insert(this.databaseType, databaseConnection, t3, objectCache);
    }

    public int delete(DatabaseConnection databaseConnection, T t3, ObjectCache objectCache) throws SQLException {
        if (this.mappedDelete == null) {
            this.mappedDelete = MappedDelete.build(this.databaseType, this.tableInfo);
        }
        return this.mappedDelete.delete(databaseConnection, t3, objectCache);
    }

    public int deleteById(DatabaseConnection databaseConnection, ID id, ObjectCache objectCache) throws SQLException {
        if (this.mappedDelete == null) {
            this.mappedDelete = MappedDelete.build(this.databaseType, this.tableInfo);
        }
        return this.mappedDelete.deleteById(databaseConnection, id, objectCache);
    }

    public int deleteIds(DatabaseConnection databaseConnection, Collection<ID> collection, ObjectCache objectCache) throws SQLException {
        return MappedDeleteCollection.deleteIds(this.databaseType, this.tableInfo, databaseConnection, collection, objectCache);
    }

    public int deleteObjects(DatabaseConnection databaseConnection, Collection<T> collection, ObjectCache objectCache) throws SQLException {
        return MappedDeleteCollection.deleteObjects(this.databaseType, this.tableInfo, databaseConnection, collection, objectCache);
    }

    public int executeRaw(DatabaseConnection databaseConnection, String str, String[] strArr) throws SQLException {
        logger.debug("running raw execute statement: {}", str);
        if (strArr.length > 0) {
            logger.trace("execute arguments: {}", (Object) strArr);
        }
        CompiledStatement compileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.EXECUTE, noFieldTypes, -1);
        try {
            assignStatementArguments(compileStatement, strArr);
            return compileStatement.runExecute();
        } finally {
            compileStatement.close();
        }
    }

    public int executeRawNoArgs(DatabaseConnection databaseConnection, String str) throws SQLException {
        logger.debug("running raw execute statement: {}", str);
        return databaseConnection.executeStatement(str, -1);
    }

    public RawRowMapper<T> getRawRowMapper() {
        if (this.rawRowMapper == null) {
            this.rawRowMapper = new RawRowMapperImpl(this.tableInfo);
        }
        return this.rawRowMapper;
    }

    public GenericRowMapper<T> getSelectStarRowMapper() throws SQLException {
        prepareQueryForAll();
        return this.preparedQueryForAll;
    }

    public boolean ifExists(DatabaseConnection databaseConnection, ID id) throws SQLException {
        if (this.ifExistsQuery == null) {
            QueryBuilder queryBuilder = new QueryBuilder(this.databaseType, this.tableInfo, this.dao);
            queryBuilder.selectRaw("COUNT(*)");
            queryBuilder.where().eq(this.tableInfo.getIdField().getColumnName(), new SelectArg());
            this.ifExistsQuery = queryBuilder.prepareStatementString();
            this.ifExistsFieldTypes = new FieldType[]{this.tableInfo.getIdField()};
        }
        long queryForLong = databaseConnection.queryForLong(this.ifExistsQuery, new Object[]{id}, this.ifExistsFieldTypes);
        logger.debug("query of '{}' returned {}", this.ifExistsQuery, Long.valueOf(queryForLong));
        return queryForLong != 0;
    }

    public List<T> query(ConnectionSource connectionSource, PreparedStmt<T> preparedStmt, ObjectCache objectCache) throws SQLException {
        SelectIterator<T, ID> buildIterator = buildIterator(null, connectionSource, preparedStmt, objectCache, -1);
        try {
            ArrayList arrayList = new ArrayList();
            while (buildIterator.hasNextThrow()) {
                arrayList.add(buildIterator.nextThrow());
            }
            logger.debug("query of '{}' returned {} results", preparedStmt.getStatement(), Integer.valueOf(arrayList.size()));
            return arrayList;
        } finally {
            buildIterator.close();
        }
    }

    public List<T> queryForAll(ConnectionSource connectionSource, ObjectCache objectCache) throws SQLException {
        prepareQueryForAll();
        return query(connectionSource, this.preparedQueryForAll, objectCache);
    }

    public long queryForCountStar(DatabaseConnection databaseConnection) throws SQLException {
        if (this.countStarQuery == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("SELECT COUNT(*) FROM ");
            this.databaseType.appendEscapedEntityName(sb, this.tableInfo.getTableName());
            this.countStarQuery = sb.toString();
        }
        long queryForLong = databaseConnection.queryForLong(this.countStarQuery);
        logger.debug("query of '{}' returned {}", this.countStarQuery, Long.valueOf(queryForLong));
        return queryForLong;
    }

    public T queryForFirst(DatabaseConnection databaseConnection, PreparedStmt<T> preparedStmt, ObjectCache objectCache) throws SQLException {
        CompiledStatement compile = preparedStmt.compile(databaseConnection, StatementBuilder.StatementType.SELECT);
        DatabaseResults databaseResults = null;
        try {
            DatabaseResults runQuery = compile.runQuery(objectCache);
            try {
                if (runQuery.first()) {
                    logger.debug("query-for-first of '{}' returned at least 1 result", preparedStmt.getStatement());
                    T mapRow = preparedStmt.mapRow(runQuery);
                    runQuery.close();
                    compile.close();
                    return mapRow;
                }
                logger.debug("query-for-first of '{}' returned at 0 results", preparedStmt.getStatement());
                runQuery.close();
                compile.close();
                return null;
            } catch (Throwable th) {
                th = th;
                databaseResults = runQuery;
                if (databaseResults != null) {
                    databaseResults.close();
                }
                compile.close();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public T queryForId(DatabaseConnection databaseConnection, ID id, ObjectCache objectCache) throws SQLException {
        if (this.mappedQueryForId == null) {
            this.mappedQueryForId = MappedQueryForId.build(this.databaseType, this.tableInfo, null);
        }
        return this.mappedQueryForId.execute(databaseConnection, id, objectCache);
    }

    public long queryForLong(DatabaseConnection databaseConnection, PreparedStmt<T> preparedStmt) throws SQLException {
        CompiledStatement compile = preparedStmt.compile(databaseConnection, StatementBuilder.StatementType.SELECT_LONG);
        DatabaseResults databaseResults = null;
        try {
            DatabaseResults runQuery = compile.runQuery(null);
            if (runQuery.first()) {
                long j4 = runQuery.getLong(0);
                runQuery.close();
                compile.close();
                return j4;
            }
            throw new SQLException("No result found in queryForLong: " + preparedStmt.getStatement());
        } catch (Throwable th) {
            if (0 != 0) {
                databaseResults.close();
            }
            compile.close();
            throw th;
        }
    }

    public GenericRawResults<String[]> queryRaw(ConnectionSource connectionSource, String str, String[] strArr, ObjectCache objectCache) throws SQLException {
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection();
        CompiledStatement compiledStatement = null;
        try {
            compiledStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
            assignStatementArguments(compiledStatement, strArr);
            return new RawResultsImpl(connectionSource, readOnlyConnection, str, String[].class, compiledStatement, this, objectCache);
        } catch (Throwable th) {
            if (compiledStatement != null) {
                compiledStatement.close();
            }
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }

    public int refresh(DatabaseConnection databaseConnection, T t3, ObjectCache objectCache) throws SQLException {
        if (this.mappedRefresh == null) {
            this.mappedRefresh = MappedRefresh.build(this.databaseType, this.tableInfo);
        }
        return this.mappedRefresh.executeRefresh(databaseConnection, t3, objectCache);
    }

    public int update(DatabaseConnection databaseConnection, T t3, ObjectCache objectCache) throws SQLException {
        if (this.mappedUpdate == null) {
            this.mappedUpdate = MappedUpdate.build(this.databaseType, this.tableInfo);
        }
        return this.mappedUpdate.update(databaseConnection, t3, objectCache);
    }

    public int updateId(DatabaseConnection databaseConnection, T t3, ID id, ObjectCache objectCache) throws SQLException {
        if (this.mappedUpdateId == null) {
            this.mappedUpdateId = MappedUpdateId.build(this.databaseType, this.tableInfo);
        }
        return this.mappedUpdateId.execute(databaseConnection, t3, id, objectCache);
    }

    public int updateRaw(DatabaseConnection databaseConnection, String str, String[] strArr) throws SQLException {
        logger.debug("running raw update statement: {}", str);
        if (strArr.length > 0) {
            logger.trace("update arguments: {}", (Object) strArr);
        }
        CompiledStatement compileStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.UPDATE, noFieldTypes, -1);
        try {
            assignStatementArguments(compileStatement, strArr);
            return compileStatement.runUpdate();
        } finally {
            compileStatement.close();
        }
    }

    @Override // com.j256.ormlite.stmt.GenericRowMapper
    public String[] mapRow(DatabaseResults databaseResults) throws SQLException {
        int columnCount = databaseResults.getColumnCount();
        String[] strArr = new String[columnCount];
        for (int i2 = 0; i2 < columnCount; i2++) {
            strArr[i2] = databaseResults.getString(i2);
        }
        return strArr;
    }

    public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> baseDaoImpl, ConnectionSource connectionSource, PreparedStmt<T> preparedStmt, ObjectCache objectCache, int i2) throws SQLException {
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection();
        CompiledStatement compiledStatement = null;
        try {
            CompiledStatement compile = preparedStmt.compile(readOnlyConnection, StatementBuilder.StatementType.SELECT, i2);
            try {
                try {
                    return new SelectIterator<>(this.tableInfo.getDataClass(), baseDaoImpl, preparedStmt, connectionSource, readOnlyConnection, compile, preparedStmt.getStatement(), objectCache);
                } catch (Throwable th) {
                    th = th;
                    compiledStatement = compile;
                    if (compiledStatement != null) {
                        compiledStatement.close();
                    }
                    if (readOnlyConnection != null) {
                        connectionSource.releaseConnection(readOnlyConnection);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public int delete(DatabaseConnection databaseConnection, PreparedDelete<T> preparedDelete) throws SQLException {
        CompiledStatement compile = preparedDelete.compile(databaseConnection, StatementBuilder.StatementType.DELETE);
        try {
            return compile.runUpdate();
        } finally {
            compile.close();
        }
    }

    public int update(DatabaseConnection databaseConnection, PreparedUpdate<T> preparedUpdate) throws SQLException {
        CompiledStatement compile = preparedUpdate.compile(databaseConnection, StatementBuilder.StatementType.UPDATE);
        try {
            return compile.runUpdate();
        } finally {
            compile.close();
        }
    }

    public long queryForLong(DatabaseConnection databaseConnection, String str, String[] strArr) throws SQLException {
        CompiledStatement compiledStatement;
        logger.debug("executing raw query for long: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseResults databaseResults = null;
        try {
            compiledStatement = databaseConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
            try {
                assignStatementArguments(compiledStatement, strArr);
                DatabaseResults runQuery = compiledStatement.runQuery(null);
                if (runQuery.first()) {
                    long j4 = runQuery.getLong(0);
                    runQuery.close();
                    compiledStatement.close();
                    return j4;
                }
                throw new SQLException("No result found in queryForLong: " + str);
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    databaseResults.close();
                }
                if (compiledStatement != null) {
                    compiledStatement.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            compiledStatement = null;
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(ConnectionSource connectionSource, String str, RawRowMapper<UO> rawRowMapper, String[] strArr, ObjectCache objectCache) throws SQLException {
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection();
        CompiledStatement compiledStatement = null;
        try {
            compiledStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
            assignStatementArguments(compiledStatement, strArr);
            return new RawResultsImpl(connectionSource, readOnlyConnection, str, String[].class, compiledStatement, new UserRawRowMapper(rawRowMapper, this), objectCache);
        } catch (Throwable th) {
            if (compiledStatement != null) {
                compiledStatement.close();
            }
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }

    public <UO> GenericRawResults<UO> queryRaw(ConnectionSource connectionSource, String str, DataType[] dataTypeArr, RawRowObjectMapper<UO> rawRowObjectMapper, String[] strArr, ObjectCache objectCache) throws SQLException {
        CompiledStatement compileStatement;
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection();
        CompiledStatement compiledStatement = null;
        try {
            compileStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
        } catch (Throwable th) {
            th = th;
        }
        try {
            assignStatementArguments(compileStatement, strArr);
            return new RawResultsImpl(connectionSource, readOnlyConnection, str, String[].class, compileStatement, new UserRawRowObjectMapper(rawRowObjectMapper, dataTypeArr), objectCache);
        } catch (Throwable th2) {
            th = th2;
            compiledStatement = compileStatement;
            if (compiledStatement != null) {
                compiledStatement.close();
            }
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }

    public GenericRawResults<Object[]> queryRaw(ConnectionSource connectionSource, String str, DataType[] dataTypeArr, String[] strArr, ObjectCache objectCache) throws SQLException {
        logger.debug("executing raw query for: {}", str);
        if (strArr.length > 0) {
            logger.trace("query arguments: {}", (Object) strArr);
        }
        DatabaseConnection readOnlyConnection = connectionSource.getReadOnlyConnection();
        CompiledStatement compiledStatement = null;
        try {
            compiledStatement = readOnlyConnection.compileStatement(str, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
            assignStatementArguments(compiledStatement, strArr);
            return new RawResultsImpl(connectionSource, readOnlyConnection, str, Object[].class, compiledStatement, new ObjectArrayRowMapper(dataTypeArr), objectCache);
        } catch (Throwable th) {
            if (compiledStatement != null) {
                compiledStatement.close();
            }
            if (readOnlyConnection != null) {
                connectionSource.releaseConnection(readOnlyConnection);
            }
            throw th;
        }
    }
}
