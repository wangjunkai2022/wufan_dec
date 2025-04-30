package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GiftPackageInfoMessageBean {
    private GiftPackageDataInfoBean data;
    private String modeltype;

    public GiftPackageInfoMessageBean() {
    }

    public GiftPackageDataInfoBean getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        this.data = giftPackageDataInfoBean;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public GiftPackageInfoMessageBean(String str, GiftPackageDataInfoBean giftPackageDataInfoBean) {
        this.modeltype = str;
        this.data = giftPackageDataInfoBean;
    }
}
