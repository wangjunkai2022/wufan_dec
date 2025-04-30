package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class TodayWufunEmuClassify {
    public String game_count;
    public List<TodayWufunBroadcast> game_list;
    public int id;
    public String name;

    public String getGame_count() {
        return this.game_count;
    }

    public List<TodayWufunBroadcast> getGame_list() {
        return this.game_list;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public void setGame_count(String str) {
        this.game_count = str;
    }

    public void setGame_list(List<TodayWufunBroadcast> list) {
        this.game_list = list;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setName(String str) {
        this.name = str;
    }
}
