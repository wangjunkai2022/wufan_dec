package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class WarModuleDataBean implements Serializable {
    private WarModuleMainDataBean main;
    private List<CollectionBeanSub> sub;

    public WarModuleDataBean() {
    }

    public WarModuleMainDataBean getMain() {
        return this.main;
    }

    public List<CollectionBeanSub> getSub() {
        return this.sub;
    }

    public void setMain(WarModuleMainDataBean warModuleMainDataBean) {
        this.main = warModuleMainDataBean;
    }

    public void setSub(List<CollectionBeanSub> list) {
        this.sub = list;
    }

    public WarModuleDataBean(WarModuleMainDataBean warModuleMainDataBean, List<CollectionBeanSub> list) {
        this.main = warModuleMainDataBean;
        this.sub = list;
    }
}
