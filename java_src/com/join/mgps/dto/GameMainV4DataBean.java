package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameMainV4DataBean {
    private GameMainachieve achieve;
    private GameMaingameinfo gameInfo;
    private GameMasteryLevel gameMasteryLevel;
    private List<MemberFunBean> memberFun;
    private MemberInfoBean memberInfo;
    private GameMainNetBattle netBattle;
    private PlayGameInfoBean playGameInfo;
    private List<RecommendAd> recommendAdList;
    private SimulatorCoreBean simulator_core;
    private Surface_bottom_ad surfaceBottomAd;

    /* loaded from: classes4.dex */
    public static class GameRecommendInfoBean {
        private String game_id;
        private String game_pic;
        private String game_title;

        public String getGame_id() {
            return this.game_id;
        }

        public String getGame_pic() {
            return this.game_pic;
        }

        public String getGame_title() {
            return this.game_title;
        }

        public void setGame_id(String str) {
            this.game_id = str;
        }

        public void setGame_pic(String str) {
            this.game_pic = str;
        }

        public void setGame_title(String str) {
            this.game_title = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class MemberFunBean {
        private String pic;
        private String title;
        private String url;

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUrl() {
            return this.url;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class MemberInfoBean {
        private int ad_switch;
        private String crc_link_type_val;
        private int game_info_tpl_type;
        private String jump_type;
        private String link_type;
        private String link_type_val;
        private String pic_remote;
        private int plugin_num;
        private String sub_title;
        private int sync_memory;
        private String title;
        private String tpl_type;
        private String type;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public int getGame_info_tpl_type() {
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

        public int getPlugin_num() {
            return this.plugin_num;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public int getSync_memory() {
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

        public void setGame_info_tpl_type(int i2) {
            this.game_info_tpl_type = i2;
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

        public void setPlugin_num(int i2) {
            this.plugin_num = i2;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setSync_memory(int i2) {
            this.sync_memory = i2;
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
    public static class PlayGameInfoBean {
        private int battle_room_count;
        private long current_play_time;
        private int file_save_count;
        private int file_save_switch;
        private long last_play_time;

        public int getBattle_room_count() {
            return this.battle_room_count;
        }

        public long getCurrent_play_time() {
            return this.current_play_time;
        }

        public int getFile_save_count() {
            return this.file_save_count;
        }

        public int getFile_save_switch() {
            return this.file_save_switch;
        }

        public long getLast_play_time() {
            return this.last_play_time;
        }

        public void setBattle_room_count(int i2) {
            this.battle_room_count = i2;
        }

        public void setCurrent_play_time(long j4) {
            this.current_play_time = j4;
        }

        public void setFile_save_count(int i2) {
            this.file_save_count = i2;
        }

        public void setFile_save_switch(int i2) {
            this.file_save_switch = i2;
        }

        public void setLast_play_time(long j4) {
            this.last_play_time = j4;
        }
    }

    /* loaded from: classes4.dex */
    public static class SimulatorCoreBean {
        private String core;
        private String plugin_num;

        public String getCore() {
            return this.core;
        }

        public String getPlugin_num() {
            return this.plugin_num;
        }

        public void setCore(String str) {
            this.core = str;
        }

        public void setPlugin_num(String str) {
            this.plugin_num = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class Surface_bottom_ad {
        private int ad_switch;
        private String crc_link_type_val;
        private int game_info_tpl_type;
        private String jump_type;
        private String label;
        private String link_type;
        private String link_type_val;
        private String pic_remote;
        private int plugin_num;
        private String sub_title;
        private int sync_memory;
        private String title;
        private String tpl_type;
        private String type;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public int getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getJump_type() {
            return this.jump_type;
        }

        public String getLabel() {
            return this.label;
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

        public int getPlugin_num() {
            return this.plugin_num;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public int getSync_memory() {
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

        public void setGame_info_tpl_type(int i2) {
            this.game_info_tpl_type = i2;
        }

        public void setJump_type(String str) {
            this.jump_type = str;
        }

        public void setLabel(String str) {
            this.label = str;
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

        public void setPlugin_num(int i2) {
            this.plugin_num = i2;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setSync_memory(int i2) {
            this.sync_memory = i2;
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

    public GameMainachieve getAchieve() {
        return this.achieve;
    }

    public GameMaingameinfo getGameInfo() {
        return this.gameInfo;
    }

    public GameMasteryLevel getGameMasteryLevel() {
        return this.gameMasteryLevel;
    }

    public List<MemberFunBean> getMemberFun() {
        return this.memberFun;
    }

    public MemberInfoBean getMemberInfo() {
        return this.memberInfo;
    }

    public GameMainNetBattle getNetBattle() {
        return this.netBattle;
    }

    public PlayGameInfoBean getPlayGameInfo() {
        return this.playGameInfo;
    }

    public List<RecommendAd> getRecommendAdList() {
        return this.recommendAdList;
    }

    public SimulatorCoreBean getSimulator_core() {
        return this.simulator_core;
    }

    public Surface_bottom_ad getSurfaceBottomAd() {
        return this.surfaceBottomAd;
    }

    public void setAchieve(GameMainachieve gameMainachieve) {
        this.achieve = gameMainachieve;
    }

    public void setGameInfo(GameMaingameinfo gameMaingameinfo) {
        this.gameInfo = gameMaingameinfo;
    }

    public void setGameMasteryLevel(GameMasteryLevel gameMasteryLevel) {
        this.gameMasteryLevel = gameMasteryLevel;
    }

    public void setMemberFun(List<MemberFunBean> list) {
        this.memberFun = list;
    }

    public void setMemberInfo(MemberInfoBean memberInfoBean) {
        this.memberInfo = memberInfoBean;
    }

    public void setNetBattle(GameMainNetBattle gameMainNetBattle) {
        this.netBattle = gameMainNetBattle;
    }

    public void setPlayGameInfo(PlayGameInfoBean playGameInfoBean) {
        this.playGameInfo = playGameInfoBean;
    }

    public void setRecommendAdList(List<RecommendAd> list) {
        this.recommendAdList = list;
    }

    public void setSimulator_core(SimulatorCoreBean simulatorCoreBean) {
        this.simulator_core = simulatorCoreBean;
    }

    public void setSurfaceBottomAd(Surface_bottom_ad surface_bottom_ad) {
        this.surfaceBottomAd = surface_bottom_ad;
    }
}
