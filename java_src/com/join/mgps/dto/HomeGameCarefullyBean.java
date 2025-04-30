package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class HomeGameCarefullyBean {
    List<DayRecommand> before_refresh;
    String bespeak_list_url;
    TodayWufunBroadcast buy_advert_recommend;
    List<BannerBean> carefully_special;
    TodayWufunBroadcast editor_recommend_game;
    List<TodayWufunBroadcast> game_bespeak_recommend;
    List<BannerBean> game_category;
    List<TodayWufunEmuClassify> game_prefecture;
    DayRecommand today_refresh;
    TodayWufunBroadcast visitor_recommend_game;

    /* loaded from: classes4.dex */
    public static class DayRecommand {
        private long addTimes;
        TodayWufunBroadcast game_discover;
        InformationListDataBean game_information;

        public long getAddTimes() {
            return this.addTimes;
        }

        public TodayWufunBroadcast getGame_discover() {
            return this.game_discover;
        }

        public InformationListDataBean getGame_information() {
            return this.game_information;
        }

        public void setAddTimes(long j4) {
            this.addTimes = j4;
        }

        public void setGame_discover(TodayWufunBroadcast todayWufunBroadcast) {
            this.game_discover = todayWufunBroadcast;
        }

        public void setGame_information(InformationListDataBean informationListDataBean) {
            this.game_information = informationListDataBean;
        }
    }

    public List<DayRecommand> getBefore_refresh() {
        return this.before_refresh;
    }

    public String getBespeak_list_url() {
        return this.bespeak_list_url;
    }

    public TodayWufunBroadcast getBuy_advert_recommend() {
        return this.buy_advert_recommend;
    }

    public List<BannerBean> getCarefully_special() {
        return this.carefully_special;
    }

    public TodayWufunBroadcast getEditor_recommend_game() {
        return this.editor_recommend_game;
    }

    public List<TodayWufunBroadcast> getGame_bespeak_recommend() {
        return this.game_bespeak_recommend;
    }

    public List<BannerBean> getGame_category() {
        return this.game_category;
    }

    public List<TodayWufunEmuClassify> getGame_prefecture() {
        return this.game_prefecture;
    }

    public DayRecommand getToday_refresh() {
        return this.today_refresh;
    }

    public TodayWufunBroadcast getVisitor_recommend_game() {
        return this.visitor_recommend_game;
    }

    public void setBefore_refresh(List<DayRecommand> list) {
        this.before_refresh = list;
    }

    public void setBespeak_list_url(String str) {
        this.bespeak_list_url = str;
    }

    public void setBuy_advert_recommend(TodayWufunBroadcast todayWufunBroadcast) {
        this.buy_advert_recommend = todayWufunBroadcast;
    }

    public void setCarefully_special(List<BannerBean> list) {
        this.carefully_special = list;
    }

    public void setEditor_recommend_game(TodayWufunBroadcast todayWufunBroadcast) {
        this.editor_recommend_game = todayWufunBroadcast;
    }

    public void setGame_bespeak_recommend(List<TodayWufunBroadcast> list) {
        this.game_bespeak_recommend = list;
    }

    public void setGame_category(List<BannerBean> list) {
        this.game_category = list;
    }

    public void setGame_prefecture(List<TodayWufunEmuClassify> list) {
        this.game_prefecture = list;
    }

    public void setToday_refresh(DayRecommand dayRecommand) {
        this.today_refresh = dayRecommand;
    }

    public void setVisitor_recommend_game(TodayWufunBroadcast todayWufunBroadcast) {
        this.visitor_recommend_game = todayWufunBroadcast;
    }
}
