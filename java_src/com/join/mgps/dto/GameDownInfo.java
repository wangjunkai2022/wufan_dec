package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameDownInfo {
    private List<Addr1Bean> down_url;
    private String game_id;
    private int lv_type;
    private String sub_title;
    private String title;

    /* loaded from: classes4.dex */
    public static class Addr1Bean {
        private String title;
        private String url;

        public String getTitle() {
            return this.title;
        }

        public String getUrl() {
            return this.url;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public List<Addr1Bean> getDown_url() {
        return this.down_url;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getLv_type() {
        return this.lv_type;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDown_url(List<Addr1Bean> list) {
        this.down_url = list;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setLv_type(int i2) {
        this.lv_type = i2;
    }

    public void setSub_title(String str) {
        this.sub_title = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
