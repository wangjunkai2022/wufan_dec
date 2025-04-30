package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ResultMessageBean<E> {
    private E data;
    private String modeltype;

    public ResultMessageBean() {
    }

    public E getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(E e4) {
        this.data = e4;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public ResultMessageBean(String str, E e4) {
        this.modeltype = str;
        this.data = e4;
    }
}
