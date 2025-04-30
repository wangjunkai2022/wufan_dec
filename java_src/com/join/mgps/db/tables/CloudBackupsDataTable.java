package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class CloudBackupsDataTable {
    @DatabaseField
    private boolean downFinish;
    @DatabaseField
    private String filePath;
    @DatabaseField
    private String gameId;
    @DatabaseField
    private boolean hasRecoverd;
    @DatabaseField(generatedId = true)
    private int id;

    public String getFilePath() {
        return this.filePath;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.id;
    }

    public boolean isDownFinish() {
        return this.downFinish;
    }

    public boolean isHasRecoverd() {
        return this.hasRecoverd;
    }

    public void setDownFinish(boolean z3) {
        this.downFinish = z3;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setHasRecoverd(boolean z3) {
        this.hasRecoverd = z3;
    }

    public void setId(int i2) {
        this.id = i2;
    }
}
