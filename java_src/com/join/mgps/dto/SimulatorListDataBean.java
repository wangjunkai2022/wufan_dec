package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorListDataBean {
    private SimulatorListMainDataBean main;
    private List<Object> more;
    private List<SubAppDataBean> sub;

    public SimulatorListDataBean() {
    }

    public SimulatorListMainDataBean getMain() {
        return this.main;
    }

    public List<Object> getMore() {
        return this.more;
    }

    public List<SubAppDataBean> getSub() {
        return this.sub;
    }

    public void setMain(SimulatorListMainDataBean simulatorListMainDataBean) {
        this.main = simulatorListMainDataBean;
    }

    public void setMore(List<Object> list) {
        this.more = list;
    }

    public void setSub(List<SubAppDataBean> list) {
        this.sub = list;
    }

    public SimulatorListDataBean(SimulatorListMainDataBean simulatorListMainDataBean, List<Object> list, List<SubAppDataBean> list2) {
        this.main = simulatorListMainDataBean;
        this.more = list;
        this.sub = list2;
    }
}
