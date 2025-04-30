package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class FightSubDataBean implements Serializable {
    private String crc_link_type_val;
    private FightSubGameInfoDataBean game_info;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public FightSubDataBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public FightSubGameInfoDataBean getGame_info() {
        return this.game_info;
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

    public void setGame_info(FightSubGameInfoDataBean fightSubGameInfoDataBean) {
        this.game_info = fightSubGameInfoDataBean;
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

    public FightSubDataBean(int i2, String str, String str2, int i4, String str3, FightSubGameInfoDataBean fightSubGameInfoDataBean) {
        this.link_type = i2;
        this.crc_link_type_val = str;
        this.link_type_val = str2;
        this.jump_type = i4;
        this.tpl_type = str3;
        this.game_info = fightSubGameInfoDataBean;
    }
}
