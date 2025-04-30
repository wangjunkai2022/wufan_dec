package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ResultResMainBean<E> {
    private int code;
    private E data;
    private int error;
    private String message;

    public int getCode() {
        return this.code;
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(E e4) {
        this.data = e4;
    }

    public void setError(int i2) {
        this.error = i2;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
