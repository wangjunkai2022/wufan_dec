package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class InformationDataBean {
    private List<InformationListDataBean> list;
    private List<InformationListDataBean> top;

    public InformationDataBean() {
    }

    public List<InformationListDataBean> getList() {
        return this.list;
    }

    public List<InformationListDataBean> getTop() {
        return this.top;
    }

    public void setList(List<InformationListDataBean> list) {
        this.list = list;
    }

    public void setTop(List<InformationListDataBean> list) {
        this.top = list;
    }

    public InformationDataBean(List<InformationListDataBean> list, List<InformationListDataBean> list2) {
        this.top = list;
        this.list = list2;
    }
}
