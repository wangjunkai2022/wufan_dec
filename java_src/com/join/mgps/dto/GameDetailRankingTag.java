package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameDetailRankingTag {
    private GameTagBean hot_game;
    private GameTagBean tag_game;

    /* loaded from: classes4.dex */
    public static class GameTagBean {
        private String id;
        private Integer position;
        private String sub_title;
        private String title;
        private String type;

        public String getId() {
            return this.id;
        }

        public Integer getPosition() {
            return this.position;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public String getType() {
            return this.type;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setPosition(Integer num) {
            this.position = num;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    public GameTagBean getHot_game() {
        return this.hot_game;
    }

    public GameTagBean getTag_game() {
        return this.tag_game;
    }

    public void setHot_game(GameTagBean gameTagBean) {
        this.hot_game = gameTagBean;
    }

    public void setTag_game(GameTagBean gameTagBean) {
        this.tag_game = gameTagBean;
    }
}
