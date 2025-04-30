package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorMessageBean {
    private List<SimulatorDataBean> data;
    private String modeltype;

    public SimulatorMessageBean() {
    }

    public List<SimulatorDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<SimulatorDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public SimulatorMessageBean(String str, List<SimulatorDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
