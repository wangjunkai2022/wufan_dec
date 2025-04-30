package com.join.mgps.dto;

import com.join.mgps.Util.t0;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaUserBean implements Serializable {
    private int curlv;
    private int failcount;
    private String iconurl;
    private String name;
    private int nextexp;
    private int ping;
    private byte posidx;
    private byte state;
    private byte svip;
    private long userid;
    private byte vip;
    private int wincount;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.userid == ((ArenaUserBean) obj).userid;
    }

    public int getCurlv() {
        return this.curlv;
    }

    public int getFailcount() {
        return this.failcount;
    }

    public String getIconurl() {
        return this.iconurl;
    }

    public String getName() {
        return this.name;
    }

    public int getNextexp() {
        return this.nextexp;
    }

    public int getPing() {
        return this.ping;
    }

    public byte getPosidx() {
        return this.posidx;
    }

    public byte getState() {
        return this.state;
    }

    public byte getSvip() {
        return this.svip;
    }

    public long getUserid() {
        return this.userid;
    }

    public byte getVip() {
        return this.vip;
    }

    public int getWincount() {
        return this.wincount;
    }

    public int hashCode() {
        long j4 = this.userid;
        return (int) (j4 ^ (j4 >>> 32));
    }

    public void setCurlv(int i2) {
        this.curlv = i2;
    }

    public void setFailcount(int i2) {
        this.failcount = i2;
    }

    public void setIconurl(String str) {
        this.iconurl = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNextexp(int i2) {
        this.nextexp = i2;
    }

    public void setPing(int i2) {
        this.ping = i2;
    }

    public void setPosidx(byte b4) {
        this.posidx = b4;
    }

    public void setState(byte b4) {
        this.state = b4;
    }

    public void setSvip(byte b4) {
        this.svip = b4;
        t0.g("svip-------" + ((int) b4));
    }

    public void setUserid(long j4) {
        this.userid = j4;
    }

    public void setVip(byte b4) {
        t0.g("vip-------" + ((int) b4));
        this.vip = b4;
    }

    public void setWincount(int i2) {
        this.wincount = i2;
    }

    public String toString() {
        return "ArenaUserBean{userid=" + this.userid + ", iconurl='" + this.iconurl + "'}";
    }
}
