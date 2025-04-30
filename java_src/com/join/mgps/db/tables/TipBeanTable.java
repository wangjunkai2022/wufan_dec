package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.TipBean;
/* loaded from: classes.dex */
public class TipBeanTable {
    @DatabaseField(columnName = "appbean", foreign = true, foreignAutoRefresh = true)
    private AppBeanTable appBeanTable;
    @DatabaseField
    private String color;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String name;
    @DatabaseField
    private String tagId;

    public TipBeanTable() {
    }

    public AppBeanTable getAppBeanTable() {
        return this.appBeanTable;
    }

    public String getColor() {
        return this.color;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getTagId() {
        return this.tagId;
    }

    public TipBean getTipBean() {
        return new TipBean(this.name, this.color, this.tagId);
    }

    public void setAppBeanTable(AppBeanTable appBeanTable) {
        this.appBeanTable = appBeanTable;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTagId(String str) {
        this.tagId = str;
    }

    public TipBeanTable(TipBean tipBean) {
        this.name = tipBean.getName();
        this.color = tipBean.getColor();
        this.tagId = tipBean.getId();
    }
}
