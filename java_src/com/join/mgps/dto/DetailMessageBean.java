package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class DetailMessageBean {
    private List<DetailResultBean> data;
    private String modeltype;

    public DetailMessageBean() {
    }

    public List<DetailResultBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<DetailResultBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public DetailMessageBean(String str, List<DetailResultBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
