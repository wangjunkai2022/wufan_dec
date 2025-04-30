package com.join.mgps.activity.vipzone.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class Luckbean {
    int count;
    PrizeBean lastPrize;
    List<LuckPrizeBean> prize_list;
    List<String> rule;

    public int getCount() {
        return this.count;
    }

    public PrizeBean getLastPrize() {
        return this.lastPrize;
    }

    public List<LuckPrizeBean> getPrize_list() {
        return this.prize_list;
    }

    public List<String> getRule() {
        return this.rule;
    }

    public void setCount(int i2) {
        this.count = i2;
    }

    public void setLastPrize(PrizeBean prizeBean) {
        this.lastPrize = prizeBean;
    }

    public void setPrize_list(List<LuckPrizeBean> list) {
        this.prize_list = list;
    }

    public void setRule(List<String> list) {
        this.rule = list;
    }
}
