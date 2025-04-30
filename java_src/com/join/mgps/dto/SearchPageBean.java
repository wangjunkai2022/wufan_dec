package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SearchPageBean {
    private SearchResultAdinfo ad_info;
    List<FavoriteBean> game_favorites_list;
    SearchGameListBean game_list;
    List<TagInfoBean> tag_info;
    List<GameInfoBean> today_hot_search;
    boolean val;

    public SearchResultAdinfo getAd_info() {
        return this.ad_info;
    }

    public List<FavoriteBean> getGame_favorites_list() {
        return this.game_favorites_list;
    }

    public SearchGameListBean getGame_list() {
        return this.game_list;
    }

    public List<TagInfoBean> getTag_info() {
        return this.tag_info;
    }

    public List<GameInfoBean> getToday_hot_search() {
        return this.today_hot_search;
    }

    public boolean isVal() {
        return this.val;
    }

    public void setAd_info(SearchResultAdinfo searchResultAdinfo) {
        this.ad_info = searchResultAdinfo;
    }

    public void setGame_favorites_list(List<FavoriteBean> list) {
        this.game_favorites_list = list;
    }

    public void setGame_list(SearchGameListBean searchGameListBean) {
        this.game_list = searchGameListBean;
    }

    public void setTag_info(List<TagInfoBean> list) {
        this.tag_info = list;
    }

    public void setToday_hot_search(List<GameInfoBean> list) {
        this.today_hot_search = list;
    }

    public void setVal(boolean z3) {
        this.val = z3;
    }
}
