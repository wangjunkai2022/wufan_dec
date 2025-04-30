package com.join.kotlin.ui.cloudarchive.data;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class ArchiveData implements Serializable {
    private long addTime;
    private String archiveDesc;
    private String archiveLocalPath;
    private String archiveLocalZipPath;
    private String archiveLocation;
    private long archiveSize;
    private String archiveZipPath;
    private String avatar;
    private String coverLocation;
    private int downloadCount;
    private String game_id;
    private String id;
    private int isChoice;
    private int isDownloadArchive;
    private int isLike;
    private int isUnLike;
    private int likeCount;
    private String mainArchiveLocalPath;
    private String mainArchiveLocalPath2;
    private int negativeCount;
    private String nickname;
    private String packageName;
    private int showType;
    private int uid;
    private int userId;
    private String showText = "下载";
    private int status = 0;
    private String playTime = "";
    private int isFirstRun = 0;
    private int auditStatus = 0;
    private int checkStatus = 0;
    private long runingArchiveId = 0;
    private int showMoreStatus = 0;

    public long getAddTime() {
        return this.addTime;
    }

    public String getArchiveDesc() {
        return this.archiveDesc;
    }

    public String getArchiveLocalPath() {
        return this.archiveLocalPath;
    }

    public String getArchiveLocalZipPath() {
        return this.archiveLocalZipPath;
    }

    public String getArchiveLocation() {
        return this.archiveLocation;
    }

    public long getArchiveSize() {
        return this.archiveSize;
    }

    public String getArchiveZipPath() {
        return this.archiveZipPath;
    }

    public int getAuditStatus() {
        return this.auditStatus;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public int getCheckStatus() {
        return this.checkStatus;
    }

    public String getCoverLocation() {
        return this.coverLocation;
    }

    public int getDownloadCount() {
        return this.downloadCount;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getId() {
        return this.id;
    }

    public int getIsChoice() {
        return this.isChoice;
    }

    public int getIsDownloadArchive() {
        return this.isDownloadArchive;
    }

    public int getIsFirstRun() {
        return this.isFirstRun;
    }

    public int getIsLike() {
        return this.isLike;
    }

    public int getIsUnLike() {
        return this.isUnLike;
    }

    public int getLikeCount() {
        return this.likeCount;
    }

    public String getMainArchiveLocalPath() {
        return this.mainArchiveLocalPath;
    }

    public String getMainArchiveLocalPath2() {
        return this.mainArchiveLocalPath2;
    }

    public int getNegativeCount() {
        return this.negativeCount;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPlayTime() {
        return this.playTime;
    }

    public long getRuningArchiveId() {
        return this.runingArchiveId;
    }

    public int getShowMoreStatus() {
        return this.showMoreStatus;
    }

    public String getShowText() {
        return this.showText;
    }

    public int getShowType() {
        return this.showType;
    }

    public int getStatus() {
        return this.status;
    }

    public int getUid() {
        return this.uid;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setAddTime(long j4) {
        this.addTime = j4;
    }

    public void setArchiveDesc(String str) {
        this.archiveDesc = str;
    }

    public void setArchiveLocalPath(String str) {
        this.archiveLocalPath = str;
    }

    public void setArchiveLocalZipPath(String str) {
        this.archiveLocalZipPath = str;
    }

    public void setArchiveLocation(String str) {
        this.archiveLocation = str;
    }

    public void setArchiveSize(long j4) {
        this.archiveSize = j4;
    }

    public void setArchiveZipPath(String str) {
        this.archiveZipPath = str;
    }

    public void setAuditStatus(int i2) {
        this.auditStatus = i2;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCheckStatus(int i2) {
        this.checkStatus = i2;
    }

    public void setCoverLocation(String str) {
        this.coverLocation = str;
    }

    public void setDownloadCount(int i2) {
        this.downloadCount = i2;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIsChoice(int i2) {
        this.isChoice = i2;
    }

    public void setIsDownloadArchive(int i2) {
        this.isDownloadArchive = i2;
    }

    public void setIsFirstRun(int i2) {
        this.isFirstRun = i2;
    }

    public void setIsLike(int i2) {
        this.isLike = i2;
    }

    public void setIsUnLike(int i2) {
        this.isUnLike = i2;
    }

    public void setLikeCount(int i2) {
        this.likeCount = i2;
    }

    public void setMainArchiveLocalPath(String str) {
        this.mainArchiveLocalPath = str;
    }

    public void setMainArchiveLocalPath2(String str) {
        this.mainArchiveLocalPath2 = str;
    }

    public void setNegativeCount(int i2) {
        this.negativeCount = i2;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPlayTime(String str) {
        this.playTime = str;
    }

    public void setRuningArchiveId(long j4) {
        this.runingArchiveId = j4;
    }

    public void setShowMoreStatus(int i2) {
        this.showMoreStatus = i2;
    }

    public void setShowText(String str) {
        this.showText = str;
    }

    public void setShowType(int i2) {
        this.showType = i2;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUserId(int i2) {
        this.userId = i2;
    }

    public String toString() {
        return "ArchiveData{archiveDesc='" + this.archiveDesc + "', addTime=" + this.addTime + ", archiveSize=" + this.archiveSize + ", archiveLocation='" + this.archiveLocation + "', archiveLocalPath='" + this.archiveLocalPath + "', archiveLocalZipPath='" + this.archiveLocalZipPath + "', mainArchiveLocalPath='" + this.mainArchiveLocalPath + "', mainArchiveLocalPath2='" + this.mainArchiveLocalPath2 + "', avatar='" + this.avatar + "', coverLocation='" + this.coverLocation + "', downloadCount=" + this.downloadCount + ", game_id='" + this.game_id + "', id='" + this.id + "', isDownloadArchive=" + this.isDownloadArchive + ", isLike=" + this.isLike + ", likeCount=" + this.likeCount + ", isUnLike=" + this.isUnLike + ", negativeCount=" + this.negativeCount + ", nickname='" + this.nickname + "', uid=" + this.uid + ", packageName='" + this.packageName + "', archiveZipPath='" + this.archiveZipPath + "', showType=" + this.showType + ", showText='" + this.showText + "', status=" + this.status + ", playTime='" + this.playTime + "', isFirstRun=" + this.isFirstRun + ", auditStatus=" + this.auditStatus + ", checkStatus=" + this.checkStatus + ", runingArchiveId=" + this.runingArchiveId + ", userId=" + this.userId + ", showMoreStatus=" + this.showMoreStatus + ", isChoice=" + this.isChoice + '}';
    }
}
