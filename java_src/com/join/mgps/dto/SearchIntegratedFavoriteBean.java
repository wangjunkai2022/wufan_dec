package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SearchIntegratedFavoriteBean {
    private List<FavoriteBean> list;
    private List<FavoriteBean> recommend_list;

    /* loaded from: classes4.dex */
    public static class FavoriteBean {
        private String auth_name;
        private int game_count;
        private int id;
        private String pic;
        private boolean showDivider = true;
        private String title;
        private String uid;

        public String getAuth_name() {
            return this.auth_name;
        }

        public int getGame_count() {
            return this.game_count;
        }

        public int getId() {
            return this.id;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUid() {
            return this.uid;
        }

        public boolean isShowDivider() {
            return this.showDivider;
        }

        public void setAuth_name(String str) {
            this.auth_name = str;
        }

        public void setGame_count(int i2) {
            this.game_count = i2;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setShowDivider(boolean z3) {
            this.showDivider = z3;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUid(String str) {
            this.uid = str;
        }
    }

    public List<FavoriteBean> getList() {
        return this.list;
    }

    public List<FavoriteBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setList(List<FavoriteBean> list) {
        this.list = list;
    }

    public void setRecommend_list(List<FavoriteBean> list) {
        this.recommend_list = list;
    }
}
