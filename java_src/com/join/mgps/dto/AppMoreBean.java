package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
/* loaded from: classes4.dex */
public class AppMoreBean {
    private String crc_link_type_val;
    private int is_more;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public AppMoreBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
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

    public AppMoreBean(int i2, String str, String str2, String str3, int i4, int i5) {
        this.link_type = i2;
        this.link_type_val = str;
        this.tpl_type = str2;
        this.crc_link_type_val = str3;
        this.jump_type = i4;
        this.is_more = i5;
    }

    public AppMoreBean(int i2, String str, int i4) {
        this.link_type = i2;
        this.link_type_val = str;
        this.jump_type = i4;
    }
}
