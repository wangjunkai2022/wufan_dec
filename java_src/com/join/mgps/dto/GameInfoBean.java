package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GameInfoBean implements Serializable {
    private static final long serialVersionUID = -3814805766134302239L;
    private int battle_area;
    private String collection_id;
    private int elite_match_switch;
    private String game_ico;
    private String game_id;
    private String game_name;
    private String game_surface_head_image;
    private int general_match_switch;
    private String hall_game_list_img;
    private int only_show_mobile_gamers_room;
    private String pic_cover;
    private String pic_remote;
    private String pic_remote_vertical;
    private int room_count;
    private boolean the_hot;
    private boolean the_new;
    private boolean the_score;
    private String title;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

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

    public String getGame_surface_head_image() {
        return this.game_surface_head_image;
    }

    public int getGeneral_match_switch() {
        return this.general_match_switch;
    }

    public String getHall_game_list_img() {
        return this.hall_game_list_img;
    }

    public int getOnly_show_mobile_gamers_room() {
        return this.only_show_mobile_gamers_room;
    }

    public String getPic_cover() {
        return this.pic_cover;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getPic_remote_vertical() {
        return this.pic_remote_vertical;
    }

    public int getRoom_count() {
        return this.room_count;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isThe_hot() {
        return this.the_hot;
    }

    public boolean isThe_new() {
        return this.the_new;
    }

    public boolean isThe_score() {
        return this.the_score;
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

    public void setGame_surface_head_image(String str) {
        this.game_surface_head_image = str;
    }

    public void setGeneral_match_switch(int i2) {
        this.general_match_switch = i2;
    }

    public void setHall_game_list_img(String str) {
        this.hall_game_list_img = str;
    }

    public void setOnly_show_mobile_gamers_room(int i2) {
        this.only_show_mobile_gamers_room = i2;
    }

    public void setPic_cover(String str) {
        this.pic_cover = str;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setPic_remote_vertical(String str) {
        this.pic_remote_vertical = str;
    }

    public void setRoom_count(int i2) {
        this.room_count = i2;
    }

    public void setThe_hot(boolean z3) {
        this.the_hot = z3;
    }

    public void setThe_new(boolean z3) {
        this.the_new = z3;
    }

    public void setThe_score(boolean z3) {
        this.the_score = z3;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "GameInfoBean{game_name='" + this.game_name + "', game_id='" + this.game_id + "', game_ico='" + this.game_ico + "', room_count=" + this.room_count + ", game_surface_head_image='" + this.game_surface_head_image + "'}";
    }
}
