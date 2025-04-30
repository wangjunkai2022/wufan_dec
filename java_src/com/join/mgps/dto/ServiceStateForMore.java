package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ServiceStateForMore {
    private String game_id;
    private int id;
    private String server_info;
    private long server_time;
    private int type;
    private String type_txt;

    public String getGame_id() {
        return this.game_id;
    }

    public int getId() {
        return this.id;
    }

    public String getServer_info() {
        return this.server_info;
    }

    public long getServer_time() {
        return this.server_time * 1000;
    }

    public int getType() {
        return this.type;
    }

    public String getType_txt() {
        return this.type_txt;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setServer_info(String str) {
        this.server_info = str;
    }

    public void setServer_time(long j4) {
        this.server_time = j4;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setType_txt(String str) {
        this.type_txt = str;
    }
}
