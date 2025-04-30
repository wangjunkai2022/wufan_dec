package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class CloudDownRecoderTable {
    @DatabaseField
    private String fileName;
    @DatabaseField
    private String filePath;
    @DatabaseField
    private String gameId;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String md5;

    public String getFileName() {
        return this.fileName;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.id;
    }

    public String getMd5() {
        return this.md5;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }
}
