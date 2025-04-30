package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameWorldGlobalData {
    private int world_user_count;
    private List<GameWorldGlobalDataItem> worship_top;

    public int getWorld_user_count() {
        return this.world_user_count;
    }

    public List<GameWorldGlobalDataItem> getWorship_top() {
        return this.worship_top;
    }

    public void setWorld_user_count(int i2) {
        this.world_user_count = i2;
    }

    public void setWorship_top(List<GameWorldGlobalDataItem> list) {
        this.worship_top = list;
    }
}
