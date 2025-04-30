package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CategoryMessageBean {
    private List<CategoryDataBean> data;
    private String modeltype;

    public CategoryMessageBean() {
    }

    public List<CategoryDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<CategoryDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public CategoryMessageBean(String str, List<CategoryDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
