package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class UploadResultMainBean<E> {
    private AccountTokenSuccess data;
    private int error;

    public UploadResultMainBean() {
    }

    public AccountTokenSuccess getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(AccountTokenSuccess accountTokenSuccess) {
        this.data = accountTokenSuccess;
    }

    public void setError(int i2) {
        this.error = i2;
    }

    public UploadResultMainBean(int i2, AccountTokenSuccess accountTokenSuccess) {
        this.error = i2;
        this.data = accountTokenSuccess;
    }
}
