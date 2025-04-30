package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.BannerBean;
/* loaded from: classes.dex */
public class BannerAndTablesTable {
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField
    private String game_info_tpl_type;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int jump_type;
    @DatabaseField
    private int link_type;
    @DatabaseField
    private String link_type_val;
    @DatabaseField
    private String pic_remote;
    @DatabaseField
    private String title;
    @DatabaseField
    private String tpl_type;

    public BannerAndTablesTable() {
    }

    public BannerBean getBannerBean() {
        return new BannerBean(this.title, this.pic_remote, this.link_type, this.jump_type, this.link_type_val, this.tpl_type, this.crc_link_type_val, this.game_info_tpl_type);
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public int getId() {
        return this.id;
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

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setId(int i2) {
        this.id = i2;
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

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public BannerAndTablesTable(int i2, String str, String str2, int i4, int i5, String str3, String str4, String str5, String str6) {
        this.id = i2;
        this.title = str;
        this.pic_remote = str2;
        this.link_type = i4;
        this.jump_type = i5;
        this.link_type_val = str3;
        this.tpl_type = str4;
        this.crc_link_type_val = str5;
        this.game_info_tpl_type = str6;
    }

    public BannerAndTablesTable(BannerBean bannerBean) {
        this.title = bannerBean.getTitle();
        this.pic_remote = bannerBean.getPic_remote();
        this.link_type = bannerBean.getLink_type();
        this.jump_type = bannerBean.getJump_type();
        this.link_type_val = bannerBean.getLink_type_val();
        this.tpl_type = bannerBean.getTpl_type();
        this.crc_link_type_val = bannerBean.getCrc_link_type_val();
        this.game_info_tpl_type = bannerBean.getGame_info_tpl_type();
    }
}
