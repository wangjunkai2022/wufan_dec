package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommitMessageMainBean<E> {
    private CommitContextDataBean data;
    private String modeltype;

    public CommitMessageMainBean() {
    }

    public CommitContextDataBean getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(CommitContextDataBean commitContextDataBean) {
        this.data = commitContextDataBean;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public CommitMessageMainBean(String str, CommitContextDataBean commitContextDataBean) {
        this.modeltype = str;
        this.data = commitContextDataBean;
    }
}
