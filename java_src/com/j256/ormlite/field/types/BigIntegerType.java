package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.math.BigInteger;
import java.sql.SQLException;
/* loaded from: classes2.dex */
public class BigIntegerType extends BaseDataType {
    public static int DEFAULT_WIDTH = 255;
    private static final BigIntegerType singleTon = new BigIntegerType();

    protected BigIntegerType() {
        super(SqlType.STRING, new Class[]{BigInteger.class});
    }

    public static BigIntegerType getSingleton() {
        return singleTon;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public int getDefaultWidth() {
        return DEFAULT_WIDTH;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isAppropriateId() {
        return false;
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object javaToSqlArg(FieldType fieldType, Object obj) {
        return ((BigInteger) obj).toString();
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.FieldConverter
    public Object parseDefaultString(FieldType fieldType, String str) throws SQLException {
        try {
            return new BigInteger(str);
        } catch (IllegalArgumentException e4) {
            throw SqlExceptionUtil.create("Problems with field " + fieldType + " parsing default BigInteger string '" + str + "'", e4);
        }
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.FieldConverter
    public Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i2) throws SQLException {
        return databaseResults.getString(i2);
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object sqlArgToJava(FieldType fieldType, Object obj, int i2) throws SQLException {
        try {
            return new BigInteger((String) obj);
        } catch (IllegalArgumentException e4) {
            throw SqlExceptionUtil.create("Problems with column " + i2 + " parsing BigInteger string '" + obj + "'", e4);
        }
    }

    protected BigIntegerType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }
}
