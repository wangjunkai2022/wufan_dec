package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class CollectionDataBeanInfo implements Serializable {
    private BreakBeanMain main;
    private List<CollectionBeanSub> sub;

    public CollectionDataBeanInfo() {
    }

    public BreakBeanMain getMain() {
        return this.main;
    }

    public List<CollectionBeanSub> getSub() {
        return this.sub;
    }

    public void setMain(BreakBeanMain breakBeanMain) {
        this.main = breakBeanMain;
    }

    public void setSub(List<CollectionBeanSub> list) {
        this.sub = list;
    }

    public CollectionDataBeanInfo(BreakBeanMain breakBeanMain, List<CollectionBeanSub> list) {
        this.main = breakBeanMain;
        this.sub = list;
    }
}
