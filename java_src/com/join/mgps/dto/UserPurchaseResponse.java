package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class UserPurchaseResponse {
    private UserPurchaseList data;
    private int error;

    public UserPurchaseList getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(UserPurchaseList userPurchaseList) {
        this.data = userPurchaseList;
    }

    public void setError(int i2) {
        this.error = i2;
    }
}
