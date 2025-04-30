package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CommitMessageBean {
    private List<CommitDataBean> data;
    private String modeltype;

    public CommitMessageBean() {
    }

    public List<CommitDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<CommitDataBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public CommitMessageBean(String str, List<CommitDataBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
