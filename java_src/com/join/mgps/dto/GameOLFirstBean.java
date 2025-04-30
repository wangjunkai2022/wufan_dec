package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameOLFirstBean extends CollectionBeanSub {
    private String game_open_time;
    private String papa_privilege;
    private String update_times;

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getGame_open_time() {
        return this.game_open_time;
    }

    public String getPapa_privilege() {
        return this.papa_privilege;
    }

    public String getUpdate_times() {
        return this.update_times;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setGame_open_time(String str) {
        this.game_open_time = str;
    }

    public void setPapa_privilege(String str) {
        this.papa_privilege = str;
    }

    public void setUpdate_times(String str) {
        this.update_times = str;
    }
}
