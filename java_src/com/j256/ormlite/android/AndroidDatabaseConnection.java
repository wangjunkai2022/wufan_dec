package com.j256.ormlite.android;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.misc.VersionUtils;
import com.j256.ormlite.stmt.StatementBuilder;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.GeneratedKeyHolder;
import java.sql.SQLException;
import java.sql.Savepoint;
/* loaded from: classes.dex */
public class AndroidDatabaseConnection implements DatabaseConnection {
    private static final String ANDROID_VERSION = "VERSION__4.48__";
    private final boolean cancelQueriesEnabled;
    private final SQLiteDatabase db;
    private final boolean readWrite;
    private static Logger logger = LoggerFactory.getLogger(AndroidDatabaseConnection.class);
    private static final String[] NO_STRING_ARGS = new String[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.j256.ormlite.android.AndroidDatabaseConnection$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$field$SqlType;

        static {
            int[] iArr = new int[SqlType.values().length];
            $SwitchMap$com$j256$ormlite$field$SqlType = iArr;
            try {
                iArr[SqlType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.LONG_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BYTE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.SHORT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.INTEGER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.LONG.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.FLOAT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.DOUBLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BYTE_ARRAY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.SERIALIZABLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.DATE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BLOB.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.BIG_DECIMAL.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$j256$ormlite$field$SqlType[SqlType.UNKNOWN.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class OurSavePoint implements Savepoint {
        private String name;

        public OurSavePoint(String str) {
            this.name = str;
        }

        @Override // java.sql.Savepoint
        public int getSavepointId() {
            return 0;
        }

        @Override // java.sql.Savepoint
        public String getSavepointName() {
            return this.name;
        }
    }

    static {
        VersionUtils.checkCoreVersusAndroidVersions(ANDROID_VERSION);
    }

    public AndroidDatabaseConnection(SQLiteDatabase sQLiteDatabase, boolean z3) {
        this(sQLiteDatabase, z3, false);
    }

    private void bindArgs(SQLiteStatement sQLiteStatement, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        if (objArr == null) {
            return;
        }
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            if (obj == null) {
                sQLiteStatement.bindNull(i2 + 1);
            } else {
                SqlType sqlType = fieldTypeArr[i2].getSqlType();
                switch (AnonymousClass1.$SwitchMap$com$j256$ormlite$field$SqlType[sqlType.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        sQLiteStatement.bindString(i2 + 1, obj.toString());
                        continue;
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        sQLiteStatement.bindLong(i2 + 1, ((Number) obj).longValue());
                        continue;
                    case 9:
                    case 10:
                        sQLiteStatement.bindDouble(i2 + 1, ((Number) obj).doubleValue());
                        continue;
                    case 11:
                    case 12:
                        sQLiteStatement.bindBlob(i2 + 1, (byte[]) obj);
                        continue;
                    case 13:
                    case 14:
                    case 15:
                        throw new SQLException("Invalid Android type: " + sqlType);
                    default:
                        throw new SQLException("Unknown sql argument type: " + sqlType);
                }
            }
        }
    }

    private String[] toStrings(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return null;
        }
        String[] strArr = new String[objArr.length];
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            if (obj == null) {
                strArr[i2] = null;
            } else {
                strArr[i2] = obj.toString();
            }
        }
        return strArr;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void close() throws SQLException {
        try {
            this.db.close();
            logger.trace("{}: db {} closed", this, this.db);
        } catch (android.database.SQLException e4) {
            throw SqlExceptionUtil.create("problems closing the database connection", e4);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void closeQuietly() {
        try {
            close();
        } catch (SQLException unused) {
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void commit(Savepoint savepoint) throws SQLException {
        try {
            this.db.setTransactionSuccessful();
            this.db.endTransaction();
            if (savepoint == null) {
                logger.trace("{}: transaction is successfuly ended", this);
            } else {
                logger.trace("{}: transaction {} is successfuly ended", this, savepoint.getSavepointName());
            }
        } catch (android.database.SQLException e4) {
            if (savepoint == null) {
                throw SqlExceptionUtil.create("problems commiting transaction", e4);
            }
            throw SqlExceptionUtil.create("problems commiting transaction " + savepoint.getSavepointName(), e4);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public CompiledStatement compileStatement(String str, StatementBuilder.StatementType statementType, FieldType[] fieldTypeArr, int i2) {
        AndroidCompiledStatement androidCompiledStatement = new AndroidCompiledStatement(str, this.db, statementType, this.cancelQueriesEnabled);
        logger.trace("{}: compiled statement got {}: {}", this, androidCompiledStatement, str);
        return androidCompiledStatement;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int delete(String str, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        return update(str, objArr, fieldTypeArr, "deleted");
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int executeStatement(String str, int i2) throws SQLException {
        return AndroidCompiledStatement.execSql(this.db, str, str, NO_STRING_ARGS);
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int insert(String str, Object[] objArr, FieldType[] fieldTypeArr, GeneratedKeyHolder generatedKeyHolder) throws SQLException {
        SQLiteStatement sQLiteStatement = null;
        try {
            try {
                sQLiteStatement = this.db.compileStatement(str);
                bindArgs(sQLiteStatement, objArr, fieldTypeArr);
                long executeInsert = sQLiteStatement.executeInsert();
                if (generatedKeyHolder != null) {
                    generatedKeyHolder.addKey(Long.valueOf(executeInsert));
                }
                logger.trace("{}: insert statement is compiled and executed, changed {}: {}", (Object) this, (Object) 1, (Object) str);
                sQLiteStatement.close();
                return 1;
            } catch (android.database.SQLException e4) {
                throw SqlExceptionUtil.create("inserting to database failed: " + str, e4);
            }
        } catch (Throwable th) {
            if (sQLiteStatement != null) {
                sQLiteStatement.close();
            }
            throw th;
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isAutoCommit() throws SQLException {
        try {
            boolean inTransaction = this.db.inTransaction();
            logger.trace("{}: in transaction is {}", this, Boolean.valueOf(inTransaction));
            return !inTransaction;
        } catch (android.database.SQLException e4) {
            throw SqlExceptionUtil.create("problems getting auto-commit from database", e4);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isAutoCommitSupported() {
        return true;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isClosed() throws SQLException {
        try {
            boolean isOpen = this.db.isOpen();
            logger.trace("{}: db {} isOpen returned {}", this, this.db, Boolean.valueOf(isOpen));
            return !isOpen;
        } catch (android.database.SQLException e4) {
            throw SqlExceptionUtil.create("problems detecting if the database is closed", e4);
        }
    }

    public boolean isReadWrite() {
        return this.readWrite;
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public boolean isTableExists(String str) {
        SQLiteDatabase sQLiteDatabase = this.db;
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = '" + str + "'", null);
        try {
            boolean z3 = rawQuery.getCount() > 0;
            logger.trace("{}: isTableExists '{}' returned {}", this, str, Boolean.valueOf(z3));
            return z3;
        } finally {
            rawQuery.close();
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public long queryForLong(String str) throws SQLException {
        SQLiteStatement sQLiteStatement = null;
        try {
            try {
                sQLiteStatement = this.db.compileStatement(str);
                long simpleQueryForLong = sQLiteStatement.simpleQueryForLong();
                logger.trace("{}: query for long simple query returned {}: {}", this, Long.valueOf(simpleQueryForLong), str);
                sQLiteStatement.close();
                return simpleQueryForLong;
            } catch (android.database.SQLException e4) {
                throw SqlExceptionUtil.create("queryForLong from database failed: " + str, e4);
            }
        } catch (Throwable th) {
            if (sQLiteStatement != null) {
                sQLiteStatement.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
    @Override // com.j256.ormlite.support.DatabaseConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> java.lang.Object queryForOne(java.lang.String r4, java.lang.Object[] r5, com.j256.ormlite.field.FieldType[] r6, com.j256.ormlite.stmt.GenericRowMapper<T> r7, com.j256.ormlite.dao.ObjectCache r8) throws java.sql.SQLException {
        /*
            r3 = this;
            r6 = 0
            android.database.sqlite.SQLiteDatabase r0 = r3.db     // Catch: java.lang.Throwable -> L3d android.database.SQLException -> L3f
            java.lang.String[] r5 = r3.toStrings(r5)     // Catch: java.lang.Throwable -> L3d android.database.SQLException -> L3f
            android.database.Cursor r5 = r0.rawQuery(r4, r5)     // Catch: java.lang.Throwable -> L3d android.database.SQLException -> L3f
            com.j256.ormlite.android.AndroidDatabaseResults r0 = new com.j256.ormlite.android.AndroidDatabaseResults     // Catch: android.database.SQLException -> L3b java.lang.Throwable -> L59
            r0.<init>(r5, r8)     // Catch: android.database.SQLException -> L3b java.lang.Throwable -> L59
            com.j256.ormlite.logger.Logger r8 = com.j256.ormlite.android.AndroidDatabaseConnection.logger     // Catch: android.database.SQLException -> L3b java.lang.Throwable -> L59
            java.lang.String r1 = "{}: queried for one result: {}"
            r8.trace(r1, r3, r4)     // Catch: android.database.SQLException -> L3b java.lang.Throwable -> L59
            boolean r8 = r0.first()     // Catch: android.database.SQLException -> L3b java.lang.Throwable -> L59
            if (r8 != 0) goto L23
            if (r5 == 0) goto L22
            r5.close()
        L22:
            return r6
        L23:
            java.lang.Object r6 = r7.mapRow(r0)     // Catch: android.database.SQLException -> L3b java.lang.Throwable -> L59
            boolean r7 = r0.next()     // Catch: android.database.SQLException -> L3b java.lang.Throwable -> L59
            if (r7 == 0) goto L35
            java.lang.Object r4 = com.j256.ormlite.support.DatabaseConnection.MORE_THAN_ONE     // Catch: android.database.SQLException -> L3b java.lang.Throwable -> L59
            if (r5 == 0) goto L34
            r5.close()
        L34:
            return r4
        L35:
            if (r5 == 0) goto L3a
            r5.close()
        L3a:
            return r6
        L3b:
            r6 = move-exception
            goto L43
        L3d:
            r4 = move-exception
            goto L5b
        L3f:
            r5 = move-exception
            r2 = r6
            r6 = r5
            r5 = r2
        L43:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L59
            r7.<init>()     // Catch: java.lang.Throwable -> L59
            java.lang.String r8 = "queryForOne from database failed: "
            r7.append(r8)     // Catch: java.lang.Throwable -> L59
            r7.append(r4)     // Catch: java.lang.Throwable -> L59
            java.lang.String r4 = r7.toString()     // Catch: java.lang.Throwable -> L59
            java.sql.SQLException r4 = com.j256.ormlite.misc.SqlExceptionUtil.create(r4, r6)     // Catch: java.lang.Throwable -> L59
            throw r4     // Catch: java.lang.Throwable -> L59
        L59:
            r4 = move-exception
            r6 = r5
        L5b:
            if (r6 == 0) goto L60
            r6.close()
        L60:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.android.AndroidDatabaseConnection.queryForOne(java.lang.String, java.lang.Object[], com.j256.ormlite.field.FieldType[], com.j256.ormlite.stmt.GenericRowMapper, com.j256.ormlite.dao.ObjectCache):java.lang.Object");
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void rollback(Savepoint savepoint) throws SQLException {
        try {
            this.db.endTransaction();
            if (savepoint == null) {
                logger.trace("{}: transaction is ended, unsuccessfuly", this);
            } else {
                logger.trace("{}: transaction {} is ended, unsuccessfuly", this, savepoint.getSavepointName());
            }
        } catch (android.database.SQLException e4) {
            if (savepoint == null) {
                throw SqlExceptionUtil.create("problems rolling back transaction", e4);
            }
            throw SqlExceptionUtil.create("problems rolling back transaction " + savepoint.getSavepointName(), e4);
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public void setAutoCommit(boolean z3) {
        if (z3) {
            if (this.db.inTransaction()) {
                this.db.setTransactionSuccessful();
                this.db.endTransaction();
            }
        } else if (this.db.inTransaction()) {
        } else {
            this.db.beginTransaction();
        }
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public Savepoint setSavePoint(String str) throws SQLException {
        try {
            this.db.beginTransaction();
            logger.trace("{}: save-point set with name {}", this, str);
            return new OurSavePoint(str);
        } catch (android.database.SQLException e4) {
            throw SqlExceptionUtil.create("problems beginning transaction " + str, e4);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
    }

    @Override // com.j256.ormlite.support.DatabaseConnection
    public int update(String str, Object[] objArr, FieldType[] fieldTypeArr) throws SQLException {
        return update(str, objArr, fieldTypeArr, "updated");
    }

    public AndroidDatabaseConnection(SQLiteDatabase sQLiteDatabase, boolean z3, boolean z4) {
        this.db = sQLiteDatabase;
        this.readWrite = z3;
        this.cancelQueriesEnabled = z4;
        logger.trace("{}: db {} opened, read-write = {}", this, sQLiteDatabase, Boolean.valueOf(z3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
        if (r0 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int update(java.lang.String r3, java.lang.Object[] r4, com.j256.ormlite.field.FieldType[] r5, java.lang.String r6) throws java.sql.SQLException {
        /*
            r2 = this;
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r2.db     // Catch: java.lang.Throwable -> L3f android.database.SQLException -> L41
            android.database.sqlite.SQLiteStatement r1 = r1.compileStatement(r3)     // Catch: java.lang.Throwable -> L3f android.database.SQLException -> L41
            r2.bindArgs(r1, r4, r5)     // Catch: java.lang.Throwable -> L39 android.database.SQLException -> L3c
            r1.execute()     // Catch: java.lang.Throwable -> L39 android.database.SQLException -> L3c
            r1.close()
            android.database.sqlite.SQLiteDatabase r4 = r2.db     // Catch: java.lang.Throwable -> L21 android.database.SQLException -> L28
            java.lang.String r5 = "SELECT CHANGES()"
            android.database.sqlite.SQLiteStatement r0 = r4.compileStatement(r5)     // Catch: java.lang.Throwable -> L21 android.database.SQLException -> L28
            long r4 = r0.simpleQueryForLong()     // Catch: java.lang.Throwable -> L21 android.database.SQLException -> L28
            int r5 = (int) r4
        L1d:
            r0.close()
            goto L2d
        L21:
            r3 = move-exception
            if (r0 == 0) goto L27
            r0.close()
        L27:
            throw r3
        L28:
            r5 = 1
            if (r0 == 0) goto L2d
            goto L1d
        L2d:
            com.j256.ormlite.logger.Logger r4 = com.j256.ormlite.android.AndroidDatabaseConnection.logger
            java.lang.Integer r0 = java.lang.Integer.valueOf(r5)
            java.lang.String r1 = "{} statement is compiled and executed, changed {}: {}"
            r4.trace(r1, r6, r0, r3)
            return r5
        L39:
            r3 = move-exception
            r0 = r1
            goto L58
        L3c:
            r4 = move-exception
            r0 = r1
            goto L42
        L3f:
            r3 = move-exception
            goto L58
        L41:
            r4 = move-exception
        L42:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3f
            r5.<init>()     // Catch: java.lang.Throwable -> L3f
            java.lang.String r6 = "updating database failed: "
            r5.append(r6)     // Catch: java.lang.Throwable -> L3f
            r5.append(r3)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L3f
            java.sql.SQLException r3 = com.j256.ormlite.misc.SqlExceptionUtil.create(r3, r4)     // Catch: java.lang.Throwable -> L3f
            throw r3     // Catch: java.lang.Throwable -> L3f
        L58:
            if (r0 == 0) goto L5d
            r0.close()
        L5d:
            goto L5f
        L5e:
            throw r3
        L5f:
            goto L5e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.android.AndroidDatabaseConnection.update(java.lang.String, java.lang.Object[], com.j256.ormlite.field.FieldType[], java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0051  */
    @Override // com.j256.ormlite.support.DatabaseConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long queryForLong(java.lang.String r6, java.lang.Object[] r7, com.j256.ormlite.field.FieldType[] r8) throws java.sql.SQLException {
        /*
            r5 = this;
            r8 = 0
            android.database.sqlite.SQLiteDatabase r0 = r5.db     // Catch: java.lang.Throwable -> L31 android.database.SQLException -> L33
            java.lang.String[] r7 = r5.toStrings(r7)     // Catch: java.lang.Throwable -> L31 android.database.SQLException -> L33
            android.database.Cursor r7 = r0.rawQuery(r6, r7)     // Catch: java.lang.Throwable -> L31 android.database.SQLException -> L33
            com.j256.ormlite.android.AndroidDatabaseResults r0 = new com.j256.ormlite.android.AndroidDatabaseResults     // Catch: android.database.SQLException -> L2f java.lang.Throwable -> L4d
            r0.<init>(r7, r8)     // Catch: android.database.SQLException -> L2f java.lang.Throwable -> L4d
            boolean r8 = r0.first()     // Catch: android.database.SQLException -> L2f java.lang.Throwable -> L4d
            if (r8 == 0) goto L1c
            r8 = 0
            long r0 = r0.getLong(r8)     // Catch: android.database.SQLException -> L2f java.lang.Throwable -> L4d
            goto L1e
        L1c:
            r0 = 0
        L1e:
            com.j256.ormlite.logger.Logger r8 = com.j256.ormlite.android.AndroidDatabaseConnection.logger     // Catch: android.database.SQLException -> L2f java.lang.Throwable -> L4d
            java.lang.String r2 = "{}: query for long raw query returned {}: {}"
            java.lang.Long r3 = java.lang.Long.valueOf(r0)     // Catch: android.database.SQLException -> L2f java.lang.Throwable -> L4d
            r8.trace(r2, r5, r3, r6)     // Catch: android.database.SQLException -> L2f java.lang.Throwable -> L4d
            if (r7 == 0) goto L2e
            r7.close()
        L2e:
            return r0
        L2f:
            r8 = move-exception
            goto L37
        L31:
            r6 = move-exception
            goto L4f
        L33:
            r7 = move-exception
            r4 = r8
            r8 = r7
            r7 = r4
        L37:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4d
            r0.<init>()     // Catch: java.lang.Throwable -> L4d
            java.lang.String r1 = "queryForLong from database failed: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L4d
            r0.append(r6)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r6 = r0.toString()     // Catch: java.lang.Throwable -> L4d
            java.sql.SQLException r6 = com.j256.ormlite.misc.SqlExceptionUtil.create(r6, r8)     // Catch: java.lang.Throwable -> L4d
            throw r6     // Catch: java.lang.Throwable -> L4d
        L4d:
            r6 = move-exception
            r8 = r7
        L4f:
            if (r8 == 0) goto L54
            r8.close()
        L54:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.android.AndroidDatabaseConnection.queryForLong(java.lang.String, java.lang.Object[], com.j256.ormlite.field.FieldType[]):long");
    }
}
