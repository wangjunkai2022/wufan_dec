package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class Course {
    @DatabaseField
    private long courseHour;
    @DatabaseField
    private long courseId;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String lastLearn;
    @DatabaseField
    private int learningTimes;
    @DatabaseField
    private String title;
    @DatabaseField
    private String totalDuration;
    @DatabaseField
    private String url;

    public long getCourseHour() {
        return this.courseHour;
    }

    public long getCourseId() {
        return this.courseId;
    }

    public int getId() {
        return this.id;
    }

    public String getLastLearn() {
        return this.lastLearn;
    }

    public int getLearningTimes() {
        return this.learningTimes;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTotalDuration() {
        return this.totalDuration;
    }

    public String getUrl() {
        return this.url;
    }

    public void setCourseHour(long j4) {
        this.courseHour = j4;
    }

    public void setCourseId(long j4) {
        this.courseId = j4;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setLastLearn(String str) {
        this.lastLearn = str;
    }

    public void setLearningTimes(int i2) {
        this.learningTimes = i2;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTotalDuration(String str) {
        this.totalDuration = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
