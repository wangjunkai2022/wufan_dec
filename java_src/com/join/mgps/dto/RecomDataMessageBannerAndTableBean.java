package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class RecomDataMessageBannerAndTableBean {
    private List<RecomDataBannerAndTablebean> data;
    private String modeltype;

    public RecomDataMessageBannerAndTableBean() {
    }

    public List<RecomDataBannerAndTablebean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<RecomDataBannerAndTablebean> list) {
        this.data = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public RecomDataMessageBannerAndTableBean(String str, List<RecomDataBannerAndTablebean> list) {
        this.modeltype = str;
        this.data = list;
    }
}
