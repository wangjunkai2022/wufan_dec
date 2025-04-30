package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class CloudArchiveTable {
    @DatabaseField
    private String archiveDataJson;
    @DatabaseField
    private String archiveFiles;
    @DatabaseField
    private String archiveFolder;
    @DatabaseField
    private String archiveId;
    @DatabaseField
    private String archiveName;
    @DatabaseField
    private String archiveScreenShort;
    @DatabaseField
    private String archiveType;
    @DatabaseField
    private String archiveZipPath;
    @DatabaseField
    private String gameId;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int isFirstRun = 1;
    @DatabaseField
    private String mainArchiveLocalPath2;
    @DatabaseField
    private String packageName;
    @DatabaseField
    private String uid;
    @DatabaseField
    private int userId;

    public String getArchiveDataJson() {
        return this.archiveDataJson;
    }

    public String getArchiveFiles() {
        return this.archiveFiles;
    }

    public String getArchiveFolder() {
        return this.archiveFolder;
    }

    public String getArchiveId() {
        return this.archiveId;
    }

    public String getArchiveName() {
        return this.archiveName;
    }

    public String getArchiveScreenShort() {
        return this.archiveScreenShort;
    }

    public String getArchiveType() {
        return this.archiveType;
    }

    public String getArchiveZipPath() {
        return this.archiveZipPath;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.id;
    }

    public int getIsFirstRun() {
        return this.isFirstRun;
    }

    public String getMainArchiveLocalPath2() {
        return this.mainArchiveLocalPath2;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getUid() {
        return this.uid;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setArchiveDataJson(String str) {
        this.archiveDataJson = str;
    }

    public void setArchiveFiles(String str) {
        this.archiveFiles = str;
    }

    public void setArchiveFolder(String str) {
        this.archiveFolder = str;
    }

    public void setArchiveId(String str) {
        this.archiveId = str;
    }

    public void setArchiveName(String str) {
        this.archiveName = str;
    }

    public void setArchiveScreenShort(String str) {
        this.archiveScreenShort = str;
    }

    public void setArchiveType(String str) {
        this.archiveType = str;
    }

    public void setArchiveZipPath(String str) {
        this.archiveZipPath = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIsFirstRun(int i2) {
        this.isFirstRun = i2;
    }

    public void setMainArchiveLocalPath2(String str) {
        this.mainArchiveLocalPath2 = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public void setUserId(int i2) {
        this.userId = i2;
    }
}
