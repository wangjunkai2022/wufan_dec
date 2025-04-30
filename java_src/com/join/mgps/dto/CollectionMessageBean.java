package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CollectionMessageBean {
    private List<CollectionDataBean> data;
    private String modeltype;

    public CollectionMessageBean() {
    }

    public List<CollectionDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<CollectionDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public CollectionMessageBean(String str, List<CollectionDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
