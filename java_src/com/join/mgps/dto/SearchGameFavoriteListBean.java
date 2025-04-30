package com.join.mgps.dto;

import com.join.mgps.dto.SearchIntegratedFavoriteBean;
import java.util.List;
/* loaded from: classes4.dex */
public class SearchGameFavoriteListBean {
    private String keyword;
    private List<SearchIntegratedFavoriteBean.FavoriteBean> list;
    private List<SearchIntegratedFavoriteBean.FavoriteBean> recommend_list;

    public String getKeyword() {
        return this.keyword;
    }

    public List<SearchIntegratedFavoriteBean.FavoriteBean> getList() {
        return this.list;
    }

    public List<SearchIntegratedFavoriteBean.FavoriteBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setList(List<SearchIntegratedFavoriteBean.FavoriteBean> list) {
        this.list = list;
    }

    public void setRecommend_list(List<SearchIntegratedFavoriteBean.FavoriteBean> list) {
        this.recommend_list = list;
    }
}
