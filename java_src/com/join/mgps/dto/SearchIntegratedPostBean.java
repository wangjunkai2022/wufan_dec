package com.join.mgps.dto;

import com.join.mgps.dto.ForumBean;
import java.util.List;
/* loaded from: classes4.dex */
public class SearchIntegratedPostBean {
    private List<ForumBean.ForumSearchQueryBean> list;
    private List<ForumBean.ForumSearchQueryBean> recommend_list;
    private TopArea top_area;

    /* loaded from: classes4.dex */
    public static class TopArea {
        private String description;
        private int fid;
        private String icon_src;
        private String name;
        private int posts;
        private int today_posts;
        private int users;

        public String getDescription() {
            return this.description;
        }

        public int getFid() {
            return this.fid;
        }

        public String getIcon_src() {
            return this.icon_src;
        }

        public String getName() {
            return this.name;
        }

        public int getPosts() {
            return this.posts;
        }

        public int getToday_posts() {
            return this.today_posts;
        }

        public int getUsers() {
            return this.users;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setFid(int i2) {
            this.fid = i2;
        }

        public void setIcon_src(String str) {
            this.icon_src = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPosts(int i2) {
            this.posts = i2;
        }

        public void setToday_posts(int i2) {
            this.today_posts = i2;
        }

        public void setUsers(int i2) {
            this.users = i2;
        }
    }

    public List<ForumBean.ForumSearchQueryBean> getList() {
        return this.list;
    }

    public List<ForumBean.ForumSearchQueryBean> getRecommend_list() {
        return this.recommend_list;
    }

    public TopArea getTop_area() {
        return this.top_area;
    }

    public void setList(List<ForumBean.ForumSearchQueryBean> list) {
        this.list = list;
    }

    public void setRecommend_list(List<ForumBean.ForumSearchQueryBean> list) {
        this.recommend_list = list;
    }

    public void setTop_area(TopArea topArea) {
        this.top_area = topArea;
    }
}
