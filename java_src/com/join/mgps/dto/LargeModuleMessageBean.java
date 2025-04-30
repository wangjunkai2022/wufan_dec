package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class LargeModuleMessageBean {
    private List<LargeModuleDataBean> data;
    private String modeltype;

    public LargeModuleMessageBean() {
    }

    public List<LargeModuleDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<LargeModuleDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public LargeModuleMessageBean(String str, List<LargeModuleDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
