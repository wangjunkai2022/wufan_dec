package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorListMessageBean {
    private List<SimulatorListDataBean> data;
    private String modeltype;

    public SimulatorListMessageBean() {
    }

    public List<SimulatorListDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<SimulatorListDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public SimulatorListMessageBean(String str, List<SimulatorListDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
