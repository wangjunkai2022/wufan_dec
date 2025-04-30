package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.d2;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class VipPopData implements Serializable {
    private int ad_switch;
    private String crc_link_type_val;
    private String game_info_tpl_type;
    private int id;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private String pic_remote;
    private String plugin_num = "";
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

    public int getId() {
        return this.id;
    }

    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        if (d2.i(this.jump_type)) {
            intentDateBean.setJump_type(Integer.parseInt(this.jump_type));
        }
        if (d2.i(this.link_type)) {
            intentDateBean.setLink_type(Integer.parseInt(this.link_type));
        }
        intentDateBean.setLink_type_val(this.link_type_val);
        intentDateBean.setTpl_type(this.tpl_type);
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        return intentDateBean;
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

    public void setId(int i2) {
        this.id = i2;
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
