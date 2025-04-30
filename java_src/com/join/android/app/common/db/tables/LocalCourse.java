package com.join.android.app.common.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;
/* loaded from: classes.dex */
public class LocalCourse {
    @DatabaseField
    private String branch;
    private int chapterNum;
    @ForeignCollectionField(eager = true)
    ForeignCollection<Chapter> chapters;
    @DatabaseField
    private long courseHour;
    @DatabaseField
    private long courseId;
    @DatabaseField
    private String createTime;
    @DatabaseField
    private String description;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int learningTimes;
    private int refNum;
    @ForeignCollectionField(eager = true)
    ForeignCollection<Reference> references;
    @DatabaseField
    private String title;
    @DatabaseField
    private String url;
    @DatabaseField
    private long validUntil;

    public String getBranch() {
        return this.branch;
    }

    public int getChapterNum() {
        return this.chapterNum;
    }

    public ForeignCollection<Chapter> getChapters() {
        return this.chapters;
    }

    public long getCourseHour() {
        return this.courseHour;
    }

    public long getCourseId() {
        return this.courseId;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public String getDescription() {
        return this.description;
    }

    public int getId() {
        return this.id;
    }

    public int getLearningTimes() {
        return this.learningTimes;
    }

    public int getRefNum() {
        return this.refNum;
    }

    public ForeignCollection<Reference> getReferences() {
        return this.references;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public long getValidUntil() {
        return this.validUntil;
    }

    public void setBranch(String str) {
        this.branch = str;
    }

    public void setChapterNum(int i2) {
        this.chapterNum = i2;
    }

    public void setChapters(ForeignCollection<Chapter> foreignCollection) {
        this.chapters = foreignCollection;
    }

    public void setCourseHour(long j4) {
        this.courseHour = j4;
    }

    public void setCourseId(long j4) {
        this.courseId = j4;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setLearningTimes(int i2) {
        this.learningTimes = i2;
    }

    public void setRefNum(int i2) {
        this.refNum = i2;
    }

    public void setReferences(ForeignCollection<Reference> foreignCollection) {
        this.references = foreignCollection;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setValidUntil(long j4) {
        this.validUntil = j4;
    }
}
