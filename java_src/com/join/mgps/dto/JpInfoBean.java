package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class JpInfoBean implements Serializable {
    private String crc_link_type_val;
    private Integer is_more;
    private Integer jump_type;
    private Integer link_type;
    private String link_type_val;
    private String tpl_type;

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public Integer getIs_more() {
        return this.is_more;
    }

    public Integer getJump_type() {
        return this.jump_type;
    }

    public Integer getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public boolean isGame() {
        return this.link_type.intValue() == 1;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setIs_more(Integer num) {
        this.is_more = num;
    }

    public void setJump_type(Integer num) {
        this.jump_type = num;
    }

    public void setLink_type(Integer num) {
        this.link_type = num;
    }

    public void setLink_type_val(String str) {
        this.link_type_val = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }
}
