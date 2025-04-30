package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameFromPopoWinBeanV2 {
    private ResultDataBean data;
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

    /* loaded from: classes4.dex */
    public static class FamousBean {
        private String count;
        private String id;
        private String name;
        private String pic;
        private String title;
        private int uid;

        public String getCount() {
            return this.count;
        }

        public String getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public int getUid() {
            return this.uid;
        }

        public void setCount(String str) {
            this.count = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ResultDataBean {
        private List<FamousBean> famous_list;
        private List<DataBean> fav_list;

        public List<FamousBean> getFamous_list() {
            return this.famous_list;
        }

        public List<DataBean> getFav_list() {
            return this.fav_list;
        }

        public void setFamous_list(List<FamousBean> list) {
            this.famous_list = list;
        }

        public void setFav_list(List<DataBean> list) {
            this.fav_list = list;
        }
    }

    public ResultDataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(ResultDataBean resultDataBean) {
        this.data = resultDataBean;
    }

    public void setError(int i2) {
        this.error = i2;
    }
}
