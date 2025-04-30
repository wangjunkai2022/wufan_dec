package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CollectionModuleMessageBean {
    private List<CollectionModuleDataBean> data;
    private String modeltype;

    public CollectionModuleMessageBean() {
    }

    public List<CollectionModuleDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<CollectionModuleDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public CollectionModuleMessageBean(String str, List<CollectionModuleDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
