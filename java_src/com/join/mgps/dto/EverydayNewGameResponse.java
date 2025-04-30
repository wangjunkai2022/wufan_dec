package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class EverydayNewGameResponse {
    List<GameBeanCollection> game_list;
    List<RecomDatabean> head_ad;
    List<RecomDatabean> the_explosion;

    public List<GameBeanCollection> getGame_list() {
        return this.game_list;
    }

    public List<RecomDatabean> getHead_ad() {
        return this.head_ad;
    }

    public List<RecomDatabean> getThe_explosion() {
        return this.the_explosion;
    }

    public void setGame_list(List<GameBeanCollection> list) {
        this.game_list = list;
    }

    public void setHead_ad(List<RecomDatabean> list) {
        this.head_ad = list;
    }

    public void setThe_explosion(List<RecomDatabean> list) {
        this.the_explosion = list;
    }
}
