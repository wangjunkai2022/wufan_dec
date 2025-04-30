package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.d2;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class BannerBean implements Serializable {
    private int ad_switch;
    private String crc_link_type_val;
    private String game_info_tpl_type;
    private int jump_type;
    private String label;
    private int link_type;
    private String link_type_val;
    private String pic_remote;
    private String sub_title;
    private String title;
    private String tpl_type;

    public BannerBean() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BannerBean bannerBean = (BannerBean) obj;
        if (this.link_type == bannerBean.link_type && this.jump_type == bannerBean.jump_type && d2.g(this.title).equals(d2.g(bannerBean.title)) && d2.g(this.pic_remote).equals(d2.g(bannerBean.pic_remote)) && d2.g(this.link_type_val).equals(d2.g(bannerBean.link_type_val)) && d2.g(this.tpl_type).equals(d2.g(bannerBean.tpl_type)) && d2.g(this.crc_link_type_val).equals(d2.g(bannerBean.crc_link_type_val))) {
            return d2.g(this.game_info_tpl_type).equals(d2.g(bannerBean.game_info_tpl_type));
        }
        return false;
    }

    public int getAd_switch() {
        return this.ad_switch;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(this.jump_type);
        intentDateBean.setLink_type(this.link_type);
        intentDateBean.setLink_type_val(this.link_type_val);
        if (this.link_type == 1) {
            intentDateBean.setTpl_type(this.game_info_tpl_type);
        } else {
            intentDateBean.setTpl_type(this.tpl_type);
        }
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        if (d2.i(this.title)) {
            intentDateBean.setObject(this.title);
        }
        if (d2.h(this.title) && d2.i(this.sub_title)) {
            intentDateBean.setObject(this.sub_title);
        }
        return intentDateBean;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public String getLabel() {
        return this.label;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public int hashCode() {
        return (((((((((((((this.title.hashCode() * 31) + this.pic_remote.hashCode()) * 31) + this.link_type) * 31) + this.jump_type) * 31) + this.link_type_val.hashCode()) * 31) + this.tpl_type.hashCode()) * 31) + this.crc_link_type_val.hashCode()) * 31) + this.game_info_tpl_type.hashCode();
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

    public void setJump_type(int i2) {
        this.jump_type = i2;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setLink_type(int i2) {
        this.link_type = i2;
    }

    public void setLink_type_val(String str) {
        this.link_type_val = str;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setSub_title(String str) {
        this.sub_title = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public BannerBean(String str, String str2, int i2, int i4, String str3, String str4, String str5, String str6) {
        this.title = str;
        this.pic_remote = str2;
        this.link_type = i2;
        this.jump_type = i4;
        this.link_type_val = str3;
        this.tpl_type = str4;
        this.crc_link_type_val = str5;
        this.game_info_tpl_type = str6;
    }
}
