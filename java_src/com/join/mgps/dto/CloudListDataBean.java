package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CloudListDataBean implements Serializable {
    private String addTime;
    private String archiveCoin;
    private String archiveCover;
    private String archiveCoverFilePath;
    private String archiveDesc;
    private String archiveFile;
    private String archiveFileName;
    private String archiveFilePath;
    private String archiveId;
    private String archiveName;
    private String avatar;
    private int downNum;
    private String fileMd5;
    private long fileSize;
    private String goodrate;
    private int highComment;
    private int highRate;
    private String id;
    private int isComment;
    private int isVip;
    private String nickname;
    private int status;
    private String tag;
    private int todayCoin;
    private int totalCoin;
    private String uid;
    private int isCheck = 0;
    private boolean isSelectCheck = false;

    public String getAddTime() {
        return this.addTime;
    }

    public String getArchiveCoin() {
        return this.archiveCoin;
    }

    public String getArchiveCover() {
        return this.archiveCover;
    }

    public String getArchiveCoverFilePath() {
        return this.archiveCoverFilePath;
    }

    public String getArchiveDesc() {
        return this.archiveDesc;
    }

    public String getArchiveFile() {
        return this.archiveFile;
    }

    public String getArchiveFileName() {
        return this.archiveFileName;
    }

    public String getArchiveFilePath() {
        return this.archiveFilePath;
    }

    public String getArchiveId() {
        return this.archiveId;
    }

    public String getArchiveName() {
        return this.archiveName;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public int getDownNum() {
        return this.downNum;
    }

    public String getFileMd5() {
        return this.fileMd5;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public String getGoodrate() {
        return this.goodrate;
    }

    public int getHighComment() {
        return this.highComment;
    }

    public int getHighRate() {
        return this.highRate;
    }

    public String getId() {
        return this.id;
    }

    public int getIsCheck() {
        return this.isCheck;
    }

    public int getIsComment() {
        return this.isComment;
    }

    public int getIsVip() {
        return this.isVip;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTag() {
        return this.tag;
    }

    public int getTodayCoin() {
        return this.todayCoin;
    }

    public int getTotalCoin() {
        return this.totalCoin;
    }

    public String getUid() {
        return this.uid;
    }

    public boolean isSelectCheck() {
        return this.isSelectCheck;
    }

    public void setAddTime(String str) {
        this.addTime = str;
    }

    public void setArchiveCoin(String str) {
        this.archiveCoin = str;
    }

    public void setArchiveCover(String str) {
        this.archiveCover = str;
    }

    public void setArchiveCoverFilePath(String str) {
        this.archiveCoverFilePath = str;
    }

    public void setArchiveDesc(String str) {
        this.archiveDesc = str;
    }

    public void setArchiveFile(String str) {
        this.archiveFile = str;
    }

    public void setArchiveFileName(String str) {
        this.archiveFileName = str;
    }

    public void setArchiveFilePath(String str) {
        this.archiveFilePath = str;
    }

    public void setArchiveId(String str) {
        this.archiveId = str;
    }

    public void setArchiveName(String str) {
        this.archiveName = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setDownNum(int i2) {
        this.downNum = i2;
    }

    public void setFileMd5(String str) {
        this.fileMd5 = str;
    }

    public void setFileSize(long j4) {
        this.fileSize = j4;
    }

    public void setGoodrate(String str) {
        this.goodrate = str;
    }

    public void setHighComment(int i2) {
        this.highComment = i2;
    }

    public void setHighRate(int i2) {
        this.highRate = i2;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIsCheck(int i2) {
        this.isCheck = i2;
    }

    public void setIsComment(int i2) {
        this.isComment = i2;
    }

    public void setIsVip(int i2) {
        this.isVip = i2;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setSelectCheck(boolean z3) {
        this.isSelectCheck = z3;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTodayCoin(int i2) {
        this.todayCoin = i2;
    }

    public void setTotalCoin(int i2) {
        this.totalCoin = i2;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String toString() {
        return "CloudListDataBean{archiveName='" + this.archiveName + "', archiveCover='" + this.archiveCover + "', archiveFile='" + this.archiveFile + "', fileMd5='" + this.fileMd5 + "', fileSize=" + this.fileSize + ", addTime='" + this.addTime + "', archiveFilePath='" + this.archiveFilePath + "', archiveCoverFilePath='" + this.archiveCoverFilePath + "', archiveFileName='" + this.archiveFileName + "', status=" + this.status + ", isCheck=" + this.isCheck + ", isSelectCheck=" + this.isSelectCheck + '}';
    }
}
