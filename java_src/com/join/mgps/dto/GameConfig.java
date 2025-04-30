package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameConfig {
    private int battle_area;
    private String collection_id;
    private int elite_match_switch;
    private String game_ico;
    private String game_id;
    private String game_name;
    private int general_match_switch;
    private int only_show_mobile_gamers_room;
    private String pic_cover;
    private int room_count;
    private String title;

    public int getBattle_area() {
        return this.battle_area;
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public int getElite_match_switch() {
        return this.elite_match_switch;
    }

    public String getGame_ico() {
        return this.game_ico;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGeneral_match_switch() {
        return this.general_match_switch;
    }

    public int getOnly_show_mobile_gamers_room() {
        return this.only_show_mobile_gamers_room;
    }

    public String getPic_cover() {
        return this.pic_cover;
    }

    public int getRoom_count() {
        return this.room_count;
    }

    public String getTitle() {
        return this.title;
    }

    public void setBattle_area(int i2) {
        this.battle_area = i2;
    }

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setElite_match_switch(int i2) {
        this.elite_match_switch = i2;
    }

    public void setGame_ico(String str) {
        this.game_ico = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGeneral_match_switch(int i2) {
        this.general_match_switch = i2;
    }

    public void setOnly_show_mobile_gamers_room(int i2) {
        this.only_show_mobile_gamers_room = i2;
    }

    public void setPic_cover(String str) {
        this.pic_cover = str;
    }

    public void setRoom_count(int i2) {
        this.room_count = i2;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "GameConfig{title='" + this.title + "', elite_match_switch=" + this.elite_match_switch + ", general_match_switch=" + this.general_match_switch + ", battle_area=" + this.battle_area + ", game_id='" + this.game_id + "', game_ico='" + this.game_ico + "', game_name='" + this.game_name + "', collection_id='" + this.collection_id + "'}";
    }
}
