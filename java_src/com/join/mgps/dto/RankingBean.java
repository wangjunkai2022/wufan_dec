package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class RankingBean {
    List<RankingGameBean> hottest;
    List<RankingGameBean> newest;
    List<RankingGameBean> soar;

    public RankingBean(List<RankingGameBean> list, List<RankingGameBean> list2, List<RankingGameBean> list3) {
        this.hottest = list;
        this.newest = list2;
        this.soar = list3;
    }

    public List<RankingGameBean> getHottest() {
        return this.hottest;
    }

    public List<RankingGameBean> getNewest() {
        return this.newest;
    }

    public List<RankingGameBean> getSoar() {
        return this.soar;
    }

    public void setHottest(List<RankingGameBean> list) {
        this.hottest = list;
    }

    public void setNewest(List<RankingGameBean> list) {
        this.newest = list;
    }

    public void setSoar(List<RankingGameBean> list) {
        this.soar = list;
    }

    public RankingBean() {
    }
}
