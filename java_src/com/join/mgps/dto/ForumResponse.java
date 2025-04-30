package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ForumResponse<E> {
    private E data;
    private int error;
    private String error_message;

    public ForumResponse() {
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public String getError_message() {
        return this.error_message;
    }

    public void setData(E e4) {
        this.data = e4;
    }

    public void setError(int i2) {
        this.error = i2;
    }

    public void setError_message(String str) {
        this.error_message = str;
    }

    public ForumResponse(int i2, E e4) {
        this.error = i2;
        this.data = e4;
    }
}
