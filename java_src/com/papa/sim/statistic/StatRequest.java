package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class StatRequest {
    private int ad;
    private int countType;
    private boolean debug;
    private String deviceId;
    private String event;
    private int id;
    private String mac;
    private long time;
    private String version;
    private int uid = 0;
    private boolean isNew = false;
    private boolean isRequest = false;
    private Data data = new Data();
    private Ext ext = new Ext();

    public int getAd() {
        return this.ad;
    }

    public int getCountType() {
        return this.countType;
    }

    public Data getData() {
        return this.data;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getEvent() {
        return this.event;
    }

    public Ext getExt() {
        return this.ext;
    }

    public int getId() {
        return this.id;
    }

    public String getMac() {
        return this.mac;
    }

    public long getTime() {
        return this.time;
    }

    public int getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isNew() {
        return this.isNew;
    }

    public boolean isRequest() {
        return this.isRequest;
    }

    public void setAd(int i2) {
        this.ad = i2;
    }

    public void setCountType(int i2) {
        this.countType = i2;
    }

    public void setData(Data data) {
        this.data = data;
    }

    public void setDebug(boolean z3) {
        this.debug = z3;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public void setExt(Ext ext) {
        this.ext = ext;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setNew(boolean z3) {
        this.isNew = z3;
    }

    public void setRequest(boolean z3) {
        this.isRequest = z3;
    }

    public void setTime(long j4) {
        this.time = j4;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
