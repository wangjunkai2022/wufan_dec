package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ChartMessageBean {
    private List<ChartDataBean> data;
    private String modeltype;

    public ChartMessageBean() {
    }

    public List<ChartDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<ChartDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public ChartMessageBean(String str, List<ChartDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
