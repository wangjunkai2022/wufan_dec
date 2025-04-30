package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class CommonRequestMessage<E> {
    private E args;
    private String modeltype;

    public CommonRequestMessage(String str, E e4) {
        this.modeltype = str;
        this.args = e4;
    }

    public E getArgs() {
        return this.args;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setArgs(E e4) {
        this.args = e4;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }
}
