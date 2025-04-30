package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SearchGameListBean {
    private CommonGameInfoBean ad_info;
    private String area_name;
    private String keyword;
    private List<CommonGameInfoBean> list;
    private List<CommonGameInfoBean> recommend_list;

    public CommonGameInfoBean getAd_info() {
        return this.ad_info;
    }

    public String getArea_name() {
        return this.area_name;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public List<CommonGameInfoBean> getList() {
        return this.list;
    }

    public List<CommonGameInfoBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setAd_info(CommonGameInfoBean commonGameInfoBean) {
        this.ad_info = commonGameInfoBean;
    }

    public void setArea_name(String str) {
        this.area_name = str;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setList(List<CommonGameInfoBean> list) {
        this.list = list;
    }

    public void setRecommend_list(List<CommonGameInfoBean> list) {
        this.recommend_list = list;
    }
}
