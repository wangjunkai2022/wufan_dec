package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class SearchRecordTable {
    @DatabaseField
    private long create_time;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String name;

    public long getCreate_time() {
        return this.create_time;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public void setCreate_time(long j4) {
        this.create_time = j4;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setName(String str) {
        this.name = str;
    }
}
