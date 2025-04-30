package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class MustPlayListItemDataBean {
    private List<AppBean> gamelist;
    private String title;

    public MustPlayListItemDataBean(String str) {
        this.title = str;
    }

    public List<AppBean> getGamelist() {
        return this.gamelist;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGamelist(List<AppBean> list) {
        this.gamelist = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public MustPlayListItemDataBean(String str, List<AppBean> list) {
        this.title = str;
        this.gamelist = list;
    }
}
