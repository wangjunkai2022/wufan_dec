package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class MustPlayNetDataBean {
    private List<CollectionBeanSub> gamelist;
    private String title;

    public MustPlayNetDataBean() {
    }

    public List<CollectionBeanSub> getGamelist() {
        return this.gamelist;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGamelist(List<CollectionBeanSub> list) {
        this.gamelist = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public MustPlayNetDataBean(boolean z3, List<CollectionBeanSub> list) {
        this.title = this.title;
        this.gamelist = list;
    }
}
