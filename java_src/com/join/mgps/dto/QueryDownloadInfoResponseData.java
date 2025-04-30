package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class QueryDownloadInfoResponseData implements Serializable {
    private long actualSize;
    private String btnStatus;
    private String downloadHTML;
    private String downloadURL;
    private boolean forceShow;
    private String gameId;
    private String gameName;
    private long resourceSize;
    private String resourceURL;
    private boolean selectedNextTips;
    private boolean selectedUserProtocol;
    private String subTitle;
    private String title;
    private String userProtocolTxt;
    private String userProtocolURL;
    private String ver;
    private String ver_name;

    public long getActualSize() {
        return this.actualSize;
    }

    public String getBtnStatus() {
        return this.btnStatus;
    }

    public String getDownloadHTML() {
        return this.downloadHTML;
    }

    public String getDownloadURL() {
        return this.downloadURL;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameName() {
        return this.gameName;
    }

    public long getResourceSize() {
        return this.resourceSize;
    }

    public String getResourceURL() {
        return this.resourceURL;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUserProtocolTxt() {
        return this.userProtocolTxt;
    }

    public String getUserProtocolURL() {
        return this.userProtocolURL;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public boolean isForceShow() {
        return this.forceShow;
    }

    public boolean isSelectedNextTips() {
        return this.selectedNextTips;
    }

    public boolean isSelectedUserProtocol() {
        return this.selectedUserProtocol;
    }

    public void setActualSize(long j4) {
        this.actualSize = j4;
    }

    public void setBtnStatus(String str) {
        this.btnStatus = str;
    }

    public void setDownloadHTML(String str) {
        this.downloadHTML = str;
    }

    public void setDownloadURL(String str) {
        this.downloadURL = str;
    }

    public void setForceShow(boolean z3) {
        this.forceShow = z3;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGameName(String str) {
        this.gameName = str;
    }

    public void setResourceSize(long j4) {
        this.resourceSize = j4;
    }

    public void setResourceURL(String str) {
        this.resourceURL = str;
    }

    public void setSelectedNextTips(boolean z3) {
        this.selectedNextTips = z3;
    }

    public void setSelectedUserProtocol(boolean z3) {
        this.selectedUserProtocol = z3;
    }

    public void setSubTitle(String str) {
        this.subTitle = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUserProtocolTxt(String str) {
        this.userProtocolTxt = str;
    }

    public void setUserProtocolURL(String str) {
        this.userProtocolURL = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_name(String str) {
        this.ver_name = str;
    }
}
