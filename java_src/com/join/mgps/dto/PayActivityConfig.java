package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PayActivityConfig {
    private PayActivityResult config;

    public PayActivityConfig() {
    }

    public PayActivityResult getConfig() {
        return this.config;
    }

    public void setConfig(PayActivityResult payActivityResult) {
        this.config = payActivityResult;
    }

    public String toString() {
        return "PayActivityConfig{config=" + this.config + '}';
    }

    public PayActivityConfig(PayActivityResult payActivityResult) {
        this.config = payActivityResult;
    }
}
