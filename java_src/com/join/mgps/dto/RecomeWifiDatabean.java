package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class RecomeWifiDatabean implements Serializable {
    private List<CollectionBeanSub> game_list;
    private String title;

    public RecomeWifiDatabean() {
    }

    public List<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_list(List<CollectionBeanSub> list) {
        this.game_list = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public RecomeWifiDatabean(String str, List<CollectionBeanSub> list) {
        this.title = str;
        this.game_list = list;
    }
}
