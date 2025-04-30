package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class PapayResultData {
    private PayAdinfo ad;
    private PayAdinfo help;
    private List<PapayHistoryInfo> orders;
    private PapayInfo wallet;

    public PayAdinfo getAd() {
        return this.ad;
    }

    public PayAdinfo getHelp() {
        return this.help;
    }

    public List<PapayHistoryInfo> getOrders() {
        return this.orders;
    }

    public PapayInfo getWallet() {
        return this.wallet;
    }

    public void setAd(PayAdinfo payAdinfo) {
        this.ad = payAdinfo;
    }

    public void setHelp(PayAdinfo payAdinfo) {
        this.help = payAdinfo;
    }

    public void setOrders(List<PapayHistoryInfo> list) {
        this.orders = list;
    }

    public void setWallet(PapayInfo papayInfo) {
        this.wallet = papayInfo;
    }
}
