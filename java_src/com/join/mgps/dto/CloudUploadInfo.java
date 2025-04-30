package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CloudUploadInfo implements Serializable {
    private String backup_type;
    private String game_id;
    private int rid;
    private String token;
    private int uid;

    public String getBackup_type() {
        return this.backup_type;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getRid() {
        return this.rid;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setBackup_type(String str) {
        this.backup_type = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setRid(int i2) {
        this.rid = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
