package com.papa91.arc.bean;
/* loaded from: classes4.dex */
public class SubBean {
    private String crc_link_type_val;
    private String is_more;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private String tpl_type;

    public SubBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getIs_more() {
        return this.is_more;
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

    public void setIs_more(String str) {
        this.is_more = str;
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

    public SubBean(String str, String str2, String str3, String str4, String str5, String str6) {
        this.link_type = str;
        this.link_type_val = str2;
        this.crc_link_type_val = str3;
        this.jump_type = str4;
        this.is_more = str5;
        this.tpl_type = str6;
    }
}
