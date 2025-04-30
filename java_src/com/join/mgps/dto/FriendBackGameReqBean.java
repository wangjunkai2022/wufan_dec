package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class FriendBackGameReqBean {
    private List<Integer> battleUids;
    private String gameId;
    private String token;
    private int uid;

    public List<Integer> getBattleUids() {
        return this.battleUids;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setBattleUids(List<Integer> list) {
        this.battleUids = list;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
