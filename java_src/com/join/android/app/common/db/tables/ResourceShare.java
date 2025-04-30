package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
@DatabaseTable(tableName = "resource_share")
/* loaded from: classes.dex */
public class ResourceShare {
    @DatabaseField
    private long fileSize;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String name;
    @DatabaseField
    private long rsId;
    @DatabaseField
    private int type;
    @DatabaseField
    private String url;

    public long getFileSize() {
        return this.fileSize;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public long getRsId() {
        return this.rsId;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setFileSize(long j4) {
        this.fileSize = j4;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRsId(long j4) {
        this.rsId = j4;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
