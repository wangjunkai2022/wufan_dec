package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class DiscoverListData<T> {
    private List<T> news_list;
    private List<DIscoverTypeBean> type_list;

    public List<T> getNews_list() {
        return this.news_list;
    }

    public List<DIscoverTypeBean> getType_list() {
        return this.type_list;
    }

    public void setNews_list(List<T> list) {
        this.news_list = list;
    }

    public void setType_list(List<DIscoverTypeBean> list) {
        this.type_list = list;
    }
}
