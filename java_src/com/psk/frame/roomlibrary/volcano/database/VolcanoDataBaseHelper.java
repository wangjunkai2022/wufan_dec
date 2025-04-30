package com.psk.frame.roomlibrary.volcano.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import com.psk.frame.roomlibrary.volcano.entity.VolcanoEventTab;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VolcanoDataBase.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J,\u0010\u000b\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016R\u0019\u0010\u0011\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;", "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;", "Landroid/database/sqlite/SQLiteDatabase;", "database", "Lcom/j256/ormlite/support/ConnectionSource;", "connectionSource", "", "onCreate", "", "oldVersion", "newVersion", "onUpgrade", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "RoomLibrary_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class VolcanoDataBaseHelper extends OrmLiteSqliteOpenHelper {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f56256a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VolcanoDataBaseHelper(@NotNull Context context) {
        super(context, "volcano.db", null, 2);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f56256a = context;
    }

    @NotNull
    public final Context getContext() {
        return this.f56256a;
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onCreate(@Nullable SQLiteDatabase sQLiteDatabase, @Nullable ConnectionSource connectionSource) {
        TableUtils.createTable(connectionSource, VolcanoEventTab.class);
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onUpgrade(@Nullable SQLiteDatabase sQLiteDatabase, @Nullable ConnectionSource connectionSource, int i2, int i4) {
    }
}
