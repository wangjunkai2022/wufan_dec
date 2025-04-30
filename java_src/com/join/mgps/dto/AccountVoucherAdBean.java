package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AccountVoucherAdBean {
    private String crc_link_type_val;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String object;
    private String tpl_type;

    public AccountVoucherAdBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
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

    public String getObject() {
        return this.object;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
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

    public void setObject(String str) {
        this.object = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public String toString() {
        return "AccountVoucherAdBean{link_type=" + this.link_type + ", jump_type=" + this.jump_type + ", link_type_val='" + this.link_type_val + "', crc_link_type_val='" + this.crc_link_type_val + "', tpl_type='" + this.tpl_type + "', object='" + this.object + "'}";
    }

    public AccountVoucherAdBean(int i2, int i4, String str, String str2, String str3, String str4) {
        this.link_type = i2;
        this.jump_type = i4;
        this.link_type_val = str;
        this.crc_link_type_val = str2;
        this.tpl_type = str3;
        this.object = str4;
    }
}
