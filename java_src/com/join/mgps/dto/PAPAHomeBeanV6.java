package com.join.mgps.dto;

import com.join.mgps.dto.GameFromPopoWinBeanV2;
import java.util.List;
/* loaded from: classes4.dex */
public class PAPAHomeBeanV6 {
    private List<RecomDatabean> all_in_play;
    private List<BannerBean> banner;
    private GameDiscoverChannelBean discover_channel;
    private List<GameinterestingBean> dynamic_module;
    public List<BannerBean> fast_entry;
    private GamebroadcastBean game_broadcast;
    private GameRankingBean game_ranking;
    private List<RecomDatabean> guess_you_like;
    private List<GameFromPopoWinBeanV2.DataBean> hot_game_fav;
    private GameinterestingBean new_online_game;
    private GameinterestingBean simulator_channel;
    private GameinterestingBean tag_rec_game;

    public List<RecomDatabean> getAll_in_play() {
        return this.all_in_play;
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public GameDiscoverChannelBean getDiscover_channel() {
        return this.discover_channel;
    }

    public List<GameinterestingBean> getDynamic_module() {
        return this.dynamic_module;
    }

    public List<BannerBean> getFast_entry() {
        return this.fast_entry;
    }

    public GamebroadcastBean getGame_broadcast() {
        return this.game_broadcast;
    }

    public GameRankingBean getGame_ranking() {
        return this.game_ranking;
    }

    public List<RecomDatabean> getGuess_you_like() {
        return this.guess_you_like;
    }

    public List<GameFromPopoWinBeanV2.DataBean> getHot_game_fav() {
        return this.hot_game_fav;
    }

    public GameinterestingBean getNew_online_game() {
        return this.new_online_game;
    }

    public GameinterestingBean getSimulator_channel() {
        return this.simulator_channel;
    }

    public GameinterestingBean getTag_rec_game() {
        return this.tag_rec_game;
    }

    public void setAll_in_play(List<RecomDatabean> list) {
        this.all_in_play = list;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    public void setDiscover_channel(GameDiscoverChannelBean gameDiscoverChannelBean) {
        this.discover_channel = gameDiscoverChannelBean;
    }

    public void setDynamic_module(List<GameinterestingBean> list) {
        this.dynamic_module = list;
    }

    public void setFast_entry(List<BannerBean> list) {
        this.fast_entry = list;
    }

    public void setGame_broadcast(GamebroadcastBean gamebroadcastBean) {
        this.game_broadcast = gamebroadcastBean;
    }

    public void setGame_ranking(GameRankingBean gameRankingBean) {
        this.game_ranking = gameRankingBean;
    }

    public void setGuess_you_like(List<RecomDatabean> list) {
        this.guess_you_like = list;
    }

    public void setHot_game_fav(List<GameFromPopoWinBeanV2.DataBean> list) {
        this.hot_game_fav = list;
    }

    public void setNew_online_game(GameinterestingBean gameinterestingBean) {
        this.new_online_game = gameinterestingBean;
    }

    public void setSimulator_channel(GameinterestingBean gameinterestingBean) {
        this.simulator_channel = gameinterestingBean;
    }

    public void setTag_rec_game(GameinterestingBean gameinterestingBean) {
        this.tag_rec_game = gameinterestingBean;
    }
}
