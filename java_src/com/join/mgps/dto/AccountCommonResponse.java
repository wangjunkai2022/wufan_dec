package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AccountCommonResponse<E> {
    private E data;
    private int error;

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
}
