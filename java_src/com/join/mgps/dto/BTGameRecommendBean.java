package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class BTGameRecommendBean implements Serializable {
    private String ico_remote;
    private int id;
    private String sp_tpl_two_position;
    private String title;
    private String tpl_type;

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getId() {
        return this.id;
    }

    public String getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setSp_tpl_two_position(String str) {
        this.sp_tpl_two_position = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }
}
