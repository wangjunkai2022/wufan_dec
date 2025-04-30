package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameTransferBean {
    String filePath;
    String fileType;
    String gameName;
    String iconUrl;
    String id;
    int progerss;
    boolean selectedTransfer;
    String size;
    int transferStatus;

    public String getFilePath() {
        return this.filePath;
    }

    public String getFileType() {
        return this.fileType;
    }

    public String getGameName() {
        return this.gameName;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getId() {
        return this.id;
    }

    public int getProgerss() {
        return this.progerss;
    }

    public String getSize() {
        return this.size;
    }

    public int getTransferStatus() {
        return this.transferStatus;
    }

    public boolean isSelectedTransfer() {
        return this.selectedTransfer;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setFileType(String str) {
        this.fileType = str;
    }

    public void setGameName(String str) {
        this.gameName = str;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setProgerss(int i2) {
        this.progerss = i2;
    }

    public void setSelectedTransfer(boolean z3) {
        this.selectedTransfer = z3;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public void setTransferStatus(int i2) {
        this.transferStatus = i2;
    }
}
