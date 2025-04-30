package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameDiscoverMessageBean {
    private List<GameDiscoverBean> data;
    private String modeltype;

    public GameDiscoverMessageBean() {
    }

    public List<GameDiscoverBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<GameDiscoverBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public GameDiscoverMessageBean(String str, List<GameDiscoverBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
