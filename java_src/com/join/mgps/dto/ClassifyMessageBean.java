package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ClassifyMessageBean {
    private List<ClassifyCommonDataBean> data;
    private String modeltype;

    public ClassifyMessageBean() {
    }

    public List<ClassifyCommonDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<ClassifyCommonDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public ClassifyMessageBean(String str, List<ClassifyCommonDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
