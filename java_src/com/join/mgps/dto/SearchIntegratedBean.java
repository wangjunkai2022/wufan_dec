package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class SearchIntegratedBean {
    private SearchIntegratedFavoriteBean game_favorite_list;
    private SearchIntegratedGameBean game_list;
    private String keyword;
    private SearchIntegratedPostBean posts_list;

    public SearchIntegratedFavoriteBean getGame_favorite_list() {
        return this.game_favorite_list;
    }

    public SearchIntegratedGameBean getGame_list() {
        return this.game_list;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public SearchIntegratedPostBean getPosts_list() {
        return this.posts_list;
    }

    public void setGame_favorite_list(SearchIntegratedFavoriteBean searchIntegratedFavoriteBean) {
        this.game_favorite_list = searchIntegratedFavoriteBean;
    }

    public void setGame_list(SearchIntegratedGameBean searchIntegratedGameBean) {
        this.game_list = searchIntegratedGameBean;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setPosts_list(SearchIntegratedPostBean searchIntegratedPostBean) {
        this.posts_list = searchIntegratedPostBean;
    }
}
