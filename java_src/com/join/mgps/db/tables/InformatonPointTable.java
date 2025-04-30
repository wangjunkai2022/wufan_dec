package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class InformatonPointTable {
    @DatabaseField
    private String action;
    @DatabaseField
    private long addTime;
    @DatabaseField
    private String contentId;
    @DatabaseField
    private String deviceId;
    @DatabaseField
    private long duration;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String itemId;
    @DatabaseField
    private String sceneId;
    @DatabaseField
    private int state;
    @DatabaseField
    private String userId;

    public String getAction() {
        return this.action;
    }

    public long getAddTime() {
        return this.addTime;
    }

    public String getContentId() {
        return this.contentId;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getId() {
        return this.id;
    }

    public String getItemId() {
        return this.itemId;
    }

    public String getSceneId() {
        return this.sceneId;
    }

    public int getState() {
        return this.state;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setAddTime(long j4) {
        this.addTime = j4;
    }

    public void setContentId(String str) {
        this.contentId = str;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setDuration(long j4) {
        this.duration = j4;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setItemId(String str) {
        this.itemId = str;
    }

    public void setSceneId(String str) {
        this.sceneId = str;
    }

    public void setState(int i2) {
        this.state = i2;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
