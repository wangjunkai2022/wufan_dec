package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class Data {
    private String androidId;
    private String appVersion;
    private String articleId;
    private String brand;
    private long gameId;
    private String gdevid;
    private String imei;
    private String location;
    private String mac;
    private String model;
    private String oaid;
    private int sdkInt;
    private String uid;
    private String umengid;
    private String wfuuid;
    private String where = Where.index.name();
    private int plugId = 0;
    private int pageVersion = 0;

    public String getAndroidId() {
        return this.androidId;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public String getArticleId() {
        return this.articleId;
    }

    public String getBrand() {
        return this.brand;
    }

    public long getGameId() {
        return this.gameId;
    }

    public String getGdevid() {
        return this.gdevid;
    }

    public String getImei() {
        return this.imei;
    }

    public String getLocation() {
        return this.location;
    }

    public String getMac() {
        return this.mac;
    }

    public String getModel() {
        return this.model;
    }

    public String getOaid() {
        return this.oaid;
    }

    public int getPageVersion() {
        return this.pageVersion;
    }

    public int getPlugId() {
        return this.plugId;
    }

    public int getSdkInt() {
        return this.sdkInt;
    }

    public String getUid() {
        return this.uid;
    }

    public String getUmengid() {
        return this.umengid;
    }

    public String getWfuuid() {
        return this.wfuuid;
    }

    public String getWhere() {
        return this.where;
    }

    public void setAndroidId(String str) {
        this.androidId = str;
    }

    public void setAppVersion(String str) {
        this.appVersion = str;
    }

    public Data setArticleId(String str) {
        this.articleId = str;
        return this;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public Data setGameId(long j4) {
        this.gameId = j4;
        return this;
    }

    public void setGdevid(String str) {
        this.gdevid = str;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setOaid(String str) {
        this.oaid = str;
    }

    public void setPageVersion(int i2) {
        this.pageVersion = i2;
    }

    public void setPlugId(int i2) {
        this.plugId = i2;
    }

    public void setSdkInt(int i2) {
        this.sdkInt = i2;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public void setUmengid(String str) {
        this.umengid = str;
    }

    public void setWfuuid(String str) {
        this.wfuuid = str;
    }

    public Data setWhere(String str) {
        this.where = str;
        return this;
    }
}
