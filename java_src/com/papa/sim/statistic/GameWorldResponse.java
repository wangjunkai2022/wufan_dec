package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class GameWorldResponse<E> {
    private E data;
    private int error;

    public GameWorldResponse() {
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(E e4) {
        this.data = e4;
    }

    public void setError(int i2) {
        this.error = i2;
    }

    public GameWorldResponse(int i2, E e4) {
        this.error = i2;
        this.data = e4;
    }
}
