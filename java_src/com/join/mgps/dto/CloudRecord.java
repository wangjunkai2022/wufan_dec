package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CloudRecord implements Serializable {
    private String file;
    private long game_id;

    public String getFile() {
        return this.file;
    }

    public long getGame_id() {
        return this.game_id;
    }

    public void setFile(String str) {
        this.file = str;
    }

    public void setGame_id(long j4) {
        this.game_id = j4;
    }
}
