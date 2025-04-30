package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class DiscoveryMainDataBean {
    private List<BattleGameBean> battle_game;
    private int battle_game_count;
    private List<ForumListBean> forum_list;

    /* loaded from: classes4.dex */
    public static class BattleGameBean {
        private int battle_area;
        private String battle_index_img;
        private int cat_id;
        private String game_ico;
        private String game_id;
        private String game_name;
        private String game_surface_head_image;
        private String hall_game_list_img;
        private boolean is_local_battle;
        private int rom_type;
        private int room_count;

        public int getBattle_area() {
            return this.battle_area;
        }

        public String getBattle_index_img() {
            return this.battle_index_img;
        }

        public int getCat_id() {
            return this.cat_id;
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

        public String getHall_game_list_img() {
            return this.hall_game_list_img;
        }

        public int getRom_type() {
            return this.rom_type;
        }

        public int getRoom_count() {
            return this.room_count;
        }

        public boolean isIs_local_battle() {
            return this.is_local_battle;
        }

        public void setBattle_area(int i2) {
            this.battle_area = i2;
        }

        public void setBattle_index_img(String str) {
            this.battle_index_img = str;
        }

        public void setCat_id(int i2) {
            this.cat_id = i2;
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

        public void setHall_game_list_img(String str) {
            this.hall_game_list_img = str;
        }

        public void setIs_local_battle(boolean z3) {
            this.is_local_battle = z3;
        }

        public void setRom_type(int i2) {
            this.rom_type = i2;
        }

        public void setRoom_count(int i2) {
            this.room_count = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumListBean {
        private int fid;
        private String icon_src;
        private boolean is_follow;
        private String name;
        private int today_posts;

        public int getFid() {
            return this.fid;
        }

        public String getIcon_src() {
            return this.icon_src;
        }

        public String getName() {
            return this.name;
        }

        public int getToday_posts() {
            return this.today_posts;
        }

        public boolean isIs_follow() {
            return this.is_follow;
        }

        public void setFid(int i2) {
            this.fid = i2;
        }

        public void setIcon_src(String str) {
            this.icon_src = str;
        }

        public void setIs_follow(boolean z3) {
            this.is_follow = z3;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setToday_posts(int i2) {
            this.today_posts = i2;
        }
    }

    public List<BattleGameBean> getBattle_game() {
        return this.battle_game;
    }

    public int getBattle_game_count() {
        return this.battle_game_count;
    }

    public List<ForumListBean> getForum_list() {
        return this.forum_list;
    }

    public void setBattle_game(List<BattleGameBean> list) {
        this.battle_game = list;
    }

    public void setBattle_game_count(int i2) {
        this.battle_game_count = i2;
    }

    public void setForum_list(List<ForumListBean> list) {
        this.forum_list = list;
    }
}
