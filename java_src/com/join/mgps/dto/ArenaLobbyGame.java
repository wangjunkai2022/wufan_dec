package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class ArenaLobbyGame implements Serializable {
    private List<ArenaGameInfo> data;

    public List<ArenaGameInfo> getData() {
        return this.data;
    }

    public void setData(List<ArenaGameInfo> list) {
        this.data = list;
    }

    public String toString() {
        return "ArenaLobbyGame{data=" + this.data + '}';
    }
}
