package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestArenaRoomListArgs {
    private String id;
    private int type;

    public RequestArenaRoomListArgs(String str, int i2) {
        this.id = str;
        this.type = i2;
    }

    public String getId() {
        return this.id;
    }

    public int getType() {
        return this.type;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
