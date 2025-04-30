package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class RankingItemDataBean {
    private RecomDatabean banner;
    private List<CollectionBeanSub> list;

    public RecomDatabean getBanner() {
        return this.banner;
    }

    public List<CollectionBeanSub> getList() {
        return this.list;
    }

    public void setBanner(RecomDatabean recomDatabean) {
        this.banner = recomDatabean;
    }

    public void setList(List<CollectionBeanSub> list) {
        this.list = list;
    }
}
