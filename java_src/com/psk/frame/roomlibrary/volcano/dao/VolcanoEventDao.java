package com.psk.frame.roomlibrary.volcano.dao;

import com.j256.ormlite.dao.Dao;
import com.psk.frame.roomlibrary.volcano.database.VolcanoDataBaseHelper;
import com.psk.frame.roomlibrary.volcano.entity.VolcanoEventTab;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VolcanoEventDao.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R(\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\r8\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u0012\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;", "", "Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;", "tab", "", "insertTab", "", "queryForAll", "", "id", "deletById", "delete", "update", "Lcom/j256/ormlite/dao/Dao;", "dao", "Lcom/j256/ormlite/dao/Dao;", "getDao$annotations", "()V", "Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;", "databaseHelper", "Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;", "<init>", "(Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;)V", "RoomLibrary_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class VolcanoEventDao {
    private Dao<VolcanoEventTab, Integer> dao;
    private final VolcanoDataBaseHelper databaseHelper;

    public VolcanoEventDao(@NotNull VolcanoDataBaseHelper databaseHelper) {
        Intrinsics.checkNotNullParameter(databaseHelper, "databaseHelper");
        this.databaseHelper = databaseHelper;
        Dao<VolcanoEventTab, Integer> dao = databaseHelper.getDao(VolcanoEventTab.class);
        Intrinsics.checkNotNullExpressionValue(dao, "databaseHelper.getDao(VolcanoEventTab::class.java)");
        this.dao = dao;
    }

    private static /* synthetic */ void getDao$annotations() {
    }

    public final void deletById(int i2) {
        this.dao.deleteById(Integer.valueOf(i2));
    }

    public final void delete(@NotNull VolcanoEventTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        this.dao.deleteById(Integer.valueOf(tab.getId()));
    }

    public final void insertTab(@NotNull VolcanoEventTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        this.dao.createIfNotExists(tab);
    }

    @NotNull
    public final List<VolcanoEventTab> queryForAll() {
        List<VolcanoEventTab> queryForAll = this.dao.queryForAll();
        Intrinsics.checkNotNullExpressionValue(queryForAll, "dao.queryForAll()");
        return queryForAll;
    }

    public final void update(@NotNull VolcanoEventTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        this.dao.update((Dao<VolcanoEventTab, Integer>) tab);
    }
}
