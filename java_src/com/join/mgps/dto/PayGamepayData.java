package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PayGamepayData {
    private String amount;
    private String callbackURL;
    private String orderId;
    private int payMode;
    private String sdkAppKey;
    private String sdkPayURL;
    private String webPaymentURL;

    public String getAmount() {
        return this.amount;
    }

    public String getCallbackURL() {
        return this.callbackURL;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public int getPayMode() {
        return this.payMode;
    }

    public String getSdkAppKey() {
        return this.sdkAppKey;
    }

    public String getSdkPayURL() {
        return this.sdkPayURL;
    }

    public String getWebPaymentURL() {
        return this.webPaymentURL;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setCallbackURL(String str) {
        this.callbackURL = str;
    }

    public void setOrderId(String str) {
        this.orderId = str;
    }

    public void setPayMode(int i2) {
        this.payMode = i2;
    }

    public void setSdkAppKey(String str) {
        this.sdkAppKey = str;
    }

    public void setSdkPayURL(String str) {
        this.sdkPayURL = str;
    }

    public void setWebPaymentURL(String str) {
        this.webPaymentURL = str;
    }
}
