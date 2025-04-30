package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.d2;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class JumpInfoBean implements Serializable {
    private String crc_link_type_val;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private String tab_name;
    private String tab_type;
    private String tpl_type;

    public JumpInfoBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
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

    public String getTab_name() {
        return this.tab_name;
    }

    public String getTab_type() {
        return this.tab_type;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
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

    public void setTab_name(String str) {
        this.tab_name = str;
    }

    public void setTab_type(String str) {
        this.tab_type = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public JumpInfoBean(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.link_type = str;
        this.jump_type = str2;
        this.link_type_val = str3;
        this.tab_type = str4;
        this.tab_name = str5;
        this.crc_link_type_val = str6;
        this.tpl_type = str7;
    }
}
