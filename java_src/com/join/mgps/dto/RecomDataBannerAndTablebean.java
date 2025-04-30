package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class RecomDataBannerAndTablebean {
    private List<BannerBean> banner;
    private List<RecomDatabean> content;
    private String error;
    private List<BannerBean> fast;

    public RecomDataBannerAndTablebean(List<BannerBean> list, List<BannerBean> list2, List<RecomDatabean> list3, String str) {
        this.fast = list;
        this.banner = list2;
        this.content = list3;
        this.error = str;
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public List<RecomDatabean> getContent() {
        return this.content;
    }

    public String getError() {
        return this.error;
    }

    public List<BannerBean> getFast() {
        return this.fast;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    public void setContent(List<RecomDatabean> list) {
        this.content = list;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setFast(List<BannerBean> list) {
        this.fast = list;
    }

    public RecomDataBannerAndTablebean() {
    }
}
