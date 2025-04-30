package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorDataBean {
    private SimulatorMainDataBean main;
    private List<SimulatorSubDataBean> sub;

    public SimulatorDataBean() {
    }

    public SimulatorMainDataBean getMain() {
        return this.main;
    }

    public List<SimulatorSubDataBean> getSub() {
        return this.sub;
    }

    public void setMain(SimulatorMainDataBean simulatorMainDataBean) {
        this.main = simulatorMainDataBean;
    }

    public void setSub(List<SimulatorSubDataBean> list) {
        this.sub = list;
    }

    public SimulatorDataBean(SimulatorMainDataBean simulatorMainDataBean, List<SimulatorSubDataBean> list) {
        this.main = simulatorMainDataBean;
        this.sub = list;
    }
}
