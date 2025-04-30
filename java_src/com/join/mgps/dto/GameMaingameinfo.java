package com.join.mgps.dto;

import com.join.mgps.Util.d2;
import java.util.List;
/* loaded from: classes4.dex */
public class GameMaingameinfo {
    private String community_area_id;
    private String community_multi_posts_id;
    private int community_tag_id;
    private int down_count;
    private String fight_funv2;
    private String game_back_ground_img;
    private String game_bespeak_switch;
    private String game_comment_score_switch;
    private String game_comment_switch;
    private String game_file_save_switch;
    private String game_id;
    private int game_is_started;
    private String game_name;
    private String game_package;
    private String game_plugin_num;
    private String game_surface_hall_war_img;
    private String game_surface_head_image;
    private String game_surface_invite_war_img;
    private String game_surface_local_war_img;
    private String game_surface_ranking_of_match_img;
    private String game_surface_single_start_img;
    private int max_battle_count;
    private String max_battle_view_count;
    private String score;
    private List<TipBean> tag_info;

    public int getCommunity_area_id() {
        if (d2.h(this.community_area_id)) {
            return 0;
        }
        return Integer.valueOf(this.community_area_id).intValue();
    }

    public String getCommunity_multi_posts_id() {
        return this.community_multi_posts_id;
    }

    public int getCommunity_tag_id() {
        return this.community_tag_id;
    }

    public int getDown_count() {
        return this.down_count;
    }

    public String getFight_funv2() {
        return this.fight_funv2;
    }

    public String getGame_back_ground_img() {
        return this.game_back_ground_img;
    }

    public String getGame_bespeak_switch() {
        return this.game_bespeak_switch;
    }

    public String getGame_comment_score_switch() {
        return this.game_comment_score_switch;
    }

    public String getGame_comment_switch() {
        return this.game_comment_switch;
    }

    public String getGame_file_save_switch() {
        return this.game_file_save_switch;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getGame_is_started() {
        return this.game_is_started;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getGame_package() {
        return this.game_package;
    }

    public String getGame_plugin_num() {
        return this.game_plugin_num;
    }

    public String getGame_surface_hall_war_img() {
        return this.game_surface_hall_war_img;
    }

    public String getGame_surface_head_image() {
        return this.game_surface_head_image;
    }

    public String getGame_surface_invite_war_img() {
        return this.game_surface_invite_war_img;
    }

    public String getGame_surface_local_war_img() {
        return this.game_surface_local_war_img;
    }

    public String getGame_surface_ranking_of_match_img() {
        return this.game_surface_ranking_of_match_img;
    }

    public String getGame_surface_single_start_img() {
        return this.game_surface_single_start_img;
    }

    public int getMax_battle_count() {
        return this.max_battle_count;
    }

    public String getMax_battle_view_count() {
        return this.max_battle_view_count;
    }

    public String getScore() {
        return this.score;
    }

    public List<TipBean> getTag_info() {
        return this.tag_info;
    }

    public void setCommunity_area_id(String str) {
        this.community_area_id = str;
    }

    public void setCommunity_multi_posts_id(String str) {
        this.community_multi_posts_id = str;
    }

    public void setCommunity_tag_id(int i2) {
        this.community_tag_id = i2;
    }

    public void setDown_count(int i2) {
        this.down_count = i2;
    }

    public void setFight_funv2(String str) {
        this.fight_funv2 = str;
    }

    public void setGame_back_ground_img(String str) {
        this.game_back_ground_img = str;
    }

    public void setGame_bespeak_switch(String str) {
        this.game_bespeak_switch = str;
    }

    public void setGame_comment_score_switch(String str) {
        this.game_comment_score_switch = str;
    }

    public void setGame_comment_switch(String str) {
        this.game_comment_switch = str;
    }

    public void setGame_file_save_switch(String str) {
        this.game_file_save_switch = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setGame_is_started(int i2) {
        this.game_is_started = i2;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGame_package(String str) {
        this.game_package = str;
    }

    public void setGame_plugin_num(String str) {
        this.game_plugin_num = str;
    }

    public void setGame_surface_hall_war_img(String str) {
        this.game_surface_hall_war_img = str;
    }

    public void setGame_surface_head_image(String str) {
        this.game_surface_head_image = str;
    }

    public void setGame_surface_invite_war_img(String str) {
        this.game_surface_invite_war_img = str;
    }

    public void setGame_surface_local_war_img(String str) {
        this.game_surface_local_war_img = str;
    }

    public void setGame_surface_ranking_of_match_img(String str) {
        this.game_surface_ranking_of_match_img = str;
    }

    public void setGame_surface_single_start_img(String str) {
        this.game_surface_single_start_img = str;
    }

    public void setMax_battle_count(int i2) {
        this.max_battle_count = i2;
    }

    public void setMax_battle_view_count(String str) {
        this.max_battle_view_count = str;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public void setTag_info(List<TipBean> list) {
        this.tag_info = list;
    }
}
