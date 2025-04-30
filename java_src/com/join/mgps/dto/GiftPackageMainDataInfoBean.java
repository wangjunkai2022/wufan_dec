package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GiftPackageMainDataInfoBean implements Serializable {
    private List<GiftPackageDataInfoBean> recommend;
    private List<GiftPackageDataInfoBean> user;

    public GiftPackageMainDataInfoBean() {
    }

    public List<GiftPackageDataInfoBean> getRecommend() {
        return this.recommend;
    }

    public List<GiftPackageDataInfoBean> getUser() {
        return this.user;
    }

    public void setRecommend(List<GiftPackageDataInfoBean> list) {
        this.recommend = list;
    }

    public void setUser(List<GiftPackageDataInfoBean> list) {
        this.user = list;
    }

    public GiftPackageMainDataInfoBean(List<GiftPackageDataInfoBean> list, List<GiftPackageDataInfoBean> list2) {
        this.user = list;
        this.recommend = list2;
    }
}
