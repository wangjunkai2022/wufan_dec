package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class HandShankTable {
    @DatabaseField(id = true)
    private String address;
    private Boolean isConnect = Boolean.FALSE;
    @DatabaseField
    private String name;
    @DatabaseField
    private Long time;

    public boolean equals(Object obj) {
        if (obj instanceof HandShankTable) {
            return ((HandShankTable) obj).getAddress().equals(getAddress());
        }
        return super.equals(obj);
    }

    public String getAddress() {
        return this.address;
    }

    public Boolean getIsConnect() {
        return this.isConnect;
    }

    public String getName() {
        return this.name;
    }

    public Long getTime() {
        return this.time;
    }

    public int hashCode() {
        return getAddress().hashCode();
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setIsConnect(Boolean bool) {
        this.isConnect = bool;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTime(Long l4) {
        this.time = l4;
    }
}
