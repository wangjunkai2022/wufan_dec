package com.join.mgps.dto;

import com.join.mgps.dto.ForumBean;
import java.util.List;
/* loaded from: classes4.dex */
public class SearchPostsBean {
    private String keyword;
    private SearchIntegratedPostBean posts_list;
    private List<ForumBean.ForumSearchQueryBean> recommend_list;

    public String getKeyword() {
        return this.keyword;
    }

    public SearchIntegratedPostBean getPosts_list() {
        return this.posts_list;
    }

    public List<ForumBean.ForumSearchQueryBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setPosts_list(SearchIntegratedPostBean searchIntegratedPostBean) {
        this.posts_list = searchIntegratedPostBean;
    }

    public void setRecommend_list(List<ForumBean.ForumSearchQueryBean> list) {
        this.recommend_list = list;
    }
}
