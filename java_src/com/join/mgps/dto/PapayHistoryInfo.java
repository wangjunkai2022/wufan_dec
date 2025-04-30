package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class PapayHistoryInfo implements Serializable {
    private String money;
    private String order_id;
    private String order_type;
    private String pay_time;
    private String pay_type;
    private String status;
    private String title;

    public String getMoney() {
        return this.money;
    }

    public String getOrder_id() {
        return this.order_id;
    }

    public String getOrder_type() {
        return this.order_type;
    }

    public String getPay_time() {
        return this.pay_time;
    }

    public String getPay_type() {
        return this.pay_type;
    }

    public String getStatus() {
        return this.status;
    }

    public String getTitle() {
        return this.title;
    }

    public void setMoney(String str) {
        this.money = str;
    }

    public void setOrder_id(String str) {
        this.order_id = str;
    }

    public void setOrder_type(String str) {
        this.order_type = str;
    }

    public void setPay_time(String str) {
        this.pay_time = str;
    }

    public void setPay_type(String str) {
        this.pay_type = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
