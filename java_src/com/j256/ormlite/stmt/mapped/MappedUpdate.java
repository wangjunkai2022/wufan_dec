package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
/* loaded from: classes2.dex */
public class MappedUpdate<T, ID> extends BaseMappedStatement<T, ID> {
    private final FieldType versionFieldType;
    private final int versionFieldTypeIndex;

    private MappedUpdate(TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr, FieldType fieldType, int i2) {
        super(tableInfo, str, fieldTypeArr);
        this.versionFieldType = fieldType;
        this.versionFieldTypeIndex = i2;
    }

    public static <T, ID> MappedUpdate<T, ID> build(DatabaseType databaseType, TableInfo<T, ID> tableInfo) throws SQLException {
        FieldType[] fieldTypes;
        FieldType[] fieldTypes2;
        FieldType idField = tableInfo.getIdField();
        if (idField != null) {
            StringBuilder sb = new StringBuilder(64);
            BaseMappedStatement.appendTableName(databaseType, sb, "UPDATE ", tableInfo.getTableName());
            FieldType fieldType = null;
            int i2 = 0;
            int i4 = -1;
            for (FieldType fieldType2 : tableInfo.getFieldTypes()) {
                if (isFieldUpdatable(fieldType2, idField)) {
                    if (fieldType2.isVersion()) {
                        i4 = i2;
                        fieldType = fieldType2;
                    }
                    i2++;
                }
            }
            boolean z3 = true;
            int i5 = i2 + 1;
            if (fieldType != null) {
                i5++;
            }
            FieldType[] fieldTypeArr = new FieldType[i5];
            int i6 = 0;
            for (FieldType fieldType3 : tableInfo.getFieldTypes()) {
                if (isFieldUpdatable(fieldType3, idField)) {
                    if (z3) {
                        sb.append("SET ");
                        z3 = false;
                    } else {
                        sb.append(", ");
                    }
                    BaseMappedStatement.appendFieldColumnName(databaseType, sb, fieldType3, null);
                    fieldTypeArr[i6] = fieldType3;
                    sb.append("= ?");
                    i6++;
                }
            }
            sb.append(' ');
            BaseMappedStatement.appendWhereFieldEq(databaseType, idField, sb, null);
            int i7 = i6 + 1;
            fieldTypeArr[i6] = idField;
            if (fieldType != null) {
                sb.append(" AND ");
                BaseMappedStatement.appendFieldColumnName(databaseType, sb, fieldType, null);
                sb.append("= ?");
                fieldTypeArr[i7] = fieldType;
            }
            return new MappedUpdate<>(tableInfo, sb.toString(), fieldTypeArr, fieldType, i4);
        }
        throw new SQLException("Cannot update " + tableInfo.getDataClass() + " because it doesn't have an id field");
    }

    private static boolean isFieldUpdatable(FieldType fieldType, FieldType fieldType2) {
        return (fieldType == fieldType2 || fieldType.isForeignCollection() || fieldType.isReadOnly()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int update(DatabaseConnection databaseConnection, T t3, ObjectCache objectCache) throws SQLException {
        Object obj;
        FieldType[] fieldTypes;
        try {
            if (this.argFieldTypes.length <= 1) {
                return 0;
            }
            Object[] fieldObjects = getFieldObjects(t3);
            FieldType fieldType = this.versionFieldType;
            if (fieldType != null) {
                obj = this.versionFieldType.moveToNextValue(fieldType.extractJavaFieldValue(t3));
                fieldObjects[this.versionFieldTypeIndex] = this.versionFieldType.convertJavaFieldToSqlArgValue(obj);
            } else {
                obj = null;
            }
            int update = databaseConnection.update(this.statement, fieldObjects, this.argFieldTypes);
            if (update > 0) {
                if (obj != null) {
                    this.versionFieldType.assignField(t3, obj, false, null);
                }
                if (objectCache != 0) {
                    Object obj2 = objectCache.get(this.clazz, this.idField.extractJavaFieldValue(t3));
                    if (obj2 != null && obj2 != t3) {
                        for (FieldType fieldType2 : this.tableInfo.getFieldTypes()) {
                            if (fieldType2 != this.idField) {
                                fieldType2.assignField(obj2, fieldType2.extractJavaFieldValue(t3), false, objectCache);
                            }
                        }
                    }
                }
            }
            BaseMappedStatement.logger.debug("update data with statement '{}' and {} args, changed {} rows", this.statement, Integer.valueOf(fieldObjects.length), Integer.valueOf(update));
            if (fieldObjects.length > 0) {
                BaseMappedStatement.logger.trace("update arguments: {}", (Object) fieldObjects);
            }
            return update;
        } catch (SQLException e4) {
            throw SqlExceptionUtil.create("Unable to run update stmt on object " + t3 + ": " + this.statement, e4);
        }
    }
}
