package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class OemResponse<E> {
    private E data;
    private int error;

    public OemResponse() {
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

    public OemResponse(int i2, E e4) {
        this.error = i2;
        this.data = e4;
    }
}
