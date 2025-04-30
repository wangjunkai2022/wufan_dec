package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameRankingBean {
    private List<CollectionBeanSub> free_play_ranking;
    private List<CollectionBeanSub> online_ranking;
    private List<String> ranking_title;
    private List<CollectionBeanSub> simulator_ranking;
    private List<CollectionBeanSub> single_ranking;

    public List<CollectionBeanSub> getFree_play_ranking() {
        return this.free_play_ranking;
    }

    public List<CollectionBeanSub> getOnline_ranking() {
        return this.online_ranking;
    }

    public List<String> getRanking_title() {
        return this.ranking_title;
    }

    public List<CollectionBeanSub> getSimulator_ranking() {
        return this.simulator_ranking;
    }

    public List<CollectionBeanSub> getSingle_ranking() {
        return this.single_ranking;
    }

    public void setFree_play_ranking(List<CollectionBeanSub> list) {
        this.free_play_ranking = list;
    }

    public void setOnline_ranking(List<CollectionBeanSub> list) {
        this.online_ranking = list;
    }

    public void setRanking_title(List<String> list) {
        this.ranking_title = list;
    }

    public void setSimulator_ranking(List<CollectionBeanSub> list) {
        this.simulator_ranking = list;
    }

    public void setSingle_ranking(List<CollectionBeanSub> list) {
        this.single_ranking = list;
    }
}
