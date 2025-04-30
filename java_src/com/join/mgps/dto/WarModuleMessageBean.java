package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class WarModuleMessageBean {
    private List<WarModuleDataBean> data;
    private String modeltype;

    public WarModuleMessageBean() {
    }

    public List<WarModuleDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<WarModuleDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public WarModuleMessageBean(String str, List<WarModuleDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
