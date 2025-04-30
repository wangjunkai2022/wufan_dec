package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameBbsPostListBean {
    private List<BbsListBean> game_bbs_post_list;
    private Integer next_page;

    public List<BbsListBean> getGame_bbs_post_list() {
        return this.game_bbs_post_list;
    }

    public Integer getNext_page() {
        return this.next_page;
    }

    public void setGame_bbs_post_list(List<BbsListBean> list) {
        this.game_bbs_post_list = list;
    }

    public void setNext_page(Integer num) {
        this.next_page = num;
    }
}
