package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
import java.util.List;
/* loaded from: classes.dex */
public class Chapter {
    @DatabaseField
    private String bookmark;
    @DatabaseField
    private long chapterDuration;
    @DatabaseField
    private long chapterId;
    private List<Chapter> children;
    @DatabaseField
    private String downloadUrl;
    @DatabaseField
    private long filesize;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private long learnedTime;
    @DatabaseField
    private String leftDays;
    @DatabaseField(columnName = "localcourse_id", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private LocalCourse localCourse;
    @DatabaseField(columnName = "parent_id", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private Chapter parent;
    @DatabaseField
    private String playUrl;
    private boolean playing;
    @DatabaseField
    private String title;
    @DatabaseField
    private String validUntil;

    public String getBookmark() {
        return this.bookmark;
    }

    public long getChapterDuration() {
        return this.chapterDuration;
    }

    public long getChapterId() {
        return this.chapterId;
    }

    public List<Chapter> getChildren() {
        return this.children;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public long getFilesize() {
        return this.filesize;
    }

    public int getId() {
        return this.id;
    }

    public long getLearnedTime() {
        return this.learnedTime;
    }

    public String getLeftDays() {
        return this.leftDays;
    }

    public LocalCourse getLocalCourse() {
        return this.localCourse;
    }

    public Chapter getParent() {
        return this.parent;
    }

    public String getPlayUrl() {
        return this.playUrl;
    }

    public String getTitle() {
        return this.title;
    }

    public String getValidUntil() {
        return this.validUntil;
    }

    public boolean isPlaying() {
        return this.playing;
    }

    public void setBookmark(String str) {
        this.bookmark = str;
    }

    public void setChapterDuration(long j4) {
        this.chapterDuration = j4;
    }

    public void setChapterId(long j4) {
        this.chapterId = j4;
    }

    public void setChildren(List<Chapter> list) {
        this.children = list;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setFilesize(long j4) {
        this.filesize = j4;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setLearnedTime(long j4) {
        this.learnedTime = j4;
    }

    public void setLeftDays(String str) {
        this.leftDays = str;
    }

    public void setLocalCourse(LocalCourse localCourse) {
        this.localCourse = localCourse;
    }

    public void setParent(Chapter chapter) {
        this.parent = chapter;
    }

    public void setPlayUrl(String str) {
        this.playUrl = str;
    }

    public void setPlaying(boolean z3) {
        this.playing = z3;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setValidUntil(String str) {
        this.validUntil = str;
    }
}
