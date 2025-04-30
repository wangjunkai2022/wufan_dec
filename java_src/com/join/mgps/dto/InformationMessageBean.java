package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class InformationMessageBean {
    private List<InformationListDataBean> data;
    private String modeltype;

    public InformationMessageBean() {
    }

    public List<InformationListDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<InformationListDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public InformationMessageBean(String str, List<InformationListDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
