package com.heepay.plugin.domain;
/* loaded from: classes2.dex */
public class PayInitInfo {
    private String agentBillIdCache;
    private boolean isReCommit;
    private String payType;
    private int payUrlType;
    private int sdkVersion;

    public PayInitInfo() {
        this.sdkVersion = 10;
    }

    public PayInitInfo(String str, int i2, int i4) {
        this.sdkVersion = 10;
        this.payType = str;
        this.sdkVersion = i2;
        this.payUrlType = i4;
    }

    public String getAgentBillIdCache() {
        return this.agentBillIdCache;
    }

    public String getPayType() {
        return this.payType;
    }

    public int getPayUrlType() {
        return this.payUrlType;
    }

    public int getSdkVersion() {
        return this.sdkVersion;
    }

    public boolean isReCommit() {
        return this.isReCommit;
    }

    public void setAgentBillIdCache(String str) {
        this.agentBillIdCache = str;
    }

    public void setPayType(String str) {
        this.payType = str;
    }

    public void setPayUrlType(int i2) {
        this.payUrlType = i2;
    }

    public void setReCommit(boolean z3) {
        this.isReCommit = z3;
    }

    public void setSdkVersion(int i2) {
        this.sdkVersion = i2;
    }
}
