package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class AppTimeDataTable {
    @DatabaseField
    private String appName;
    @DatabaseField
    private String atartTime;
    @DatabaseField
    private String endTime;
    @DatabaseField
    private String gameId;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private boolean isUped;
    @DatabaseField
    private String packageName;
    @DatabaseField
    private int timeLength;

    public AppTimeDataTable() {
    }

    public String getAppName() {
        return this.appName;
    }

    public String getAtartTime() {
        return this.atartTime;
    }

    public String getEndTime() {
        return this.endTime;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getTimeLength() {
        return this.timeLength;
    }

    public boolean isUped() {
        return this.isUped;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setAtartTime(String str) {
        this.atartTime = str;
    }

    public void setEndTime(String str) {
        this.endTime = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setTimeLength(int i2) {
        this.timeLength = i2;
    }

    public void setUped(boolean z3) {
        this.isUped = z3;
    }

    public AppTimeDataTable(String str, String str2, String str3, String str4, String str5, int i2, boolean z3) {
        this.packageName = str;
        this.appName = str2;
        this.gameId = str3;
        this.atartTime = str4;
        this.endTime = str5;
        this.timeLength = i2;
        this.isUped = z3;
    }
}
