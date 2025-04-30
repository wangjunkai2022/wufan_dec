package com.join.mgps.activity.mygame.data;

import com.join.mgps.dto.CommonGameInfoBean;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes3.dex */
public class RecommendGameListBean implements Serializable {
    private List<CommonGameInfoBean> fixed_list;
    private int game_count;
    private List<CommonGameInfoBean> recommend_list;

    public List<CommonGameInfoBean> getFixed_list() {
        return this.fixed_list;
    }

    public int getGame_count() {
        return this.game_count;
    }

    public List<CommonGameInfoBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setFixed_list(List<CommonGameInfoBean> list) {
        this.fixed_list = list;
    }

    public void setGame_count(int i2) {
        this.game_count = i2;
    }

    public void setRecommend_list(List<CommonGameInfoBean> list) {
        this.recommend_list = list;
    }
}
