package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class WarIndexMessageMainBean<E> {
    private List<WarIndexDataBean> data;
    private String modeltype;

    public WarIndexMessageMainBean() {
    }

    public List<WarIndexDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<WarIndexDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public WarIndexMessageMainBean(String str, List<WarIndexDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
