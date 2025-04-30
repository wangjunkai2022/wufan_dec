package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SearchResultData {
    private SearchResultAdinfo ad_info;
    private List<CollectionBeanSub> list;

    public SearchResultAdinfo getAd_info() {
        return this.ad_info;
    }

    public List<CollectionBeanSub> getList() {
        return this.list;
    }

    public void setAd_info(SearchResultAdinfo searchResultAdinfo) {
        this.ad_info = searchResultAdinfo;
    }

    public void setList(List<CollectionBeanSub> list) {
        this.list = list;
    }
}
