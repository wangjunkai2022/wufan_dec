package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class HeadPortraitTable {
    @DatabaseField
    private String head_portrait_pic;
    @DatabaseField(generatedId = true)
    private int id;

    public String getHead_portrait_pic() {
        return this.head_portrait_pic;
    }

    public int getId() {
        return this.id;
    }

    public void setHead_portrait_pic(String str) {
        this.head_portrait_pic = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }
}
