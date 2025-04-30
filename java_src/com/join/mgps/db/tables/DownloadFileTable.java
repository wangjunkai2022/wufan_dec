package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class DownloadFileTable {
    @DatabaseField
    private String absolutePath;
    @DatabaseField
    private String basePath;
    @DatabaseField
    private int completeSize;
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField
    private String createTime;
    @DatabaseField
    private String describe;
    @DatabaseField
    private short downloading;
    @DatabaseField
    private String dtype;
    @DatabaseField
    private String fileType;
    @DatabaseField
    private String finishTime;
    @DatabaseField
    private short finished;
    @DatabaseField
    private String gameZipPath;
    @DatabaseField
    private String gid;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private short isAutoPause;
    @DatabaseField
    private short isOpen;
    @DatabaseField
    private String name;
    @DatabaseField
    private String packageName;
    @DatabaseField
    private String percentage;
    @DatabaseField
    private String portraitURL;
    @DatabaseField
    private String romType;
    @DatabaseField
    private String showName;
    @DatabaseField
    private int showType;
    @DatabaseField
    private String starNumber;
    @DatabaseField
    private String tag;
    @DatabaseField
    private String tips;
    @DatabaseField
    private int totalSize;
    @DatabaseField
    private String url;
    @DatabaseField
    private String ver;
    @DatabaseField
    private String ver_name;

    public DownloadFileTable() {
        this.showType = -1;
    }

    public String getAbsolutePath() {
        return this.absolutePath;
    }

    public String getBasePath() {
        return this.basePath;
    }

    public int getCompleteSize() {
        return this.completeSize;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public String getDescribe() {
        return this.describe;
    }

    public short getDownloading() {
        return this.downloading;
    }

    public String getDtype() {
        return this.dtype;
    }

    public String getFileType() {
        return this.fileType;
    }

    public String getFinishTime() {
        return this.finishTime;
    }

    public short getFinished() {
        return this.finished;
    }

    public String getGameZipPath() {
        return this.gameZipPath;
    }

    public String getGid() {
        return this.gid;
    }

    public int getId() {
        return this.id;
    }

    public short getIsAutoPause() {
        return this.isAutoPause;
    }

    public short getIsOpen() {
        return this.isOpen;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPercentage() {
        return this.percentage;
    }

    public String getPortraitURL() {
        return this.portraitURL;
    }

    public String getRomType() {
        return this.romType;
    }

    public String getShowName() {
        return this.showName;
    }

    public int getShowType() {
        return this.showType;
    }

    public String getStarNumber() {
        return this.starNumber;
    }

    public String getTag() {
        return this.tag;
    }

    public String getTips() {
        return this.tips;
    }

    public int getTotalSize() {
        return this.totalSize;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public void setAbsolutePath(String str) {
        this.absolutePath = str;
    }

    public void setBasePath(String str) {
        this.basePath = str;
    }

    public void setCompleteSize(int i2) {
        this.completeSize = i2;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setDescribe(String str) {
        this.describe = str;
    }

    public void setDownloading(short s3) {
        this.downloading = s3;
    }

    public void setDtype(String str) {
        this.dtype = str;
    }

    public void setFileType(String str) {
        this.fileType = str;
    }

    public void setFinishTime(String str) {
        this.finishTime = str;
    }

    public void setFinished(short s3) {
        this.finished = s3;
    }

    public void setGameZipPath(String str) {
        this.gameZipPath = str;
    }

    public void setGid(String str) {
        this.gid = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIsAutoPause(short s3) {
        this.isAutoPause = s3;
    }

    public void setIsOpen(short s3) {
        this.isOpen = s3;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPercentage(String str) {
        this.percentage = str;
    }

    public void setPortraitURL(String str) {
        this.portraitURL = str;
    }

    public void setRomType(String str) {
        this.romType = str;
    }

    public void setShowName(String str) {
        this.showName = str;
    }

    public void setShowType(int i2) {
        this.showType = i2;
    }

    public void setStarNumber(String str) {
        this.starNumber = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTips(String str) {
        this.tips = str;
    }

    public void setTotalSize(int i2) {
        this.totalSize = i2;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_name(String str) {
        this.ver_name = str;
    }

    public DownloadFileTable(int i2, String str, String str2, String str3, String str4, String str5, String str6, int i4, int i5, short s3, String str7, String str8, String str9, short s4, String str10, String str11, String str12, String str13, String str14, String str15, short s5, String str16, String str17, String str18, String str19, String str20, String str21, short s6, String str22, int i6) {
        this.showType = -1;
        this.id = i2;
        this.tag = str;
        this.url = str2;
        this.basePath = str3;
        this.name = str4;
        this.absolutePath = str5;
        this.gameZipPath = str6;
        this.totalSize = i4;
        this.completeSize = i5;
        this.downloading = s3;
        this.showName = str7;
        this.createTime = str8;
        this.dtype = str9;
        this.finished = s4;
        this.fileType = str10;
        this.finishTime = str11;
        this.packageName = str12;
        this.tips = str13;
        this.portraitURL = str14;
        this.percentage = str15;
        this.isAutoPause = s5;
        this.crc_link_type_val = str16;
        this.ver = str17;
        this.ver_name = str18;
        this.gid = str19;
        this.starNumber = str20;
        this.romType = str21;
        this.isOpen = s6;
        this.describe = str22;
        this.showType = i6;
    }
}
