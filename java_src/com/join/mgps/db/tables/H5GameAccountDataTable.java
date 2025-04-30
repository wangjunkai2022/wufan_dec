package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class H5GameAccountDataTable {
    @DatabaseField
    private String account_data;
    @DatabaseField
    private String appkey;
    @DatabaseField(generatedId = true)
    private int id;

    public String getAccount_data() {
        return this.account_data;
    }

    public String getAppkey() {
        return this.appkey;
    }

    public int getId() {
        return this.id;
    }

    public void setAccount_data(String str) {
        this.account_data = str;
    }

    public void setAppkey(String str) {
        this.appkey = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }
}
