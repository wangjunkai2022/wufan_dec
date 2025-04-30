package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class PapayResult implements Serializable {
    public static final int PAYCANCLE = 3;
    public static final int PAYFAILED = 2;
    public static final int PAYSUCCESS = 1;
    public static final int PAYWHAITE = 4;
    private String gameid;
    private String message;
    private String payOrderId;
    private String payPabi;
    private String payProduct;
    private String payType;
    private int status;

    public String getGameid() {
        return this.gameid;
    }

    public String getMessage() {
        return this.message;
    }

    public String getPayOrderId() {
        return this.payOrderId;
    }

    public String getPayPabi() {
        return this.payPabi;
    }

    public String getPayProduct() {
        return this.payProduct;
    }

    public String getPayType() {
        return this.payType;
    }

    public int getStatus() {
        return this.status;
    }

    public void setGameid(String str) {
        this.gameid = str;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setPayOrderId(String str) {
        this.payOrderId = str;
    }

    public void setPayPabi(String str) {
        this.payPabi = str;
    }

    public void setPayProduct(String str) {
        this.payProduct = str;
    }

    public void setPayType(String str) {
        this.payType = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
