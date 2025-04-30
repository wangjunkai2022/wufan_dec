package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class PAPAMainBean {
    private List<BannerBean> banner;
    private SearchDataBean defaultSearchKeyword;
    private GamerecommendBean discover_channel;
    private List<GameinterestingBean> dynamic_module;
    private FastEntry fast_entry;
    private PapaMainGameBespeak game_bespeak;
    private GamebroadcastBean game_broadcast;
    private GameinterestingBean gameinteresting;
    private List<RecomDatabean> guess_you_like;
    private GameinterestingBean hot_online_game;
    private PapaMainLive live_list;
    private int new_daily_uv;
    private GameinterestingBean new_online_game;
    private List<RecomDatabean> recently;
    private WufunNowHomeJoinBean wufun_today;

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public SearchDataBean getDefaultSearchKeyword() {
        return this.defaultSearchKeyword;
    }

    public GamerecommendBean getDiscover_channel() {
        return this.discover_channel;
    }

    public List<GameinterestingBean> getDynamic_module() {
        return this.dynamic_module;
    }

    public FastEntry getFast_entry() {
        return this.fast_entry;
    }

    public PapaMainGameBespeak getGame_bespeak() {
        return this.game_bespeak;
    }

    public GamebroadcastBean getGame_broadcast() {
        return this.game_broadcast;
    }

    public GameinterestingBean getGameinteresting() {
        return this.gameinteresting;
    }

    public List<RecomDatabean> getGuess_you_like() {
        return this.guess_you_like;
    }

    public GameinterestingBean getHot_online_game() {
        return this.hot_online_game;
    }

    public PapaMainLive getLive_list() {
        return this.live_list;
    }

    public int getNew_daily_uv() {
        return this.new_daily_uv;
    }

    public GameinterestingBean getNew_online_game() {
        return this.new_online_game;
    }

    public List<RecomDatabean> getRecently() {
        return this.recently;
    }

    public WufunNowHomeJoinBean getWufun_today() {
        return this.wufun_today;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    public void setDefaultSearchKeyword(SearchDataBean searchDataBean) {
        this.defaultSearchKeyword = searchDataBean;
    }

    public void setDiscover_channel(GamerecommendBean gamerecommendBean) {
        this.discover_channel = gamerecommendBean;
    }

    public void setDynamic_module(List<GameinterestingBean> list) {
        this.dynamic_module = list;
    }

    public void setFast_entry(FastEntry fastEntry) {
        this.fast_entry = fastEntry;
    }

    public void setGame_bespeak(PapaMainGameBespeak papaMainGameBespeak) {
        this.game_bespeak = papaMainGameBespeak;
    }

    public void setGame_broadcast(GamebroadcastBean gamebroadcastBean) {
        this.game_broadcast = gamebroadcastBean;
    }

    public void setGameinteresting(GameinterestingBean gameinterestingBean) {
        this.gameinteresting = gameinterestingBean;
    }

    public void setGuess_you_like(List<RecomDatabean> list) {
        this.guess_you_like = list;
    }

    public void setHot_online_game(GameinterestingBean gameinterestingBean) {
        this.hot_online_game = gameinterestingBean;
    }

    public void setLive_list(PapaMainLive papaMainLive) {
        this.live_list = papaMainLive;
    }

    public void setNew_daily_uv(int i2) {
        this.new_daily_uv = i2;
    }

    public void setNew_online_game(GameinterestingBean gameinterestingBean) {
        this.new_online_game = gameinterestingBean;
    }

    public void setRecently(List<RecomDatabean> list) {
        this.recently = list;
    }

    public void setWufun_today(WufunNowHomeJoinBean wufunNowHomeJoinBean) {
        this.wufun_today = wufunNowHomeJoinBean;
    }
}
