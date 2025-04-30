package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class JoystickTable {
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String mac;
    @DatabaseField
    private String name;
    @DatabaseField
    private Long time;
    @DatabaseField
    private String type;

    public int getId() {
        return this.id;
    }

    public String getMac() {
        return this.mac;
    }

    public String getName() {
        return this.name;
    }

    public Long getTime() {
        return this.time;
    }

    public String getType() {
        return this.type;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTime(Long l4) {
        this.time = l4;
    }

    public void setType(String str) {
        this.type = str;
    }
}
