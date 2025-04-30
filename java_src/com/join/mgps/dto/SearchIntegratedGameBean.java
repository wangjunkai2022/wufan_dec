package com.join.mgps.dto;

import com.join.mgps.business.CollectionBeanSubBusiness;
import java.util.List;
/* loaded from: classes4.dex */
public class SearchIntegratedGameBean {
    private SearchResultAdinfo ad_info;
    private List<CollectionBeanSubBusiness> list;
    private List<CollectionBeanSubBusiness> recommend_list;

    public SearchResultAdinfo getAd_info() {
        return this.ad_info;
    }

    public List<CollectionBeanSubBusiness> getList() {
        return this.list;
    }

    public List<CollectionBeanSubBusiness> getRecommend_list() {
        return this.recommend_list;
    }

    public void setAd_info(SearchResultAdinfo searchResultAdinfo) {
        this.ad_info = searchResultAdinfo;
    }

    public void setList(List<CollectionBeanSubBusiness> list) {
        this.list = list;
    }

    public void setRecommend_list(List<CollectionBeanSubBusiness> list) {
        this.recommend_list = list;
    }
}
