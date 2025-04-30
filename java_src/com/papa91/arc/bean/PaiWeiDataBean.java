package com.papa91.arc.bean;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class PaiWeiDataBean implements Serializable {
    private List<AdListBean> ad_list;
    private int minimum_passing_time;
    private MonthBestBean month_best;
    private List<RankListBean> rank_list;
    private List<RolesBean> roles;
    private String unit;

    /* loaded from: classes4.dex */
    public static class AdListBean implements Serializable {
        private int ad_switch;
        private String crc_link_type_val;
        private String game_info_tpl_type;
        private String jump_type;
        private String link_type;
        private String link_type_val;
        private String pic_remote;
        private String plugin_num;
        private String sub_title;
        private String sync_memory;
        private String title;
        private String tpl_type;
        private String type;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public String getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getJump_type() {
            return this.jump_type;
        }

        public String getLink_type() {
            return this.link_type;
        }

        public String getLink_type_val() {
            return this.link_type_val;
        }

        public String getPic_remote() {
            return this.pic_remote;
        }

        public String getPlugin_num() {
            return this.plugin_num;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getSync_memory() {
            return this.sync_memory;
        }

        public String getTitle() {
            return this.title;
        }

        public String getTpl_type() {
            return this.tpl_type;
        }

        public String getType() {
            return this.type;
        }

        public void setAd_switch(int i2) {
            this.ad_switch = i2;
        }

        public void setCrc_link_type_val(String str) {
            this.crc_link_type_val = str;
        }

        public void setGame_info_tpl_type(String str) {
            this.game_info_tpl_type = str;
        }

        public void setJump_type(String str) {
            this.jump_type = str;
        }

        public void setLink_type(String str) {
            this.link_type = str;
        }

        public void setLink_type_val(String str) {
            this.link_type_val = str;
        }

        public void setPic_remote(String str) {
            this.pic_remote = str;
        }

        public void setPlugin_num(String str) {
            this.plugin_num = str;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setSync_memory(String str) {
            this.sync_memory = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTpl_type(String str) {
            this.tpl_type = str;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class MonthBestBean implements Serializable {
        private String cost_coin;
        private int rank;
        private String role;
        private String use_time;

        public String getCost_coin() {
            return this.cost_coin;
        }

        public int getRank() {
            return this.rank;
        }

        public String getRole() {
            return this.role;
        }

        public String getUse_time() {
            return this.use_time;
        }

        public void setCost_coin(String str) {
            this.cost_coin = str;
        }

        public void setRank(int i2) {
            this.rank = i2;
        }

        public void setRole(String str) {
            this.role = str;
        }

        public void setUse_time(String str) {
            this.use_time = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class RankListBean implements Serializable {
        private String avatar;
        private String cost_coin;
        private String nickname;
        private String play_id;
        private int rank;
        private String role;
        private String role_id;
        private String role_rank;
        private String roleid;
        private String time;
        private String use_time;
        private String video;

        public String getAvatar() {
            return this.avatar;
        }

        public String getCost_coin() {
            return this.cost_coin;
        }

        public String getNickname() {
            return this.nickname;
        }

        public String getPlay_id() {
            return this.play_id;
        }

        public int getRank() {
            return this.rank;
        }

        public String getRole() {
            return this.role;
        }

        public String getRole_id() {
            if (TextUtils.isEmpty(this.role_id)) {
                return this.roleid;
            }
            return this.role_id;
        }

        public String getRole_rank() {
            return this.role_rank;
        }

        public String getRoleid() {
            if (TextUtils.isEmpty(this.roleid)) {
                return this.role_id;
            }
            return this.roleid;
        }

        public String getTime() {
            return this.time;
        }

        public String getUse_time() {
            return this.use_time;
        }

        public String getVideo() {
            return this.video;
        }

        public void setAvatar(String str) {
            this.avatar = str;
        }

        public void setCost_coin(String str) {
            this.cost_coin = str;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setPlay_id(String str) {
            this.play_id = str;
        }

        public void setRank(int i2) {
            this.rank = i2;
        }

        public void setRole(String str) {
            this.role = str;
        }

        public void setRole_id(String str) {
            this.role_id = str;
        }

        public void setRole_rank(String str) {
            this.role_rank = str;
        }

        public void setRoleid(String str) {
            this.roleid = str;
        }

        public void setTime(String str) {
            this.time = str;
        }

        public void setUse_time(String str) {
            this.use_time = str;
        }

        public void setVideo(String str) {
            this.video = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class RolesBean implements Serializable {
        private boolean isChecked = false;
        private String role;
        private String role_id;

        public String getRole() {
            return this.role;
        }

        public String getRole_id() {
            return this.role_id;
        }

        public boolean isChecked() {
            return this.isChecked;
        }

        public void setChecked(boolean z3) {
            this.isChecked = z3;
        }

        public void setRole(String str) {
            this.role = str;
        }

        public void setRole_id(String str) {
            this.role_id = str;
        }
    }

    public List<AdListBean> getAd_list() {
        return this.ad_list;
    }

    public int getMinimum_passing_time() {
        return this.minimum_passing_time;
    }

    public MonthBestBean getMonth_best() {
        return this.month_best;
    }

    public List<RankListBean> getRank_list() {
        return this.rank_list;
    }

    public List<RolesBean> getRoles() {
        return this.roles;
    }

    public String getUnit() {
        return this.unit;
    }

    public void setAd_list(List<AdListBean> list) {
        this.ad_list = list;
    }

    public void setMinimum_passing_time(int i2) {
        this.minimum_passing_time = i2;
    }

    public void setMonth_best(MonthBestBean monthBestBean) {
        this.month_best = monthBestBean;
    }

    public void setRank_list(List<RankListBean> list) {
        this.rank_list = list;
    }

    public void setRoles(List<RolesBean> list) {
        this.roles = list;
    }

    public void setUnit(String str) {
        this.unit = str;
    }
}
