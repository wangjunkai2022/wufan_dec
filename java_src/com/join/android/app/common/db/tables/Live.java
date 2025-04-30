package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class Live {
    @DatabaseField
    private String author;
    @DatabaseField
    private String createTime;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField(index = true)
    private long liveId;
    @DatabaseField
    private String title;
    @DatabaseField
    private String url;

    public String getAuthor() {
        return this.author;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getId() {
        return this.id;
    }

    public long getLiveId() {
        return this.liveId;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setLiveId(long j4) {
        this.liveId = j4;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
