package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class DownlodTaskCopyTable {
    @DatabaseField
    private String downloadTask;
    @DatabaseField
    private String gameId;
    @DatabaseField(generatedId = true)
    private int id;

    public DownlodTaskCopyTable() {
    }

    public String getDownloadTask() {
        return this.downloadTask;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.id;
    }

    public void setDownloadTask(String str) {
        this.downloadTask = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public DownlodTaskCopyTable(int i2, String str, String str2) {
        this.id = i2;
        this.gameId = str;
        this.downloadTask = str2;
    }
}
