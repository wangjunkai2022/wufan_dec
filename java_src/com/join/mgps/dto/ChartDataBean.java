package com.join.mgps.dto;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class ChartDataBean {
    private ChartMainDataBean main;
    private ArrayList more;
    private String position;
    private List<ChartSubDataBean> sub;

    public ChartDataBean() {
    }

    public ChartMainDataBean getMain() {
        return this.main;
    }

    public ArrayList getMore() {
        return this.more;
    }

    public String getPosition() {
        return this.position;
    }

    public List<ChartSubDataBean> getSub() {
        return this.sub;
    }

    public void setMain(ChartMainDataBean chartMainDataBean) {
        this.main = chartMainDataBean;
    }

    public void setMore(ArrayList arrayList) {
        this.more = arrayList;
    }

    public void setPosition(String str) {
        this.position = str;
    }

    public void setSub(List<ChartSubDataBean> list) {
        this.sub = list;
    }

    public ChartDataBean(ChartMainDataBean chartMainDataBean, ArrayList arrayList, List<ChartSubDataBean> list, String str) {
        this.main = chartMainDataBean;
        this.more = arrayList;
        this.sub = list;
        this.position = str;
    }
}
