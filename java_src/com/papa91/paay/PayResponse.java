package com.papa91.paay;
/* loaded from: classes4.dex */
public class PayResponse {
    private PayResponseData data;
    private int error;

    public PayResponseData getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(PayResponseData payResponseData) {
        this.data = payResponseData;
    }

    public void setError(int i2) {
        this.error = i2;
    }
}
