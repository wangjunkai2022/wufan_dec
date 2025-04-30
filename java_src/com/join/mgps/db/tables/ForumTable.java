package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class ForumTable {
    @DatabaseField
    private String args1;
    @DatabaseField
    private String args2;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String time;
    @DatabaseField
    private String type;

    public String getArgs1() {
        return this.args1;
    }

    public String getArgs2() {
        return this.args2;
    }

    public int getId() {
        return this.id;
    }

    public String getTime() {
        return this.time;
    }

    public String getType() {
        return this.type;
    }

    public void setArgs1(String str) {
        this.args1 = str;
    }

    public void setArgs2(String str) {
        this.args2 = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
