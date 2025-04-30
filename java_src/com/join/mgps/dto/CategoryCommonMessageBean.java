package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CategoryCommonMessageBean {
    private CategoryCommonDataBean data;
    private String modeltype;

    public CategoryCommonMessageBean() {
    }

    public CategoryCommonDataBean getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(CategoryCommonDataBean categoryCommonDataBean) {
        this.data = categoryCommonDataBean;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public CategoryCommonMessageBean(String str, CategoryCommonDataBean categoryCommonDataBean) {
        this.modeltype = str;
        this.data = categoryCommonDataBean;
    }
}
