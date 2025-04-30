package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
@DatabaseTable(tableName = "token_table")
/* loaded from: classes.dex */
public class TokenTable {
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    public String token;
    @DatabaseField
    public long uid;

    public int getId() {
        return this.id;
    }

    public String getToken() {
        return this.token;
    }

    public long getUid() {
        return this.uid;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(long j4) {
        this.uid = j4;
    }
}
