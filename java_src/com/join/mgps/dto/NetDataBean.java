package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class NetDataBean implements Serializable {
    private byte archive;
    private long fightId;
    private Long gameId;
    private int playType;

    public byte getArchive() {
        return this.archive;
    }

    public long getFightId() {
        return this.fightId;
    }

    public Long getGameId() {
        return this.gameId;
    }

    public int getPlayType() {
        return this.playType;
    }

    public void setArchive(byte b4) {
        this.archive = b4;
    }

    public void setFightId(long j4) {
        this.fightId = j4;
    }

    public void setGameId(Long l4) {
        this.gameId = l4;
    }

    public void setPlayType(int i2) {
        this.playType = i2;
    }
}
