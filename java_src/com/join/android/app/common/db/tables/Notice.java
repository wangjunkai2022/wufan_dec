package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class Notice {
    @DatabaseField
    private String content;
    @DatabaseField
    private String createTime;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private long noticeId;
    @DatabaseField
    private String title;
    @DatabaseField
    private String validUntil;

    public String getContent() {
        return this.content;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getId() {
        return this.id;
    }

    public long getNoticeId() {
        return this.noticeId;
    }

    public String getTitle() {
        return this.title;
    }

    public String getValidUntil() {
        return this.validUntil;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setNoticeId(long j4) {
        this.noticeId = j4;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setValidUntil(String str) {
        this.validUntil = str;
    }
}
