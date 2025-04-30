package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class ArenaDataBean implements Serializable {
    private byte archive;
    private long gameid;
    private List<Long> gameids;
    private int groupid;
    private byte isvisit;
    private String password;
    private int ping;
    private byte pos;
    private byte refreshtype;
    private byte roomtype;
    int showGroupId;
    private long time;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.groupid == ((ArenaDataBean) obj).groupid;
    }

    public byte getArchive() {
        return this.archive;
    }

    public long getGameid() {
        return this.gameid;
    }

    public List<Long> getGameids() {
        return this.gameids;
    }

    public int getGroupid() {
        return this.groupid;
    }

    public byte getIsvisit() {
        return this.isvisit;
    }

    public String getPassword() {
        return this.password;
    }

    public int getPing() {
        return this.ping;
    }

    public byte getPos() {
        return this.pos;
    }

    public byte getRefreshtype() {
        return this.refreshtype;
    }

    public byte getRoomtype() {
        return this.roomtype;
    }

    public int getShowGroupId() {
        return this.showGroupId;
    }

    public long getTime() {
        return this.time;
    }

    public int hashCode() {
        return this.groupid;
    }

    public void setArchive(byte b4) {
        this.archive = b4;
    }

    public void setGameid(long j4) {
        this.gameid = j4;
    }

    public void setGameids(List<Long> list) {
        this.gameids = list;
    }

    public void setGroupid(int i2) {
        this.groupid = i2;
    }

    public void setIsvisit(byte b4) {
        this.isvisit = b4;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setPing(int i2) {
        this.ping = i2;
    }

    public void setPos(byte b4) {
        this.pos = b4;
    }

    public void setRefreshtype(byte b4) {
        this.refreshtype = b4;
    }

    public void setRoomtype(byte b4) {
        this.roomtype = b4;
    }

    public void setShowGroupId(int i2) {
        this.showGroupId = i2 % 1000;
    }

    public void setTime(long j4) {
        this.time = j4;
    }
}
