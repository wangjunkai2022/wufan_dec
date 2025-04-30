package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameMainDataBean {
    private GameMainachieve achieve;
    private List<BannerBean> ad_position;
    private GameMaingameinfo game_info;
    private List<BannerBean> jump_info;
    private List<BannerBean> local_battle;
    private GameMainNetBattle net_battle;
    private List<GameMainPostBean> post_id;

    public GameMainachieve getAchieve() {
        return this.achieve;
    }

    public List<BannerBean> getAd_position() {
        return this.ad_position;
    }

    public GameMaingameinfo getGame_info() {
        return this.game_info;
    }

    public List<BannerBean> getJump_info() {
        return this.jump_info;
    }

    public List<BannerBean> getLocal_battle() {
        return this.local_battle;
    }

    public GameMainNetBattle getNet_battle() {
        return this.net_battle;
    }

    public List<GameMainPostBean> getPost_id() {
        return this.post_id;
    }

    public void setAchieve(GameMainachieve gameMainachieve) {
        this.achieve = gameMainachieve;
    }

    public void setAd_position(List<BannerBean> list) {
        this.ad_position = list;
    }

    public void setGame_info(GameMaingameinfo gameMaingameinfo) {
        this.game_info = gameMaingameinfo;
    }

    public void setJump_info(List<BannerBean> list) {
        this.jump_info = list;
    }

    public void setLocal_battle(List<BannerBean> list) {
        this.local_battle = list;
    }

    public void setNet_battle(GameMainNetBattle gameMainNetBattle) {
        this.net_battle = gameMainNetBattle;
    }

    public void setPost_id(List<GameMainPostBean> list) {
        this.post_id = list;
    }
}
