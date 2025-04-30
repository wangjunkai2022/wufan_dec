package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class FightAppMessageBean {
    private List<CommonListDataBean> data;
    private String modeltype;

    public FightAppMessageBean() {
    }

    public List<CommonListDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<CommonListDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public FightAppMessageBean(String str, List<CommonListDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
