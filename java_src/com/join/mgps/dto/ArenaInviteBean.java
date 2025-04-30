package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaInviteBean implements Serializable {
    private Long gameId;
    public String groupId;
    public String no;
    public String password;

    public Long getGameId() {
        return this.gameId;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public String getNo() {
        return this.no;
    }

    public String getPassword() {
        return this.password;
    }

    public void setGameId(Long l4) {
        this.gameId = l4;
    }

    public void setGroupId(String str) {
        this.groupId = str;
    }

    public void setNo(String str) {
        this.no = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }
}
