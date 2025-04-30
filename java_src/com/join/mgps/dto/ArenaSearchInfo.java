package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaSearchInfo implements Serializable {
    private byte canplaygame;
    private int ping;
    private int gametype = 0;
    private int game_actiontype = 0;
    private byte isvisit = 0;
    private byte isfree = 0;
    private int areaNumber = 0;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ArenaSearchInfo arenaSearchInfo = (ArenaSearchInfo) obj;
        return this.gametype == arenaSearchInfo.gametype && this.game_actiontype == arenaSearchInfo.game_actiontype && this.isvisit == arenaSearchInfo.isvisit && this.isfree == arenaSearchInfo.isfree && this.areaNumber == arenaSearchInfo.areaNumber && this.canplaygame == arenaSearchInfo.canplaygame;
    }

    public int getAreaNumber() {
        return this.areaNumber;
    }

    public byte getCanplaygame() {
        return this.canplaygame;
    }

    public int getGame_actiontype() {
        return this.game_actiontype;
    }

    public int getGametype() {
        return this.gametype;
    }

    public byte getIsfree() {
        return this.isfree;
    }

    public byte getIsvisit() {
        return this.isvisit;
    }

    public int getPing() {
        return this.ping;
    }

    public int hashCode() {
        return (((((((((this.gametype * 31) + this.game_actiontype) * 31) + this.isvisit) * 31) + this.isfree) * 31) + this.areaNumber) * 31) + this.canplaygame;
    }

    public void setAreaNumber(int i2) {
        this.areaNumber = i2;
    }

    public void setCanplaygame(byte b4) {
        this.canplaygame = b4;
    }

    public void setGame_actiontype(int i2) {
        this.game_actiontype = i2;
    }

    public void setGametype(int i2) {
        this.gametype = i2;
    }

    public void setIsfree(byte b4) {
        this.isfree = b4;
    }

    public void setIsvisit(byte b4) {
        this.isvisit = b4;
    }

    public void setPing(int i2) {
        this.ping = i2;
    }

    public String toString() {
        return "ArenaSearchInfo{areaNumber=" + this.areaNumber + ", gametype=" + this.gametype + ", game_actiontype=" + this.game_actiontype + ", isvisit=" + ((int) this.isvisit) + ", isfree=" + ((int) this.isfree) + '}';
    }
}
