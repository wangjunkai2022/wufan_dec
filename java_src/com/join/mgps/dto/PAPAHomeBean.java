package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class PAPAHomeBean {
    private List<BannerBean> banner;
    public FastEntry fast_entry;
    private GamebroadcastBean gamebroadcast;
    private GameinterestingBean gameinteresting;
    private GamerecommendBean gamerecommend;
    private List<RecomDatabean> guessyoulike;
    private GameinterestingBean hot_online_game;
    private GameinterestingBean hotsinglegame;
    public int new_daily_uv;
    private List<RecomDatabean> recently;
    private List<RecomDatabean> toptip;

    public PAPAHomeBean() {
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public FastEntry getFast_entry() {
        return this.fast_entry;
    }

    public GamebroadcastBean getGamebroadcast() {
        return this.gamebroadcast;
    }

    public GameinterestingBean getGameinteresting() {
        return this.gameinteresting;
    }

    public GamerecommendBean getGamerecommend() {
        return this.gamerecommend;
    }

    public List<RecomDatabean> getGuessyoulike() {
        return this.guessyoulike;
    }

    public GameinterestingBean getHot_online_game() {
        return this.hot_online_game;
    }

    public GameinterestingBean getHotsinglegame() {
        return this.hotsinglegame;
    }

    public int getNew_daily_uv() {
        return this.new_daily_uv;
    }

    public List<RecomDatabean> getRecently() {
        return this.recently;
    }

    public List<RecomDatabean> getToptip() {
        return this.toptip;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    public void setFast_entry(FastEntry fastEntry) {
        this.fast_entry = fastEntry;
    }

    public void setGamebroadcast(GamebroadcastBean gamebroadcastBean) {
        this.gamebroadcast = gamebroadcastBean;
    }

    public void setGameinteresting(GameinterestingBean gameinterestingBean) {
        this.gameinteresting = gameinterestingBean;
    }

    public void setGamerecommend(GamerecommendBean gamerecommendBean) {
        this.gamerecommend = gamerecommendBean;
    }

    public void setGuessyoulike(List<RecomDatabean> list) {
        this.guessyoulike = list;
    }

    public void setHot_online_game(GameinterestingBean gameinterestingBean) {
        this.hot_online_game = gameinterestingBean;
    }

    public void setHotsinglegame(GameinterestingBean gameinterestingBean) {
        this.hotsinglegame = gameinterestingBean;
    }

    public void setNew_daily_uv(int i2) {
        this.new_daily_uv = i2;
    }

    public void setRecently(List<RecomDatabean> list) {
        this.recently = list;
    }

    public void setToptip(List<RecomDatabean> list) {
        this.toptip = list;
    }

    public PAPAHomeBean(List<BannerBean> list, List<RecomDatabean> list2, List<RecomDatabean> list3, List<RecomDatabean> list4, GamerecommendBean gamerecommendBean, GameinterestingBean gameinterestingBean, GamebroadcastBean gamebroadcastBean) {
        this.banner = list;
        this.recently = list2;
        this.guessyoulike = list3;
        this.toptip = list4;
        this.gamerecommend = gamerecommendBean;
        this.gameinteresting = gameinterestingBean;
        this.gamebroadcast = gamebroadcastBean;
    }
}
