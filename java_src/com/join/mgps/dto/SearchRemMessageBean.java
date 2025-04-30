package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SearchRemMessageBean {
    private List<SearchRemDataBean> data;
    private String modeltype;

    public SearchRemMessageBean() {
    }

    public List<SearchRemDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<SearchRemDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public SearchRemMessageBean(String str, List<SearchRemDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
