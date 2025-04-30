package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class ArenaGroupStateBean implements Serializable, Comparable<ArenaGroupStateBean> {
    private int areaIndictor = 1001;
    private long gameid;
    private int groupid;
    private byte isarchive;
    private byte isvisit;
    private byte password;
    private int position;
    private byte roomstate;
    int showGroupId;
    private byte startbattle;
    private long starttime;
    private byte svip;
    private List<ArenaUserBean> userBeanList;
    private byte usercount;
    private byte vip;
    private List<ArenaUserBean> visitorBeanList;

    public boolean equals(Object obj) {
        if (obj instanceof ArenaGroupStateBean) {
            return this.groupid == ((ArenaGroupStateBean) obj).getGroupid();
        }
        return super.equals(obj);
    }

    public int getAreaIndictor() {
        return this.areaIndictor;
    }

    public long getGameid() {
        return this.gameid;
    }

    public int getGroupid() {
        return this.groupid;
    }

    public byte getIsarchive() {
        return this.isarchive;
    }

    public byte getIsvisit() {
        return this.isvisit;
    }

    public byte getPassword() {
        return this.password;
    }

    public int getPosition() {
        return this.position;
    }

    public byte getRoomstate() {
        return this.roomstate;
    }

    public int getShowGroupId() {
        return this.showGroupId;
    }

    public byte getStartbattle() {
        return this.startbattle;
    }

    public long getStarttime() {
        return this.starttime;
    }

    public byte getSvip() {
        return this.svip;
    }

    public List<ArenaUserBean> getUserBeanList() {
        return this.userBeanList;
    }

    public byte getUsercount() {
        return this.usercount;
    }

    public byte getVip() {
        return this.vip;
    }

    public List<ArenaUserBean> getVisitorBeanList() {
        return this.visitorBeanList;
    }

    public int hashCode() {
        return this.groupid;
    }

    public void setAreaIndictor(int i2) {
        this.areaIndictor = i2;
    }

    public void setGameid(long j4) {
        this.gameid = j4;
    }

    public void setGroupid(int i2) {
        this.groupid = i2;
    }

    public void setIsarchive(byte b4) {
        this.isarchive = b4;
    }

    public void setIsvisit(byte b4) {
        this.isvisit = b4;
    }

    public void setPassword(byte b4) {
        this.password = b4;
    }

    public void setPosition(int i2) {
        this.position = i2;
    }

    public void setRoomstate(byte b4) {
        this.roomstate = b4;
    }

    public void setShowGroupId(int i2) {
        this.showGroupId = i2 % 1000;
    }

    public void setStartbattle(byte b4) {
        this.startbattle = b4;
    }

    public void setStarttime(long j4) {
        this.starttime = j4;
    }

    public void setSvip(byte b4) {
        this.svip = b4;
    }

    public void setUserBeanList(List<ArenaUserBean> list) {
        this.userBeanList = list;
    }

    public void setUsercount(byte b4) {
        this.usercount = b4;
    }

    public void setVip(byte b4) {
        this.vip = b4;
    }

    public void setVisitorBeanList(List<ArenaUserBean> list) {
        this.visitorBeanList = list;
    }

    public String toString() {
        return "ArenaGroupStateBean{gameid=" + this.gameid + ", groupid=" + this.groupid + ", roomstate=" + ((int) this.roomstate) + ", password=" + ((int) this.password) + ", isvisit=" + ((int) this.isvisit) + ", startbattle=" + ((int) this.startbattle) + ", starttime=" + this.starttime + ", isarchive=" + ((int) this.isarchive) + ", position=" + this.position + ", usercount=" + ((int) this.usercount) + ", userBeanList=" + this.userBeanList + ", visitorBeanList=" + this.visitorBeanList + '}';
    }

    @Override // java.lang.Comparable
    public int compareTo(ArenaGroupStateBean arenaGroupStateBean) {
        if (this == arenaGroupStateBean) {
            return 0;
        }
        return (arenaGroupStateBean == null || this.groupid <= arenaGroupStateBean.groupid) ? -1 : 1;
    }
}
