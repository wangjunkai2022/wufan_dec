package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes.dex */
public class GameHeadAd implements Serializable {
    private GameMain main;
    private List<SubInfo> sub;

    /* loaded from: classes.dex */
    public static class GameMain implements Serializable {
        private int ad_switch;
        private String color;
        private String ico_remote;
        private String label;
        private String margin;
        private int model_type;
        private String pic_remote;
        private int quit_switch;
        private String sub_title;
        private String title;
        private int title_type;
        private String vedio_url;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getColor() {
            return this.color;
        }

        public String getIco_remote() {
            return this.ico_remote;
        }

        public String getLabel() {
            return this.label;
        }

        public String getMargin() {
            return this.margin;
        }

        public int getModel_type() {
            return this.model_type;
        }

        public String getPic_remote() {
            return this.pic_remote;
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

        public int getTitle_type() {
            return this.title_type;
        }

        public String getVedio_url() {
            return this.vedio_url;
        }

        public void setAd_switch(int i2) {
            this.ad_switch = i2;
        }

        public void setColor(String str) {
            this.color = str;
        }

        public void setIco_remote(String str) {
            this.ico_remote = str;
        }

        public void setLabel(String str) {
            this.label = str;
        }

        public void setMargin(String str) {
            this.margin = str;
        }

        public void setModel_type(int i2) {
            this.model_type = i2;
        }

        public void setPic_remote(String str) {
            this.pic_remote = str;
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

        public void setTitle_type(int i2) {
            this.title_type = i2;
        }

        public void setVedio_url(String str) {
            this.vedio_url = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class SubInfo implements Serializable {
        private String crc_link_type_val;
        private AppBean game_info;
        private int is_more;
        private int jump_type;
        private int link_type;
        private String link_type_val;
        private String tpl_type;

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public AppBean getGame_info() {
            return this.game_info;
        }

        public IntentDateBean getIntentDataBean() {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(this.jump_type);
            intentDateBean.setLink_type(this.link_type);
            intentDateBean.setLink_type_val(this.link_type_val);
            intentDateBean.setTpl_type(this.tpl_type);
            intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
            return intentDateBean;
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

        public String getTpl_type() {
            return this.tpl_type;
        }

        public void setCrc_link_type_val(String str) {
            this.crc_link_type_val = str;
        }

        public void setGame_info(AppBean appBean) {
            this.game_info = appBean;
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

        public void setTpl_type(String str) {
            this.tpl_type = str;
        }
    }

    public GameMain getMain() {
        return this.main;
    }

    public List<SubInfo> getSub() {
        return this.sub;
    }

    public void setMain(GameMain gameMain) {
        this.main = gameMain;
    }

    public void setSub(List<SubInfo> list) {
        this.sub = list;
    }
}
