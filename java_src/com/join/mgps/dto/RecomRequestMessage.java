package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RecomRequestMessage<E> extends BaseDto {
    private E args;
    private ExtBean ext;
    private String modeltype;

    public RecomRequestMessage(String str, E e4, ExtBean extBean) {
        this.modeltype = str;
        this.args = e4;
        this.ext = extBean;
    }

    public E getArgs() {
        return this.args;
    }

    public ExtBean getExt() {
        return this.ext;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setArgs(E e4) {
        this.args = e4;
    }

    public void setExt(ExtBean extBean) {
        this.ext = extBean;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public RecomRequestMessage(String str, E e4) {
        this.modeltype = str;
        this.args = e4;
    }

    public RecomRequestMessage(E e4) {
        this.args = e4;
    }
}
