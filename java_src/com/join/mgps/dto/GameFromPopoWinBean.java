package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameFromPopoWinBean {
    private List<DataBean> data;
    private int error;

    /* loaded from: classes4.dex */
    public static class DataBean {
        private String add_time;
        private String book_count;
        private String current_game_state;
        private String game_count;
        private List<GameListBean> game_list;
        private String id;
        private String nick_name;
        private String portrait;
        private String title;
        private int uid;

        /* loaded from: classes4.dex */
        public static class GameListBean {
            private String game_ico;
            private String game_name;

            public String getGame_ico() {
                return this.game_ico;
            }

            public String getGame_name() {
                return this.game_name;
            }

            public void setGame_ico(String str) {
                this.game_ico = str;
            }

            public void setGame_name(String str) {
                this.game_name = str;
            }
        }

        public String getAdd_time() {
            return this.add_time;
        }

        public String getBook_count() {
            return this.book_count;
        }

        public String getCurrent_game_state() {
            return this.current_game_state;
        }

        public String getGame_count() {
            return this.game_count;
        }

        public List<GameListBean> getGame_list() {
            return this.game_list;
        }

        public String getId() {
            return this.id;
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

        public int getUid() {
            return this.uid;
        }

        public void setAdd_time(String str) {
            this.add_time = str;
        }

        public void setBook_count(String str) {
            this.book_count = str;
        }

        public void setCurrent_game_state(String str) {
            this.current_game_state = str;
        }

        public void setGame_count(String str) {
            this.game_count = str;
        }

        public void setGame_list(List<GameListBean> list) {
            this.game_list = list;
        }

        public void setId(String str) {
            this.id = str;
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

        public void setUid(int i2) {
            this.uid = i2;
        }
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setError(int i2) {
        this.error = i2;
    }
}
