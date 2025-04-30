package com.j256.ormlite.android.apptools;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.j256.ormlite.android.AndroidConnectionSource;
import com.j256.ormlite.android.AndroidDatabaseConnection;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.SQLException;
/* loaded from: classes.dex */
public abstract class OrmLiteSqliteOpenHelper extends SQLiteOpenHelper {
    protected static Logger logger = LoggerFactory.getLogger(OrmLiteSqliteOpenHelper.class);
    protected boolean cancelQueriesEnabled;
    protected AndroidConnectionSource connectionSource;
    private volatile boolean isOpen;

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2) {
        super(context, str, cursorFactory, i2);
        this.connectionSource = new AndroidConnectionSource(this);
        this.isOpen = true;
        logger.trace("{}: constructed connectionSource {}", this, this.connectionSource);
    }

    private static InputStream openFile(File file) {
        if (file == null) {
            return null;
        }
        try {
            return new FileInputStream(file);
        } catch (FileNotFoundException e4) {
            throw new IllegalArgumentException("Could not open config file " + file, e4);
        }
    }

    private static InputStream openFileId(Context context, int i2) {
        InputStream openRawResource = context.getResources().openRawResource(i2);
        if (openRawResource != null) {
            return openRawResource;
        }
        throw new IllegalStateException("Could not find object config file with id " + i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.connectionSource.close();
        this.isOpen = false;
    }

    public ConnectionSource getConnectionSource() {
        if (!this.isOpen) {
            logger.warn(new IllegalStateException(), "Getting connectionSource was called after closed");
        }
        return this.connectionSource;
    }

    public <D extends Dao<T, ?>, T> D getDao(Class<T> cls) throws SQLException {
        return (D) DaoManager.createDao(getConnectionSource(), cls);
    }

    public <D extends RuntimeExceptionDao<T, ?>, T> D getRuntimeExceptionDao(Class<T> cls) {
        try {
            return (D) new RuntimeExceptionDao(getDao(cls));
        } catch (SQLException e4) {
            throw new RuntimeException("Could not create RuntimeExcepitionDao for class " + cls, e4);
        }
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        ConnectionSource connectionSource = getConnectionSource();
        DatabaseConnection specialConnection = connectionSource.getSpecialConnection();
        boolean z3 = true;
        if (specialConnection == null) {
            specialConnection = new AndroidDatabaseConnection(sQLiteDatabase, true, this.cancelQueriesEnabled);
            try {
                connectionSource.saveSpecialConnection(specialConnection);
            } catch (SQLException e4) {
                throw new IllegalStateException("Could not save special connection", e4);
            }
        } else {
            z3 = false;
        }
        try {
            onCreate(sQLiteDatabase, connectionSource);
        } finally {
            if (z3) {
                connectionSource.clearSpecialConnection(specialConnection);
            }
        }
    }

    public abstract void onCreate(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource);

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
        ConnectionSource connectionSource = getConnectionSource();
        DatabaseConnection specialConnection = connectionSource.getSpecialConnection();
        boolean z3 = true;
        if (specialConnection == null) {
            specialConnection = new AndroidDatabaseConnection(sQLiteDatabase, true, this.cancelQueriesEnabled);
            try {
                connectionSource.saveSpecialConnection(specialConnection);
            } catch (SQLException e4) {
                throw new IllegalStateException("Could not save special connection", e4);
            }
        } else {
            z3 = false;
        }
        try {
            onUpgrade(sQLiteDatabase, connectionSource, i2, i4);
        } finally {
            if (z3) {
                connectionSource.clearSpecialConnection(specialConnection);
            }
        }
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource, int i2, int i4);

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
    }

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2, int i4) {
        this(context, str, cursorFactory, i2, openFileId(context, i4));
    }

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2, File file) {
        this(context, str, cursorFactory, i2, openFile(file));
    }

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2, InputStream inputStream) {
        super(context, str, cursorFactory, i2);
        this.connectionSource = new AndroidConnectionSource(this);
        this.isOpen = true;
        try {
            if (inputStream == null) {
                return;
            }
            try {
                DaoManager.addCachedDatabaseConfigs(DatabaseTableConfigLoader.loadDatabaseConfigFromReader(new BufferedReader(new InputStreamReader(inputStream), 4096)));
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            } catch (SQLException e4) {
                throw new IllegalStateException("Could not load object config file", e4);
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }
}
