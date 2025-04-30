package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GiftPackageOperationMessageBean {
    private List<GiftPackageDataOperationBean> data;
    private String modeltype;

    public GiftPackageOperationMessageBean() {
    }

    public List<GiftPackageDataOperationBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<GiftPackageDataOperationBean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public GiftPackageOperationMessageBean(String str, List<GiftPackageDataOperationBean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
