package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class FightDataBean implements Serializable {
    private FightMainDataBean main;
    private List<FightSubDataBean> sub;

    public FightDataBean() {
    }

    public FightMainDataBean getMain() {
        return this.main;
    }

    public List<FightSubDataBean> getSub() {
        return this.sub;
    }

    public void setMain(FightMainDataBean fightMainDataBean) {
        this.main = fightMainDataBean;
    }

    public void setSub(List<FightSubDataBean> list) {
        this.sub = list;
    }

    public FightDataBean(FightMainDataBean fightMainDataBean, List<FightSubDataBean> list) {
        this.main = fightMainDataBean;
        this.sub = list;
    }
}
