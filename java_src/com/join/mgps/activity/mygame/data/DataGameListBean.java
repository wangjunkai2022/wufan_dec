package com.join.mgps.activity.mygame.data;

import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes3.dex */
public class DataGameListBean implements Serializable {
    private int gameCount;
    private List<GamedownRecomendItemBean> gameList;
    private List<GamedownRecomendItemBean> recommendList;

    public int getGameCount() {
        return this.gameCount;
    }

    public List<GamedownRecomendItemBean> getGameList() {
        return this.gameList;
    }

    public List<GamedownRecomendItemBean> getRecommendList() {
        return this.recommendList;
    }

    public void setGameCount(int i2) {
        this.gameCount = i2;
    }

    public void setGameList(List<GamedownRecomendItemBean> list) {
        this.gameList = list;
    }

    public void setRecommendList(List<GamedownRecomendItemBean> list) {
        this.recommendList = list;
    }
}
