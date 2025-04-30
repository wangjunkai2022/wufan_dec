package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class Reference {
    @DatabaseField(index = true)
    private long fileSize;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField(columnName = "localcourse_id", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private LocalCourse localCourse;
    @DatabaseField(index = true)
    private long referenceId;
    @DatabaseField(index = true)
    private String title;
    @DatabaseField(index = true)
    private int type;
    @DatabaseField(index = true)
    private String url;

    public long getFileSize() {
        return this.fileSize;
    }

    public int getId() {
        return this.id;
    }

    public LocalCourse getLocalCourse() {
        return this.localCourse;
    }

    public long getReferenceId() {
        return this.referenceId;
    }

    public String getTitle() {
        return this.title;
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

    public void setLocalCourse(LocalCourse localCourse) {
        this.localCourse = localCourse;
    }

    public void setReferenceId(long j4) {
        this.referenceId = j4;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
