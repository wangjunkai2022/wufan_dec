package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorExitPlayRequestArgs {
    private List<Integer> battleUidList;
    private String gameId;
    private String token;
    private String uid;

    public List<Integer> getBattleUidList() {
        return this.battleUidList;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setBattleUidList(List<Integer> list) {
        this.battleUidList = list;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
