package com.join.mgps.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;
/* loaded from: classes.dex */
public class RecomDatabeanTable {
    @DatabaseField
    private int dataFrom;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField(columnName = "modletable", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private ModleBeanTable main;
    @ForeignCollectionField(eager = false)
    ForeignCollection<AppMoreBeanTable> more;
    @ForeignCollectionField(eager = false)
    ForeignCollection<AppBeanMainTable> sub;

    public int getDataFrom() {
        return this.dataFrom;
    }

    public int getId() {
        return this.id;
    }

    public ModleBeanTable getMain() {
        return this.main;
    }

    public ForeignCollection<AppMoreBeanTable> getMore() {
        return this.more;
    }

    public ForeignCollection<AppBeanMainTable> getSub() {
        return this.sub;
    }

    public void setDataFrom(int i2) {
        this.dataFrom = i2;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setMain(ModleBeanTable modleBeanTable) {
        this.main = modleBeanTable;
    }

    public void setMore(ForeignCollection<AppMoreBeanTable> foreignCollection) {
        this.more = foreignCollection;
    }

    public void setSub(ForeignCollection<AppBeanMainTable> foreignCollection) {
        this.sub = foreignCollection;
    }
}
