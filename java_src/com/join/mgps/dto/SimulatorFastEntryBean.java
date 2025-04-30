package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorFastEntryBean implements Serializable {
    private List<ChangeGame> change_game;
    private List<FastEntryBean> fast_entry;
    private String search_bar_hint;
    private List<TagGameBean> tag_game;
    private List<GameInfo> the_new;
    private WillPlay will_play;

    /* loaded from: classes4.dex */
    public static class ChangeGame implements Serializable {
        private int ad_switch;
        private String big_pic;
        private JpInfo jp_info;
        private int quit_switch;
        private String sub_title;
        private String title;
        private String v_url;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getBig_pic() {
            return this.big_pic;
        }

        public IntentDateBean getIntentDataBean() {
            IntentDateBean intentDateBean = new IntentDateBean();
            JpInfo jpInfo = this.jp_info;
            if (jpInfo != null) {
                intentDateBean.setJump_type(jpInfo.getJump_type());
                intentDateBean.setLink_type(this.jp_info.getLink_type());
                intentDateBean.setLink_type_val(this.jp_info.getLink_type_val());
                intentDateBean.setTpl_type(String.valueOf(this.jp_info.getTpl_type()));
                intentDateBean.setCrc_link_type_val(this.jp_info.getCrc_link_type_val());
            }
            if (intentDateBean.getExtBean() == null) {
                intentDateBean.setExtBean(new ExtBean());
            }
            return intentDateBean;
        }

        public JpInfo getJp_info() {
            return this.jp_info;
        }

        public int getQuit_switch() {
            return this.quit_switch;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public String getV_url() {
            return this.v_url;
        }

        public void setAd_switch(int i2) {
            this.ad_switch = i2;
        }

        public void setBig_pic(String str) {
            this.big_pic = str;
        }

        public void setJp_info(JpInfo jpInfo) {
            this.jp_info = jpInfo;
        }

        public void setQuit_switch(int i2) {
            this.quit_switch = i2;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setV_url(String str) {
            this.v_url = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class FastEntryBean implements Serializable {
        private int id;
        private String pic;
        private String title;

        public int getId() {
            return this.id;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class GameInfo implements Serializable {
        private String game;
        private String ico;
        private String id;

        public String getGame() {
            return this.game;
        }

        public String getIco() {
            return this.ico;
        }

        public String getId() {
            return this.id;
        }

        public void setGame(String str) {
            this.game = str;
        }

        public void setIco(String str) {
            this.ico = str;
        }

        public void setId(String str) {
            this.id = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class JpInfo implements Serializable {
        private String crc_link_type_val;
        private int is_more;
        private int jump_type;
        private int link_type;
        private String link_type_val;
        private int third_type;
        private int tpl_type;

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public int getIs_more() {
            return this.is_more;
        }

        public int getJump_type() {
            return this.jump_type;
        }

        public int getLink_type() {
            return this.link_type;
        }

        public String getLink_type_val() {
            return this.link_type_val;
        }

        public int getThird_type() {
            return this.third_type;
        }

        public int getTpl_type() {
            return this.tpl_type;
        }

        public void setCrc_link_type_val(String str) {
            this.crc_link_type_val = str;
        }

        public void setIs_more(int i2) {
            this.is_more = i2;
        }

        public void setJump_type(int i2) {
            this.jump_type = i2;
        }

        public void setLink_type(int i2) {
            this.link_type = i2;
        }

        public void setLink_type_val(String str) {
            this.link_type_val = str;
        }

        public void setThird_type(int i2) {
            this.third_type = i2;
        }

        public void setTpl_type(int i2) {
            this.tpl_type = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class TagGameBean implements Serializable {
        private String id;
        private List<GameInfo> list;
        private String title;

        public String getId() {
            return this.id;
        }

        public List<GameInfo> getList() {
            return this.list;
        }

        public String getTitle() {
            return this.title;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setList(List<GameInfo> list) {
            this.list = list;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class WillPlay implements Serializable {
        private String coll_id;
        private List<GameInfo> games;

        public String getColl_id() {
            return this.coll_id;
        }

        public List<GameInfo> getGames() {
            return this.games;
        }

        public void setColl_id(String str) {
            this.coll_id = str;
        }

        public void setGames(List<GameInfo> list) {
            this.games = list;
        }
    }

    public List<ChangeGame> getChange_game() {
        return this.change_game;
    }

    public List<FastEntryBean> getFast_entry() {
        return this.fast_entry;
    }

    public String getSearch_bar_hint() {
        return this.search_bar_hint;
    }

    public List<TagGameBean> getTag_game() {
        return this.tag_game;
    }

    public List<GameInfo> getThe_new() {
        return this.the_new;
    }

    public WillPlay getWill_play() {
        return this.will_play;
    }

    public void setChange_game(List<ChangeGame> list) {
        this.change_game = list;
    }

    public void setFast_entry(List<FastEntryBean> list) {
        this.fast_entry = list;
    }

    public void setSearch_bar_hint(String str) {
        this.search_bar_hint = str;
    }

    public void setTag_game(List<TagGameBean> list) {
        this.tag_game = list;
    }

    public void setThe_new(List<GameInfo> list) {
        this.the_new = list;
    }

    public void setWill_play(WillPlay willPlay) {
        this.will_play = willPlay;
    }
}
