package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ExclusiveTagMessageBean {
    private List<ExclusiveTagBean> data;
    private String modeltype;

    public ExclusiveTagMessageBean() {
    }

    public List<ExclusiveTagBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<ExclusiveTagBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public ExclusiveTagMessageBean(String str, List<ExclusiveTagBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
