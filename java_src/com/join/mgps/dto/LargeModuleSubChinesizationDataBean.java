package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class LargeModuleSubChinesizationDataBean {
    private String crc_link_type_val;
    private List<Object> game_info;
    private String is_more;
    private String jump_type;
    private String link_type;
    private String link_type_val;

    public LargeModuleSubChinesizationDataBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public List getGame_info() {
        return this.game_info;
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

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setGame_info(List list) {
        this.game_info = list;
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

    public LargeModuleSubChinesizationDataBean(String str, String str2, List list, String str3, String str4, String str5) {
        this.link_type_val = str;
        this.crc_link_type_val = str2;
        this.game_info = list;
        this.is_more = str3;
        this.jump_type = str4;
        this.link_type = str5;
    }
}
