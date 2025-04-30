package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class WufunMarketHomeBean {
    private List<BannerBean> banner;
    private List<GameListAndCollectionInfo> collection_recommend;
    private RecomDatabean editors_recommend;
    private List<BannerBean> fast_entrance;
    private List<RecomDatabean> game_broadcast;
    private List<RecomDatabean> lately_hot;
    private List<RecomDatabean> lately_release;

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public List<GameListAndCollectionInfo> getCollection_recommend() {
        return this.collection_recommend;
    }

    public RecomDatabean getEditors_recommend() {
        return this.editors_recommend;
    }

    public List<BannerBean> getFast_entrance() {
        return this.fast_entrance;
    }

    public List<RecomDatabean> getGame_broadcast() {
        return this.game_broadcast;
    }

    public List<RecomDatabean> getLately_hot() {
        return this.lately_hot;
    }

    public List<RecomDatabean> getLately_release() {
        return this.lately_release;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    public void setCollection_recommend(List<GameListAndCollectionInfo> list) {
        this.collection_recommend = list;
    }

    public void setEditors_recommend(RecomDatabean recomDatabean) {
        this.editors_recommend = recomDatabean;
    }

    public void setFast_entrance(List<BannerBean> list) {
        this.fast_entrance = list;
    }

    public void setGame_broadcast(List<RecomDatabean> list) {
        this.game_broadcast = list;
    }

    public void setLately_hot(List<RecomDatabean> list) {
        this.lately_hot = list;
    }

    public void setLately_release(List<RecomDatabean> list) {
        this.lately_release = list;
    }
}
