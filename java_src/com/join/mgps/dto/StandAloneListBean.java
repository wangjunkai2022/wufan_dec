package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class StandAloneListBean {
    private List<AppBean> game_list;
    private List<ListBean> list;
    private String title;
    private String type;

    /* loaded from: classes4.dex */
    public static class ListBean {
        private String id;
        private String pic;
        private String title;

        public String getId() {
            return this.id;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public List<ListBean> getList() {
        return this.list;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public void setGame_list(List<AppBean> list) {
        this.game_list = list;
    }

    public void setList(List<ListBean> list) {
        this.list = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
