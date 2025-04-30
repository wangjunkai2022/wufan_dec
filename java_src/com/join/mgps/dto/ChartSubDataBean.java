package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ChartSubDataBean {
    private String crc_link_type_val;
    private SubAppGameInfoBean game_info;
    private String is_more;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private String tpl_type;

    public ChartSubDataBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public SubAppGameInfoBean getGame_info() {
        return this.game_info;
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

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setGame_info(SubAppGameInfoBean subAppGameInfoBean) {
        this.game_info = subAppGameInfoBean;
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

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public ChartSubDataBean(String str, String str2, String str3, String str4, String str5, SubAppGameInfoBean subAppGameInfoBean, String str6) {
        this.link_type = str;
        this.link_type_val = str2;
        this.jump_type = str3;
        this.is_more = str4;
        this.crc_link_type_val = str5;
        this.game_info = subAppGameInfoBean;
        this.tpl_type = str6;
    }
}
