package com.join.mgps.activity.search;

import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.SearchResultAdinfo;
import java.util.List;
/* loaded from: classes3.dex */
public class SearchIndexData {
    private SearchResultAdinfo ad_info;
    private List<GameInfoBean> guess_you_like_info;
    private List<GameInfoBean> hot_search_ranking;
    private List<GameInfoBean> net_search_ranking;
    private String search_key;
    private List<GameInfoBean> simulator_search_ranking;
    private List<GameInfoBean> standalone_search_ranking;

    public SearchResultAdinfo getAd_info() {
        return this.ad_info;
    }

    public List<GameInfoBean> getGuess_you_like_info() {
        return this.guess_you_like_info;
    }

    public List<GameInfoBean> getHot_search_ranking() {
        return this.hot_search_ranking;
    }

    public List<GameInfoBean> getNet_search_ranking() {
        return this.net_search_ranking;
    }

    public String getSearch_key() {
        return this.search_key;
    }

    public List<GameInfoBean> getSimulator_search_ranking() {
        return this.simulator_search_ranking;
    }

    public List<GameInfoBean> getStandalone_search_ranking() {
        return this.standalone_search_ranking;
    }

    public void setAd_info(SearchResultAdinfo searchResultAdinfo) {
        this.ad_info = searchResultAdinfo;
    }

    public void setGuess_you_like_info(List<GameInfoBean> list) {
        this.guess_you_like_info = list;
    }

    public void setHot_search_ranking(List<GameInfoBean> list) {
        this.hot_search_ranking = list;
    }

    public void setNet_search_ranking(List<GameInfoBean> list) {
        this.net_search_ranking = list;
    }

    public void setSearch_key(String str) {
        this.search_key = str;
    }

    public void setSimulator_search_ranking(List<GameInfoBean> list) {
        this.simulator_search_ranking = list;
    }

    public void setStandalone_search_ranking(List<GameInfoBean> list) {
        this.standalone_search_ranking = list;
    }
}
