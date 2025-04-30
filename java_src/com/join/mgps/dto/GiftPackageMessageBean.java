package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GiftPackageMessageBean {
    private GiftPackageMainDataInfoBean data;
    private String modeltype;

    public GiftPackageMessageBean() {
    }

    public GiftPackageMainDataInfoBean getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(GiftPackageMainDataInfoBean giftPackageMainDataInfoBean) {
        this.data = giftPackageMainDataInfoBean;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public GiftPackageMessageBean(String str, GiftPackageMainDataInfoBean giftPackageMainDataInfoBean) {
        this.modeltype = str;
        this.data = giftPackageMainDataInfoBean;
    }
}
