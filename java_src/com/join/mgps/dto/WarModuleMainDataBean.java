package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class WarModuleMainDataBean implements Serializable {
    private String collection_id;
    private String collection_title;
    private String cover_pic_local;
    private String cover_pic_remote;
    private String crc_collection_id;
    private String ico_local;
    private String ico_remote;
    private String info;
    private String show_tag_range;
    private int tpl_count;
    private String tpl_id;
    private String tpl_pic;
    private String tpl_range;
    private String tpl_title;
    private int tpl_type;
    private String tpl_url;

    public WarModuleMainDataBean() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getCollection_title() {
        return this.collection_title;
    }

    public String getCover_pic_local() {
        return this.cover_pic_local;
    }

    public String getCover_pic_remote() {
        return this.cover_pic_remote;
    }

    public String getCrc_collection_id() {
        return this.crc_collection_id;
    }

    public String getIco_local() {
        return this.ico_local;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getInfo() {
        return this.info;
    }

    public String getShow_tag_range() {
        return this.show_tag_range;
    }

    public int getTpl_count() {
        return this.tpl_count;
    }

    public String getTpl_id() {
        return this.tpl_id;
    }

    public String getTpl_pic() {
        return this.tpl_pic;
    }

    public String getTpl_range() {
        return this.tpl_range;
    }

    public String getTpl_title() {
        return this.tpl_title;
    }

    public int getTpl_type() {
        return this.tpl_type;
    }

    public String getTpl_url() {
        return this.tpl_url;
    }

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setCollection_title(String str) {
        this.collection_title = str;
    }

    public void setCover_pic_local(String str) {
        this.cover_pic_local = str;
    }

    public void setCover_pic_remote(String str) {
        this.cover_pic_remote = str;
    }

    public void setCrc_collection_id(String str) {
        this.crc_collection_id = str;
    }

    public void setIco_local(String str) {
        this.ico_local = str;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setShow_tag_range(String str) {
        this.show_tag_range = str;
    }

    public void setTpl_count(int i2) {
        this.tpl_count = i2;
    }

    public void setTpl_id(String str) {
        this.tpl_id = str;
    }

    public void setTpl_pic(String str) {
        this.tpl_pic = str;
    }

    public void setTpl_range(String str) {
        this.tpl_range = str;
    }

    public void setTpl_title(String str) {
        this.tpl_title = str;
    }

    public void setTpl_type(int i2) {
        this.tpl_type = i2;
    }

    public void setTpl_url(String str) {
        this.tpl_url = str;
    }

    public WarModuleMainDataBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, int i2, int i4) {
        this.collection_id = str;
        this.crc_collection_id = str2;
        this.collection_title = str3;
        this.ico_local = str4;
        this.ico_remote = str5;
        this.cover_pic_local = str6;
        this.cover_pic_remote = str7;
        this.info = str8;
        this.show_tag_range = str9;
        this.tpl_id = str10;
        this.tpl_title = str11;
        this.tpl_pic = str12;
        this.tpl_url = str13;
        this.tpl_range = str14;
        this.tpl_count = i2;
        this.tpl_type = i4;
    }
}
