package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
/* loaded from: classes4.dex */
public class CompanySubBean {
    private String crc_link_type_val;
    private String game_count;
    private AppBean game_info;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public CompanySubBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getGame_count() {
        return this.game_count;
    }

    public AppBean getGame_info() {
        return this.game_info;
    }

    public IntentDateBean getIntentDataBean() {
        AppBean appBean;
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(this.jump_type);
        intentDateBean.setLink_type(this.link_type);
        intentDateBean.setLink_type_val(this.link_type_val);
        if (this.link_type == 1 && (appBean = this.game_info) != null) {
            intentDateBean.setTpl_type(appBean.getGame_info_tpl_type());
        } else {
            intentDateBean.setTpl_type(this.tpl_type);
        }
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        return intentDateBean;
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

    public void setGame_count(String str) {
        this.game_count = str;
    }

    public void setGame_info(AppBean appBean) {
        this.game_info = appBean;
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

    public CompanySubBean(int i2, String str, String str2, int i4, String str3, String str4) {
        this.link_type = i2;
        this.link_type_val = str;
        this.crc_link_type_val = str2;
        this.jump_type = i4;
        this.game_count = str3;
        this.tpl_type = str4;
    }
}
