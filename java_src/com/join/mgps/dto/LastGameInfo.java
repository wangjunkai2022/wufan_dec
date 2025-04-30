package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class LastGameInfo implements Serializable {
    private Long gameid;
    private int queueid;

    public Long getGameid() {
        return this.gameid;
    }

    public int getQueueid() {
        return this.queueid;
    }

    public void setGameid(Long l4) {
        this.gameid = l4;
    }

    public void setQueueid(int i2) {
        this.queueid = i2;
    }

    public String toString() {
        return "LastGameInfo{gameid=" + this.gameid + ", queueid=" + this.queueid + '}';
    }
}
