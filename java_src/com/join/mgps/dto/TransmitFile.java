package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class TransmitFile {
    private String absolutePath;
    private String basePath;
    private long completeSize;
    private String crc_link_type_val;
    private String createTime;
    private boolean downloading;
    private String dtype;
    private String fileType;
    private String finishTime;
    private boolean finished;
    private String gameZipPath;
    private Long id;
    private boolean isAutoPause;
    private boolean isDownloadingNow;
    private long lastCompleteSize;
    private long lastTime;
    private String name;
    private String packageName;
    private String percent;
    private Boolean plugInFlag;
    private String portraitURL;
    private int progress;
    private String romType;
    private String showName;
    private String tag;
    private List<TipBean> tipBeans;
    private Integer totalSize;
    private String transStat;
    private String url;

    public TransmitFile() {
        this.totalSize = 0;
        this.completeSize = 0L;
        this.plugInFlag = Boolean.FALSE;
    }

    public String getAbsolutePath() {
        return this.absolutePath;
    }

    public String getBasePath() {
        return this.basePath;
    }

    public long getCompleteSize() {
        return this.completeSize;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getCreateTime() {
        return this.createTime;
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

    public String getGameZipPath() {
        return this.gameZipPath;
    }

    public Long getId() {
        return this.id;
    }

    public long getLastCompleteSize() {
        return this.lastCompleteSize;
    }

    public long getLastTime() {
        return this.lastTime;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPercent() {
        return this.percent;
    }

    public Boolean getPlugInFlag() {
        return this.plugInFlag;
    }

    public String getPortraitURL() {
        return this.portraitURL;
    }

    public int getProgress() {
        return this.progress;
    }

    public String getRomType() {
        return this.romType;
    }

    public String getShowName() {
        return this.showName;
    }

    public String getTag() {
        return this.tag;
    }

    public List<TipBean> getTipBeans() {
        return this.tipBeans;
    }

    public Integer getTotalSize() {
        return this.totalSize;
    }

    public String getTransStat() {
        return this.transStat;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isAutoPause() {
        return this.isAutoPause;
    }

    public boolean isDownloading() {
        return this.downloading;
    }

    public boolean isDownloadingNow() {
        return this.isDownloadingNow;
    }

    public boolean isFinished() {
        return this.finished;
    }

    public void setAbsolutePath(String str) {
        this.absolutePath = str;
    }

    public void setAutoPause(boolean z3) {
        this.isAutoPause = z3;
    }

    public void setBasePath(String str) {
        this.basePath = str;
    }

    public void setCompleteSize(long j4) {
        this.completeSize = j4;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setDownloading(boolean z3) {
        this.downloading = z3;
    }

    public void setDownloadingNow(boolean z3) {
        this.isDownloadingNow = z3;
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

    public void setFinished(boolean z3) {
        this.finished = z3;
    }

    public void setGameZipPath(String str) {
        this.gameZipPath = str;
    }

    public void setId(Long l4) {
        this.id = l4;
    }

    public void setLastCompleteSize(long j4) {
        this.lastCompleteSize = j4;
    }

    public void setLastTime(long j4) {
        this.lastTime = j4;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPercent(String str) {
        this.percent = str;
    }

    public void setPlugInFlag(Boolean bool) {
        this.plugInFlag = bool;
    }

    public void setPortraitURL(String str) {
        this.portraitURL = str;
    }

    public void setProgress(int i2) {
        this.progress = i2;
    }

    public void setRomType(String str) {
        this.romType = str;
    }

    public void setShowName(String str) {
        this.showName = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTipBeans(List<TipBean> list) {
        this.tipBeans = list;
    }

    public void setTotalSize(Integer num) {
        this.totalSize = num;
    }

    public void setTransStat(String str) {
        this.transStat = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public TransmitFile(Long l4, String str, String str2, String str3, String str4, String str5, String str6, String str7, Integer num, boolean z3, boolean z4, String str8, String str9, String str10, String str11, String str12, String str13, boolean z5, String str14, boolean z6, long j4, long j5, long j6, List<TipBean> list, String str15, String str16) {
        this.totalSize = 0;
        this.completeSize = 0L;
        this.plugInFlag = Boolean.FALSE;
        this.id = l4;
        this.tag = str;
        this.url = str2;
        this.basePath = str3;
        this.name = str4;
        this.showName = str5;
        this.absolutePath = str6;
        this.gameZipPath = str7;
        this.totalSize = num;
        this.downloading = z3;
        this.finished = z4;
        this.createTime = str8;
        this.finishTime = str9;
        this.packageName = str10;
        this.portraitURL = str11;
        this.dtype = str12;
        this.fileType = str13;
        this.isDownloadingNow = z5;
        this.percent = str14;
        this.isAutoPause = z6;
        this.lastTime = j4;
        this.completeSize = j5;
        this.lastCompleteSize = j6;
        this.tipBeans = list;
        this.crc_link_type_val = str15;
        this.romType = str16;
    }

    public TransmitFile(Long l4, String str, String str2, String str3, String str4, String str5, String str6, String str7, Integer num, boolean z3, boolean z4, String str8, String str9, String str10, String str11, String str12, String str13, boolean z5, String str14, boolean z6, long j4, long j5, long j6, List<TipBean> list, String str15, String str16, int i2, String str17, Boolean bool) {
        this.totalSize = 0;
        this.completeSize = 0L;
        this.plugInFlag = Boolean.FALSE;
        this.id = l4;
        this.tag = str;
        this.url = str2;
        this.basePath = str3;
        this.name = str4;
        this.showName = str5;
        this.absolutePath = str6;
        this.gameZipPath = str7;
        this.totalSize = num;
        this.downloading = z3;
        this.finished = z4;
        this.createTime = str8;
        this.finishTime = str9;
        this.packageName = str10;
        this.portraitURL = str11;
        this.dtype = str12;
        this.fileType = str13;
        this.isDownloadingNow = z5;
        this.percent = str14;
        this.isAutoPause = z6;
        this.lastTime = j4;
        this.completeSize = j5;
        this.lastCompleteSize = j6;
        this.tipBeans = list;
        this.crc_link_type_val = str15;
        this.romType = str16;
        this.progress = i2;
        this.transStat = str17;
        this.plugInFlag = bool;
    }
}
