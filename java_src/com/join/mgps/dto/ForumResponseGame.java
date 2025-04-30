package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ForumResponseGame {
    private DataBean data;
    private int error;

    /* loaded from: classes4.dex */
    public static class DataBean {
        private Datadetails details;
        private List<GameListItemBean> game_list;

        public Datadetails getDetails() {
            return this.details;
        }

        public List<GameListItemBean> getGame_list() {
            return this.game_list;
        }

        public void setDetails(Datadetails datadetails) {
            this.details = datadetails;
        }

        public void setGame_list(List<GameListItemBean> list) {
            this.game_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class Datadetails {
        private String add_time;
        private String book_count;
        private String book_state;
        private String game_count;
        private String id;
        private String is_self;
        private String nick_name;
        private String portrait;
        private String title;
        private int tv_btn = 1;
        private int uid;

        public String getAdd_time() {
            return this.add_time;
        }

        public String getBook_count() {
            return this.book_count;
        }

        public String getBook_state() {
            return this.book_state;
        }

        public String getGame_count() {
            return this.game_count;
        }

        public String getId() {
            return this.id;
        }

        public String getIs_self() {
            return this.is_self;
        }

        public String getNick_name() {
            return this.nick_name;
        }

        public String getPortrait() {
            return this.portrait;
        }

        public String getTitle() {
            return this.title;
        }

        public int getTv_btn() {
            return this.tv_btn;
        }

        public int getUid() {
            return this.uid;
        }

        public void setAdd_time(String str) {
            this.add_time = str;
        }

        public void setBook_count(String str) {
            this.book_count = str;
        }

        public void setBook_state(String str) {
            this.book_state = str;
        }

        public void setGame_count(String str) {
            this.game_count = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setIs_self(String str) {
            this.is_self = str;
        }

        public void setNick_name(String str) {
            this.nick_name = str;
        }

        public void setPortrait(String str) {
            this.portrait = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTv_btn(int i2) {
            this.tv_btn = i2;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setError(int i2) {
        this.error = i2;
    }
}
