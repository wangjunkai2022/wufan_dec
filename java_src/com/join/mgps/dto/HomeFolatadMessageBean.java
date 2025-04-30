package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class HomeFolatadMessageBean {
    private List<FightDataBean> data;
    private String modeltype;

    public HomeFolatadMessageBean() {
    }

    public List<FightDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<FightDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public HomeFolatadMessageBean(String str, List<FightDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
